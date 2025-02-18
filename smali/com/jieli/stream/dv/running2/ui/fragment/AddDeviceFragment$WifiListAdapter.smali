.class Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddDeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;

.field private wifiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/WifiBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/WifiBean;",
            ">;)V"
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 247
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;->wifiList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;->wifiList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;->wifiList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;->wifiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/WifiBean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    .line 273
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/jieli/stream/dv/running2/R$layout;->item_wifi_list:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 274
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$1;)V

    .line 275
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->item_wifi_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p3, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;->access$102(Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 276
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->item_wifi_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;->access$202(Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 277
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->item_wifi_state:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;->access$302(Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 278
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->item_wifi_select_state:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p3, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;->access$402(Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 279
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;

    .line 283
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/WifiBean;

    if-eqz p1, :cond_5

    .line 285
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/WifiBean;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/WifiBean;->getState()I

    move-result v1

    .line 287
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/WifiBean;->isSelect()Z

    move-result p1

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 289
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    .line 292
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->saved:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    if-eqz p1, :cond_4

    .line 295
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    sget p3, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_check_round_blue:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 297
    :cond_4
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    sget p3, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_uncheck_round_blue:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_1
    return-object p2
.end method
