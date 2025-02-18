.class public interface abstract Lcom/serenegiant/mediaeffect/ISource;
.super Ljava/lang/Object;
.source "ISource.java"


# virtual methods
.method public abstract apply(Lcom/serenegiant/mediaeffect/IEffect;)Lcom/serenegiant/mediaeffect/ISource;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getOutputTexId()I
.end method

.method public abstract getOutputTexture()Lcom/serenegiant/glutils/TextureOffscreen;
.end method

.method public abstract getSourceTexId()[I
.end method

.method public abstract getTexMatrix()[F
.end method

.method public abstract getWidth()I
.end method

.method public abstract release()V
.end method

.method public abstract reset()Lcom/serenegiant/mediaeffect/ISource;
.end method

.method public abstract resize(II)Lcom/serenegiant/mediaeffect/ISource;
.end method
