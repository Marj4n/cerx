.class Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask$1;
.super Ljava/lang/Object;
.source "AbstractRendererHolder.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;


# direct methods
.method constructor <init>(Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;)V
    .locals 0

    .line 1187
    iput-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1191
    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->removeRequest(I)V

    .line 1192
    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;

    invoke-static {p1, v0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->access$202(Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;Z)Z

    .line 1193
    iget-object p1, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask$1;->this$0:Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;

    invoke-virtual {p1, v0}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;->offer(I)Z

    return-void
.end method
