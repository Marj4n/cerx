.class Lcom/jieli/stream/dv/running2/data/VideoCapture$2;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/data/VideoCapture;->capture([BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/data/VideoCapture;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/data/VideoCapture;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$2;->this$0:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$2;->this$0:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->access$100(Lcom/jieli/stream/dv/running2/data/VideoCapture;)Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;->onFailed()V

    return-void
.end method
