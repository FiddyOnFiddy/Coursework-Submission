#version 150

in vec4 worldPos;
in vec4 worldSurfaceNormal;
in vec2 vertexTexCoordsOut2;

uniform vec4 EyePosW;
uniform vec4 LightPosW;
uniform vec4 LightColor;


uniform vec4 MaterialEmissive;
uniform vec4 MaterialDiffuse;
uniform vec4 MaterialSpecular;
uniform float MaterialShininess;

uniform vec4 Ambient;

uniform sampler2D texture0;

out vec4 FragColor;

void main()
{
    // Compute the emissive term.
    vec4 Emissive = MaterialEmissive;

    // Compute the diffuse term.
    vec4 N = normalize( worldSurfaceNormal);
    vec4 L = normalize( LightPosW - worldPos);
    float NdotL = max( dot( N, L ), 0 );
    vec4 Diffuse =  NdotL * LightColor * MaterialDiffuse;
    
    // Compute the specular term.
    vec4 V = normalize( EyePosW - worldPos);
    vec4 H = normalize( L + V );
    vec4 R = reflect( -L, N );
    float RdotV = max( dot( R, V ), 0 );
    float NdotH = max( dot( N, H ), 0 );
    vec4 Specular = pow( RdotV, MaterialShininess ) * LightColor * MaterialSpecular;
    
    FragColor = ( Emissive + Ambient + Diffuse + Specular ) * texture( texture0, vertexTexCoordsOut2);
}














