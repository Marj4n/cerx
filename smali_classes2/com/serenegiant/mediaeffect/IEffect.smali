.class public interface abstract Lcom/serenegiant/mediaeffect/IEffect;
.super Ljava/lang/Object;
.source "IEffect.java"


# virtual methods
.method public abstract apply(Lcom/serenegiant/mediaeffect/ISource;)V
.end method

.method public abstract apply([IIII)V
.end method

.method public abstract apply([ILcom/serenegiant/glutils/TextureOffscreen;)V
.end method

.method public abstract enabled()Z
.end method

.method public abstract release()V
.end method

.method public abstract resize(II)Lcom/serenegiant/mediaeffect/IEffect;
.end method

.method public abstract setEnable(Z)Lcom/serenegiant/mediaeffect/IEffect;
.end method
