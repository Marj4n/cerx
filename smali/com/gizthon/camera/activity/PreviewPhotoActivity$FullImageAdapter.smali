.class public Lcom/gizthon/camera/activity/PreviewPhotoActivity$FullImageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "PreviewPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gizthon/camera/activity/PreviewPhotoActivity;
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

.field final synthetic this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;


# direct methods
.method public constructor <init>(Lcom/gizthon/camera/activity/PreviewPhotoActivity;Landroid/app/Activity;Ljava/util/ArrayList;)V
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

    .line 205
    iput-object p1, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$FullImageAdapter;->this$0:Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 206
    iput-object p2, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$FullImageAdapter;->_activity:Landroid/app/Activity;

    .line 207
    iput-object p3, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$FullImageAdapter;->_imagePaths:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 236
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    check-cast p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$FullImageAdapter;->_imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$FullImageAdapter;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$FullImageAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0092

    const/4 v2, 0x0

    .line 220
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a8

    .line 221
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;

    .line 229
    iget-object v2, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity$FullImageAdapter;->_imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 230
    invoke-virtual {v1, p2}, Lcom/generalplus/GoPlusDrone/View/MultiTouchZoomableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 231
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
