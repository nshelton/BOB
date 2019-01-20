// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:34290,y:32411,varname:node_9361,prsc:2|custl-4018-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8068,x:32461,y:33179,varname:node_8068,prsc:2;n:type:ShaderForge.SFN_LightColor,id:3406,x:32506,y:32666,varname:node_3406,prsc:2;n:type:ShaderForge.SFN_LightVector,id:6869,x:31642,y:32528,varname:node_6869,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9684,x:31642,y:32659,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:7782,x:31929,y:32563,cmnt:Lambert,varname:node_7782,prsc:2,dt:4|A-6869-OUT,B-9684-OUT;n:type:ShaderForge.SFN_Multiply,id:1941,x:32718,y:32633,cmnt:Diffuse Contribution,varname:node_1941,prsc:2|A-8240-OUT,B-3406-RGB;n:type:ShaderForge.SFN_Multiply,id:5085,x:33117,y:32837,cmnt:Attenuate and Color,varname:node_5085,prsc:2|A-1941-OUT,B-3883-OUT,C-2646-OUT;n:type:ShaderForge.SFN_AmbientLight,id:7528,x:32973,y:32530,varname:node_7528,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2460,x:33229,y:32475,cmnt:Ambient Light,varname:node_2460,prsc:2|A-8240-OUT,B-7528-RGB;n:type:ShaderForge.SFN_VertexColor,id:2477,x:31711,y:32304,varname:node_2477,prsc:2;n:type:ShaderForge.SFN_Step,id:1874,x:32735,y:33121,varname:node_1874,prsc:2|A-7272-OUT,B-8068-OUT;n:type:ShaderForge.SFN_Slider,id:7272,x:32382,y:33344,ptovrint:False,ptlb:Light Cutoff,ptin:_LightCutoff,varname:node_7272,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.33,max:1;n:type:ShaderForge.SFN_Multiply,id:2646,x:32893,y:33238,varname:node_2646,prsc:2|A-1874-OUT,B-8068-OUT;n:type:ShaderForge.SFN_If,id:3883,x:32349,y:32784,cmnt:TOONIFY,varname:node_3883,prsc:2|A-7782-OUT,B-3697-OUT,GT-4814-OUT,EQ-4814-OUT,LT-3790-OUT;n:type:ShaderForge.SFN_Slider,id:3697,x:31779,y:32995,ptovrint:False,ptlb:Color Sculpt,ptin:_ColorSculpt,varname:node_3697,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:2896,x:31779,y:33101,ptovrint:False,ptlb:Light Color Brightness,ptin:_LightColorBrightness,varname:node_2896,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:9875,x:31779,y:33193,ptovrint:False,ptlb:Dark Color Brightness,ptin:_DarkColorBrightness,varname:node_9875,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Clamp,id:4814,x:32189,y:33013,varname:node_4814,prsc:2|IN-2896-OUT,MIN-3697-OUT,MAX-6236-OUT;n:type:ShaderForge.SFN_Clamp,id:3790,x:32189,y:33171,varname:node_3790,prsc:2|IN-9875-OUT,MIN-5171-OUT,MAX-3697-OUT;n:type:ShaderForge.SFN_Vector1,id:6236,x:31911,y:33275,varname:node_6236,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:5171,x:31911,y:33328,varname:node_5171,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:6109,x:33408,y:32845,cmnt:diffuse plus ambient,varname:node_6109,prsc:2|A-2460-OUT,B-5085-OUT;n:type:ShaderForge.SFN_Color,id:9488,x:31711,y:31679,ptovrint:False,ptlb:PRIMARY COLOR (replace VC black),ptin:_PRIMARYCOLORreplaceVCblack,varname:node_9488,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:5228,x:31711,y:31838,ptovrint:False,ptlb:SECONDARY COLOR (replace VC red),ptin:_SECONDARYCOLORreplaceVCred,varname:_PRIMARYCOLORreplaceVCblack_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:5269,x:31711,y:31997,ptovrint:False,ptlb:HIGHLIGHT COLOR (replace VC blue),ptin:_HIGHLIGHTCOLORreplaceVCblue,varname:_PRIMARYCOLORreplaceVCblack_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:1570,x:32257,y:31874,varname:node_1570,prsc:2|A-3346-OUT,B-5228-RGB,T-2477-R;n:type:ShaderForge.SFN_Lerp,id:2635,x:32257,y:32008,varname:node_2635,prsc:2|A-3346-OUT,B-5269-RGB,T-2477-B;n:type:ShaderForge.SFN_Lerp,id:625,x:32257,y:31743,varname:node_625,prsc:2|A-3346-OUT,B-9488-RGB,T-2614-OUT;n:type:ShaderForge.SFN_Vector4,id:3346,x:31711,y:31567,varname:node_3346,prsc:2,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:2917,x:32164,y:31528,varname:node_2917,prsc:2|A-2477-R,B-2477-B,C-2477-G;n:type:ShaderForge.SFN_OneMinus,id:2614,x:32304,y:31583,varname:node_2614,prsc:2|IN-2917-OUT;n:type:ShaderForge.SFN_Add,id:2235,x:32574,y:31875,varname:node_2235,prsc:2|A-625-OUT,B-1570-OUT,C-2635-OUT,D-3654-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8240,x:32797,y:32171,ptovrint:False,ptlb:REPLACE VCs,ptin:_REPLACEVCs,cmnt:VERTEX COLOR REPLACE ,varname:node_8240,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2477-RGB,B-5153-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5153,x:32797,y:31942,varname:node_5153,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-2235-OUT;n:type:ShaderForge.SFN_Relay,id:3961,x:33524,y:32352,varname:node_3961,prsc:2|IN-9534-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9534,x:32797,y:31798,varname:node_9534,prsc:2,cc1:3,cc2:-1,cc3:-1,cc4:-1|IN-2235-OUT;n:type:ShaderForge.SFN_Append,id:9221,x:33524,y:32524,varname:node_9221,prsc:2|A-6109-OUT,B-3961-OUT;n:type:ShaderForge.SFN_Relay,id:9828,x:33456,y:32411,varname:node_9828,prsc:2|IN-2477-R;n:type:ShaderForge.SFN_Noise,id:5435,x:33308,y:31422,varname:node_5435,prsc:2|XY-4447-OUT;n:type:ShaderForge.SFN_TexCoord,id:2918,x:33005,y:31363,varname:node_2918,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:7610,x:32896,y:31110,varname:node_7610,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4447,x:33243,y:31251,varname:node_4447,prsc:2|A-2918-UVOUT,B-4183-OUT;n:type:ShaderForge.SFN_Subtract,id:8687,x:33514,y:31466,varname:node_8687,prsc:2|A-5435-OUT,B-6523-OUT;n:type:ShaderForge.SFN_Vector1,id:6523,x:33298,y:31550,varname:node_6523,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:4621,x:33869,y:31505,varname:node_4621,prsc:2|A-795-OUT,B-4550-OUT;n:type:ShaderForge.SFN_NormalVector,id:9444,x:33414,y:31142,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:795,x:33819,y:31293,varname:node_795,prsc:2|A-1069-OUT,B-8687-OUT;n:type:ShaderForge.SFN_Divide,id:4550,x:33678,y:31562,varname:node_4550,prsc:2|A-4608-OUT,B-4608-OUT;n:type:ShaderForge.SFN_Vector1,id:4608,x:33282,y:31669,varname:node_4608,prsc:2,v1:10;n:type:ShaderForge.SFN_Multiply,id:1069,x:33666,y:31142,varname:node_1069,prsc:2|A-9444-OUT,B-5435-OUT;n:type:ShaderForge.SFN_Sin,id:4183,x:33155,y:31075,varname:node_4183,prsc:2|IN-7610-TSL;n:type:ShaderForge.SFN_Slider,id:6688,x:33588,y:32097,ptovrint:False,ptlb:heightFogStart,ptin:_heightFogStart,varname:node_6688,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Slider,id:2176,x:33575,y:32218,ptovrint:False,ptlb:heightFogEnd,ptin:_heightFogEnd,varname:_heightFogStart_copy,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:10;n:type:ShaderForge.SFN_Color,id:3244,x:34204,y:31719,ptovrint:False,ptlb:Height Fog Color,ptin:_HeightFogColor,varname:node_3244,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Subtract,id:5227,x:33963,y:32207,varname:node_5227,prsc:2|A-2176-OUT,B-6688-OUT;n:type:ShaderForge.SFN_Subtract,id:9744,x:34068,y:31923,varname:node_9744,prsc:2|A-6688-OUT,B-9700-Y;n:type:ShaderForge.SFN_Divide,id:5940,x:33963,y:32082,varname:node_5940,prsc:2|A-6688-OUT,B-9700-Y;n:type:ShaderForge.SFN_Lerp,id:5294,x:34598,y:32070,varname:node_5294,prsc:2|A-6109-OUT,B-8090-OUT,T-2532-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:9700,x:33809,y:31890,varname:node_9700,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:2532,x:34220,y:31923,varname:node_2532,prsc:2|IN-9744-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:4018,x:34123,y:32529,ptovrint:False,ptlb:FOG TOGGLE,ptin:_FOGTOGGLE,varname:node_4018,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6109-OUT,B-5294-OUT;n:type:ShaderForge.SFN_Blend,id:6410,x:34486,y:31547,varname:node_6410,prsc:2,blmd:1,clmp:True|SRC-9928-RGB,DST-3244-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:8090,x:34759,y:31685,ptovrint:False,ptlb:global fog influence,ptin:_globalfoginfluence,varname:node_8090,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3244-RGB,B-6410-OUT;n:type:ShaderForge.SFN_Color,id:9928,x:34204,y:31470,ptovrint:False,ptlb:_globalfogcolor,ptin:_globalfogcolor,varname:node_9928,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:6285,x:31711,y:32159,ptovrint:False,ptlb:TERTIARY COLOR (replace VC green),ptin:_TERTIARYCOLORreplaceVCgreen,varname:node_6285,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:3654,x:32257,y:32134,varname:node_3654,prsc:2|A-3346-OUT,B-6285-RGB,T-2477-G;proporder:7272-3697-2896-9875-8240-9488-5228-5269-6285-6688-2176-3244-4018-8090;pass:END;sub:END;*/

