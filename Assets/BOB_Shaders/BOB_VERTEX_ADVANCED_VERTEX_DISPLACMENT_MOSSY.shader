// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:34655,y:32415,varname:node_9361,prsc:2|custl-4018-OUT,voffset-2007-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8068,x:32461,y:33179,varname:node_8068,prsc:2;n:type:ShaderForge.SFN_LightColor,id:3406,x:32506,y:32666,varname:node_3406,prsc:2;n:type:ShaderForge.SFN_LightVector,id:6869,x:31901,y:32515,varname:node_6869,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9684,x:31901,y:32669,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:7782,x:32184,y:32560,cmnt:Lambert,varname:node_7782,prsc:2,dt:4|A-6869-OUT,B-9684-OUT;n:type:ShaderForge.SFN_Multiply,id:1941,x:32718,y:32633,cmnt:Diffuse Contribution,varname:node_1941,prsc:2|A-2941-OUT,B-3406-RGB;n:type:ShaderForge.SFN_Multiply,id:5085,x:33117,y:32837,cmnt:Attenuate and Color,varname:node_5085,prsc:2|A-1941-OUT,B-3883-OUT,C-2646-OUT;n:type:ShaderForge.SFN_AmbientLight,id:7528,x:32973,y:32530,varname:node_7528,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2460,x:33229,y:32475,cmnt:Ambient Light,varname:node_2460,prsc:2|A-2941-OUT,B-7528-RGB;n:type:ShaderForge.SFN_VertexColor,id:2477,x:31711,y:32299,varname:node_2477,prsc:2;n:type:ShaderForge.SFN_Step,id:1874,x:32735,y:33121,varname:node_1874,prsc:2|A-7272-OUT,B-8068-OUT;n:type:ShaderForge.SFN_Slider,id:7272,x:32382,y:33344,ptovrint:False,ptlb:Light Cutoff,ptin:_LightCutoff,varname:node_7272,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.33,max:1;n:type:ShaderForge.SFN_Multiply,id:2646,x:32893,y:33238,varname:node_2646,prsc:2|A-1874-OUT,B-8068-OUT;n:type:ShaderForge.SFN_If,id:3883,x:32349,y:32784,cmnt:TOONIFY,varname:node_3883,prsc:2|A-7782-OUT,B-3697-OUT,GT-4814-OUT,EQ-4814-OUT,LT-3790-OUT;n:type:ShaderForge.SFN_Slider,id:3697,x:31779,y:32995,ptovrint:False,ptlb:Color Sculpt,ptin:_ColorSculpt,varname:node_3697,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:2896,x:31779,y:33101,ptovrint:False,ptlb:Light Color Brightness,ptin:_LightColorBrightness,varname:node_2896,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:9875,x:31779,y:33193,ptovrint:False,ptlb:Dark Color Brightness,ptin:_DarkColorBrightness,varname:node_9875,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Clamp,id:4814,x:32174,y:32998,varname:node_4814,prsc:2|IN-2896-OUT,MIN-3697-OUT,MAX-6236-OUT;n:type:ShaderForge.SFN_Clamp,id:3790,x:32189,y:33171,varname:node_3790,prsc:2|IN-9875-OUT,MIN-5171-OUT,MAX-3697-OUT;n:type:ShaderForge.SFN_Vector1,id:6236,x:31911,y:33275,varname:node_6236,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:5171,x:31911,y:33328,varname:node_5171,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:6109,x:33408,y:32845,cmnt:diffuse plus ambient,varname:node_6109,prsc:2|A-2460-OUT,B-5085-OUT;n:type:ShaderForge.SFN_Color,id:9488,x:31711,y:31679,ptovrint:False,ptlb:PRIMARY COLOR (replace VC black),ptin:_PRIMARYCOLORreplaceVCblack,varname:node_9488,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:5228,x:31711,y:31838,ptovrint:False,ptlb:SECONDARY COLOR (replace VC red),ptin:_SECONDARYCOLORreplaceVCred,varname:_PRIMARYCOLORreplaceVCblack_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:5269,x:31711,y:31997,ptovrint:False,ptlb:HIGHLIGHT COLOR (replace VC blue),ptin:_HIGHLIGHTCOLORreplaceVCblue,varname:_PRIMARYCOLORreplaceVCblack_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:1570,x:32257,y:31874,varname:node_1570,prsc:2|A-3346-OUT,B-5228-RGB,T-2477-R;n:type:ShaderForge.SFN_Lerp,id:2635,x:32257,y:32008,varname:node_2635,prsc:2|A-3346-OUT,B-5269-RGB,T-2477-B;n:type:ShaderForge.SFN_Lerp,id:625,x:32257,y:31743,varname:node_625,prsc:2|A-3346-OUT,B-9488-RGB,T-2614-OUT;n:type:ShaderForge.SFN_Vector4,id:3346,x:31711,y:31567,varname:node_3346,prsc:2,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:2917,x:32164,y:31528,varname:node_2917,prsc:2|A-2477-R,B-2477-B;n:type:ShaderForge.SFN_OneMinus,id:2614,x:32304,y:31583,varname:node_2614,prsc:2|IN-2917-OUT;n:type:ShaderForge.SFN_Add,id:2235,x:32574,y:31875,varname:node_2235,prsc:2|A-625-OUT,B-1570-OUT,C-2635-OUT,D-3749-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8240,x:32603,y:32246,ptovrint:False,ptlb:REPLACE VCs,ptin:_REPLACEVCs,cmnt:VERTEX COLOR REPLACE ,varname:node_8240,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2477-RGB,B-5153-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5153,x:32797,y:31942,varname:node_5153,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-2235-OUT;n:type:ShaderForge.SFN_Relay,id:3961,x:33468,y:32307,varname:node_3961,prsc:2|IN-9534-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9534,x:32797,y:31798,varname:node_9534,prsc:2,cc1:3,cc2:-1,cc3:-1,cc4:-1|IN-2235-OUT;n:type:ShaderForge.SFN_Append,id:9221,x:33524,y:32524,varname:node_9221,prsc:2|A-6109-OUT,B-3961-OUT;n:type:ShaderForge.SFN_Relay,id:9828,x:33335,y:32380,varname:node_9828,prsc:2|IN-2477-R;n:type:ShaderForge.SFN_Noise,id:5435,x:33308,y:31422,varname:node_5435,prsc:2|XY-4447-OUT;n:type:ShaderForge.SFN_TexCoord,id:2918,x:33005,y:31363,varname:node_2918,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:7610,x:32896,y:31110,varname:node_7610,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4447,x:33243,y:31251,varname:node_4447,prsc:2|A-2918-UVOUT,B-4183-OUT;n:type:ShaderForge.SFN_Subtract,id:8687,x:33514,y:31466,varname:node_8687,prsc:2|A-5435-OUT,B-6523-OUT;n:type:ShaderForge.SFN_Vector1,id:6523,x:33298,y:31550,varname:node_6523,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:4621,x:33869,y:31505,varname:node_4621,prsc:2|A-795-OUT,B-4550-OUT;n:type:ShaderForge.SFN_NormalVector,id:9444,x:33414,y:31142,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:795,x:33819,y:31293,varname:node_795,prsc:2|A-1069-OUT,B-8687-OUT;n:type:ShaderForge.SFN_Divide,id:4550,x:33678,y:31562,varname:node_4550,prsc:2|A-4608-OUT,B-4608-OUT;n:type:ShaderForge.SFN_Vector1,id:4608,x:33282,y:31669,varname:node_4608,prsc:2,v1:10;n:type:ShaderForge.SFN_Multiply,id:1069,x:33666,y:31142,varname:node_1069,prsc:2|A-9444-OUT,B-5435-OUT;n:type:ShaderForge.SFN_Sin,id:4183,x:33155,y:31075,varname:node_4183,prsc:2|IN-7610-TSL;n:type:ShaderForge.SFN_Slider,id:6688,x:33588,y:32097,ptovrint:False,ptlb:heightFogStart,ptin:_heightFogStart,varname:node_6688,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Slider,id:2176,x:33575,y:32218,ptovrint:False,ptlb:heightFogEnd,ptin:_heightFogEnd,varname:_heightFogStart_copy,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:10;n:type:ShaderForge.SFN_Color,id:3244,x:34204,y:31719,ptovrint:False,ptlb:Height Fog Color,ptin:_HeightFogColor,varname:node_3244,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Subtract,id:5227,x:33963,y:32207,varname:node_5227,prsc:2|A-2176-OUT,B-6688-OUT;n:type:ShaderForge.SFN_Subtract,id:9744,x:34068,y:31923,varname:node_9744,prsc:2|A-6688-OUT,B-9700-Y;n:type:ShaderForge.SFN_Divide,id:5940,x:33963,y:32082,varname:node_5940,prsc:2|A-6688-OUT,B-9700-Y;n:type:ShaderForge.SFN_Lerp,id:5294,x:34598,y:32070,varname:node_5294,prsc:2|A-6109-OUT,B-8090-OUT,T-2532-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:9700,x:33809,y:31890,varname:node_9700,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:2532,x:34220,y:31923,varname:node_2532,prsc:2|IN-9744-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:4018,x:34065,y:32564,ptovrint:False,ptlb:FOG TOGGLE,ptin:_FOGTOGGLE,varname:node_4018,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6109-OUT,B-5294-OUT;n:type:ShaderForge.SFN_Blend,id:6410,x:34486,y:31547,varname:node_6410,prsc:2,blmd:1,clmp:True|SRC-9928-RGB,DST-3244-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:8090,x:34759,y:31685,ptovrint:False,ptlb:global fog influence,ptin:_globalfoginfluence,varname:node_8090,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3244-RGB,B-6410-OUT;n:type:ShaderForge.SFN_Color,id:9928,x:34204,y:31470,ptovrint:False,ptlb:_globalfogcolor,ptin:_globalfogcolor,varname:node_9928,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:1968,x:33392,y:33196,varname:node_1968,prsc:2|A-3316-OUT,B-4962-OUT;n:type:ShaderForge.SFN_Slider,id:4962,x:33059,y:33322,ptovrint:False,ptlb:NoiseResolution,ptin:_NoiseResolution,varname:node_4962,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2279572,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:7201,x:34381,y:32926,ptovrint:False,ptlb:Enable Replacement,ptin:_EnableReplacement,varname:node_7201,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-7727-OUT,B-7938-OUT;n:type:ShaderForge.SFN_Vector3,id:7727,x:34173,y:32905,varname:node_7727,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Multiply,id:5216,x:34254,y:33117,varname:node_5216,prsc:2|A-8743-OUT,B-8860-OUT;n:type:ShaderForge.SFN_NormalVector,id:8860,x:34049,y:33200,prsc:2,pt:False;n:type:ShaderForge.SFN_RemapRange,id:8743,x:34049,y:33006,varname:node_8743,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:1|IN-5340-R;n:type:ShaderForge.SFN_Tex2d,id:5340,x:33710,y:33066,ptovrint:False,ptlb:NoiseTex,ptin:_NoiseTex,varname:node_5340,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1879-OUT;n:type:ShaderForge.SFN_NormalVector,id:9566,x:33083,y:33080,prsc:2,pt:False;n:type:ShaderForge.SFN_Code,id:7653,x:33527,y:33344,varname:node_7653,prsc:2,code:CgByAGUAdAB1AHIAbgAgAGYAbABvAGEAdAAyACgAdgAuAHgALAAgAHYALgB5ACkAOwA=,output:1,fname:DropZ,width:258,height:112,input:2,input_1_label:v|A-1968-OUT;n:type:ShaderForge.SFN_Add,id:1879,x:33878,y:33288,varname:node_1879,prsc:2|A-7653-OUT,B-8682-OUT;n:type:ShaderForge.SFN_Code,id:8682,x:33538,y:33549,varname:node_8682,prsc:2,code:cgBlAHQAdQByAG4AIABmAGwAbwBhAHQAMgAoAEEALABCACkAOwA=,output:1,fname:createV2,width:247,height:132,input:0,input:0,input_1_label:A,input_2_label:B|A-6136-OUT,B-8572-OUT;n:type:ShaderForge.SFN_Slider,id:6136,x:33077,y:33440,ptovrint:False,ptlb:DisplacementNoiseSeedX,ptin:_DisplacementNoiseSeedX,varname:node_6136,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1614917,max:0.5;n:type:ShaderForge.SFN_Slider,id:8572,x:33077,y:33528,ptovrint:False,ptlb:DisplacementNoiseSeedY,ptin:_DisplacementNoiseSeedY,varname:node_8572,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2700691,max:0.5;n:type:ShaderForge.SFN_Normalize,id:3316,x:33297,y:33056,varname:node_3316,prsc:2|IN-9566-OUT;n:type:ShaderForge.SFN_Divide,id:7938,x:34472,y:33194,varname:node_7938,prsc:2|A-5216-OUT,B-1493-OUT;n:type:ShaderForge.SFN_Slider,id:1493,x:34077,y:33461,ptovrint:False,ptlb:DisplacementIntensityReverse,ptin:_DisplacementIntensityReverse,varname:node_1493,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:15;n:type:ShaderForge.SFN_Color,id:7422,x:31711,y:32143,ptovrint:False,ptlb:node_7422,ptin:_node_7422,varname:node_7422,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:3749,x:32257,y:32134,varname:node_3749,prsc:2|A-3346-OUT,B-7422-RGB,T-2477-G;n:type:ShaderForge.SFN_Color,id:5342,x:31314,y:32119,ptovrint:False,ptlb:Moss Color,ptin:_MossColor,varname:node_5342,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.006896496,c4:1;n:type:ShaderForge.SFN_Slider,id:1038,x:30320,y:32700,ptovrint:False,ptlb:Moss Amount,ptin:_MossAmount,varname:node_1038,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_NormalVector,id:5161,x:29884,y:32746,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:284,x:30348,y:32424,varname:node_284,prsc:2,dt:0|A-9411-OUT,B-658-OUT;n:type:ShaderForge.SFN_Vector3,id:658,x:30151,y:32592,varname:node_658,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_If,id:6641,x:31068,y:32490,varname:node_6641,prsc:2|A-6456-OUT,B-6052-OUT,GT-8983-OUT,EQ-8983-OUT,LT-7472-OUT;n:type:ShaderForge.SFN_Lerp,id:2941,x:32484,y:32444,varname:node_2941,prsc:2|A-8240-OUT,B-5898-OUT,T-6641-OUT;n:type:ShaderForge.SFN_Vector1,id:7472,x:30571,y:32582,varname:node_7472,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:7840,x:30684,y:32063,ptovrint:False,ptlb:Moss Noise Mask,ptin:_MossNoiseMask,varname:node_7840,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5208-OUT;n:type:ShaderForge.SFN_ValueProperty,id:125,x:30204,y:32000,ptovrint:False,ptlb:MossScale,ptin:_MossScale,varname:node_125,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:5208,x:30486,y:32038,varname:node_5208,prsc:2|A-125-OUT,B-3163-UVOUT;n:type:ShaderForge.SFN_If,id:8983,x:30993,y:32188,varname:node_8983,prsc:2|A-7840-R,B-6052-OUT,GT-6282-OUT,EQ-6282-OUT,LT-7472-OUT;n:type:ShaderForge.SFN_Vector1,id:6282,x:30671,y:32245,varname:node_6282,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:8069,x:34084,y:32733,varname:node_8069,prsc:2|A-918-OUT,B-8860-OUT;n:type:ShaderForge.SFN_Multiply,id:918,x:31080,y:32796,varname:node_918,prsc:2|A-4409-OUT,B-1693-OUT;n:type:ShaderForge.SFN_Slider,id:1693,x:30536,y:32851,ptovrint:False,ptlb:MossBump,ptin:_MossBump,varname:node_1693,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;n:type:ShaderForge.SFN_Slider,id:2065,x:34561,y:33014,ptovrint:False,ptlb:MossTesseltaoin,ptin:_MossTesseltaoin,varname:_NoiseBump_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:3,max:32;n:type:ShaderForge.SFN_Color,id:9655,x:31314,y:32302,ptovrint:False,ptlb:Moss Color2,ptin:_MossColor2,varname:_MossColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2210536,c2:0.5073529,c3:0.1081856,c4:1;n:type:ShaderForge.SFN_Lerp,id:5898,x:31559,y:32432,varname:node_5898,prsc:2|A-5342-RGB,B-9655-RGB,T-7840-R;n:type:ShaderForge.SFN_TexCoord,id:3163,x:29970,y:32057,varname:node_3163,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Transform,id:6363,x:30422,y:33003,varname:node_6363,prsc:2,tffrom:1,tfto:0|IN-9411-OUT;n:type:ShaderForge.SFN_If,id:4409,x:31068,y:32610,varname:node_4409,prsc:2|A-9191-OUT,B-6052-OUT,GT-8983-OUT,EQ-8983-OUT,LT-7472-OUT;n:type:ShaderForge.SFN_Dot,id:3629,x:30614,y:33010,varname:node_3629,prsc:2,dt:0|A-6363-XYZ,B-620-OUT;n:type:ShaderForge.SFN_Vector3,id:620,x:30267,y:33210,varname:node_620,prsc:2,v1:0,v2:0.2,v3:0;n:type:ShaderForge.SFN_Add,id:6456,x:30687,y:32418,varname:node_6456,prsc:2|A-7840-R,B-8026-OUT;n:type:ShaderForge.SFN_Add,id:9191,x:30927,y:32969,varname:node_9191,prsc:2|A-7840-R,B-103-OUT;n:type:ShaderForge.SFN_OneMinus,id:6052,x:30708,y:32666,varname:node_6052,prsc:2|IN-1038-OUT;n:type:ShaderForge.SFN_Normalize,id:9411,x:30090,y:32778,varname:node_9411,prsc:2|IN-5161-OUT;n:type:ShaderForge.SFN_Clamp01,id:8026,x:30529,y:32434,varname:node_8026,prsc:2|IN-284-OUT;n:type:ShaderForge.SFN_Clamp01,id:103,x:30768,y:33010,varname:node_103,prsc:2|IN-3629-OUT;n:type:ShaderForge.SFN_Add,id:2007,x:34408,y:32737,varname:node_2007,prsc:2|A-8069-OUT,B-7201-OUT;proporder:7272-3697-2896-9875-8240-9488-5228-5269-6688-2176-3244-4018-8090-4962-7201-5340-6136-8572-1493-7422-5342-9655-1038-7840-125-1693-2065;pass:END;sub:END;*/

