Shader "Custom/watercolor" {
	Properties {
	[HDR]
		_Color1 ("Color1", Color) = (1,1,1,1)
	[HDR]
		_Color2 ("Color2", Color) = (1,1,1,1)
	[HDR]
		_Color3 ("Color3", Color) = (1,1,1,1)
		_MainTex ("Noise (RGB)", 2D) = "white" {}
		_MainTex2 ("Noise2 (RGB)", 2D) = "white" {}
		_Displacement ("Displacement", Range(0,1)) = 0.5
		_Color3Amount ("_Color3Amount", Range(0,1)) = 0.0
		_Smear ("_Smear", Range(0,1)) = 0.0
		_gamma ("gamma", Range(0,10)) = 0.0
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;
		sampler2D _MainTex2;

		struct Input {
			float2 uv_MainTex;
			float2 uv_MainTex2;
		};

		half _Displacement;
		half _Smear;
		half _gamma;
		half _Color3Amount;
		fixed4 _Color1;
		fixed4 _Color2;
		fixed4 _Color3;

		void surf (Input IN, inout SurfaceOutputStandard o) {


			float noise = tex2D (_MainTex, IN.uv_MainTex).x;
			float noise2 = tex2D (_MainTex, IN.uv_MainTex + 0.5).x;

			float2 newUV = _Displacement * float2(noise, noise2);
			newUV.x += _Smear * tex2D(_MainTex2, frac(IN.uv_MainTex2)).r;

			float noise3 = tex2D (_MainTex, newUV).x;

			float noise4 = tex2D (_MainTex, newUV + noise3).x;


			fixed4 c = lerp(_Color1, _Color2, noise3);
			
			
			noise2 = tex2D (_MainTex, IN.uv_MainTex + 0.1).x;
			
			c = lerp(c, lerp(c, _Color3, _Color3Amount), noise);

			
			o.Albedo = pow(c.rgb, _gamma);


			o.Metallic = 0;
			o.Smoothness = 0;
			o.Alpha = c.a;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
