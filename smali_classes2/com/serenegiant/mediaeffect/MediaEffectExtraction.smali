.class public Lcom/serenegiant/mediaeffect/MediaEffectExtraction;
.super Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
.source "MediaEffectExtraction.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FRAGMENT_SHADER:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_BASE:Ljava/lang/String; = "#version 100\n%s#define KERNEL_SIZE3x3 9\nprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform float uKernel[18];\nuniform vec2  uTexOffset[KERNEL_SIZE3x3];\nuniform float uColorAdjust;\nvec3 rgb2hsv(vec3 c) {\nvec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\nvec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\nvec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\nfloat d = q.x - min(q.w, q.y);\nfloat e = 1.0e-10;\nreturn vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n}\nvec3 hsv2rgb(vec3 c) {\nvec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\nvec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);\nreturn c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);\n}\nvoid main() {\n    vec3 hsv = rgb2hsv(texture2D(sTexture, vTextureCoord).rgb);\n    vec3 min = vec3(uKernel[0], uKernel[2], uKernel[4]);\n    vec3 max = vec3(uKernel[1], uKernel[3], uKernel[5]);\n    vec3 add = vec3(uKernel[6], uKernel[7], uKernel[8]);\n    float e = 1e-10;\n    vec3 eps = vec3(e, e, e);\n    vec3 v = hsv;\n    if (hsv.r < min.r || hsv.r > max.r || hsv.g < min.g || hsv.g > max.g || hsv.b < min.b || hsv.b > max.b) {\n        v = vec3(0.0);\n    }\n    hsv = v + add;\n    if (uColorAdjust > 0.0) {\n        hsv = step(vec3(1.0, 1.0, uColorAdjust), hsv);\n    }\n    gl_FragColor = vec4(hsv2rgb(clamp(hsv, 0.0, 1.0)), 1.0);\n}\n"

.field private static final FRAGMENT_SHADER_EXT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaEffectExtraction"


# instance fields
.field private final mLimit:[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sampler2D"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "#version 100\n%s#define KERNEL_SIZE3x3 9\nprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nuniform float uKernel[18];\nuniform vec2  uTexOffset[KERNEL_SIZE3x3];\nuniform float uColorAdjust;\nvec3 rgb2hsv(vec3 c) {\nvec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\nvec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\nvec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\nfloat d = q.x - min(q.w, q.y);\nfloat e = 1.0e-10;\nreturn vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n}\nvec3 hsv2rgb(vec3 c) {\nvec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\nvec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);\nreturn c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);\n}\nvoid main() {\n    vec3 hsv = rgb2hsv(texture2D(sTexture, vTextureCoord).rgb);\n    vec3 min = vec3(uKernel[0], uKernel[2], uKernel[4]);\n    vec3 max = vec3(uKernel[1], uKernel[3], uKernel[5]);\n    vec3 add = vec3(uKernel[6], uKernel[7], uKernel[8]);\n    float e = 1e-10;\n    vec3 eps = vec3(e, e, e);\n    vec3 v = hsv;\n    if (hsv.r < min.r || hsv.r > max.r || hsv.g < min.g || hsv.g > max.g || hsv.b < min.b || hsv.b > max.b) {\n        v = vec3(0.0);\n    }\n    hsv = v + add;\n    if (uColorAdjust > 0.0) {\n        hsv = step(vec3(1.0, 1.0, uColorAdjust), hsv);\n    }\n    gl_FragColor = vec4(hsv2rgb(clamp(hsv, 0.0, 1.0)), 1.0);\n}\n"

    .line 73
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->FRAGMENT_SHADER:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    aput-object v1, v0, v3

    const-string v1, "samplerExternalOES"

    aput-object v1, v0, v4

    .line 75
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->FRAGMENT_SHADER_EXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 80
    new-instance v0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    sget-object v1, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->FRAGMENT_SHADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;-><init>(Lcom/serenegiant/mediaeffect/MediaEffectDrawer;)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 77
    iput-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->mLimit:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 86
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    check-cast v0, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    iget-object v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->mLimit:[F

    invoke-virtual {v0, v1, v2}, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->setKernel([FF)V

    return-void
.end method


# virtual methods
.method public setParameter(FFFFFFF)Lcom/serenegiant/mediaeffect/MediaEffectExtraction;
    .locals 11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p7

    .line 105
    invoke-virtual/range {v0 .. v10}, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->setParameter(FFFFFFFFFF)Lcom/serenegiant/mediaeffect/MediaEffectExtraction;

    move-result-object v0

    return-object v0
.end method

.method public setParameter(FFFFFFFFFF)Lcom/serenegiant/mediaeffect/MediaEffectExtraction;
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->mLimit:[F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 116
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->mLimit:[F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/4 p2, 0x1

    aput p1, v0, p2

    .line 117
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->mLimit:[F

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v0, 0x2

    aput p2, p1, v0

    .line 118
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->mLimit:[F

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/4 p3, 0x3

    aput p2, p1, p3

    .line 119
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->mLimit:[F

    invoke-static {p5, p6}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p3, 0x4

    aput p2, p1, p3

    .line 120
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->mLimit:[F

    invoke-static {p5, p6}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/4 p3, 0x5

    aput p2, p1, p3

    .line 121
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->mLimit:[F

    const/4 p2, 0x6

    aput p7, p1, p2

    const/4 p2, 0x7

    .line 122
    aput p8, p1, p2

    const/16 p2, 0x8

    .line 123
    aput p9, p1, p2

    .line 124
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    check-cast p1, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    iget-object p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->mLimit:[F

    invoke-virtual {p1, p2, p10}, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->setKernel([FF)V

    return-object p0
.end method

.method public setParameter([FF)Lcom/serenegiant/mediaeffect/MediaEffectExtraction;
    .locals 3

    if-eqz p1, :cond_0

    .line 135
    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->mLimit:[F

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    check-cast p1, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;

    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectExtraction;->mLimit:[F

    invoke-virtual {p1, v0, p2}, Lcom/serenegiant/mediaeffect/MediaEffectKernel3x3Drawer;->setKernel([FF)V

    return-object p0

    .line 136
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "limit is null or short"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
