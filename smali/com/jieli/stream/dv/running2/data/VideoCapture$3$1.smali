.class Lcom/jieli/stream/dv/running2/data/VideoCapture$3$1;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/data/VideoCapture$3;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/data/VideoCapture$3;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/data/VideoCapture$3;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$3$1;->this$1:Lcom/jieli/stream/dv/running2/data/VideoCapture$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$3$1;->this$1:Lcom/jieli/stream/dv/running2/data/VideoCapture$3;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/data/VideoCapture$3;->this$0:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->access$100(Lcom/jieli/stream/dv/running2/data/VideoCapture;)Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;->onFailed()V

    return-void
.end method
