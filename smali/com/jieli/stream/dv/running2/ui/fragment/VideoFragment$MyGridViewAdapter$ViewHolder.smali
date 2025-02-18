.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private layoutVideo:Landroid/widget/RelativeLayout;

.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

.field private tvDuration:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;Landroid/view/View;)V
    .locals 3

    .line 1927
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$ViewHolder;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1928
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->item_image_iv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 1929
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result v2

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1930
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1931
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->item_image_video_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$ViewHolder;->layoutVideo:Landroid/widget/RelativeLayout;

    .line 1932
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->item_image_duration:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$ViewHolder;->tvDuration:Landroid/widget/TextView;

    .line 1934
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
