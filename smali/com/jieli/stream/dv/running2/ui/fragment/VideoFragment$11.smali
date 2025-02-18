.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$11;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 554
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$11;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 557
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$11;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 558
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$11;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa01

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 559
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$11;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
