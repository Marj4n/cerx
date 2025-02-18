.class public interface abstract Lcom/serenegiant/glutils/EGLBase$IEglSurface;
.super Ljava/lang/Object;
.source "EGLBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/EGLBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IEglSurface"
.end annotation


# virtual methods
.method public abstract getContext()Lcom/serenegiant/glutils/EGLBase$IContext;
.end method

.method public abstract isValid()Z
.end method

.method public abstract makeCurrent()V
.end method

.method public abstract release()V
.end method

.method public abstract swap()V
.end method

.method public abstract swap(J)V
.end method