Shader "Shader Forge/BOB_VERTEX_ADVANCED" {
    Properties {
        _LightCutoff ("Light Cutoff", Range(0, 1)) = 0.33
        _ColorSculpt ("Color Sculpt", Range(0, 1)) = 0.5
        _LightColorBrightness ("Light Color Brightness", Range(0, 1)) = 1
        _DarkColorBrightness ("Dark Color Brightness", Range(0, 1)) = 0.5
        [MaterialToggle] _REPLACEVCs ("REPLACE VCs", Float ) = 0
        _PRIMARYCOLORreplaceVCblack ("PRIMARY COLOR (replace VC black)", Color) = (0,0,0,1)
        _SECONDARYCOLORreplaceVCred ("SECONDARY COLOR (replace VC red)", Color) = (1,0,0,1)
        _HIGHLIGHTCOLORreplaceVCblue ("HIGHLIGHT COLOR (replace VC blue)", Color) = (0,0,1,1)
        _TERTIARYCOLORreplaceVCgreen ("TERTIARY COLOR (replace VC green)", Color) = (0,1,0,1)
        _heightFogStart ("heightFogStart", Range(0, 10)) = 0
        [HideInInspector]_heightFogEnd ("heightFogEnd", Range(1, 10)) = 1
        _HeightFogColor ("Height Fog Color", Color) = (0.5,0.5,0.5,1)
        [MaterialToggle] _FOGTOGGLE ("FOG TOGGLE", Float ) = 0
        [MaterialToggle] _globalfoginfluence ("global fog influence", Float ) = 0.5
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 3.0
            uniform float _LightCutoff;
            uniform float _ColorSculpt;
            uniform float _LightColorBrightness;
            uniform float _DarkColorBrightness;
            uniform float4 _PRIMARYCOLORreplaceVCblack;
            uniform float4 _SECONDARYCOLORreplaceVCred;
            uniform float4 _HIGHLIGHTCOLORreplaceVCblue;
            uniform fixed _REPLACEVCs;
            uniform float _heightFogStart;
            uniform float4 _HeightFogColor;
            uniform fixed _FOGTOGGLE;
            uniform fixed _globalfoginfluence;
            uniform float4 _globalfogcolor;
            uniform float4 _TERTIARYCOLORreplaceVCgreen;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 node_3346 = float4(0,0,0,0);
                float4 node_2235 = (lerp(node_3346,float4(_PRIMARYCOLORreplaceVCblack.rgb,0.0),(1.0 - (i.vertexColor.r+i.vertexColor.b+i.vertexColor.g)))+lerp(node_3346,float4(_SECONDARYCOLORreplaceVCred.rgb,0.0),i.vertexColor.r)+lerp(node_3346,float4(_HIGHLIGHTCOLORreplaceVCblue.rgb,0.0),i.vertexColor.b)+lerp(node_3346,float4(_TERTIARYCOLORreplaceVCgreen.rgb,0.0),i.vertexColor.g));
                float3 _REPLACEVCs_var = lerp( i.vertexColor.rgb, node_2235.rgb, _REPLACEVCs ); // VERTEX COLOR REPLACE 
                float node_3883_if_leA = step(0.5*dot(lightDirection,normalDirection)+0.5,_ColorSculpt);
                float node_3883_if_leB = step(_ColorSculpt,0.5*dot(lightDirection,normalDirection)+0.5);
                float node_4814 = clamp(_LightColorBrightness,_ColorSculpt,1.0);
                float3 node_6109 = ((_REPLACEVCs_var*UNITY_LIGHTMODEL_AMBIENT.rgb)+((_REPLACEVCs_var*_LightColor0.rgb)*lerp((node_3883_if_leA*clamp(_DarkColorBrightness,0.0,_ColorSculpt))+(node_3883_if_leB*node_4814),node_4814,node_3883_if_leA*node_3883_if_leB)*(step(_LightCutoff,attenuation)*attenuation))); // diffuse plus ambient
                float3 finalColor = lerp( node_6109, lerp(node_6109,lerp( _HeightFogColor.rgb, saturate((_globalfogcolor.rgb*_HeightFogColor.rgb)), _globalfoginfluence ),saturate((_heightFogStart-i.posWorld.g))), _FOGTOGGLE );
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 3.0
            uniform float _LightCutoff;
            uniform float _ColorSculpt;
            uniform float _LightColorBrightness;
            uniform float _DarkColorBrightness;
            uniform float4 _PRIMARYCOLORreplaceVCblack;
            uniform float4 _SECONDARYCOLORreplaceVCred;
            uniform float4 _HIGHLIGHTCOLORreplaceVCblue;
            uniform fixed _REPLACEVCs;
            uniform float _heightFogStart;
            uniform float4 _HeightFogColor;
            uniform fixed _FOGTOGGLE;
            uniform fixed _globalfoginfluence;
            uniform float4 _globalfogcolor;
            uniform float4 _TERTIARYCOLORreplaceVCgreen;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 node_3346 = float4(0,0,0,0);
                float4 node_2235 = (lerp(node_3346,float4(_PRIMARYCOLORreplaceVCblack.rgb,0.0),(1.0 - (i.vertexColor.r+i.vertexColor.b+i.vertexColor.g)))+lerp(node_3346,float4(_SECONDARYCOLORreplaceVCred.rgb,0.0),i.vertexColor.r)+lerp(node_3346,float4(_HIGHLIGHTCOLORreplaceVCblue.rgb,0.0),i.vertexColor.b)+lerp(node_3346,float4(_TERTIARYCOLORreplaceVCgreen.rgb,0.0),i.vertexColor.g));
                float3 _REPLACEVCs_var = lerp( i.vertexColor.rgb, node_2235.rgb, _REPLACEVCs ); // VERTEX COLOR REPLACE 
                float node_3883_if_leA = step(0.5*dot(lightDirection,normalDirection)+0.5,_ColorSculpt);
                float node_3883_if_leB = step(_ColorSculpt,0.5*dot(lightDirection,normalDirection)+0.5);
                float node_4814 = clamp(_LightColorBrightness,_ColorSculpt,1.0);
                float3 node_6109 = ((_REPLACEVCs_var*UNITY_LIGHTMODEL_AMBIENT.rgb)+((_REPLACEVCs_var*_LightColor0.rgb)*lerp((node_3883_if_leA*clamp(_DarkColorBrightness,0.0,_ColorSculpt))+(node_3883_if_leB*node_4814),node_4814,node_3883_if_leA*node_3883_if_leB)*(step(_LightCutoff,attenuation)*attenuation))); // diffuse plus ambient
                float3 finalColor = lerp( node_6109, lerp(node_6109,lerp( _HeightFogColor.rgb, saturate((_globalfogcolor.rgb*_HeightFogColor.rgb)), _globalfoginfluence ),saturate((_heightFogStart-i.posWorld.g))), _FOGTOGGLE );
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
