.class public Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;
.super Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;
.source "MediaEffectColorAdjustDrawer.java"


# instance fields
.field private mColorAdjust:F

.field private muColorAdjustLoc:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 36
    invoke-direct {p0, v0, v1, p1}, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "#version 100\nuniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 42
    invoke-direct {p0, p1, v0, p2}, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;->getProgram()I

    move-result p1

    const-string p2, "uColorAdjust"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;->muColorAdjustLoc:I

    if-gez p1, :cond_0

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;->muColorAdjustLoc:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected preDraw([I[FI)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;->preDraw([I[FI)V

    .line 67
    iget p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;->muColorAdjustLoc:I

    if-ltz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 69
    :try_start_0
    iget p2, p0, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;->muColorAdjustLoc:I

    iget p3, p0, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;->mColorAdjust:F

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 70
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

.method public setColorAdjust(F)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    iput p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectColorAdjustDrawer;->mColorAdjust:F

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
