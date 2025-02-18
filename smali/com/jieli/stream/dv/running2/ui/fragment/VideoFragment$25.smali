.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$25;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog$OnWaitingDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->showWaitingDialog()V
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

    .line 2048
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$25;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelDialog()V
    .locals 2

    .line 2051
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$25;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 2052
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$25;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2053
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$25;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$602(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z

    :cond_0
    return-void
.end method
