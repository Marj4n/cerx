.class Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnResultRunnable;
.super Ljava/lang/Object;
.source "ThumbLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/util/ThumbLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnResultRunnable"
.end annotation


# instance fields
.field private obj:Ljava/lang/String;

.field private result:Z

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;ZLjava/lang/String;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnResultRunnable;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-boolean p2, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnResultRunnable;->result:Z

    .line 433
    iput-object p3, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnResultRunnable;->obj:Ljava/lang/String;

    .line 434
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnResultRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnResultRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;

    if-eqz v0, :cond_0

    .line 441
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnResultRunnable;->result:Z

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnResultRunnable;->obj:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;->onResult(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
