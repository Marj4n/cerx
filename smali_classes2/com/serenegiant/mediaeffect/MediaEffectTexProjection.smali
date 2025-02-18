.class public Lcom/serenegiant/mediaeffect/MediaEffectTexProjection;
.super Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;
.source "MediaEffectTexProjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/mediaeffect/MediaEffectTexProjection$MediaEffectTexProjectionDrawer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FRAGMENT_SHADER:Ljava/lang/String;

.field private static final FRAGMENT_SHADER_BASE:Ljava/lang/String; = "#version 100\n%s#define KERNEL_SIZE3x3 9\nprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final FRAGMENT_SHADER_EXT:Ljava/lang/String;

.field public static final PROJ_VERTEX_SHADER:Ljava/lang/String; = "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nuniform mat3 uTexMatrix2;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\ngl_Position = uMVPMatrix * aPosition;\nvec3 tex_coord = vec3((uTexMatrix * aTextureCoord).xy, 1.0);\nvec3 temp = uTexMatrix2 * tex_coord;\nvTextureCoord = temp.xy / temp.z;\n}\n"

.field private static final TAG:Ljava/lang/String; = "MediaEffectTexProjection"


# instance fields
.field private final m:[F

.field private final mat:Landroid/graphics/Matrix;


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

    const-string v2, "#version 100\n%s#define KERNEL_SIZE3x3 9\nprecision highp float;\nvarying       vec2 vTextureCoord;\nuniform %s    sTexture;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 159
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection;->FRAGMENT_SHADER:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    aput-object v1, v0, v3

    const-string v1, "samplerExternalOES"

    aput-object v1, v0, v4

    .line 161
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection;->FRAGMENT_SHADER_EXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 164
    new-instance v0, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection$MediaEffectTexProjectionDrawer;

    sget-object v1, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection;->FRAGMENT_SHADER:Ljava/lang/String;

    const-string v2, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nuniform mat3 uTexMatrix2;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\ngl_Position = uMVPMatrix * aPosition;\nvec3 tex_coord = vec3((uTexMatrix * aTextureCoord).xy, 1.0);\nvec3 temp = uTexMatrix2 * tex_coord;\nvTextureCoord = temp.xy / temp.z;\n}\n"

    invoke-direct {v0, v2, v1}, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection$MediaEffectTexProjectionDrawer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectGLESBase;-><init>(Lcom/serenegiant/mediaeffect/MediaEffectDrawer;)V

    .line 168
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection;->mat:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 169
    iput-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection;->m:[F

    return-void
.end method


# virtual methods
.method public calcPerspectiveTransform([F[F)V
    .locals 7

    .line 177
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection;->mat:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 178
    iget-object v1, p0, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection;->mat:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 179
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection;->mat:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection;->m:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 180
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection;->mDrawer:Lcom/serenegiant/mediaeffect/MediaEffectDrawer;

    check-cast p1, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection$MediaEffectTexProjectionDrawer;

    iget-object p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection;->m:[F

    invoke-virtual {p1, p2}, Lcom/serenegiant/mediaeffect/MediaEffectTexProjection$MediaEffectTexProjectionDrawer;->setTexProjection([F)V

    return-void
.end method
