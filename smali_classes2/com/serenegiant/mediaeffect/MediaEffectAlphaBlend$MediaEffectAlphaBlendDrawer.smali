.class Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend$MediaEffectAlphaBlendDrawer;
.super Lcom/serenegiant/mediaeffect/MediaEffectDrawer;
.source "MediaEffectAlphaBlend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaEffectAlphaBlendDrawer"
.end annotation


# instance fields
.field private mMixRate:F

.field private final muMixRate:I


# direct methods
.method protected constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend$MediaEffectAlphaBlendDrawer;-><init>(FZ)V

    return-void
.end method

.method protected constructor <init>(FZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 71
    invoke-static {}, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend;->access$000()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend;->access$100()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1, p2, v0}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;-><init>(IZLjava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend$MediaEffectAlphaBlendDrawer;->getProgram()I

    move-result p2

    const-string v0, "uMixRate"

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p2

    if-gez p2, :cond_1

    const/4 p2, -0x1

    .line 76
    :cond_1
    iput p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend$MediaEffectAlphaBlendDrawer;->muMixRate:I

    .line 77
    invoke-virtual {p0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend$MediaEffectAlphaBlendDrawer;->setMixRate(F)V

    return-void
.end method


# virtual methods
.method protected preDraw([I[FI)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;->preDraw([I[FI)V

    .line 95
    iget p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend$MediaEffectAlphaBlendDrawer;->muMixRate:I

    if-ltz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend$MediaEffectAlphaBlendDrawer;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 97
    :try_start_0
    iget p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend$MediaEffectAlphaBlendDrawer;->muMixRate:I

    iget p3, p0, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend$MediaEffectAlphaBlendDrawer;->mMixRate:F

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 98
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public setMixRate(F)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend$MediaEffectAlphaBlendDrawer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iput p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectAlphaBlend$MediaEffectAlphaBlendDrawer;->mMixRate:F

    .line 87
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
