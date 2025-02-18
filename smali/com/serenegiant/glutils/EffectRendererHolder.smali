.class public Lcom/serenegiant/glutils/EffectRendererHolder;
.super Lcom/serenegiant/glutils/AbstractRendererHolder;
.source "EffectRendererHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;
    }
.end annotation


# static fields
.field public static final EFFECT_BIN:I = 0x3

.field public static final EFFECT_BIN_GREEN:I = 0x5

.field public static final EFFECT_BIN_REVERSE:I = 0x6

.field public static final EFFECT_BIN_REVERSE_GREEN:I = 0x8

.field public static final EFFECT_BIN_REVERSE_YELLOW:I = 0x7

.field public static final EFFECT_BIN_YELLOW:I = 0x4

.field public static final EFFECT_EMPHASIZE_RED_YELLOW:I = 0x9

.field public static final EFFECT_EMPHASIZE_RED_YELLOW_WHITE:I = 0xa

.field public static final EFFECT_EMPHASIZE_YELLOW_WHITE:I = 0xb

.field public static final EFFECT_GRAY:I = 0x1

.field public static final EFFECT_GRAY_REVERSE:I = 0x2

.field public static final EFFECT_NON:I = 0x0

.field public static final EFFECT_NUM:I = 0xc

.field private static final FRAGMENT_SHADER_BIN_BASE:Ljava/lang/String; = "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nconst vec3 conv = vec3(0.3, 0.59, 0.11);\nconst vec3 cl = vec3(%s);\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = dot(tc.rgb, conv);\n    vec3 bin = step(0.3, vec3(color, color, color));\n    gl_FragColor = vec4(cl * bin, 1.0);\n}\n"

.field private static final FRAGMENT_SHADER_BIN_GREEN_OES:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_BIN_OES:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_BIN_REVERSE_BASE:Ljava/lang/String; = "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nconst vec3 conv = vec3(0.3, 0.59, 0.11);\nconst vec3 cl = vec3(%s);\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = dot(tc.rgb, conv);\n    vec3 bin = step(0.3, vec3(color, color, color));\n    gl_FragColor = vec4(cl * (vec3(1.0, 1.0, 1.0) - bin), 1.0);\n}\n"

.field private static final FRAGMENT_SHADER_BIN_REVERSE_GREEN_OES:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_BIN_REVERSE_OES:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_BIN_REVERSE_YELLOW_OES:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_BIN_YELLOW_OES:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_EMPHASIZE_RED_YELLOW_BASE:Ljava/lang/String; = "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nuniform float uParams[18];\nvec3 rgb2hsv(vec3 c) {\nvec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\nvec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\nvec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\nfloat d = q.x - min(q.w, q.y);\nfloat e = 1.0e-10;\nreturn vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n}\nvec3 hsv2rgb(vec3 c) {\nvec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\nvec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);\nreturn c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);\n}\nvoid main() {\n    vec3 hsv = rgb2hsv(texture2D(sTexture, vTextureCoord).rgb);\n    if ( ((hsv.g >= uParams[2]) && (hsv.g <= uParams[3]))\n        && ((hsv.b >= uParams[4]) && (hsv.b <= uParams[5]))\n        && ((hsv.r <= uParams[0]) || (hsv.r >= uParams[1])) ) {\n        hsv = hsv * vec3(uParams[6], uParams[7], uParams[8]);\n    } else {\n        hsv = hsv * vec3(uParams[9], uParams[10], uParams[11]);\n    }\n    gl_FragColor = vec4(hsv2rgb(clamp(hsv, 0.0, 1.0)), 1.0);\n}\n"

