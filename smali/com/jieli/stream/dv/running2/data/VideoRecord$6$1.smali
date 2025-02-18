.class Lcom/jieli/stream/dv/running2/data/VideoRecord$6$1;
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

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/data/VideoRecord$6;Ljava/lang/String;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$6$1;->this$1:Lcom/jieli/stream/dv/running2/data/VideoRecord$6;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$6$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$6$1;->this$1:Lcom/jieli/stream/dv/running2/data/VideoRecord$6;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/data/VideoRecord$6;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->access$000(Lcom/jieli/stream/dv/running2/data/VideoRecord;)Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$6$1;->this$1:Lcom/jieli/stream/dv/running2/data/VideoRecord$6;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/data/VideoRecord$6;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->access$000(Lcom/jieli/stream/dv/running2/data/VideoRecord;)Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$6$1;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;->onCompletion(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
