// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3534,x:34756,y:32552,varname:node_3534,prsc:2|custl-8836-OUT,voffset-3603-OUT,disp-5187-OUT,tess-9613-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:3630,x:32589,y:33307,varname:node_3630,prsc:2;n:type:ShaderForge.SFN_LightColor,id:9647,x:32634,y:32794,varname:node_9647,prsc:2;n:type:ShaderForge.SFN_LightVector,id:7893,x:32029,y:32643,varname:node_7893,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:1544,x:32029,y:32797,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:4367,x:32312,y:32688,cmnt:Lambert,varname:node_4367,prsc:2,dt:4|A-7893-OUT,B-1544-OUT;n:type:ShaderForge.SFN_Multiply,id:9183,x:32846,y:32761,cmnt:Diffuse Contribution,varname:node_9183,prsc:2|A-8028-OUT,B-9647-RGB;n:type:ShaderForge.SFN_Multiply,id:5034,x:33245,y:32965,cmnt:Attenuate and Color,varname:node_5034,prsc:2|A-9183-OUT,B-615-OUT,C-3519-OUT;n:type:ShaderForge.SFN_AmbientLight,id:515,x:33101,y:32658,varname:node_515,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5831,x:33357,y:32603,cmnt:Ambient Light,varname:node_5831,prsc:2|A-8028-OUT,B-515-RGB;n:type:ShaderForge.SFN_VertexColor,id:2310,x:31839,y:32427,varname:node_2310,prsc:2;n:type:ShaderForge.SFN_Step,id:6178,x:32863,y:33249,varname:node_6178,prsc:2|A-1195-OUT,B-3630-OUT;n:type:ShaderForge.SFN_Slider,id:1195,x:32510,y:33472,ptovrint:False,ptlb:Light Cutoff,ptin:_LightCutoff,varname:node_7272,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.33,max:1;n:type:ShaderForge.SFN_Multiply,id:3519,x:33021,y:33366,varname:node_3519,prsc:2|A-6178-OUT,B-3630-OUT;n:type:ShaderForge.SFN_If,id:615,x:32477,y:32912,cmnt:TOONIFY,varname:node_615,prsc:2|A-4367-OUT,B-35-OUT,GT-7409-OUT,EQ-7409-OUT,LT-689-OUT;n:type:ShaderForge.SFN_Slider,id:35,x:31907,y:33123,ptovrint:False,ptlb:Color Sculpt,ptin:_ColorSculpt,varname:node_3697,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:3505,x:31907,y:33229,ptovrint:False,ptlb:Light Color Brightness,ptin:_LightColorBrightness,varname:node_2896,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:2469,x:31907,y:33321,ptovrint:False,ptlb:Dark Color Brightness,ptin:_DarkColorBrightness,varname:node_9875,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Clamp,id:7409,x:32302,y:33126,varname:node_7409,prsc:2|IN-3505-OUT,MIN-35-OUT,MAX-190-OUT;n:type:ShaderForge.SFN_Clamp,id:689,x:32317,y:33299,varname:node_689,prsc:2|IN-2469-OUT,MIN-8222-OUT,MAX-35-OUT;n:type:ShaderForge.SFN_Vector1,id:190,x:32039,y:33403,varname:node_190,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:8222,x:32039,y:33456,varname:node_8222,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:4984,x:33536,y:32973,cmnt:diffuse plus ambient,varname:node_4984,prsc:2|A-5831-OUT,B-5034-OUT;n:type:ShaderForge.SFN_Color,id:433,x:31839,y:31807,ptovrint:False,ptlb:PRIMARY COLOR (replace VC black),ptin:_PRIMARYCOLORreplaceVCblack,varname:node_9488,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:4995,x:31839,y:31966,ptovrint:False,ptlb:SECONDARY COLOR (replace VC red),ptin:_SECONDARYCOLORreplaceVCred,varname:_PRIMARYCOLORreplaceVCblack_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:1638,x:31839,y:32125,ptovrint:False,ptlb:HIGHLIGHT COLOR (replace VC blue),ptin:_HIGHLIGHTCOLORreplaceVCblue,varname:_PRIMARYCOLORreplaceVCblack_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:8002,x:32385,y:32002,varname:node_8002,prsc:2|A-493-OUT,B-4995-RGB,T-2310-R;n:type:ShaderForge.SFN_Lerp,id:7299,x:32385,y:32136,varname:node_7299,prsc:2|A-493-OUT,B-1638-RGB,T-2310-B;n:type:ShaderForge.SFN_Lerp,id:5717,x:32385,y:31871,varname:node_5717,prsc:2|A-493-OUT,B-433-RGB,T-1971-OUT;n:type:ShaderForge.SFN_Vector4,id:493,x:31839,y:31695,varname:node_493,prsc:2,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:3153,x:32292,y:31656,varname:node_3153,prsc:2|A-2310-R,B-2310-B;n:type:ShaderForge.SFN_OneMinus,id:1971,x:32432,y:31711,varname:node_1971,prsc:2|IN-3153-OUT;n:type:ShaderForge.SFN_Add,id:8118,x:32702,y:32003,varname:node_8118,prsc:2|A-5717-OUT,B-8002-OUT,C-7299-OUT,D-2731-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5984,x:32731,y:32374,ptovrint:False,ptlb:REPLACE VCs,ptin:_REPLACEVCs,cmnt:VERTEX COLOR REPLACE ,varname:node_8240,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2310-RGB,B-4574-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4574,x:32925,y:32070,varname:node_4574,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-8118-OUT;n:type:ShaderForge.SFN_Relay,id:2811,x:33596,y:32435,varname:node_2811,prsc:2|IN-7809-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7809,x:32925,y:31926,varname:node_7809,prsc:2,cc1:3,cc2:-1,cc3:-1,cc4:-1|IN-8118-OUT;n:type:ShaderForge.SFN_Append,id:4410,x:33652,y:32652,varname:node_4410,prsc:2|A-4984-OUT,B-2811-OUT;n:type:ShaderForge.SFN_Relay,id:5318,x:33463,y:32508,varname:node_5318,prsc:2|IN-2310-R;n:type:ShaderForge.SFN_Noise,id:3246,x:33436,y:31550,varname:node_3246,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:8266,x:33133,y:31491,varname:node_8266,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:7546,x:33024,y:31238,varname:node_7546,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6739,x:33371,y:31379,varname:node_6739,prsc:2|A-8266-UVOUT,B-3521-OUT;n:type:ShaderForge.SFN_Subtract,id:7729,x:33642,y:31594,varname:node_7729,prsc:2|A-3246-OUT,B-5399-OUT;n:type:ShaderForge.SFN_Vector1,id:5399,x:33426,y:31678,varname:node_5399,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:4884,x:33997,y:31633,varname:node_4884,prsc:2|A-8417-OUT,B-2422-OUT;n:type:ShaderForge.SFN_NormalVector,id:5635,x:33542,y:31270,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:8417,x:33947,y:31421,varname:node_8417,prsc:2|A-338-OUT,B-7729-OUT;n:type:ShaderForge.SFN_Divide,id:2422,x:33806,y:31690,varname:node_2422,prsc:2|A-2983-OUT,B-2983-OUT;n:type:ShaderForge.SFN_Vector1,id:2983,x:33410,y:31797,varname:node_2983,prsc:2,v1:10;n:type:ShaderForge.SFN_Multiply,id:338,x:33794,y:31270,varname:node_338,prsc:2|A-5635-OUT,B-3246-OUT;n:type:ShaderForge.SFN_Sin,id:3521,x:33283,y:31203,varname:node_3521,prsc:2|IN-7546-TSL;n:type:ShaderForge.SFN_Slider,id:815,x:33716,y:32225,ptovrint:False,ptlb:heightFogStart,ptin:_heightFogStart,varname:node_6688,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Slider,id:7246,x:33703,y:32346,ptovrint:False,ptlb:heightFogEnd,ptin:_heightFogEnd,varname:_heightFogStart_copy,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:10;n:type:ShaderForge.SFN_Color,id:4565,x:34332,y:31847,ptovrint:False,ptlb:Height Fog Color,ptin:_HeightFogColor,varname:node_3244,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Subtract,id:8954,x:34091,y:32335,varname:node_8954,prsc:2|A-7246-OUT,B-815-OUT;n:type:ShaderForge.SFN_Subtract,id:7121,x:34196,y:32051,varname:node_7121,prsc:2|A-815-OUT,B-4937-Y;n:type:ShaderForge.SFN_Divide,id:4057,x:34091,y:32210,varname:node_4057,prsc:2|A-815-OUT,B-4937-Y;n:type:ShaderForge.SFN_Lerp,id:2032,x:34726,y:32198,varname:node_2032,prsc:2|A-4984-OUT,B-436-OUT,T-267-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:4937,x:33937,y:32018,varname:node_4937,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:267,x:34348,y:32051,varname:node_267,prsc:2|IN-7121-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8836,x:34193,y:32692,ptovrint:False,ptlb:FOG TOGGLE,ptin:_FOGTOGGLE,varname:node_4018,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4984-OUT,B-2032-OUT;n:type:ShaderForge.SFN_Blend,id:4647,x:34614,y:31675,varname:node_4647,prsc:2,blmd:1,clmp:True|SRC-5022-RGB,DST-4565-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:436,x:34887,y:31813,ptovrint:False,ptlb:global fog influence,ptin:_globalfoginfluence,varname:node_8090,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4565-RGB,B-4647-OUT;n:type:ShaderForge.SFN_Color,id:5022,x:34332,y:31598,ptovrint:False,ptlb:_globalfogcolor,ptin:_globalfogcolor,varname:node_9928,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:6813,x:33520,y:33324,varname:node_6813,prsc:2|A-3343-OUT,B-5595-OUT;n:type:ShaderForge.SFN_Slider,id:5595,x:33187,y:33450,ptovrint:False,ptlb:NoiseResolution,ptin:_NoiseResolution,varname:node_4962,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2279572,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:3603,x:34509,y:33054,ptovrint:False,ptlb:Enable Replacement,ptin:_EnableReplacement,varname:node_7201,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-7415-OUT,B-3062-OUT;n:type:ShaderForge.SFN_Vector3,id:7415,x:34301,y:33033,varname:node_7415,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Multiply,id:3790,x:34382,y:33245,varname:node_3790,prsc:2|A-7520-OUT,B-8191-OUT;n:type:ShaderForge.SFN_NormalVector,id:8191,x:34177,y:33328,prsc:2,pt:False;n:type:ShaderForge.SFN_RemapRange,id:7520,x:34177,y:33134,varname:node_7520,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:1|IN-2674-R;n:type:ShaderForge.SFN_Tex2d,id:2674,x:33838,y:33194,ptovrint:False,ptlb:NoiseTex,ptin:_NoiseTex,varname:node_5340,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_NormalVector,id:4008,x:33211,y:33208,prsc:2,pt:False;n:type:ShaderForge.SFN_Code,id:1294,x:33655,y:33472,varname:node_1294,prsc:2,code:CgByAGUAdAB1AHIAbgAgAGYAbABvAGEAdAAyACgAdgAuAHgALAAgAHYALgB5ACkAOwA=,output:1,fname:DropZ,width:258,height:112,input:2,input_1_label:v;n:type:ShaderForge.SFN_Add,id:673,x:34006,y:33416,varname:node_673,prsc:2|A-1294-OUT,B-351-OUT;n:type:ShaderForge.SFN_Code,id:351,x:33666,y:33677,varname:node_351,prsc:2,code:cgBlAHQAdQByAG4AIABmAGwAbwBhAHQAMgAoAEEALABCACkAOwA=,output:1,fname:createV2,width:247,height:132,input:0,input:0,input_1_label:A,input_2_label:B|A-9365-OUT,B-9041-OUT;n:type:ShaderForge.SFN_Slider,id:9365,x:33205,y:33568,ptovrint:False,ptlb:DisplacementNoiseSeedX,ptin:_DisplacementNoiseSeedX,varname:node_6136,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1614917,max:0.5;n:type:ShaderForge.SFN_Slider,id:9041,x:33205,y:33656,ptovrint:False,ptlb:DisplacementNoiseSeedY,ptin:_DisplacementNoiseSeedY,varname:node_8572,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2700691,max:0.5;n:type:ShaderForge.SFN_Normalize,id:3343,x:33425,y:33184,varname:node_3343,prsc:2|IN-4008-OUT;n:type:ShaderForge.SFN_Divide,id:3062,x:34600,y:33322,varname:node_3062,prsc:2|A-3790-OUT,B-5139-OUT;n:type:ShaderForge.SFN_Slider,id:5139,x:34205,y:33589,ptovrint:False,ptlb:DisplacementIntensityReverse,ptin:_DisplacementIntensityReverse,varname:node_1493,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:15;n:type:ShaderForge.SFN_Color,id:5395,x:31839,y:32271,ptovrint:False,ptlb:node_7422,ptin:_node_7422,varname:node_7422,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:2731,x:32385,y:32262,varname:node_2731,prsc:2|A-493-OUT,B-5395-RGB,T-2310-G;n:type:ShaderForge.SFN_Color,id:8866,x:31442,y:32247,ptovrint:False,ptlb:Moss Color,ptin:_MossColor,varname:node_5342,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.006896496,c4:1;n:type:ShaderForge.SFN_Slider,id:4016,x:30448,y:32828,ptovrint:False,ptlb:Moss Amount,ptin:_MossAmount,varname:node_1038,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_NormalVector,id:1018,x:30232,y:32889,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:18,x:30605,y:32546,varname:node_18,prsc:2,dt:0|A-1018-OUT,B-2618-OUT;n:type:ShaderForge.SFN_Vector3,id:2618,x:30279,y:32720,varname:node_2618,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_If,id:7943,x:31196,y:32618,varname:node_7943,prsc:2|A-5653-OUT,B-7695-OUT,GT-5843-OUT,EQ-5843-OUT,LT-5417-OUT;n:type:ShaderForge.SFN_Lerp,id:8028,x:32612,y:32572,varname:node_8028,prsc:2|A-5984-OUT,B-1317-OUT,T-7943-OUT;n:type:ShaderForge.SFN_Vector1,id:5417,x:30699,y:32710,varname:node_5417,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:9337,x:30812,y:32191,ptovrint:False,ptlb:Moss Noise Mask,ptin:_MossNoiseMask,varname:node_7840,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:8597,x:30332,y:32128,ptovrint:False,ptlb:MossScale,ptin:_MossScale,varname:node_125,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:8943,x:30614,y:32166,varname:node_8943,prsc:2|A-8597-OUT,B-3387-UVOUT;n:type:ShaderForge.SFN_If,id:5843,x:31121,y:32316,varname:node_5843,prsc:2|A-9337-R,B-7695-OUT,GT-2770-OUT,EQ-2770-OUT,LT-5417-OUT;n:type:ShaderForge.SFN_Vector1,id:2770,x:30799,y:32373,varname:node_2770,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:5187,x:34212,y:32861,varname:node_5187,prsc:2|A-7222-OUT,B-8191-OUT;n:type:ShaderForge.SFN_Multiply,id:7222,x:31208,y:32924,varname:node_7222,prsc:2|A-8488-OUT,B-1845-OUT;n:type:ShaderForge.SFN_Slider,id:1845,x:30664,y:32979,ptovrint:False,ptlb:MossBump,ptin:_MossBump,varname:node_1693,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;n:type:ShaderForge.SFN_Slider,id:9613,x:34689,y:33142,ptovrint:False,ptlb:MossTesseltaoin,ptin:_MossTesseltaoin,varname:_NoiseBump_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:3,max:32;n:type:ShaderForge.SFN_Color,id:4294,x:31442,y:32430,ptovrint:False,ptlb:Moss Color2,ptin:_MossColor2,varname:_MossColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2210536,c2:0.5073529,c3:0.1081856,c4:1;n:type:ShaderForge.SFN_Lerp,id:1317,x:31687,y:32560,varname:node_1317,prsc:2|A-8866-RGB,B-4294-RGB,T-9337-R;n:type:ShaderForge.SFN_TexCoord,id:3387,x:30098,y:32185,varname:node_3387,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Transform,id:3272,x:30550,y:33131,varname:node_3272,prsc:2,tffrom:1,tfto:0|IN-1018-OUT;n:type:ShaderForge.SFN_If,id:8488,x:31196,y:32738,varname:node_8488,prsc:2|A-334-OUT,B-7695-OUT,GT-5843-OUT,EQ-5843-OUT,LT-5417-OUT;n:type:ShaderForge.SFN_Dot,id:8183,x:30796,y:33157,varname:node_8183,prsc:2,dt:0|A-3272-XYZ,B-4308-OUT;n:type:ShaderForge.SFN_Vector3,id:4308,x:30395,y:33338,varname:node_4308,prsc:2,v1:0,v2:0.2,v3:0;n:type:ShaderForge.SFN_Add,id:5653,x:30815,y:32546,varname:node_5653,prsc:2|A-9337-R,B-18-OUT;n:type:ShaderForge.SFN_Add,id:334,x:30980,y:33115,varname:node_334,prsc:2|A-9337-R,B-8183-OUT;n:type:ShaderForge.SFN_OneMinus,id:7695,x:30836,y:32794,varname:node_7695,prsc:2|IN-4016-OUT;proporder:4016-9337-1845-3603-2674-5139-9613-1195-35-3505-2469-433-4995-1638-5984-815-4565-8836-436-5395-8866-4294;pass:END;sub:END;*/