.field private static final FRAGMENT_SHADER_EMPHASIZE_RED_YELLOW_OES:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_EMPHASIZE_RED_YELLOW_WHITE_BASE:Ljava/lang/String; = "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nuniform float uParams[18];\nvec3 rgb2hsv(vec3 c) {\nvec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\nvec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\nvec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\nfloat d = q.x - min(q.w, q.y);\nfloat e = 1.0e-10;\nreturn vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n}\nvec3 hsv2rgb(vec3 c) {\nvec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\nvec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);\nreturn c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);\n}\nvoid main() {\n    vec3 hsv = rgb2hsv(texture2D(sTexture, vTextureCoord).rgb);\n    if ( ((hsv.g >= uParams[2]) && (hsv.g <= uParams[3]))\n        && ((hsv.b >= uParams[4]) && (hsv.b <= uParams[5]))\n        && ((hsv.r <= uParams[0]) || (hsv.r >= uParams[1])) ) {\n        hsv = hsv * vec3(uParams[6], uParams[7], uParams[8]);\n    } else if ((hsv.g < uParams[12]) && (hsv.b < uParams[13])) {\n        hsv = hsv * vec3(1.0, 0.0, 2.0);\n    } else {\n        hsv = hsv * vec3(uParams[9], uParams[10], uParams[11]);\n    }\n    gl_FragColor = vec4(hsv2rgb(clamp(hsv, 0.0, 1.0)), 1.0);\n}\n"

.field private static final FRAGMENT_SHADER_EMPHASIZE_RED_YELLOW_WHITE_OES:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_EMPHASIZE_YELLOW_WHITE_BASE:Ljava/lang/String; = "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nuniform float uParams[18];\nvec3 rgb2hsv(vec3 c) {\nvec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\nvec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\nvec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\nfloat d = q.x - min(q.w, q.y);\nfloat e = 1.0e-10;\nreturn vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n}\nvec3 hsv2rgb(vec3 c) {\nvec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\nvec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);\nreturn c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);\n}\nvoid main() {\n    vec3 rgb = texture2D(sTexture, vTextureCoord).rgb;\n    vec3 hsv = rgb2hsv(rgb);\n    if (   ((hsv.r >= uParams[0]) && (hsv.r <= uParams[1]))\n        && ((hsv.g >= uParams[2]) && (hsv.g <= uParams[3]))\n        && ((hsv.b >= uParams[4]) && (hsv.b <= uParams[5])) ) {\n        hsv = hsv * vec3(uParams[6], uParams[7], uParams[8]);\n    } else if ((hsv.g < uParams[12]) && (hsv.b > uParams[13])) {\n        hsv = hsv * vec3(1.0, 0.0, 2.0);\n    } else {\n        hsv = hsv * vec3(uParams[9], uParams[10], uParams[11]);\n    }\n    gl_FragColor = vec4(hsv2rgb(clamp(hsv, 0.0, 1.0)), 1.0);\n}\n"

.field private static final FRAGMENT_SHADER_EMPHASIZE_YELLOW_WHITE_OES:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_GRAY_BASE:Ljava/lang/String; = "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nconst vec3 conv = vec3(0.3, 0.59, 0.11);\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = dot(tc.rgb, conv);\n    vec3 cl3 = vec3(color, color, color);\n    gl_FragColor = vec4(cl3, 1.0);\n}\n"

.field private static final FRAGMENT_SHADER_GRAY_OES:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_GRAY_REVERSE_BASE:Ljava/lang/String; = "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nconst vec3 conv = vec3(0.3, 0.59, 0.11);\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = dot(tc.rgb, conv);\n    vec3 cl3 = vec3(color, color, color);\n    gl_FragColor = vec4(clamp(vec3(1.0, 1.0, 1.0) - cl3, 0.0, 1.0), 1.0);\n}\n"

.field private static final FRAGMENT_SHADER_GRAY_REVERSE_OES:Ljava/lang/String;

.field private static final MAX_PARAM_NUM:I = 0x12

.field private static final REQUEST_CHANGE_EFFECT:I = 0x64

