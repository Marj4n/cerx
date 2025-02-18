.class public interface abstract Lcom/serenegiant/glutils/IRenderer;
.super Ljava/lang/Object;
.source "IRenderer.java"

# interfaces
.implements Lcom/serenegiant/glutils/IRendererCommon;


# virtual methods
.method public abstract release()V
.end method

.method public varargs abstract requestRender([Ljava/lang/Object;)V
.end method

.method public abstract resize(II)V
.end method

.method public abstract setSurface(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method
