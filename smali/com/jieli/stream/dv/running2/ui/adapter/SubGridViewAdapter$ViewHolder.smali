.class Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SubGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private ivPicState:Landroid/widget/ImageView;

.field private ivSelectState:Landroid/widget/ImageView;

.field private ivThumb:Landroid/widget/ImageView;

.field private ivVideoState:Landroid/widget/ImageView;

.field private layoutVideo:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;

.field private tvDuration:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;Landroid/view/View;)V
    .locals 3

    .line 181
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->this$0:Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->item_media_thumb:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->ivThumb:Landroid/widget/ImageView;

    .line 183
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->access$600(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;)I

    move-result v2

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->access$700(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->item_media_select_state:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->ivSelectState:Landroid/widget/ImageView;

    .line 185
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->item_media_picture_state:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->ivPicState:Landroid/widget/ImageView;

    .line 186
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->item_media_video_state:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->ivVideoState:Landroid/widget/ImageView;

    .line 187
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->item_media_video_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->layoutVideo:Landroid/widget/RelativeLayout;

    .line 188
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->item_media_duration:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->tvDuration:Landroid/widget/TextView;

    .line 190
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->layoutVideo:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->ivVideoState:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->ivPicState:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->ivThumb:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->tvDuration:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->ivSelectState:Landroid/widget/ImageView;

    return-object p0
.end method
