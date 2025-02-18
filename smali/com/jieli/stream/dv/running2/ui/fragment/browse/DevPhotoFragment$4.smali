.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$4;
.super Ljava/lang/Object;
.source "DevPhotoFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog$OnWaitingDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->showWaitingDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelDialog()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)V

    .line 560
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Lcom/jieli/stream/dv/running2/task/MediaTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Lcom/jieli/stream/dv/running2/task/MediaTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->tryToStopTask()V

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;Z)V

    return-void
.end method
