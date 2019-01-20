
// Procedurally randomized hexagon mesh particle shader
Shader "Custom/SpriteSheet"
{
    Properties
    {
        _SpriteTex ("SpriteSheet", 2D) = "white" {}
		colorScale( "colorScale", float) = 0.1 
    }

    CGINCLUDE

    #include "Common.hlsl"

    half4 _Color;
    half4 _Color2;
    half4 _EdgeColor;
    half _Randomness;
	sampler2D _SpriteTex;
	sampler2D _NoiseTex;
	float _Scale;

	float amin;
	float amax;
	float colorScale;

    struct Varyings
    {
        float4 position : SV_POSITION;
        float4 params : TEXCOORD0;
        float2 texcoord : TEXCOORD1;
        UNITY_FOG_COORDS(1)
    };

    Varyings Vertex(
        float3 position : POSITION,
        float4 color : COLOR,
        float4 params : TEXCOORD0,
		float2 texcoord : TEXCOORD1
       )
    {
        // Vertex output
        Varyings output;

        output.position = UnityObjectToClipPos(float4(position.xyz, 1));

		//params contains RandomXYZ, scale
        output.params = params;
        output.texcoord = texcoord;
			
        UNITY_TRANSFER_FOG(output, output.position);
        return output;
    }

	float saw(float t)
	{
		return -4.0 * (t - 0.5) * (t - 0.5 ) + 1.0;
	}

	float2 getUV(int spriteNum, float2 uv, float2 rand)
	{
		float2	flipbookUV = uv / float2(3.0, 5.0);


		float2 offset = float2(floor((float)spriteNum / 5.0), spriteNum % 5) / float2(3.0, 5.0);
		flipbookUV += offset;
		
		flipbookUV.x += sin(uv.y *10.0 +_Time.b + rand.x) * 0.005;
		flipbookUV.y += pow(uv.x, 4.0) * sin(uv.x * 20.0 +_Time.b + rand.y) * 0.02;
		return flipbookUV;
	}

	float ease(float t)
	{
		float power = 2;
			
		return t < 0.5 ? 
			pow(t*2.0, power)/2.0 : 
			abs(pow(t*2.0 - 2.0, power))/2.0 + 0.5;
		
	}

	fixed4 flipbookColor(float age, float2 uv, float2 random)
	{
		//age = 1.0 - age;
		int spriteNum = floor(age * 15.0);

		float2 uv1 = getUV(spriteNum, uv, random);
		float2 uv2 = getUV((spriteNum+1)%15, uv, random);

		//randomSpriteUV.x += pow(sin(randomSpriteUV.y * 100.0 +_Time.a), 4.0) * 0.005;

		fixed4 c1 = tex2D (_SpriteTex, uv1);
		fixed4 c2= tex2D (_SpriteTex, uv2);
		float blend = pow(frac(age * 15.0), 2.0);
		
		float weights = c1.a * (1.0 - blend) + c2.a * (blend);
        fixed4 c = c1 * c1.a * (1.0 - blend) + c2 * c2.a * (blend) ;

		if ( weights > 0 )
			c /= weights;
		c = lerp(c1,c2,blend);

		return c;
	}

    half4 Fragment(Varyings input) : SV_Target
    {
		float scale = input.params.a;
		float4 randomxyz = input.params;
		float age = randomxyz.w;
		age = pow(age, 2.0);
		float2 uv = input.texcoord.xy;
		float2 centeredUV = uv - 0.5;
		float r = length(centeredUV);

	/*	
		if ( randomxyz.z > 0.5)
			uv.y = 1.0 - uv.y;
		
		if ( randomxyz.y > 0.5)
			uv.x = 1.0 - uv.x;
	*/
	

		float2 spriteUV = getUV(floor(randomxyz.x * 15.0), uv, randomxyz.yz);

		//fixed4 c = flipbookColor(age/8.0 + randomxyz.x, uv); 
		fixed4 c = flipbookColor( age, uv, randomxyz.yz); 

        UNITY_APPLY_FOG(input.fogCoord, c);
	//	c = lerp(c, float4(0,0,0,c.a), 1.0 -smoothstep(0.4, 1.0, c.a));

		clip(c.a - 0.4);
		return c;
    }

    ENDCG

    SubShader
    {
        Tags { "Queue"="Opaque" "IgnoreProjector"="True" "RenderType"="Opaque" }

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