Shader "Shader Forge/BOB_VERTEX_ADVANCED_VERTEX_DISPLACEMENT_MOSS" {
    Properties {
        _LightCutoff ("Light Cutoff", Range(0, 1)) = 0.33
        _ColorSculpt ("Color Sculpt", Range(0, 1)) = 0.5
        _LightColorBrightness ("Light Color Brightness", Range(0, 1)) = 1
        _DarkColorBrightness ("Dark Color Brightness", Range(0, 1)) = 0.5
        [MaterialToggle] _REPLACEVCs ("REPLACE VCs", Float ) = 0
        _PRIMARYCOLORreplaceVCblack ("PRIMARY COLOR (replace VC black)", Color) = (0,0,0,1)
        _SECONDARYCOLORreplaceVCred ("SECONDARY COLOR (replace VC red)", Color) = (1,0,0,1)
        _HIGHLIGHTCOLORreplaceVCblue ("HIGHLIGHT COLOR (replace VC blue)", Color) = (0,0,1,1)
        _heightFogStart ("heightFogStart", Range(0, 10)) = 0
        [HideInInspector]_heightFogEnd ("heightFogEnd", Range(1, 10)) = 1
        _HeightFogColor ("Height Fog Color", Color) = (0.5,0.5,0.5,1)
        [MaterialToggle] _FOGTOGGLE ("FOG TOGGLE", Float ) = 0.04686336
        [MaterialToggle] _globalfoginfluence ("global fog influence", Float ) = 0.5
        _NoiseResolution ("NoiseResolution", Range(0, 1)) = 0.2279572
        [MaterialToggle] _EnableReplacement ("Enable Replacement", Float ) = 0
        _NoiseTex ("NoiseTex", 2D) = "white" {}
        _DisplacementNoiseSeedX ("DisplacementNoiseSeedX", Range(0, 0.5)) = 0.1614917
        _DisplacementNoiseSeedY ("DisplacementNoiseSeedY", Range(0, 0.5)) = 0.2700691
        _DisplacementIntensityReverse ("DisplacementIntensityReverse", Range(1, 15)) = 1
        _node_7422 ("node_7422", Color) = (0,0,0,1)
        _MossColor ("Moss Color", Color) = (0,1,0.006896496,1)
        _MossColor2 ("Moss Color2", Color) = (0.2210536,0.5073529,0.1081856,1)
        _MossAmount ("Moss Amount", Range(0, 1)) = 1
        _MossNoiseMask ("Moss Noise Mask", 2D) = "white" {}
        _MossScale ("MossScale", Float ) = 0
        _MossBump ("MossBump", Range(0, 0.1)) = 0
        _MossTesseltaoin ("MossTesseltaoin", Range(1, 32)) = 3
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
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
            uniform float _NoiseResolution;
            uniform fixed _EnableReplacement;
            uniform sampler2D _NoiseTex; uniform float4 _NoiseTex_ST;
            float2 DropZ( float3 v ){
            
            return float2(v.x, v.y);
            }
            
            float2 createV2( float A , float B ){
            return float2(A,B);
            }
            
            uniform float _DisplacementNoiseSeedX;
            uniform float _DisplacementNoiseSeedY;
            uniform float _DisplacementIntensityReverse;
            uniform float4 _node_7422;
            uniform float4 _MossColor;
            uniform float _MossAmount;
            uniform sampler2D _MossNoiseMask; uniform float4 _MossNoiseMask_ST;
            uniform float _MossScale;
            uniform float _MossBump;
            uniform float4 _MossColor2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
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
                float2 node_5208 = (_MossScale*o.uv0);
                float4 _MossNoiseMask_var = tex2Dlod(_MossNoiseMask,float4(TRANSFORM_TEX(node_5208, _MossNoiseMask),0.0,0));
                float3 node_9411 = normalize(v.normal);
                float node_6052 = (1.0 - _MossAmount);
                float node_4409_if_leA = step((_MossNoiseMask_var.r+saturate(dot(mul( unity_ObjectToWorld, float4(node_9411,0) ).xyz.rgb,float3(0,0.2,0)))),node_6052);
                float node_4409_if_leB = step(node_6052,(_MossNoiseMask_var.r+saturate(dot(mul( unity_ObjectToWorld, float4(node_9411,0) ).xyz.rgb,float3(0,0.2,0)))));
                float node_7472 = 0.0;
                float node_8983_if_leA = step(_MossNoiseMask_var.r,node_6052);
                float node_8983_if_leB = step(node_6052,_MossNoiseMask_var.r);
                float node_6282 = 1.0;
                float node_8983 = lerp((node_8983_if_leA*node_7472)+(node_8983_if_leB*node_6282),node_6282,node_8983_if_leA*node_8983_if_leB);
                float2 node_1879 = (DropZ( (normalize(v.normal)*_NoiseResolution) )+createV2( _DisplacementNoiseSeedX , _DisplacementNoiseSeedY ));
                float4 _NoiseTex_var = tex2Dlod(_NoiseTex,float4(TRANSFORM_TEX(node_1879, _NoiseTex),0.0,0));
                v.vertex.xyz += (((lerp((node_4409_if_leA*node_7472)+(node_4409_if_leB*node_8983),node_8983,node_4409_if_leA*node_4409_if_leB)*_MossBump)*v.normal)+lerp( float3(0,0,0), (((_NoiseTex_var.r*1.5+-0.5)*v.normal)/_DisplacementIntensityReverse), _EnableReplacement ));
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
                float4 node_2235 = (lerp(node_3346,float4(_PRIMARYCOLORreplaceVCblack.rgb,0.0),(1.0 - (i.vertexColor.r+i.vertexColor.b)))+lerp(node_3346,float4(_SECONDARYCOLORreplaceVCred.rgb,0.0),i.vertexColor.r)+lerp(node_3346,float4(_HIGHLIGHTCOLORreplaceVCblue.rgb,0.0),i.vertexColor.b)+lerp(node_3346,float4(_node_7422.rgb,0.0),i.vertexColor.g));
                float2 node_5208 = (_MossScale*i.uv0);
                float4 _MossNoiseMask_var = tex2D(_MossNoiseMask,TRANSFORM_TEX(node_5208, _MossNoiseMask));
                float3 node_9411 = normalize(i.normalDir);
                float node_6052 = (1.0 - _MossAmount);
                float node_6641_if_leA = step((_MossNoiseMask_var.r+saturate(dot(node_9411,float3(0,1,0)))),node_6052);
                float node_6641_if_leB = step(node_6052,(_MossNoiseMask_var.r+saturate(dot(node_9411,float3(0,1,0)))));
                float node_7472 = 0.0;
                float node_8983_if_leA = step(_MossNoiseMask_var.r,node_6052);
                float node_8983_if_leB = step(node_6052,_MossNoiseMask_var.r);
                float node_6282 = 1.0;
                float node_8983 = lerp((node_8983_if_leA*node_7472)+(node_8983_if_leB*node_6282),node_6282,node_8983_if_leA*node_8983_if_leB);
                float3 node_2941 = lerp(lerp( i.vertexColor.rgb, node_2235.rgb, _REPLACEVCs ),lerp(_MossColor.rgb,_MossColor2.rgb,_MossNoiseMask_var.r),lerp((node_6641_if_leA*node_7472)+(node_6641_if_leB*node_8983),node_8983,node_6641_if_leA*node_6641_if_leB));
                float node_3883_if_leA = step(0.5*dot(lightDirection,normalDirection)+0.5,_ColorSculpt);
                float node_3883_if_leB = step(_ColorSculpt,0.5*dot(lightDirection,normalDirection)+0.5);
                float node_4814 = clamp(_LightColorBrightness,_ColorSculpt,1.0);
                float3 node_6109 = ((node_2941*UNITY_LIGHTMODEL_AMBIENT.rgb)+((node_2941*_LightColor0.rgb)*lerp((node_3883_if_leA*clamp(_DarkColorBrightness,0.0,_ColorSculpt))+(node_3883_if_leB*node_4814),node_4814,node_3883_if_leA*node_3883_if_leB)*(step(_LightCutoff,attenuation)*attenuation))); // diffuse plus ambient
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
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
            uniform float _NoiseResolution;
            uniform fixed _EnableReplacement;
            uniform sampler2D _NoiseTex; uniform float4 _NoiseTex_ST;
            float2 DropZ( float3 v ){
            
            return float2(v.x, v.y);
            }
            
            float2 createV2( float A , float B ){
            return float2(A,B);
            }
            
            uniform float _DisplacementNoiseSeedX;
            uniform float _DisplacementNoiseSeedY;
            uniform float _DisplacementIntensityReverse;
            uniform float4 _node_7422;
            uniform float4 _MossColor;
            uniform float _MossAmount;
            uniform sampler2D _MossNoiseMask; uniform float4 _MossNoiseMask_ST;
            uniform float _MossScale;
            uniform float _MossBump;
            uniform float4 _MossColor2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
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
                float2 node_5208 = (_MossScale*o.uv0);
                float4 _MossNoiseMask_var = tex2Dlod(_MossNoiseMask,float4(TRANSFORM_TEX(node_5208, _MossNoiseMask),0.0,0));
                float3 node_9411 = normalize(v.normal);
                float node_6052 = (1.0 - _MossAmount);
                float node_4409_if_leA = step((_MossNoiseMask_var.r+saturate(dot(mul( unity_ObjectToWorld, float4(node_9411,0) ).xyz.rgb,float3(0,0.2,0)))),node_6052);
                float node_4409_if_leB = step(node_6052,(_MossNoiseMask_var.r+saturate(dot(mul( unity_ObjectToWorld, float4(node_9411,0) ).xyz.rgb,float3(0,0.2,0)))));
                float node_7472 = 0.0;
                float node_8983_if_leA = step(_MossNoiseMask_var.r,node_6052);
                float node_8983_if_leB = step(node_6052,_MossNoiseMask_var.r);
                float node_6282 = 1.0;
                float node_8983 = lerp((node_8983_if_leA*node_7472)+(node_8983_if_leB*node_6282),node_6282,node_8983_if_leA*node_8983_if_leB);
                float2 node_1879 = (DropZ( (normalize(v.normal)*_NoiseResolution) )+createV2( _DisplacementNoiseSeedX , _DisplacementNoiseSeedY ));
                float4 _NoiseTex_var = tex2Dlod(_NoiseTex,float4(TRANSFORM_TEX(node_1879, _NoiseTex),0.0,0));
                v.vertex.xyz += (((lerp((node_4409_if_leA*node_7472)+(node_4409_if_leB*node_8983),node_8983,node_4409_if_leA*node_4409_if_leB)*_MossBump)*v.normal)+lerp( float3(0,0,0), (((_NoiseTex_var.r*1.5+-0.5)*v.normal)/_DisplacementIntensityReverse), _EnableReplacement ));
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
                float4 node_2235 = (lerp(node_3346,float4(_PRIMARYCOLORreplaceVCblack.rgb,0.0),(1.0 - (i.vertexColor.r+i.vertexColor.b)))+lerp(node_3346,float4(_SECONDARYCOLORreplaceVCred.rgb,0.0),i.vertexColor.r)+lerp(node_3346,float4(_HIGHLIGHTCOLORreplaceVCblue.rgb,0.0),i.vertexColor.b)+lerp(node_3346,float4(_node_7422.rgb,0.0),i.vertexColor.g));
                float2 node_5208 = (_MossScale*i.uv0);
                float4 _MossNoiseMask_var = tex2D(_MossNoiseMask,TRANSFORM_TEX(node_5208, _MossNoiseMask));
                float3 node_9411 = normalize(i.normalDir);
                float node_6052 = (1.0 - _MossAmount);
                float node_6641_if_leA = step((_MossNoiseMask_var.r+saturate(dot(node_9411,float3(0,1,0)))),node_6052);
                float node_6641_if_leB = step(node_6052,(_MossNoiseMask_var.r+saturate(dot(node_9411,float3(0,1,0)))));
                float node_7472 = 0.0;
                float node_8983_if_leA = step(_MossNoiseMask_var.r,node_6052);
                float node_8983_if_leB = step(node_6052,_MossNoiseMask_var.r);
                float node_6282 = 1.0;
                float node_8983 = lerp((node_8983_if_leA*node_7472)+(node_8983_if_leB*node_6282),node_6282,node_8983_if_leA*node_8983_if_leB);
                float3 node_2941 = lerp(lerp( i.vertexColor.rgb, node_2235.rgb, _REPLACEVCs ),lerp(_MossColor.rgb,_MossColor2.rgb,_MossNoiseMask_var.r),lerp((node_6641_if_leA*node_7472)+(node_6641_if_leB*node_8983),node_8983,node_6641_if_leA*node_6641_if_leB));
                float node_3883_if_leA = step(0.5*dot(lightDirection,normalDirection)+0.5,_ColorSculpt);
                float node_3883_if_leB = step(_ColorSculpt,0.5*dot(lightDirection,normalDirection)+0.5);
                float node_4814 = clamp(_LightColorBrightness,_ColorSculpt,1.0);
                float3 node_6109 = ((node_2941*UNITY_LIGHTMODEL_AMBIENT.rgb)+((node_2941*_LightColor0.rgb)*lerp((node_3883_if_leA*clamp(_DarkColorBrightness,0.0,_ColorSculpt))+(node_3883_if_leB*node_4814),node_4814,node_3883_if_leA*node_3883_if_leB)*(step(_LightCutoff,attenuation)*attenuation))); // diffuse plus ambient
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _NoiseResolution;
            uniform fixed _EnableReplacement;
            uniform sampler2D _NoiseTex; uniform float4 _NoiseTex_ST;
            float2 DropZ( float3 v ){
            
            return float2(v.x, v.y);
            }
            
            float2 createV2( float A , float B ){
            return float2(A,B);
            }
            
            uniform float _DisplacementNoiseSeedX;
            uniform float _DisplacementNoiseSeedY;
            uniform float _DisplacementIntensityReverse;
            uniform float _MossAmount;
            uniform sampler2D _MossNoiseMask; uniform float4 _MossNoiseMask_ST;
            uniform float _MossScale;
            uniform float _MossBump;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float2 node_5208 = (_MossScale*o.uv0);
                float4 _MossNoiseMask_var = tex2Dlod(_MossNoiseMask,float4(TRANSFORM_TEX(node_5208, _MossNoiseMask),0.0,0));
                float3 node_9411 = normalize(v.normal);
                float node_6052 = (1.0 - _MossAmount);
                float node_4409_if_leA = step((_MossNoiseMask_var.r+saturate(dot(mul( unity_ObjectToWorld, float4(node_9411,0) ).xyz.rgb,float3(0,0.2,0)))),node_6052);
                float node_4409_if_leB = step(node_6052,(_MossNoiseMask_var.r+saturate(dot(mul( unity_ObjectToWorld, float4(node_9411,0) ).xyz.rgb,float3(0,0.2,0)))));
                float node_7472 = 0.0;
                float node_8983_if_leA = step(_MossNoiseMask_var.r,node_6052);
                float node_8983_if_leB = step(node_6052,_MossNoiseMask_var.r);
                float node_6282 = 1.0;
                float node_8983 = lerp((node_8983_if_leA*node_7472)+(node_8983_if_leB*node_6282),node_6282,node_8983_if_leA*node_8983_if_leB);
                float2 node_1879 = (DropZ( (normalize(v.normal)*_NoiseResolution) )+createV2( _DisplacementNoiseSeedX , _DisplacementNoiseSeedY ));
                float4 _NoiseTex_var = tex2Dlod(_NoiseTex,float4(TRANSFORM_TEX(node_1879, _NoiseTex),0.0,0));
                v.vertex.xyz += (((lerp((node_4409_if_leA*node_7472)+(node_4409_if_leB*node_8983),node_8983,node_4409_if_leA*node_4409_if_leB)*_MossBump)*v.normal)+lerp( float3(0,0,0), (((_NoiseTex_var.r*1.5+-0.5)*v.normal)/_DisplacementIntensityReverse), _EnableReplacement ));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
