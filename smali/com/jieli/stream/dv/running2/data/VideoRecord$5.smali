.class Lcom/jieli/stream/dv/running2/data/VideoRecord$5;
.super Lcom/jieli/lib/dv/control/player/OnRecordListener;
.source "VideoRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/data/VideoRecord;
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

    .line 367
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$5;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/OnRecordListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$5;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->access$200(Lcom/jieli/stream/dv/running2/data/VideoRecord;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", msg:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$5;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->access$300(Lcom/jieli/stream/dv/running2/data/VideoRecord;Ljava/lang/String;)V

    return-void
.end method

.method public onStateChanged(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    new-instance p1, Lcom/jieli/stream/dv/running2/data/VideoRecord$5$2;

    invoke-direct {p1, p0}, Lcom/jieli/stream/dv/running2/data/VideoRecord$5$2;-><init>(Lcom/jieli/stream/dv/running2/data/VideoRecord$5;)V

    invoke-static {p1}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 373
    :cond_1
    new-instance p1, Lcom/jieli/stream/dv/running2/data/VideoRecord$5$1;

    invoke-direct {p1, p0, p2}, Lcom/jieli/stream/dv/running2/data/VideoRecord$5$1;-><init>(Lcom/jieli/stream/dv/running2/data/VideoRecord$5;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 382
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$5;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->access$102(Lcom/jieli/stream/dv/running2/data/VideoRecord;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method