.field private static final REQUEST_SET_PARAMS:I = 0x65

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 38
    const-class v0, Lcom/serenegiant/glutils/EffectRendererHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/glutils/EffectRendererHolder;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "#extension GL_OES_EGL_image_external : require\n"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "samplerExternalOES"

    aput-object v5, v1, v4

    const-string v6, "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nconst vec3 conv = vec3(0.3, 0.59, 0.11);\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = dot(tc.rgb, conv);\n    vec3 cl3 = vec3(color, color, color);\n    gl_FragColor = vec4(cl3, 1.0);\n}\n"

    .line 105
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_GRAY_OES:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    const-string v6, "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nconst vec3 conv = vec3(0.3, 0.59, 0.11);\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = dot(tc.rgb, conv);\n    vec3 cl3 = vec3(color, color, color);\n    gl_FragColor = vec4(clamp(vec3(1.0, 1.0, 1.0) - cl3, 0.0, 1.0), 1.0);\n}\n"

    .line 125
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_GRAY_REVERSE_OES:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    aput-object v5, v6, v4

    const-string v7, "1.0, 1.0, 1.0"

    aput-object v7, v6, v0

    const-string v8, "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nconst vec3 conv = vec3(0.3, 0.59, 0.11);\nconst vec3 cl = vec3(%s);\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = dot(tc.rgb, conv);\n    vec3 bin = step(0.3, vec3(color, color, color));\n    gl_FragColor = vec4(cl * bin, 1.0);\n}\n"

    .line 147
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_BIN_OES:Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    aput-object v5, v6, v4

    const-string v9, "1.0, 1.0, 0.0"

    aput-object v9, v6, v0

    .line 150
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_BIN_YELLOW_OES:Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    aput-object v5, v6, v4

    const-string v10, "0.0, 1.0, 0.0"

    aput-object v10, v6, v0

    .line 153
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_BIN_GREEN_OES:Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    aput-object v5, v6, v4

    aput-object v7, v6, v0

    const-string v7, "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nconst vec3 conv = vec3(0.3, 0.59, 0.11);\nconst vec3 cl = vec3(%s);\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = dot(tc.rgb, conv);\n    vec3 bin = step(0.3, vec3(color, color, color));\n    gl_FragColor = vec4(cl * (vec3(1.0, 1.0, 1.0) - bin), 1.0);\n}\n"

    .line 175
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_BIN_REVERSE_OES:Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    aput-object v5, v6, v4

    aput-object v9, v6, v0

    .line 178
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_BIN_REVERSE_YELLOW_OES:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    aput-object v10, v1, v0

    .line 181
    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_BIN_REVERSE_GREEN_OES:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    const-string v6, "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nuniform float uParams[18];\nvec3 rgb2hsv(vec3 c) {\nvec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\nvec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\nvec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\nfloat d = q.x - min(q.w, q.y);\nfloat e = 1.0e-10;\nreturn vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n}\nvec3 hsv2rgb(vec3 c) {\nvec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\nvec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);\nreturn c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);\n}\nvoid main() {\n    vec3 hsv = rgb2hsv(texture2D(sTexture, vTextureCoord).rgb);\n    if ( ((hsv.g >= uParams[2]) && (hsv.g <= uParams[3]))\n        && ((hsv.b >= uParams[4]) && (hsv.b <= uParams[5]))\n        && ((hsv.r <= uParams[0]) || (hsv.r >= uParams[1])) ) {\n        hsv = hsv * vec3(uParams[6], uParams[7], uParams[8]);\n    } else {\n        hsv = hsv * vec3(uParams[9], uParams[10], uParams[11]);\n    }\n    gl_FragColor = vec4(hsv2rgb(clamp(hsv, 0.0, 1.0)), 1.0);\n}\n"

    .line 207
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_EMPHASIZE_RED_YELLOW_OES:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    const-string v6, "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nuniform float uParams[18];\nvec3 rgb2hsv(vec3 c) {\nvec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\nvec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\nvec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\nfloat d = q.x - min(q.w, q.y);\nfloat e = 1.0e-10;\nreturn vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n}\nvec3 hsv2rgb(vec3 c) {\nvec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\nvec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);\nreturn c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);\n}\nvoid main() {\n    vec3 hsv = rgb2hsv(texture2D(sTexture, vTextureCoord).rgb);\n    if ( ((hsv.g >= uParams[2]) && (hsv.g <= uParams[3]))\n        && ((hsv.b >= uParams[4]) && (hsv.b <= uParams[5]))\n        && ((hsv.r <= uParams[0]) || (hsv.r >= uParams[1])) ) {\n        hsv = hsv * vec3(uParams[6], uParams[7], uParams[8]);\n    } else if ((hsv.g < uParams[12]) && (hsv.b < uParams[13])) {\n        hsv = hsv * vec3(1.0, 0.0, 2.0);\n    } else {\n        hsv = hsv * vec3(uParams[9], uParams[10], uParams[11]);\n    }\n    gl_FragColor = vec4(hsv2rgb(clamp(hsv, 0.0, 1.0)), 1.0);\n}\n"

    .line 235
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_EMPHASIZE_RED_YELLOW_WHITE_OES:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    aput-object v5, v0, v4

    const-string v1, "#version 100\n%sprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform %s sTexture;\nuniform float uParams[18];\nvec3 rgb2hsv(vec3 c) {\nvec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\nvec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\nvec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\nfloat d = q.x - min(q.w, q.y);\nfloat e = 1.0e-10;\nreturn vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n}\nvec3 hsv2rgb(vec3 c) {\nvec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\nvec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);\nreturn c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);\n}\nvoid main() {\n    vec3 rgb = texture2D(sTexture, vTextureCoord).rgb;\n    vec3 hsv = rgb2hsv(rgb);\n    if (   ((hsv.r >= uParams[0]) && (hsv.r <= uParams[1]))\n        && ((hsv.g >= uParams[2]) && (hsv.g <= uParams[3]))\n        && ((hsv.b >= uParams[4]) && (hsv.b <= uParams[5])) ) {\n        hsv = hsv * vec3(uParams[6], uParams[7], uParams[8]);\n    } else if ((hsv.g < uParams[12]) && (hsv.b > uParams[13])) {\n        hsv = hsv * vec3(1.0, 0.0, 2.0);\n    } else {\n        hsv = hsv * vec3(uParams[9], uParams[10], uParams[11]);\n    }\n    gl_FragColor = vec4(hsv2rgb(clamp(hsv, 0.0, 1.0)), 1.0);\n}\n"

    .line 265
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_EMPHASIZE_YELLOW_WHITE_OES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIILcom/serenegiant/glutils/EGLBase$IContext;ILcom/serenegiant/glutils/RenderHolderCallback;)V
    .locals 0

    .line 279
    invoke-direct/range {p0 .. p6}, Lcom/serenegiant/glutils/AbstractRendererHolder;-><init>(IIILcom/serenegiant/glutils/EGLBase$IContext;ILcom/serenegiant/glutils/RenderHolderCallback;)V

    return-void
