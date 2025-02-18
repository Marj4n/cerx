.class final Lcom/serenegiant/glutils/RenderHandler$ContextParams;
.super Ljava/lang/Object;
.source "RenderHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/RenderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContextParams"
.end annotation


# instance fields
.field final sharedContext:Lcom/serenegiant/glutils/EGLBase$IContext;

.field final surface:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/serenegiant/glutils/EGLBase$IContext;Ljava/lang/Object;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/serenegiant/glutils/RenderHandler$ContextParams;->sharedContext:Lcom/serenegiant/glutils/EGLBase$IContext;

    .line 140
    iput-object p2, p0, Lcom/serenegiant/glutils/RenderHandler$ContextParams;->surface:Ljava/lang/Object;

    return-void
.end method
