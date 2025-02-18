.class public Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity$FullImageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "FullImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FullImageAdapter"
.end annotation


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _imagePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity;


# direct methods
.method public constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity$FullImageAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity$FullImageAdapter;->_activity:Landroid/app/Activity;

    .line 56
    iput-object p3, p0, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity$FullImageAdapter;->_imagePaths:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    check-cast p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity$FullImageAdapter;->_imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity$FullImageAdapter;->_activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity$FullImageAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 74
    sget v1, Lcom/generalplus/GoPlusDrone/R$layout;->layout_fullscreen_image:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 76
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->imgDisplay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    .line 78
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity$FullImageAdapter;->_imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 79
    invoke-virtual {v1, p2}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
