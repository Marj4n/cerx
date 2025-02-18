.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$5;
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

.field final synthetic val$isRecord:[Z


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;[Z)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$5;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$5;->val$isRecord:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 485
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$5;->val$isRecord:[Z

    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    .line 486
    aget-boolean v1, p1, v0

    xor-int/lit8 v1, v1, 0x1

    aput-boolean v1, p1, v0

    .line 488
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$5;->val$isRecord:[Z

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_1

    .line 489
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$5;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$2500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/jieli/stream/dv/running2/R$mipmap;->icon_record_stop:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 491
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$5;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$2500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/jieli/stream/dv/running2/R$mipmap;->icon_record:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 495
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$5;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 496
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$5;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa00

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 497
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$5;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method
