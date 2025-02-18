.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$20;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 1487
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$20;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1490
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$20;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$20;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 1492
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$20;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5300(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 1493
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$20;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$20;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$20;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa02

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1497
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$20;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 1498
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$20;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissDialogRunnable isSwitchCamera="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$20;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
