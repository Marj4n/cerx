.class public Lcom/serenegiant/glutils/ShaderConst;
.super Ljava/lang/Object;
.source "ShaderConst.java"


# static fields
.field public static final FRAGMENT_SHADER_2D:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_BASE:Ljava/lang/String; = "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field public static final FRAGMENT_SHADER_BW:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_BW_BASE:Ljava/lang/String; = "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11;\n    gl_FragColor = vec4(color, color, color, 1.0);\n}\n"

.field public static final FRAGMENT_SHADER_CHROMA_KEY:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_CHROMA_KEY_BASE:Ljava/lang/String; = "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = ((tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11) - 0.5 * 1.5) + 0.8;\n    if(tc.g > 0.6 && tc.b < 0.6 && tc.r < 0.6){ \n        gl_FragColor = vec4(0, 0, 0, 0.0);\n    }else{ \n        gl_FragColor = texture2D(sTexture, vTextureCoord);\n    }\n}\n"

.field public static final FRAGMENT_SHADER_EXT:Ljava/lang/String;

.field public static final FRAGMENT_SHADER_EXT_BULGE:Ljava/lang/String; = "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = r * smoothstep(-0.1, 0.5, r);\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

.field public static final FRAGMENT_SHADER_EXT_BW:Ljava/lang/String;

.field public static final FRAGMENT_SHADER_EXT_CHROMA_KEY:Ljava/lang/String;

.field public static final FRAGMENT_SHADER_EXT_DENT:Ljava/lang/String; = "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = 2.0 * r - r * smoothstep(0.0, 0.7, r);\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

.field public static final FRAGMENT_SHADER_EXT_FILT3x3:Ljava/lang/String;

.field public static final FRAGMENT_SHADER_EXT_FISHEYE:Ljava/lang/String; = "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = r * r / sqrt(2.0);\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

.field public static final FRAGMENT_SHADER_EXT_MIRROR:Ljava/lang/String; = "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    normCoord.x = normCoord.x * sign(normCoord.x + uPosition.x);\n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

.field public static final FRAGMENT_SHADER_EXT_NIGHT:Ljava/lang/String;

.field public static final FRAGMENT_SHADER_EXT_SOBEL:Ljava/lang/String;

.field public static final FRAGMENT_SHADER_EXT_SQUEEZE:Ljava/lang/String;

.field public static final FRAGMENT_SHADER_EXT_STRETCH:Ljava/lang/String; = "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    vec2 s = sign(normCoord + uPosition);\n    normCoord = abs(normCoord);\n    normCoord = 0.5 * normCoord + 0.5 * smoothstep(0.25, 0.5, normCoord) * normCoord;\n    normCoord = s * normCoord;\n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

.field public static final FRAGMENT_SHADER_EXT_TUNNEL:Ljava/lang/String; = "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    if (r > 0.5) r = 0.5;\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

.field public static final FRAGMENT_SHADER_EXT_TWIRL:Ljava/lang/String; = "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    phi = phi + (1.0 - smoothstep(-0.5, 0.5, r)) * 4.0;\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

.field public static final FRAGMENT_SHADER_FILT3x3:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_FILT3x3_BASE:Ljava/lang/String; = "#version 100\n%s#define KERNEL_SIZE3x3 9\nprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform float uKernel[18];\nuniform vec2  uTexOffset[KERNEL_SIZE3x3];\nuniform float uColorAdjust;\nvoid main() {\n    vec4 sum = vec4(0.0);\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[0]) * uKernel[0];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[1]) * uKernel[1];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[2]) * uKernel[2];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[3]) * uKernel[3];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[4]) * uKernel[4];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[5]) * uKernel[5];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[6]) * uKernel[6];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[7]) * uKernel[7];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[8]) * uKernel[8];\n    gl_FragColor = sum + uColorAdjust;\n}\n"

.field public static final FRAGMENT_SHADER_NIGHT:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_NIGHT_BASE:Ljava/lang/String; = "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = ((tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11) - 0.5 * 1.5) + 0.8;\n    gl_FragColor = vec4(color, color + 0.15, color, 1.0);\n}\n"

.field public static final FRAGMENT_SHADER_SIMPLE:Ljava/lang/String; = "#version 100\nprecision mediump float;\nuniform sampler2D sTexture;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}"

.field public static final FRAGMENT_SHADER_SIMPLE_OES:Ljava/lang/String; = "#version 100\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}"

.field public static final FRAGMENT_SHADER_SOBEL:Ljava/lang/String;

