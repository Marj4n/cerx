.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "PhotoViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoViewAdapter"
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 139
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;->mContext:Landroid/content/Context;

    .line 140
    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;->dataList:Ljava/util/List;

    return-void
.end method

.method private loadThumbs(Lcom/bm/library/PhotoView;Ljava/lang/String;)V
    .locals 2

    .line 182
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ImageLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/jieli/stream/dv/running2/util/ImageLoader;->loadImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 183
    invoke-virtual {p1, p2}, Lcom/bm/library/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 178
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;->dataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 163
    new-instance v0, Lcom/bm/library/PhotoView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bm/library/PhotoView;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-virtual {v0}, Lcom/bm/library/PhotoView;->enable()V

    .line 165
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/bm/library/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 166
    invoke-virtual {p0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p2

    .line 167
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-direct {p0, v0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/PhotoViewFragment$PhotoViewAdapter;->loadThumbs(Lcom/bm/library/PhotoView;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_0
    sget p2, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_default_picture:I

    invoke-virtual {v0, p2}, Lcom/bm/library/PhotoView;->setImageResource(I)V

    .line 172
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

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
