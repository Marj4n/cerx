.class Lcom/jieli/stream/dv/running2/data/VideoRecord$4;
.super Ljava/lang/Object;
.source "VideoRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/data/VideoRecord;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/data/VideoRecord;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$4;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$4;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->access$000(Lcom/jieli/stream/dv/running2/data/VideoRecord;)Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$4;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->access$000(Lcom/jieli/stream/dv/running2/data/VideoRecord;)Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;->onStop()V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$4;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->access$002(Lcom/jieli/stream/dv/running2/data/VideoRecord;Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;)Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;

    return-void
.end method
