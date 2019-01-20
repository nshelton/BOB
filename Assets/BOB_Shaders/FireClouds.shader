
Shader "Particle/Tibetan Fire Clouds"
{
    Properties
    {
        [HDR] _Color("Color", Color) = (0.5, 0.5, 0.5, 1)
        [HDR] _Color2("Color2", Color) = (0.5, 0.5, 0.5, 1)
        [HDR] _EdgeColor("Edge Color", Color) = (1, 1, 1, 1)
        _NoiseTex ("Noise", 2D) = "white" {}
		_NoiseScale( "NoiseScale", float) = 2
		_Displacement( "_Displacement", float) = 0.2
		_Speed( "Speed", float) = 0.5


    }

    CGINCLUDE

	#include "UnityCG.cginc"

    half4 _Color;
    half4 _Color2;
    half4 _EdgeColor;
    half _Randomness;
	sampler2D _NoiseTex;
	float _Speed;
	float _NoiseScale;
	float _Displacement;

	float3 _FireCenter;
	half4 _CenterGlowColor;
	float _CenterGlowAmount;
	float _CenterGlowDistanceFalloff;
    struct Varyings
    {
        float4 position : SV_POSITION;
        float2 texcoord : TEXCOORD0;
        float4 color : COLOR;
        float4 params : TEXCOORD1;
        float3 objPos : TANGENT;
        UNITY_FOG_COORDS(1)
    };

    Varyings Vertex(
        float4 position : POSITION,
        float4 color : COLOR,
        float4 params : TEXCOORD0,
		float2 texcoord : TEXCOORD1
       )
    {
        // Vertex output
        Varyings output;
        output.position = UnityObjectToClipPos(float4(position.xyz, 1));
		output.objPos = position.xyz - _FireCenter;
		//params contains RandomXYZ, scale
        output.params = params;
        output.texcoord = texcoord;
        output.color = color;

        UNITY_TRANSFER_FOG(output, output.position);
        return output;
    }

	float saw(float t)
	{
		return ( 8.0 * pow(t - 0.5, 2.0));
	}

	float fbm(sampler2D tex, float2 uv)
	{
		float result = 0.0;
		result += 0.500 * tex2D (tex, uv).x ; uv *= 2; 
		result += 0.250 * tex2D (tex, uv).x ; uv *= 2; 
		result += 0.125 * tex2D (tex, uv).x ; uv *= 2; 
		return result;
	}

    half4 Fragment(Varyings input) : SV_Target
    {
		float scale = input.params.a;
		float2 randomxy = input.params.xyz;
		float age = input.params.x;
		float2 uv = input.texcoord.xy;
		float2 centeredUV = uv - 0.5;
		float r = length(centeredUV);

		float time = _Speed * _Time.x;


        half4 c = _Color;

		float2 uvSpace =  randomxy.xy + uv * _NoiseScale  + frac( time/ 20.0) - time;
		float dNoise = _Displacement * fbm(_NoiseTex, uvSpace).x;
		
		float phi = atan2(centeredUV.x, centeredUV.y);
		float angle = frac( phi/ 6.18 - 0.2 * time * randomxy.y + randomxy.x);
		float edge =  dNoise + r * 4.0 + angle;
 
		edge += saw(age);
		
		if ( edge > 2.0 && angle > 0.5)
		{
			angle = (angle - 0.5);
			edge -= angle * 2.0;
		}

		fixed4 maincolor = lerp(_Color, _Color2, frac(edge) );
		maincolor *= input.color;
		c =  lerp(maincolor, _EdgeColor, smoothstep(0.8, 0.9, frac(edge)));

	 	clip(2.0 - edge);

        UNITY_APPLY_FOG(input.fogCoord, c);

        return c;
    }

    ENDCG

    SubShader
    {
        Tags { "DisableBatching"="True" "IgnoreProjector"="True" "RenderType"="Opaque" }

		Blend SrcAlpha OneMinusSrcAlpha
        Pass
        {
		
            CGPROGRAM
            #pragma vertex Vertex
            #pragma fragment Fragment
            #pragma multi_compile_fog
            ENDCG
        }
    }
}