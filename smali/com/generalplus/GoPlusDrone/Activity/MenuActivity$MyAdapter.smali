.class Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$MyAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$MyAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->images2:[I

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 431
    rem-int/lit8 p1, p1, 0x4

    .line 432
    new-instance p2, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$MyAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 434
    iget-object p3, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$MyAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;

    iget-object p3, p3, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->images2:[I

    aget p1, p3, p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 p1, 0x1

    .line 435
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 437
    new-instance p1, Landroid/widget/Gallery$LayoutParams;

    iget-object p3, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$MyAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;

    invoke-static {p3}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->access$100(Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;)I

    move-result p3

    div-int/lit8 p3, p3, 0x7

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$MyAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->access$100(Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;)I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    invoke-direct {p1, p3, v0}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method
