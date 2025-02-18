.class Lcom/jieli/stream/dv/running2/data/VideoRecord$6$2;
.super Ljava/lang/Object;
.source "VideoRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/data/VideoRecord$6;->onStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/data/VideoRecord$6;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/data/VideoRecord$6;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$6$2;->this$1:Lcom/jieli/stream/dv/running2/data/VideoRecord$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$6$2;->this$1:Lcom/jieli/stream/dv/running2/data/VideoRecord$6;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/data/VideoRecord$6;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->access$000(Lcom/jieli/stream/dv/running2/data/VideoRecord;)Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$6$2;->this$1:Lcom/jieli/stream/dv/running2/data/VideoRecord$6;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/data/VideoRecord$6;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->access$000(Lcom/jieli/stream/dv/running2/data/VideoRecord;)Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;->onStop()V

    :cond_0
    return-void
.end method
