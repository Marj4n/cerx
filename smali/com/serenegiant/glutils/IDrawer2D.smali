.class public interface abstract Lcom/serenegiant/glutils/IDrawer2D;
.super Ljava/lang/Object;
.source "IDrawer2D.java"


# virtual methods
.method public abstract draw(I[FI)V
.end method

.method public abstract draw(Lcom/serenegiant/glutils/ITexture;)V
.end method

.method public abstract draw(Lcom/serenegiant/glutils/TextureOffscreen;)V
.end method

.method public abstract getMvpMatrix([FI)V
.end method

.method public abstract getMvpMatrix()[F
.end method

.method public abstract release()V
.end method

.method public abstract setMvpMatrix([FI)Lcom/serenegiant/glutils/IDrawer2D;
.end method
