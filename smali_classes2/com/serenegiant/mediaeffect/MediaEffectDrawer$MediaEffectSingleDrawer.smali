.class public Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;
.super Lcom/serenegiant/mediaeffect/MediaEffectDrawer;
.source "MediaEffectDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/mediaeffect/MediaEffectDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MediaEffectSingleDrawer"
.end annotation


# direct methods
.method protected constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 105
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectDrawer;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bindTexture([I)V
    .locals 3

    .line 114
    sget-object v0, Lcom/serenegiant/glutils/ShaderConst;->TEX_NUMBERS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 115
    aget v0, p1, v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 116
    iget v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;->mTexTarget:I

    aget p1, p1, v1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 117
    iget-object p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;->muTexLoc:[I

    aget p1, p1, v1

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_0
    return-void
.end method

.method protected unbindTexture()V
    .locals 2

    .line 126
    sget-object v0, Lcom/serenegiant/glutils/ShaderConst;->TEX_NUMBERS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 127
    iget v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectDrawer$MediaEffectSingleDrawer;->mTexTarget:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method
