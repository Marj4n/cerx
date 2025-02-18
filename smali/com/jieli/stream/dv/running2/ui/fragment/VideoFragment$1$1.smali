.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$502(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z

    .line 239
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailed()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$502(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z

    .line 254
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1$2;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1$1;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
