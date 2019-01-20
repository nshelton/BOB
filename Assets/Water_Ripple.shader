// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/Water_Ripple"
{
	Properties
	{
		//_MainTex ("Texture", 2D) = "blue" {}

		[HideInInspector]_MainTex ("Texture", 2D) = "gray" {}
		[HideInInspector]_LastTex ("Texture", 2D) = "gray" {}

		_BaseColor ("Color", Color) = (0,0.0,0.0,0.0)
		[HideInInspector]_timescale ("time scale", Range(0, 1)) = 0.2476629
	    [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5


	     [HideInInspector][Toggle] _Metaball("Trigger MetaBall", Float) = 0
	     //Shore
		[Toggle] _EdgeBlend("Enable Shore", Float) = 0
		_ShoreColor("Shore Color", Color) = (1,1,1,1)
		_ShoreIntensity("Shore Intensity", Range(-1,1)) = 0
		_ShoreDistance("Shore Distance", Float) = 1


		_rippleDistance("Ripple Distance", Float) = 1
		_RippleColor("Ripple Color", Color) = (1,1,1,1)


		 [Toggle]_RippleExtension ("RippleExtension", Range(0,1)) = 0.5

	}
	SubShader
	{
	    Tags {
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
		Pass
		{   
		  Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
			CGPROGRAM
// Upgrade NOTE: excluded shader from DX11, OpenGL ES 2.0 because it uses unsized arrays
#pragma exclude_renderers d3d11 gles
			#define FRAGMENT_P highp
			#pragma vertex vert
         	#pragma fragment frag

			#pragma shader_feature _EDGEBLEND_ON
			#pragma shader_feature _METABALL_ON
			// make fog work
			#pragma multi_compile_fog

			#pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 3.0

            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"

			#if UNITY_VERSION < 540
				#define UNITY_VERTEX_INPUT_INSTANCE_ID
				#define UNITY_VERTEX_OUTPUT_STEREO
				#define UNITY_SETUP_INSTANCE_ID(v)
				#define UNITY_TRANSFER_INSTANCE_ID(v,o)
				#define UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o)
				#define COMPUTESCREENPOS ComputeScreenPos
			#else
				#define COMPUTESCREENPOS ComputeNonStereoScreenPos
			#endif


			uniform float4 _BaseColor;
            uniform float4 _TimeEditor;
            uniform float4 _RippleColor;
            uniform float _timescale;
            uniform float _rippleDistance;

			uniform float _NumPositions;
			uniform float4 _PositionArray[8];

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 pos : SV_POSITION;
				float3 worldPos : TEXCOORD2;
				UNITY_FOG_COORDS(1)

				#ifdef _EDGEBLEND_ON
					float4 screenPos : TEXCOORD3;
				#endif

				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			#ifdef _EDGEBLEND_ON
				sampler2D_float _CameraDepthTexture;
				half _ShoreIntensity, _ShoreDistance;
				fixed4 _ShoreColor;
			#endif

			sampler2D _MainTex;
			sampler2D _LastTex;
			half4 _MainTex_TexelSize;
			float4 _MainTex_ST;
			
			v2f vert (appdata v)
			{
				v2f o;

				o.pos = UnityObjectToClipPos(v.vertex);
				o.uv = v.uv;

				half4 pos0 = mul(unity_ObjectToWorld, v.vertex);

				#ifdef _EDGEBLEND_ON
					o.screenPos = COMPUTESCREENPOS(o.pos);
					o.screenPos.z = lerp(o.pos.w, mul(UNITY_MATRIX_V, pos0).z, unity_OrthoParams.w);
				#endif

				o.worldPos =  mul(unity_ObjectToWorld, v.vertex);

				UNITY_TRANSFER_FOG(o,o.pos);
				return o;
			}


			float _RippleExtension;
			
			float4 frag (v2f i) : SV_Target
			{   
			    UNITY_SETUP_INSTANCE_ID(i);


			    //half4 v = _Variables;
				float4 val = tex2D(_MainTex, i.uv);
				float oldPos = tex2D(_LastTex,i.uv).z;
				float2 e = float2(1,0) * _MainTex_TexelSize.xy,
				n = float2(0,1) * _MainTex_TexelSize.xy,
			    w = float2(-1,0) * _MainTex_TexelSize.xy,
				s = float2(0,-1) * _MainTex_TexelSize.xy;
				float pos = 0.5 * ( tex2D(_MainTex,i.uv+n).z+tex2D(_MainTex,i.uv+e).z+tex2D(_MainTex,i.uv+s).z+tex2D(_MainTex,i.uv+w).z) - oldPos;
				pos *= 0.98*_RippleExtension;




				fixed4 col = tex2D(_MainTex, i.uv);

				float4 c = _BaseColor;


				#ifdef _EDGEBLEND_ON
					float sceneZ = SAMPLE_DEPTH_TEXTURE_PROJ(_CameraDepthTexture, UNITY_PROJ_COORD(i.screenPos));
					float perpectiveZ = LinearEyeDepth(sceneZ);
					#if defined(UNITY_REVERSED_Z)
						sceneZ = 1-sceneZ;
					#endif
					float orthoZ = sceneZ*(_ProjectionParams.y - _ProjectionParams.z) - _ProjectionParams.y;

					sceneZ = lerp(perpectiveZ, orthoZ, unity_OrthoParams.w);

					half diff = abs(sceneZ - i.screenPos.z)/_ShoreDistance;
					diff = smoothstep(_ShoreIntensity , 1 , diff);
                    c = lerp(lerp(c, _ShoreColor, _ShoreColor.a), c, diff);
				#endif

				float rippleAmount = 0;
				for (int ii = 0; ii < _NumPositions; ii ++)
				{
					float distance =   length(_PositionArray[ii].xyz - i.worldPos.xyz);
				  
					distance += sin(i.worldPos.x * 10.0)* 0.01 + sin(i.worldPos.x * 5.0)* 0.1 ;
					distance += sin(i.worldPos.y * 10.0)* 0.01 + sin(i.worldPos.y * 5.0)* 0.1 ;

					distance = sin(distance * 10.0 + _Time.x * _timescale)* 0.5 + 0.5;
					distance = distance * smoothstep(0, _rippleDistance, distance);
					
					rippleAmount = max(rippleAmount, distance);
 
				}

				c = lerp(c, _RippleColor, rippleAmount);


				UNITY_APPLY_FOG(i.fogCoord, col);


				return c;
			}
			ENDCG
		}

	}
	FallBack "Diffuse"
}