Shader "Custom/Mossy_backup" {
    Properties {
        _MossAmount ("Moss Amount", Range(0, 1)) = 1
        _MossNoiseMask ("Moss Noise Mask", 2D) = "white" {}
        _MossBump ("MossBump", Range(0, 0.1)) = 0
        [MaterialToggle] _EnableReplacement ("Enable Replacement", Float ) = 0
        _NoiseTex ("NoiseTex", 2D) = "white" {}
        _DisplacementIntensityReverse ("DisplacementIntensityReverse", Range(1, 15)) = 1
        _MossTesseltaoin ("MossTesseltaoin", Range(1, 32)) = 3
        _LightCutoff ("Light Cutoff", Range(0, 1)) = 0.33
        _ColorSculpt ("Color Sculpt", Range(0, 1)) = 0.5
        _LightColorBrightness ("Light Color Brightness", Range(0, 1)) = 1
        _DarkColorBrightness ("Dark Color Brightness", Range(0, 1)) = 0.5
        _PRIMARYCOLORreplaceVCblack ("PRIMARY COLOR (replace VC black)", Color) = (0,0,0,1)
        _SECONDARYCOLORreplaceVCred ("SECONDARY COLOR (replace VC red)", Color) = (1,0,0,1)
        _HIGHLIGHTCOLORreplaceVCblue ("HIGHLIGHT COLOR (replace VC blue)", Color) = (0,0,1,1)
        [MaterialToggle] _REPLACEVCs ("REPLACE VCs", Float ) = 0
        _heightFogStart ("heightFogStart", Range(0, 10)) = 0
        _HeightFogColor ("Height Fog Color", Color) = (0.5,0.5,0.5,1)
        [MaterialToggle] _FOGTOGGLE ("FOG TOGGLE", Float ) = 0.04686336
        [MaterialToggle] _globalfoginfluence ("global fog influence", Float ) = 0.5
        _node_7422 ("node_7422", Color) = (0,0,0,1)
        _MossColor ("Moss Color", Color) = (0,1,0.006896496,1)
        _MossColor2 ("Moss Color2", Color) = (0.2210536,0.5073529,0.1081856,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
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
            uniform fixed _EnableReplacement;
            uniform sampler2D _NoiseTex; uniform float4 _NoiseTex_ST;
            uniform float _DisplacementIntensityReverse;
            uniform float4 _node_7422;
            uniform float4 _MossColor;
            uniform float _MossAmount;
            uniform sampler2D _MossNoiseMask; uniform float4 _MossNoiseMask_ST;
            uniform float _MossBump;
            uniform float _MossTesseltaoin;
            uniform float4 _MossColor2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 _NoiseTex_var = tex2Dlod(_NoiseTex,float4(TRANSFORM_TEX(o.uv0, _NoiseTex),0.0,0));
                v.vertex.xyz += lerp( float3(0,0,0), (((_NoiseTex_var.r*1.5+-0.5)*v.normal)/_DisplacementIntensityReverse), _EnableReplacement );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float4 vertexColor : COLOR;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.vertexColor = v.vertexColor;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 _MossNoiseMask_var = tex2Dlod(_MossNoiseMask,float4(TRANSFORM_TEX(v.texcoord0, _MossNoiseMask),0.0,0));
                    float node_7695 = (1.0 - _MossAmount);
                    float node_8488_if_leA = step((_MossNoiseMask_var.r+dot(mul( unity_ObjectToWorld, float4(v.normal,0) ).xyz.rgb,float3(0,0.2,0))),node_7695);
                    float node_8488_if_leB = step(node_7695,(_MossNoiseMask_var.r+dot(mul( unity_ObjectToWorld, float4(v.normal,0) ).xyz.rgb,float3(0,0.2,0))));
                    float node_5417 = 0.0;
                    float node_5843_if_leA = step(_MossNoiseMask_var.r,node_7695);
                    float node_5843_if_leB = step(node_7695,_MossNoiseMask_var.r);
                    float node_2770 = 1.0;
                    float node_5843 = lerp((node_5843_if_leA*node_5417)+(node_5843_if_leB*node_2770),node_2770,node_5843_if_leA*node_5843_if_leB);
                    v.vertex.xyz += ((lerp((node_8488_if_leA*node_5417)+(node_8488_if_leB*node_5843),node_5843,node_8488_if_leA*node_8488_if_leB)*_MossBump)*v.normal);
                }
                float Tessellation(TessVertex v){
                    return _MossTesseltaoin;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.vertexColor = vi[0].vertexColor*bary.x + vi[1].vertexColor*bary.y + vi[2].vertexColor*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 node_493 = float4(0,0,0,0);
                float4 node_8118 = (lerp(node_493,float4(_PRIMARYCOLORreplaceVCblack.rgb,0.0),(1.0 - (i.vertexColor.r+i.vertexColor.b)))+lerp(node_493,float4(_SECONDARYCOLORreplaceVCred.rgb,0.0),i.vertexColor.r)+lerp(node_493,float4(_HIGHLIGHTCOLORreplaceVCblue.rgb,0.0),i.vertexColor.b)+lerp(node_493,float4(_node_7422.rgb,0.0),i.vertexColor.g));
                float4 _MossNoiseMask_var = tex2D(_MossNoiseMask,TRANSFORM_TEX(i.uv0, _MossNoiseMask));
                float node_7695 = (1.0 - _MossAmount);
                float node_7943_if_leA = step((_MossNoiseMask_var.r+dot(i.normalDir,float3(0,1,0))),node_7695);
                float node_7943_if_leB = step(node_7695,(_MossNoiseMask_var.r+dot(i.normalDir,float3(0,1,0))));
                float node_5417 = 0.0;
                float node_5843_if_leA = step(_MossNoiseMask_var.r,node_7695);
                float node_5843_if_leB = step(node_7695,_MossNoiseMask_var.r);
                float node_2770 = 1.0;
                float node_5843 = lerp((node_5843_if_leA*node_5417)+(node_5843_if_leB*node_2770),node_2770,node_5843_if_leA*node_5843_if_leB);
                float3 node_8028 = lerp(lerp( i.vertexColor.rgb, node_8118.rgb, _REPLACEVCs ),lerp(_MossColor.rgb,_MossColor2.rgb,_MossNoiseMask_var.r),lerp((node_7943_if_leA*node_5417)+(node_7943_if_leB*node_5843),node_5843,node_7943_if_leA*node_7943_if_leB));
                float node_615_if_leA = step(0.5*dot(lightDirection,normalDirection)+0.5,_ColorSculpt);
                float node_615_if_leB = step(_ColorSculpt,0.5*dot(lightDirection,normalDirection)+0.5);
                float node_7409 = clamp(_LightColorBrightness,_ColorSculpt,1.0);
                float3 node_4984 = ((node_8028*UNITY_LIGHTMODEL_AMBIENT.rgb)+((node_8028*_LightColor0.rgb)*lerp((node_615_if_leA*clamp(_DarkColorBrightness,0.0,_ColorSculpt))+(node_615_if_leB*node_7409),node_7409,node_615_if_leA*node_615_if_leB)*(step(_LightCutoff,attenuation)*attenuation))); // diffuse plus ambient
                float3 finalColor = lerp( node_4984, lerp(node_4984,lerp( _HeightFogColor.rgb, saturate((_globalfogcolor.rgb*_HeightFogColor.rgb)), _globalfoginfluence ),saturate((_heightFogStart-i.posWorld.g))), _FOGTOGGLE );
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
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
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
            uniform fixed _EnableReplacement;
            uniform sampler2D _NoiseTex; uniform float4 _NoiseTex_ST;
            uniform float _DisplacementIntensityReverse;
            uniform float4 _node_7422;
            uniform float4 _MossColor;
            uniform float _MossAmount;
            uniform sampler2D _MossNoiseMask; uniform float4 _MossNoiseMask_ST;
            uniform float _MossBump;
            uniform float _MossTesseltaoin;
            uniform float4 _MossColor2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 _NoiseTex_var = tex2Dlod(_NoiseTex,float4(TRANSFORM_TEX(o.uv0, _NoiseTex),0.0,0));
                v.vertex.xyz += lerp( float3(0,0,0), (((_NoiseTex_var.r*1.5+-0.5)*v.normal)/_DisplacementIntensityReverse), _EnableReplacement );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float4 vertexColor : COLOR;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.vertexColor = v.vertexColor;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 _MossNoiseMask_var = tex2Dlod(_MossNoiseMask,float4(TRANSFORM_TEX(v.texcoord0, _MossNoiseMask),0.0,0));
                    float node_7695 = (1.0 - _MossAmount);
                    float node_8488_if_leA = step((_MossNoiseMask_var.r+dot(mul( unity_ObjectToWorld, float4(v.normal,0) ).xyz.rgb,float3(0,0.2,0))),node_7695);
                    float node_8488_if_leB = step(node_7695,(_MossNoiseMask_var.r+dot(mul( unity_ObjectToWorld, float4(v.normal,0) ).xyz.rgb,float3(0,0.2,0))));
                    float node_5417 = 0.0;
                    float node_5843_if_leA = step(_MossNoiseMask_var.r,node_7695);
                    float node_5843_if_leB = step(node_7695,_MossNoiseMask_var.r);
                    float node_2770 = 1.0;
                    float node_5843 = lerp((node_5843_if_leA*node_5417)+(node_5843_if_leB*node_2770),node_2770,node_5843_if_leA*node_5843_if_leB);
                    v.vertex.xyz += ((lerp((node_8488_if_leA*node_5417)+(node_8488_if_leB*node_5843),node_5843,node_8488_if_leA*node_8488_if_leB)*_MossBump)*v.normal);
                }
                float Tessellation(TessVertex v){
                    return _MossTesseltaoin;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.vertexColor = vi[0].vertexColor*bary.x + vi[1].vertexColor*bary.y + vi[2].vertexColor*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 node_493 = float4(0,0,0,0);
                float4 node_8118 = (lerp(node_493,float4(_PRIMARYCOLORreplaceVCblack.rgb,0.0),(1.0 - (i.vertexColor.r+i.vertexColor.b)))+lerp(node_493,float4(_SECONDARYCOLORreplaceVCred.rgb,0.0),i.vertexColor.r)+lerp(node_493,float4(_HIGHLIGHTCOLORreplaceVCblue.rgb,0.0),i.vertexColor.b)+lerp(node_493,float4(_node_7422.rgb,0.0),i.vertexColor.g));
                float4 _MossNoiseMask_var = tex2D(_MossNoiseMask,TRANSFORM_TEX(i.uv0, _MossNoiseMask));
                float node_7695 = (1.0 - _MossAmount);
                float node_7943_if_leA = step((_MossNoiseMask_var.r+dot(i.normalDir,float3(0,1,0))),node_7695);
                float node_7943_if_leB = step(node_7695,(_MossNoiseMask_var.r+dot(i.normalDir,float3(0,1,0))));
                float node_5417 = 0.0;
                float node_5843_if_leA = step(_MossNoiseMask_var.r,node_7695);
                float node_5843_if_leB = step(node_7695,_MossNoiseMask_var.r);
                float node_2770 = 1.0;
                float node_5843 = lerp((node_5843_if_leA*node_5417)+(node_5843_if_leB*node_2770),node_2770,node_5843_if_leA*node_5843_if_leB);
                float3 node_8028 = lerp(lerp( i.vertexColor.rgb, node_8118.rgb, _REPLACEVCs ),lerp(_MossColor.rgb,_MossColor2.rgb,_MossNoiseMask_var.r),lerp((node_7943_if_leA*node_5417)+(node_7943_if_leB*node_5843),node_5843,node_7943_if_leA*node_7943_if_leB));
                float node_615_if_leA = step(0.5*dot(lightDirection,normalDirection)+0.5,_ColorSculpt);
                float node_615_if_leB = step(_ColorSculpt,0.5*dot(lightDirection,normalDirection)+0.5);
                float node_7409 = clamp(_LightColorBrightness,_ColorSculpt,1.0);
                float3 node_4984 = ((node_8028*UNITY_LIGHTMODEL_AMBIENT.rgb)+((node_8028*_LightColor0.rgb)*lerp((node_615_if_leA*clamp(_DarkColorBrightness,0.0,_ColorSculpt))+(node_615_if_leB*node_7409),node_7409,node_615_if_leA*node_615_if_leB)*(step(_LightCutoff,attenuation)*attenuation))); // diffuse plus ambient
                float3 finalColor = lerp( node_4984, lerp(node_4984,lerp( _HeightFogColor.rgb, saturate((_globalfogcolor.rgb*_HeightFogColor.rgb)), _globalfoginfluence ),saturate((_heightFogStart-i.posWorld.g))), _FOGTOGGLE );
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
            Cull Back
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform fixed _EnableReplacement;
            uniform sampler2D _NoiseTex; uniform float4 _NoiseTex_ST;
            uniform float _DisplacementIntensityReverse;
            uniform float _MossAmount;
            uniform sampler2D _MossNoiseMask; uniform float4 _MossNoiseMask_ST;
            uniform float _MossBump;
            uniform float _MossTesseltaoin;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 _NoiseTex_var = tex2Dlod(_NoiseTex,float4(TRANSFORM_TEX(o.uv0, _NoiseTex),0.0,0));
                v.vertex.xyz += lerp( float3(0,0,0), (((_NoiseTex_var.r*1.5+-0.5)*v.normal)/_DisplacementIntensityReverse), _EnableReplacement );
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 _MossNoiseMask_var = tex2Dlod(_MossNoiseMask,float4(TRANSFORM_TEX(v.texcoord0, _MossNoiseMask),0.0,0));
                    float node_7695 = (1.0 - _MossAmount);
                    float node_8488_if_leA = step((_MossNoiseMask_var.r+dot(mul( unity_ObjectToWorld, float4(v.normal,0) ).xyz.rgb,float3(0,0.2,0))),node_7695);
                    float node_8488_if_leB = step(node_7695,(_MossNoiseMask_var.r+dot(mul( unity_ObjectToWorld, float4(v.normal,0) ).xyz.rgb,float3(0,0.2,0))));
                    float node_5417 = 0.0;
                    float node_5843_if_leA = step(_MossNoiseMask_var.r,node_7695);
                    float node_5843_if_leB = step(node_7695,_MossNoiseMask_var.r);
                    float node_2770 = 1.0;
                    float node_5843 = lerp((node_5843_if_leA*node_5417)+(node_5843_if_leB*node_2770),node_2770,node_5843_if_leA*node_5843_if_leB);
                    v.vertex.xyz += ((lerp((node_8488_if_leA*node_5417)+(node_8488_if_leB*node_5843),node_5843,node_8488_if_leA*node_8488_if_leB)*_MossBump)*v.normal);
                }
                float Tessellation(TessVertex v){
                    return _MossTesseltaoin;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