.end method

.method public constructor <init>(IILcom/serenegiant/glutils/RenderHolderCallback;)V
    .locals 7

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p3

    .line 270
    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/glutils/EffectRendererHolder;-><init>(IIILcom/serenegiant/glutils/EGLBase$IContext;ILcom/serenegiant/glutils/RenderHolderCallback;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_GRAY_OES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_EMPHASIZE_RED_YELLOW_WHITE_OES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_EMPHASIZE_YELLOW_WHITE_OES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/serenegiant/glutils/EffectRendererHolder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_GRAY_REVERSE_OES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_BIN_OES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_BIN_YELLOW_OES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_BIN_GREEN_OES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_BIN_REVERSE_OES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_BIN_REVERSE_YELLOW_OES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_BIN_REVERSE_GREEN_OES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/serenegiant/glutils/EffectRendererHolder;->FRAGMENT_SHADER_EMPHASIZE_RED_YELLOW_OES:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public changeEffect(I)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    check-cast v0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;

    invoke-virtual {v0, p1}, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->changeEffect(I)V

    return-void
.end method

.method protected createRendererTask(IIILcom/serenegiant/glutils/EGLBase$IContext;I)Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;
    .locals 8

    .line 288
    new-instance v7, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;-><init>(Lcom/serenegiant/glutils/AbstractRendererHolder;IIILcom/serenegiant/glutils/EGLBase$IContext;I)V

    return-object v7
.end method

.method public getCurrentEffect()I
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    check-cast v0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;

    invoke-static {v0}, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->access$000(Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;)I

    move-result v0

    return v0
.end method

.method protected handleDefaultEffect(ILcom/serenegiant/glutils/IDrawer2dES2;)V
    .locals 0

    .line 349
    instance-of p1, p2, Lcom/serenegiant/glutils/GLDrawer2D;

    if-eqz p1, :cond_0

    .line 350
    check-cast p2, Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-virtual {p2}, Lcom/serenegiant/glutils/GLDrawer2D;->resetShader()V

    :cond_0
    return-void
.end method

.method public setParams(I[F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    check-cast v0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->setParams(I[F)V

    return-void

    .line 335
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid effect number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setParams([F)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/serenegiant/glutils/EffectRendererHolder;->mRendererTask:Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;

    check-cast v0, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/serenegiant/glutils/EffectRendererHolder$MyRendererTask;->setParams(I[F)V

    return-void
.end method
