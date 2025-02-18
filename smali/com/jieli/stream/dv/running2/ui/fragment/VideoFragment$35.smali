.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$35;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->showStopLocalRecordingDialog(Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

.field final synthetic val$listener:Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;)V
    .locals 0

    .line 2760
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$35;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$35;->val$listener:Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 2763
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$35;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$7300(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 2764
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$35;->val$listener:Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;

    if-eqz v0, :cond_0

    .line 2765
    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;->onCancel()V

    :cond_0
    return-void
.end method
