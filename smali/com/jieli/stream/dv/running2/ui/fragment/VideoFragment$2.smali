.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$2;
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

    .line 453
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 456
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$2300(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->zoom(ZLandroid/view/View;)V

    return-void
.end method