.field public static final FRAGMENT_SHADER_SOBEL_BASE:Ljava/lang/String; = "#version 100\n%s#define KERNEL_SIZE3x3 9\nprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform float uKernel[18];\nuniform vec2  uTexOffset[KERNEL_SIZE3x3];\nuniform float uColorAdjust;\nvoid main() {\n    vec3 t0 = texture2D(sTexture, vTextureCoord + uTexOffset[0]).rgb;\n    vec3 t1 = texture2D(sTexture, vTextureCoord + uTexOffset[1]).rgb;\n    vec3 t2 = texture2D(sTexture, vTextureCoord + uTexOffset[2]).rgb;\n    vec3 t3 = texture2D(sTexture, vTextureCoord + uTexOffset[3]).rgb;\n    vec3 t4 = texture2D(sTexture, vTextureCoord + uTexOffset[4]).rgb;\n    vec3 t5 = texture2D(sTexture, vTextureCoord + uTexOffset[5]).rgb;\n    vec3 t6 = texture2D(sTexture, vTextureCoord + uTexOffset[6]).rgb;\n    vec3 t7 = texture2D(sTexture, vTextureCoord + uTexOffset[7]).rgb;\n    vec3 t8 = texture2D(sTexture, vTextureCoord + uTexOffset[8]).rgb;\n    vec3 sumH = t0 * uKernel[0] + t1 * uKernel[1] + t2 * uKernel[2]\n              + t3 * uKernel[3] + t4 * uKernel[4] + t5 * uKernel[5]\n              + t6 * uKernel[6] + t7 * uKernel[7] + t8 * uKernel[8];\n    float mag = length(sumH);\n    gl_FragColor = vec4(vec3(mag), 1.0);\n}\n"

.field public static final FRAGMENT_SHADER_SQUEEZE:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_SQUEEZE_BASE:Ljava/lang/String; = "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = pow(r, 1.0/1.8) * 0.8;\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

.field public static final FUNC_GET_INTENSITY:Ljava/lang/String; = "const highp vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);\nhighp float getIntensity(vec3 c) {\nreturn dot(c.rgb, luminanceWeighting);\n}\n"

.field public static final FUNC_HSV2RGB:Ljava/lang/String; = "vec3 hsv2rgb(vec3 c) {\nvec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\nvec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);\nreturn c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);\n}\n"

.field public static final FUNC_RGB2HSV:Ljava/lang/String; = "vec3 rgb2hsv(vec3 c) {\nvec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\nvec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\nvec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\nfloat d = q.x - min(q.w, q.y);\nfloat e = 1.0e-10;\nreturn vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n}\n"

.field public static final GL_TEXTURE_2D:I = 0xde1

.field public static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field public static final HEADER_2D:Ljava/lang/String; = ""

.field public static final HEADER_OES:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\n"

