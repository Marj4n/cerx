.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;
.super Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;
.source "BrowseFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileBrowseAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    .line 328
    invoke-direct {p0, p3}, Lcom/shizhefei/view/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 329
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getTextWidth(Landroid/widget/TextView;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 377
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 378
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 380
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 381
    iget p1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getFragmentForPage(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 356
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 357
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object p1, v1, p1

    .line 359
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->tab_image:I

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;-><init>()V

    .line 361
    move-object p1, v0

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->setParentFragment(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->tab_video:I

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;-><init>()V

    .line 364
    move-object p1, v0

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->setParentFragment(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)V

    goto :goto_0

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->tab_protected:I

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 366
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;-><init>()V

    .line 367
    move-object p1, v0

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->setParentFragment(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getViewForTab(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 340
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/jieli/stream/dv/running2/R$layout;->main_tab_view:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 342
    :cond_0
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    .line 343
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    :cond_1
    invoke-direct {p0, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->getTextWidth(Landroid/widget/TextView;)I

    move-result p1

    .line 348
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$FileBrowseAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    int-to-float p1, p1

    const v2, 0x3fa66666    # 1.3f

    mul-float p1, p1, v2

    float-to-int p1, p1

    add-int/2addr p1, v1

    .line 349
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setWidth(I)V

    const/4 p1, 0x5

    .line 350
    invoke-virtual {p3, v0, p1, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object p2
.end method
