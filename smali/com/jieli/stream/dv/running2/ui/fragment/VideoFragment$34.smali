.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$34;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->startLocalRecording()V
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

    .line 2708
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$34;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;)V
    .locals 1

    .line 2720
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$34;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalRecord: onCompletion"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 2735
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$34;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$34;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 2737
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$34;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->stopLocalRecording()V

    return-void
.end method

.method public onPrepared()V
    .locals 2

    .line 2711
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$34;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalRecord: onPrepared"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$34;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRecordPrepared:Z

    .line 2713
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$34;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iput-boolean v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->save:Z

    .line 2714
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$34;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$7200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 2727
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$34;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalRecord: onStop"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$34;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 2729
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$34;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->stopLocalRecording()V

    return-void
.end method
