xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 125;
 -0.05909;4.64636;-9.50435;,
 -0.95671;1.89099;-9.09579;,
 -0.05909;1.89099;-9.09579;,
 0.83853;1.89099;-9.09579;,
 -0.05909;1.80335;-10.65211;,
 -4.59274;1.02471;-2.63121;,
 -3.39069;1.02471;2.47343;,
 -5.16992;2.17837;2.12498;,
 -5.16992;2.17837;-2.63121;,
 0.35341;1.02471;3.11721;,
 3.27066;1.02471;2.47343;,
 5.04990;2.17837;2.12498;,
 0.40606;2.17837;3.41253;,
 4.47272;1.02471;-2.63122;,
 3.66130;-0.00128;-6.27486;,
 4.95614;2.17837;-6.26689;,
 5.04990;2.17837;-2.63122;,
 -1.53129;0.30862;-8.47431;,
 -3.78133;-0.00128;-6.27486;,
 -5.07616;2.17837;-6.26689;,
 -1.32456;2.17837;-8.53459;,
 -2.39274;-2.23044;-5.16230;,
 0.35001;-0.12895;-2.24926;,
 -0.72624;-0.12895;-2.30292;,
 -5.49779;4.54849;-2.63121;,
 -5.16234;4.54849;-6.57208;,
 0.43597;4.54849;3.71771;,
 5.37778;4.54849;2.43017;,
 -0.06002;8.86777;3.84694;,
 1.18587;2.17837;-8.69706;,
 0.52370;4.54849;-9.00224;,
 5.04232;4.54849;-6.57208;,
 -0.83655;2.17837;3.32645;,
 -0.88638;4.54849;3.63164;,
 -5.49779;4.54849;2.43017;,
 5.37778;4.54849;-2.63121;,
 4.40586;10.77871;-2.61582;,
 2.29837;12.94323;-2.63121;,
 2.29837;12.94323;-0.43608;,
 4.40586;10.77871;1.54092;,
 5.37778;8.86777;-2.63121;,
 5.37778;8.86777;2.43017;,
 -5.49779;8.86777;-2.63121;,
 -5.39803;7.38768;-7.31700;,
 0.42686;6.45660;-9.58146;,
 2.29837;12.94323;-4.82635;,
 -0.06002;12.94323;-6.37989;,
 -0.06002;12.94323;-2.63121;,
 -4.52588;10.77871;-2.61582;,
 -2.41839;12.94323;-2.63121;,
 -2.41839;12.94323;-4.82635;,
 -4.52588;10.77871;-6.77256;,
 -0.06002;12.94323;-0.43608;,
 -0.06002;10.77871;2.35249;,
 -4.52588;10.77871;1.54092;,
 -2.41839;12.94323;-0.43608;,
 -5.49779;8.86777;2.43017;,
 5.27800;7.38768;-7.31700;,
 4.40586;10.77871;-6.77256;,
 0.35001;-0.12895;3.26440;,
 3.48824;-0.12895;-3.05192;,
 2.95532;-0.12895;1.98343;,
 -0.83541;4.54849;-8.83977;,
 -0.87122;6.51885;-9.43006;,
 -0.06002;6.36316;-9.80872;,
 -0.06002;5.33308;-9.43417;,
 -0.72624;-0.12895;3.26440;,
 -0.17306;0.30862;-8.92460;,
 -0.06002;4.54849;3.84694;,
 -0.06002;10.77871;-8.55240;,
 -0.74884;1.02471;3.07417;,
 -3.59557;-0.12895;-3.05192;,
 -0.41451;-2.23044;-7.91809;,
 2.27271;-2.23044;-5.16230;,
 -3.06265;-0.12895;1.98343;,
 -0.13088;-2.23044;-8.01681;,
 0.15275;-2.23044;-8.11552;,
 1.18516;0.30862;-8.63580;,
 -7.20029;6.21576;-2.99836;,
 -5.37756;6.21576;3.17404;,
 -5.37756;9.90994;3.17404;,
 -7.20029;9.90994;-2.99836;,
 -0.08432;6.21576;4.56407;,
 5.20891;6.21576;3.17404;,
 5.20891;9.90994;3.17404;,
 -0.08432;9.90994;4.56407;,
 7.03163;6.21576;-2.99836;,
 5.20891;6.21576;-9.17076;,
 5.20891;9.90994;-9.17076;,
 7.03163;9.90994;-2.99836;,
 5.20891;10.05850;-9.60881;,
 -0.08432;10.05850;-10.99884;,
 -0.08432;9.90994;-10.56079;,
 -0.08432;6.21576;-2.99836;,
 -0.08432;6.21576;-10.56079;,
 -0.08432;12.47792;-9.73149;,
 4.62844;12.47792;-8.49389;,
 -0.08432;12.47792;3.73476;,
 -0.08432;13.65898;0.93655;,
 -2.83852;13.65898;0.21328;,
 -4.79709;12.47792;2.49716;,
 -5.37756;6.21576;-9.17076;,
 -5.37756;9.90994;-9.17076;,
 6.25128;12.47792;-2.99836;,
 4.62844;12.47792;2.49716;,
 5.20891;6.06721;-9.60881;,
 -6.41993;12.47792;-2.99836;,
 -4.79709;12.47792;-8.49389;,
 -0.08432;13.65898;-6.93328;,
 -3.78692;13.65898;-2.99836;,
 -2.83852;13.65898;-6.21001;,
 2.66987;13.65898;-6.21001;,
 3.61827;13.65898;-2.99836;,
 2.66987;13.65898;0.21328;,
 7.92538;0.22834;-1.44404;,
 5.20891;0.22834;-9.17077;,
 -5.37756;-0.49864;-9.17077;,
 -8.09403;-0.49864;-1.70948;,
 -0.08432;6.06721;-10.99884;,
 -5.37756;6.06721;-9.60881;,
 -5.37756;10.05850;-9.60881;,
 0.84734;-0.87202;4.56407;,
 6.14058;-0.10079;3.17404;,
 -6.53795;-0.24160;3.17404;,
 -1.24472;-1.01283;4.56407;;
 
 154;
 4;0,1,2,3;,
 3;0,4,1;,
 4;4,3,2,1;,
 3;3,4,0;,
 4;5,6,7,8;,
 4;9,10,11,12;,
 4;13,14,15,16;,
 4;17,18,19,20;,
 3;21,22,23;,
 4;8,24,25,19;,
 3;26,27,28;,
 4;29,30,31,15;,
 4;32,33,34,7;,
 4;16,35,27,11;,
 4;36,37,38,39;,
 4;35,40,41,27;,
 4;24,42,43,25;,
 3;31,30,44;,
 4;37,45,46,47;,
 4;48,49,50,51;,
 4;39,38,52,53;,
 4;54,55,49,48;,
 4;53,52,55,54;,
 4;34,56,42,24;,
 4;31,57,40,35;,
 4;58,45,37,36;,
 4;15,31,35,16;,
 4;7,34,24,8;,
 4;59,22,60,61;,
 4;10,13,16,11;,
 4;18,5,8,19;,
 4;52,47,49,55;,
 4;62,63,64,65;,
 4;41,39,53,28;,
 4;59,66,23,22;,
 3;1,2,67;,
 3;33,32,68;,
 4;69,46,45,58;,
 4;28,53,54,56;,
 4;57,58,36,40;,
 4;56,54,48,42;,
 3;63,43,69;,
 4;42,48,51,43;,
 4;40,36,39,41;,
 4;32,70,9,12;,
 4;21,71,5,18;,
 4;61,60,13,10;,
 4;72,21,18,17;,
 4;60,73,14,13;,
 4;59,61,10,9;,
 4;71,74,6,5;,
 4;74,66,70,6;,
 3;73,72,75;,
 4;6,70,32,7;,
 4;19,25,62,20;,
 4;25,43,63,62;,
 4;74,71,23,66;,
 4;73,76,77,14;,
 4;14,77,29,15;,
 4;11,27,26,12;,
 4;65,64,44,30;,
 4;20,62,0,1;,
 3;0,65,30;,
 3;62,65,0;,
 4;3,0,30,29;,
 3;67,77,76;,
 3;57,69,58;,
 4;51,50,46,69;,
 3;75,72,17;,
 3;77,3,29;,
 4;70,66,59,9;,
 4;47,46,50,49;,
 4;38,37,47,52;,
 3;34,28,56;,
 3;60,22,73;,
 3;21,23,71;,
 3;22,21,73;,
 3;41,28,27;,
 3;26,28,68;,
 3;31,44,57;,
 3;1,17,20;,
 3;17,1,67;,
 3;12,68,32;,
 3;68,12,26;,
 3;51,69,43;,
 3;63,69,64;,
 3;72,73,21;,
 3;73,75,76;,
 3;67,76,75;,
 3;69,44,64;,
 3;44,69,57;,
 3;75,17,67;,
 3;3,67,2;,
 3;67,3,77;,
 3;28,33,68;,
 3;33,28,34;,
 4;78,79,80,81;,
 4;82,83,84,85;,
 4;86,87,88,89;,
 4;88,90,91,92;,
 4;93,94,87,86;,
 4;92,95,96,88;,
 4;97,98,99,100;,
 4;82,93,86,83;,
 4;83,86,89,84;,
 4;101,78,81,102;,
 4;79,78,93,82;,
 4;85,97,100,80;,
 4;89,103,104,84;,
 4;78,101,94,93;,
 4;87,105,90,88;,
 4;79,82,85,80;,
 4;88,96,103,89;,
 4;81,106,107,102;,
 4;80,100,106,81;,
 4;102,107,95,92;,
 4;84,104,97,85;,
 3;98,108,109;,
 4;106,109,110,107;,
 4;96,111,112,103;,
 4;95,108,111,96;,
 4;104,113,98,97;,
 4;103,112,113,104;,
 4;107,110,108,95;,
 4;100,99,109,106;,
 4;87,86,114,115;,
 3;114,86,83;,
 4;78,101,116,117;,
 3;117,79,78;,
 4;118,119,120,91;,
 4;105,118,91,90;,
 4;102,120,119,101;,
 4;94,118,105,87;,
 4;101,119,118,94;,
 4;92,91,120,102;,
 4;83,82,121,122;,
 4;79,123,124,82;,
 3;121,82,124;,
 3;79,117,123;,
 3;83,122,114;,
 3;110,109,108;,
 3;111,108,112;,
 3;113,112,98;,
 3;99,98,109;,
 3;108,98,112;,
 4;115,114,86,87;,
 3;83,86,114;,
 4;117,116,101,78;,
 3;78,79,117;,
 4;122,121,82,83;,
 4;82,124,123,79;,
 3;124,82,121;,
 3;123,117,79;,
 3;114,122,83;;
 
 MeshMaterialList {
  3;
  154;
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.282400;0.062400;0.031200;1.000000;;
   0.500000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.248000;0.248000;0.248000;1.000000;;
   0.500000;
   0.160000;0.160000;0.160000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   1.000000;0.784314;0.588235;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  164;
  0.000000;0.146674;0.989185;,
  -0.843627;0.201004;-0.497887;,
  -0.330564;-0.907054;0.260733;,
  -0.842348;-0.216841;-0.493387;,
  -0.687400;-0.387503;0.614266;,
  -0.909540;-0.414099;0.035474;,
  0.270703;-0.955908;0.113838;,
  0.844266;-0.223557;-0.487069;,
  0.486192;-0.869588;0.086220;,
  0.247356;-0.164176;0.954914;,
  -0.841955;-0.134726;-0.522456;,
  -0.254336;-0.047802;0.965934;,
  0.254340;-0.047435;0.965951;,
  0.778068;-0.156354;-0.608410;,
  -0.985445;0.163324;-0.047160;,
  -0.972455;0.233089;0.000000;,
  0.972455;0.233091;0.000000;,
  0.985444;0.163325;-0.047163;,
  -0.377224;0.899339;-0.221114;,
  -0.292396;0.925152;0.242070;,
  0.292396;0.925152;0.242070;,
  0.377223;0.899339;-0.221114;,
  -0.522071;-0.819881;0.235025;,
  -0.935518;-0.353231;-0.005861;,
  0.523727;-0.818828;0.235014;,
  0.935517;-0.353233;-0.005861;,
  -0.997425;-0.067625;-0.023894;,
  0.997425;-0.067626;-0.023896;,
  -0.979862;0.198269;-0.023681;,
  0.979861;0.198270;-0.023683;,
  -0.388841;0.921305;0.000000;,
  0.388841;0.921305;0.000000;,
  -0.013950;-0.092344;0.995629;,
  -0.009901;-0.127894;-0.991738;,
  0.000000;0.148257;0.988949;,
  -0.010377;-0.017617;-0.999791;,
  -0.000000;0.939320;0.343042;,
  -0.000000;0.945484;-0.325668;,
  0.000000;1.000000;0.000000;,
  0.542079;0.724131;0.426362;,
  0.670339;0.589837;-0.450264;,
  -0.670340;0.589837;-0.450263;,
  -0.542080;0.724130;0.426362;,
  -0.827394;0.561466;-0.013249;,
  0.827393;0.561467;-0.013250;,
  -0.000000;0.671885;0.740655;,
  -0.000002;0.411636;-0.911348;,
  -0.799160;-0.471134;-0.373331;,
  -0.799957;-0.590059;0.109083;,
  0.284861;-0.175966;0.942279;,
  0.796373;-0.477005;-0.371829;,
  0.825515;-0.562075;0.050961;,
  -0.824003;-0.564236;0.051547;,
  0.000000;-1.000000;-0.000000;,
  -0.676429;-0.006147;-0.736482;,
  -0.564446;-0.092122;-0.820313;,
  -0.417902;-0.010784;-0.908428;,
  -0.052811;-0.941771;0.332083;,
  -0.174591;-0.174739;0.969012;,
  -0.279317;-0.855245;-0.436507;,
  -0.253413;-0.068135;0.964956;,
  -0.170869;-0.106373;0.979535;,
  -0.520541;-0.261294;-0.812873;,
  0.126395;-0.178173;0.975848;,
  0.191594;-0.413017;-0.890342;,
  0.253430;-0.067338;0.965007;,
  0.649025;-0.034275;-0.759995;,
  0.551558;-0.079685;-0.830322;,
  0.420982;-0.056339;-0.905318;,
  0.028624;-0.921105;0.388261;,
  0.508092;-0.256521;-0.822216;,
  0.127476;-0.112678;0.985420;,
  -0.075046;-0.238332;-0.968280;,
  -0.752599;0.126315;-0.646251;,
  -0.712642;0.031808;-0.700806;,
  0.000000;-0.998418;0.056223;,
  0.547136;-0.011816;-0.836960;,
  0.843627;0.201004;-0.497887;,
  0.737044;0.129750;-0.663273;,
  -0.249071;-0.157794;0.955544;,
  0.997639;-0.068679;-0.000000;,
  0.909539;-0.414102;0.035474;,
  -0.997639;-0.068677;0.000000;,
  0.802215;-0.586918;0.109446;,
  0.226099;0.291016;0.929617;,
  0.000000;-0.107558;-0.994199;,
  -0.226101;0.291016;0.929617;,
  -0.404486;0.078742;-0.911148;,
  0.160651;-0.010792;0.986952;,
  0.331497;-0.165226;0.928876;,
  -0.192891;-0.006183;0.981201;,
  -0.299249;-0.164680;0.939857;,
  0.404577;0.079160;-0.911071;,
  -0.306184;-0.327320;-0.893931;,
  0.000000;-1.000000;0.000000;,
  -0.979603;0.009996;-0.200692;,
  -0.891420;0.165005;-0.422072;,
  -0.765539;0.089359;0.637154;,
  -0.809464;0.106142;0.577496;,
  0.979980;0.009206;-0.198881;,
  0.977486;0.094970;-0.188420;,
  0.755014;0.086947;0.649918;,
  0.687075;0.167108;0.707109;,
  -0.998463;0.054693;-0.008911;,
  -0.989103;0.147222;0.000000;,
  0.998001;0.062688;-0.008027;,
  0.989104;0.147221;0.000000;,
  0.000125;0.015948;0.999873;,
  0.000000;0.155789;0.987790;,
  -0.000000;-0.986715;0.162458;,
  -0.000000;0.947021;0.321171;,
  -0.745732;0.666246;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -0.493841;0.709333;0.502959;,
  0.000000;0.679907;0.733298;,
  0.493841;0.709333;0.502958;,
  0.745732;0.666246;0.000000;,
  0.493842;0.709333;-0.502959;,
  0.000000;0.679906;-0.733299;,
  -0.493841;0.709333;-0.502959;,
  0.000000;0.991318;-0.131488;,
  -0.174409;0.969170;-0.174041;,
  0.000000;0.991318;0.131488;,
  0.174409;0.969170;0.174041;,
  -0.166530;0.986036;0.000000;,
  -0.174409;0.969170;0.174041;,
  0.166530;0.986036;0.000000;,
  0.174409;0.969170;-0.174041;,
  0.951186;0.027339;-0.307406;,
  0.984362;0.131370;0.117361;,
  -0.949406;0.029678;-0.312647;,
  -0.987244;0.131641;0.089549;,
  -0.253993;0.000000;-0.967206;,
  -0.084043;0.943671;0.320035;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;-1.000000;,
  0.657358;0.095816;0.747462;,
  0.126709;0.017662;0.991783;,
  -0.682760;0.121299;0.720504;,
  -0.126407;0.021489;0.991746;,
  -0.042624;-0.985819;0.162310;,
  0.000000;0.307312;-0.951609;,
  0.242442;0.298144;-0.923218;,
  -0.242442;0.298147;0.923217;,
  0.042623;-0.985819;0.162310;,
  0.253993;0.000000;-0.967206;,
  -1.000000;0.000000;0.000000;,
  -0.000000;-0.947027;0.321153;,
  -0.084038;-0.943677;0.320017;,
  0.084038;-0.943677;0.320017;,
  0.084043;0.943671;0.320035;,
  -0.951186;-0.027339;0.307406;,
  -0.984362;-0.131370;-0.117361;,
  -0.991951;-0.125593;0.016082;,
  -0.786857;-0.142722;-0.600406;,
  0.987244;-0.131641;-0.089549;,
  0.949406;-0.029678;0.312647;,
  0.993815;-0.109600;0.017857;,
  0.802895;-0.146946;-0.577725;,
  -0.657358;-0.095816;-0.747462;,
  -0.126709;-0.017662;-0.991783;,
  -0.000207;-0.026455;-0.999650;,
  0.126407;-0.021489;-0.991746;,
  0.682760;-0.121299;-0.720504;;
  154;
  4;0,0,0,0;,
  3;73,1,74;,
  4;75,75,75,75;,
  3;76,77,78;,
  4;52,48,5,23;,
  4;71,49,9,63;,
  4;51,50,7,25;,
  4;62,47,3,54;,
  3;2,69,57;,
  4;23,26,10,3;,
  3;65,12,34;,
  4;66,67,13,7;,
  4;58,60,11,79;,
  4;25,27,80,81;,
  4;44,31,20,39;,
  4;27,29,16,80;,
  4;26,28,14,10;,
  3;13,67,68;,
  4;31,21,37,38;,
  4;43,30,18,41;,
  4;39,20,36,45;,
  4;42,19,30,43;,
  4;45,36,19,42;,
  4;82,15,28,26;,
  4;13,17,29,27;,
  4;40,21,31,44;,
  4;7,13,27,25;,
  4;5,82,26,23;,
  4;53,69,24,8;,
  4;83,51,25,81;,
  4;47,52,23,3;,
  4;36,38,30,19;,
  4;55,56,35,33;,
  4;84,39,45,34;,
  4;53,53,57,69;,
  3;85,85,72;,
  3;60,58,32;,
  4;46,37,21,40;,
  4;34,45,42,86;,
  4;17,40,44,29;,
  4;15,42,43,28;,
  3;56,87,46;,
  4;28,43,41,14;,
  4;29,44,39,16;,
  4;58,61,71,63;,
  4;2,22,52,47;,
  4;8,24,51,83;,
  4;59,2,47,62;,
  4;24,6,50,51;,
  4;88,89,49,71;,
  4;22,4,48,52;,
  4;4,90,61,91;,
  3;6,59,53;,
  4;91,61,58,79;,
  4;3,10,55,54;,
  4;10,87,56,55;,
  4;53,22,57,53;,
  4;6,64,70,50;,
  4;50,70,66,7;,
  4;9,12,65,63;,
  4;33,35,68,67;,
  4;54,55,73,74;,
  3;78,33,67;,
  3;55,33,73;,
  4;76,78,67,66;,
  3;72,70,64;,
  3;92,46,40;,
  4;41,18,37,46;,
  3;93,59,62;,
  3;70,76,66;,
  4;61,90,88,71;,
  4;38,37,18,30;,
  4;20,31,38,36;,
  3;11,34,86;,
  3;24,69,6;,
  3;2,57,22;,
  3;69,2,6;,
  3;84,34,12;,
  3;65,34,32;,
  3;13,68,92;,
  3;74,62,54;,
  3;62,74,72;,
  3;63,32,58;,
  3;32,63,65;,
  3;41,46,87;,
  3;56,46,35;,
  3;59,6,2;,
  3;6,53,94;,
  3;72,64,93;,
  3;46,68,35;,
  3;68,46,92;,
  3;93,62,72;,
  3;76,72,85;,
  3;72,76,70;,
  3;34,60,32;,
  3;60,34,11;,
  4;103,97,98,104;,
  4;107,101,102,108;,
  4;105,99,100,106;,
  4;133,133,110,110;,
  4;112,109,140,112;,
  4;141,118,117,142;,
  4;114,122,125,113;,
  4;112,112,112,112;,
  4;101,105,106,102;,
  4;95,103,104,96;,
  4;112,112,112,112;,
  4;108,114,113,143;,
  4;106,116,115,102;,
  4;112,144,109,112;,
  4;99,134,134,100;,
  4;97,107,108,98;,
  4;100,117,116,106;,
  4;104,111,119,96;,
  4;98,113,111,104;,
  4;96,119,118,141;,
  4;102,115,114,108;,
  3;122,120,124;,
  4;111,124,121,119;,
  4;117,127,126,116;,
  4;118,120,127,117;,
  4;115,123,122,114;,
  4;116,126,123,115;,
  4;119,121,120,118;,
  4;113,125,124,111;,
  4;99,105,129,128;,
  3;129,105,101;,
  4;103,95,130,131;,
  3;131,97,103;,
  4;135,132,132,135;,
  4;145,135,135,145;,
  4;96,146,146,95;,
  4;109,147,148,140;,
  4;144,149,147,109;,
  4;110,110,150,150;,
  4;101,107,137,136;,
  4;97,138,139,107;,
  3;137,107,139;,
  3;97,131,138;,
  3;101,136,129;,
  3;121,124,120;,
  3;127,120,126;,
  3;123,126,122;,
  3;125,122,124;,
  3;120,122,126;,
  4;151,152,153,151;,
  3;154,153,152;,
  4;155,156,156,157;,
  3;157,158,155;,
  4;159,160,161,154;,
  4;161,162,163,158;,
  3;162,161,160;,
  3;163,155,158;,
  3;152,159,154;;
 }
 MeshTextureCoords {
  125;
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}