.field public static final KERNEL_BRIGHTEN:[F

.field public static final KERNEL_EDGE_DETECT:[F

.field public static final KERNEL_EMBOSS:[F

.field public static final KERNEL_GAUSSIAN:[F

.field public static final KERNEL_LAPLACIAN:[F

.field public static final KERNEL_NULL:[F

.field public static final KERNEL_SHARPNESS:[F

.field public static final KERNEL_SIZE3x3:I = 0x9

.field public static final KERNEL_SIZE5x５:I = 0x19

.field public static final KERNEL_SMOOTH:[F

.field public static final KERNEL_SOBEL2_H:[F

.field public static final KERNEL_SOBEL2_V:[F

.field public static final KERNEL_SOBEL_H:[F

.field public static final KERNEL_SOBEL_V:[F

.field public static final NO_TEXTURE:I = -0x1

.field public static final SAMPLER_2D:Ljava/lang/String; = "sampler2D"

.field public static final SAMPLER_OES:Ljava/lang/String; = "samplerExternalOES"

.field public static final SHADER_VERSION:Ljava/lang/String; = "#version 100\n"

.field public static final TEX_NUMBERS:[I

.field public static final VERTEX_SHADER:Ljava/lang/String; = "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 44
    fill-array-data v0, :array_0

    sput-object v0, Lcom/serenegiant/glutils/ShaderConst;->TEX_NUMBERS:[I

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "sampler2D"

    aput-object v5, v1, v4

    const-string v6, "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 146
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_2D:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v7, "#extension GL_OES_EGL_image_external : require\n"

    aput-object v7, v1, v2

    const-string v8, "samplerExternalOES"

    aput-object v8, v1, v4

    .line 148
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    const-string v6, "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11;\n    gl_FragColor = vec4(color, color, color, 1.0);\n}\n"

    .line 162
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_BW:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v7, v1, v2

    aput-object v8, v1, v4

    .line 164
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT_BW:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    const-string v6, "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = ((tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11) - 0.5 * 1.5) + 0.8;\n    gl_FragColor = vec4(color, color + 0.15, color, 1.0);\n}\n"

    .line 178
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_NIGHT:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v7, v1, v2

    aput-object v8, v1, v4

    .line 180
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT_NIGHT:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    const-string v6, "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = ((tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11) - 0.5 * 1.5) + 0.8;\n    if(tc.g > 0.6 && tc.b < 0.6 && tc.r < 0.6){ \n        gl_FragColor = vec4(0, 0, 0, 0.0);\n    }else{ \n        gl_FragColor = texture2D(sTexture, vTextureCoord);\n    }\n}\n"

    .line 198
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_CHROMA_KEY:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v7, v1, v2

    aput-object v8, v1, v4

    .line 200
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT_CHROMA_KEY:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    const-string v6, "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nuniform vec2 uPosition;\nvoid main() {\n    vec2 texCoord = vTextureCoord.xy;\n    vec2 normCoord = 2.0 * texCoord - 1.0;\n    float r = length(normCoord); // to polar coords \n    float phi = atan(normCoord.y + uPosition.y, normCoord.x + uPosition.x); // to polar coords \n    r = pow(r, 1.0/1.8) * 0.8;\n    normCoord.x = r * cos(phi); \n    normCoord.y = r * sin(phi); \n    texCoord = normCoord / 2.0 + 0.5;\n    gl_FragColor = texture2D(sTexture, texCoord);\n}\n"

    .line 220
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_SQUEEZE:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v7, v1, v2

    aput-object v8, v1, v4

    .line 222
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT_SQUEEZE:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    const-string v6, "#version 100\n%s#define KERNEL_SIZE3x3 9\nprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform float uKernel[18];\nuniform vec2  uTexOffset[KERNEL_SIZE3x3];\nuniform float uColorAdjust;\nvoid main() {\n    vec3 t0 = texture2D(sTexture, vTextureCoord + uTexOffset[0]).rgb;\n    vec3 t1 = texture2D(sTexture, vTextureCoord + uTexOffset[1]).rgb;\n    vec3 t2 = texture2D(sTexture, vTextureCoord + uTexOffset[2]).rgb;\n    vec3 t3 = texture2D(sTexture, vTextureCoord + uTexOffset[3]).rgb;\n    vec3 t4 = texture2D(sTexture, vTextureCoord + uTexOffset[4]).rgb;\n    vec3 t5 = texture2D(sTexture, vTextureCoord + uTexOffset[5]).rgb;\n    vec3 t6 = texture2D(sTexture, vTextureCoord + uTexOffset[6]).rgb;\n    vec3 t7 = texture2D(sTexture, vTextureCoord + uTexOffset[7]).rgb;\n    vec3 t8 = texture2D(sTexture, vTextureCoord + uTexOffset[8]).rgb;\n    vec3 sumH = t0 * uKernel[0] + t1 * uKernel[1] + t2 * uKernel[2]\n              + t3 * uKernel[3] + t4 * uKernel[4] + t5 * uKernel[5]\n              + t6 * uKernel[6] + t7 * uKernel[7] + t8 * uKernel[8];\n    float mag = length(sumH);\n    gl_FragColor = vec4(vec3(mag), 1.0);\n}\n"

    .line 377
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_SOBEL:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v7, v1, v2

    aput-object v8, v1, v4

    .line 379
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT_SOBEL:Ljava/lang/String;

    const/16 v1, 0x9

    new-array v6, v1, [F

    .line 381
    fill-array-data v6, :array_1

    sput-object v6, Lcom/serenegiant/glutils/ShaderConst;->KERNEL_NULL:[F

    new-array v6, v1, [F

    .line 382
    fill-array-data v6, :array_2

    sput-object v6, Lcom/serenegiant/glutils/ShaderConst;->KERNEL_SOBEL_H:[F

    new-array v6, v1, [F

    .line 383
    fill-array-data v6, :array_3

    sput-object v6, Lcom/serenegiant/glutils/ShaderConst;->KERNEL_SOBEL_V:[F

    new-array v6, v1, [F

    .line 384
    fill-array-data v6, :array_4

    sput-object v6, Lcom/serenegiant/glutils/ShaderConst;->KERNEL_SOBEL2_H:[F

    new-array v6, v1, [F

    .line 385
    fill-array-data v6, :array_5

    sput-object v6, Lcom/serenegiant/glutils/ShaderConst;->KERNEL_SOBEL2_V:[F

    new-array v6, v1, [F

    .line 386
    fill-array-data v6, :array_6

    sput-object v6, Lcom/serenegiant/glutils/ShaderConst;->KERNEL_SHARPNESS:[F

    new-array v6, v1, [F

    .line 387
    fill-array-data v6, :array_7

    sput-object v6, Lcom/serenegiant/glutils/ShaderConst;->KERNEL_EDGE_DETECT:[F

    new-array v6, v1, [F

    .line 388
    fill-array-data v6, :array_8

    sput-object v6, Lcom/serenegiant/glutils/ShaderConst;->KERNEL_EMBOSS:[F

    new-array v6, v1, [F

    .line 389
    fill-array-data v6, :array_9

    sput-object v6, Lcom/serenegiant/glutils/ShaderConst;->KERNEL_SMOOTH:[F

    new-array v6, v1, [F

    .line 390
    fill-array-data v6, :array_a

    sput-object v6, Lcom/serenegiant/glutils/ShaderConst;->KERNEL_GAUSSIAN:[F

    new-array v6, v1, [F

    .line 391
    fill-array-data v6, :array_b

    sput-object v6, Lcom/serenegiant/glutils/ShaderConst;->KERNEL_BRIGHTEN:[F

    new-array v1, v1, [F

    .line 392
    fill-array-data v1, :array_c

    sput-object v1, Lcom/serenegiant/glutils/ShaderConst;->KERNEL_LAPLACIAN:[F

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    const-string v3, "#version 100\n%s#define KERNEL_SIZE3x3 9\nprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform float uKernel[18];\nuniform vec2  uTexOffset[KERNEL_SIZE3x3];\nuniform float uColorAdjust;\nvoid main() {\n    vec4 sum = vec4(0.0);\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[0]) * uKernel[0];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[1]) * uKernel[1];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[2]) * uKernel[2];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[3]) * uKernel[3];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[4]) * uKernel[4];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[5]) * uKernel[5];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[6]) * uKernel[6];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[7]) * uKernel[7];\n    sum += texture2D(sTexture, vTextureCoord + uTexOffset[8]) * uKernel[8];\n    gl_FragColor = sum + uColorAdjust;\n}\n"

    .line 417
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_FILT3x3:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v7, v0, v2

    aput-object v8, v0, v4

    .line 419
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/glutils/ShaderConst;->FRAGMENT_SHADER_EXT_FILT3x3:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x84c0
        0x84c1
        0x84c2
        0x84c3
        0x84c4
        0x84c5
        0x84c6
        0x84c7
        0x84c8
        0x84c9
        0x84ca
        0x84cb
        0x84cc
        0x84cd
        0x84ce
        0x84cf
        0x84d0
        0x84d1
        0x84d2
        0x84d3
        0x84d4
        0x84d5
        0x84d6
        0x84d7
        0x84d8
        0x84d9
        0x84da
        0x84db
        0x84dc
        0x84dd
        0x84de
        0x84df
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x40000000    # 2.0f
        0x0
        -0x40000000    # -2.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40000000    # -2.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_4
    .array-data 4
        0x40400000    # 3.0f
        0x0
        -0x3fc00000    # -3.0f
        0x41200000    # 10.0f
        0x0
        -0x3ee00000    # -10.0f
        0x40400000    # 3.0f
        0x0
        -0x3fc00000    # -3.0f
    .end array-data

    :array_5
    .array-data 4
        0x40400000    # 3.0f
        0x41200000    # 10.0f
        0x40400000    # 3.0f
        0x0
        0x0
        0x0
        -0x3fc00000    # -3.0f
        -0x3ee00000    # -10.0f
        -0x3fc00000    # -3.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x40a00000    # 5.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x41000000    # 8.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_9
    .array-data 4
        0x3de38e39
        0x3de38e39
        0x3de38e39
        0x3de38e39
        0x3de38e39
        0x3de38e39
        0x3de38e39
        0x3de38e39
        0x3de38e39
    .end array-data

    :array_a
    .array-data 4
        0x3d800000    # 0.0625f
        0x3e000000    # 0.125f
        0x3d800000    # 0.0625f
        0x3e000000    # 0.125f
        0x3e800000    # 0.25f
        0x3e000000    # 0.125f
        0x3d800000    # 0.0625f
        0x3e000000    # 0.125f
        0x3d800000    # 0.0625f
    .end array-data

    :array_b
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x3f000000    # -8.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
