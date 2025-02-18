.class Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter;
.super Landroid/widget/BaseAdapter;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;


# direct methods
.method public constructor <init>(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;Landroid/content/Context;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 243
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 256
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 257
    aget-object p1, v0, p1

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
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 272
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/jieli/stream/dv/running2/R$layout;->popup_menu_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 273
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter$ViewHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter;Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$1;)V

    .line 274
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->item_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 275
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter$ViewHolder;

    .line 279
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 282
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 285
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 289
    iget-object p1, p3, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-object p2
.end method
