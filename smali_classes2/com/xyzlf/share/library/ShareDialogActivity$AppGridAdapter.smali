.class Lcom/xyzlf/share/library/ShareDialogActivity$AppGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyzlf/share/library/ShareDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppGridAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyzlf/share/library/ShareDialogActivity;


# direct methods
.method private constructor <init>(Lcom/xyzlf/share/library/ShareDialogActivity;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/xyzlf/share/library/ShareDialogActivity$AppGridAdapter;->this$0:Lcom/xyzlf/share/library/ShareDialogActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xyzlf/share/library/ShareDialogActivity;Lcom/xyzlf/share/library/ShareDialogActivity$1;)V
    .locals 0

    .line 264
    invoke-direct {p0, p1}, Lcom/xyzlf/share/library/ShareDialogActivity$AppGridAdapter;-><init>(Lcom/xyzlf/share/library/ShareDialogActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/xyzlf/share/library/ShareDialogActivity$AppGridAdapter;->this$0:Lcom/xyzlf/share/library/ShareDialogActivity;

    iget-object v0, v0, Lcom/xyzlf/share/library/ShareDialogActivity;->channelEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/xyzlf/share/library/bean/ChannelEntity;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/xyzlf/share/library/ShareDialogActivity$AppGridAdapter;->this$0:Lcom/xyzlf/share/library/ShareDialogActivity;

    iget-object v0, v0, Lcom/xyzlf/share/library/ShareDialogActivity;->channelEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xyzlf/share/library/bean/ChannelEntity;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 264
    invoke-virtual {p0, p1}, Lcom/xyzlf/share/library/ShareDialogActivity$AppGridAdapter;->getItem(I)Lcom/xyzlf/share/library/bean/ChannelEntity;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 285
    new-instance p2, Lcom/xyzlf/share/library/ShareDialogActivity$ViewHolder;

    iget-object v0, p0, Lcom/xyzlf/share/library/ShareDialogActivity$AppGridAdapter;->this$0:Lcom/xyzlf/share/library/ShareDialogActivity;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/xyzlf/share/library/ShareDialogActivity$ViewHolder;-><init>(Lcom/xyzlf/share/library/ShareDialogActivity;Lcom/xyzlf/share/library/ShareDialogActivity$1;)V

    .line 286
    iget-object v0, p0, Lcom/xyzlf/share/library/ShareDialogActivity$AppGridAdapter;->this$0:Lcom/xyzlf/share/library/ShareDialogActivity;

    invoke-virtual {v0}, Lcom/xyzlf/share/library/ShareDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xyzlf/com/share/library/R$layout;->share_gridview_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 287
    sget v0, Lcom/xyzlf/com/share/library/R$id;->text:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/xyzlf/share/library/ShareDialogActivity$ViewHolder;->textView:Landroid/widget/TextView;

    .line 288
    sget v0, Lcom/xyzlf/com/share/library/R$id;->image:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/xyzlf/share/library/ShareDialogActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 289
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xyzlf/share/library/ShareDialogActivity$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 293
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xyzlf/share/library/ShareDialogActivity$AppGridAdapter;->getItem(I)Lcom/xyzlf/share/library/bean/ChannelEntity;

    move-result-object p1

    .line 294
    iget-object v0, p2, Lcom/xyzlf/share/library/ShareDialogActivity$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ChannelEntity;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 295
    iget-object p2, p2, Lcom/xyzlf/share/library/ShareDialogActivity$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ChannelEntity;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method
