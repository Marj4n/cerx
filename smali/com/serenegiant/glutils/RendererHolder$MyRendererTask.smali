.class public final Lcom/serenegiant/glutils/RendererHolder$MyRendererTask;
.super Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;
.source "RendererHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/RendererHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "MyRendererTask"
.end annotation


# direct methods
.method public constructor <init>(Lcom/serenegiant/glutils/AbstractRendererHolder;IIILcom/serenegiant/glutils/EGLBase$IContext;I)V
    .locals 0

    .line 75
    invoke-direct/range {p0 .. p6}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;-><init>(Lcom/serenegiant/glutils/AbstractRendererHolder;IIILcom/serenegiant/glutils/EGLBase$IContext;I)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/glutils/RendererHolder;II)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;-><init>(Lcom/serenegiant/glutils/AbstractRendererHolder;II)V

    return-void
.end method
