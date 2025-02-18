.class public interface abstract Lcom/serenegiant/glutils/DumbRenderer$RendererDelegater;
.super Ljava/lang/Object;
.source "DumbRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/DumbRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RendererDelegater"
.end annotation


# virtual methods
.method public varargs abstract onDraw(Lcom/serenegiant/glutils/EGLBase;[Ljava/lang/Object;)V
.end method

.method public abstract onMirror(Lcom/serenegiant/glutils/EGLBase;I)V
.end method

.method public abstract onResize(Lcom/serenegiant/glutils/EGLBase;II)V
.end method

.method public abstract onSetSurface(Lcom/serenegiant/glutils/EGLBase;Ljava/lang/Object;)V
.end method

.method public abstract onStart(Lcom/serenegiant/glutils/EGLBase;)V
.end method

.method public abstract onStop(Lcom/serenegiant/glutils/EGLBase;)V
.end method
