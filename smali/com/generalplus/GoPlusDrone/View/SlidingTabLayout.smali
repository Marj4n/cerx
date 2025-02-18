.class public Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$TabClickListener;,
        Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;,
        Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$TabColorizer;
    }
.end annotation


# static fields
.field private static final TAB_VIEW_PADDING_DIPS:I = 0x10

.field private static final TAB_VIEW_TEXT_SIZE_SP:I = 0xc

.field private static final TITLE_OFFSET_DIPS:I = 0x18


# instance fields
.field private final mTabStrip:Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;

.field private mTabViewIconId:I

.field private mTabViewLayoutId:I

.field private mTabViewTextViewId:I

.field private mTitleOffset:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 94
    invoke-virtual {p0, p2}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->setHorizontalScrollBarEnabled(Z)V

    const/4 p2, 0x1

    .line 96
    invoke-virtual {p0, p2}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->setFillViewport(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41c00000    # 24.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTitleOffset:I

    .line 100
    new-instance p2, Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;

    invoke-direct {p2, p1}, Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTabStrip:Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;

    const/4 p1, -0x1

    const/4 p3, -0x2

    .line 101
    invoke-virtual {p0, p2, p1, p3}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;)Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTabStrip:Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;

    return-object p0
.end method

.method static synthetic access$300(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->scrollToTab(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private populateTabStrip()V
    .locals 9

    .line 199
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/generalplus/GoPlusDrone/View/TabFragmentPagerAdapter;

    .line 200
    new-instance v1, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$TabClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$TabClickListener;-><init>(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$1;)V

    .line 202
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/View/TabFragmentPagerAdapter;->getCount()I

    move-result v4

    div-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 203
    :goto_0
    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/View/TabFragmentPagerAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 207
    iget v6, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTabViewLayoutId:I

    if-eqz v6, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget v7, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTabViewLayoutId:I

    iget-object v8, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTabStrip:Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;

    invoke-virtual {v6, v7, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 210
    iget v7, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTabViewTextViewId:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    move-object v6, v2

    move-object v7, v6

    :goto_1
    if-nez v6, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v6

    :cond_1
    if-nez v7, :cond_2

    .line 217
    const-class v8, Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 218
    move-object v7, v6

    check-cast v7, Landroid/widget/TextView;

    .line 221
    :cond_2
    invoke-virtual {v0, v5}, Lcom/generalplus/GoPlusDrone/View/TabFragmentPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v3, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 225
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v7, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTabStrip:Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;

    invoke-virtual {v7, v6}, Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private scrollToTab(II)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTabStrip:Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTabStrip:Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 247
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 251
    :cond_1
    iget p1, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTitleOffset:I

    sub-int/2addr v0, p1

    :cond_2
    const/4 p1, 0x0

    .line 254
    invoke-virtual {p0, v0, p1}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->scrollTo(II)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4

    .line 173
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x11

    .line 174
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    .line 175
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 176
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 178
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0xb

    if-lt p1, v2, :cond_0

    .line 181
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 182
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101030e

    invoke-virtual {v2, v3, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 184
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 187
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt p1, v2, :cond_1

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_1
    const/high16 p1, 0x41800000    # 16.0f

    .line 192
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, p1

    float-to-int p1, v1

    .line 193
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 232
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 234
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->scrollToTab(II)V

    :cond_0
    return-void
.end method

.method public setCustomTabColorizer(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$TabColorizer;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTabStrip:Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;->setCustomTabColorizer(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$TabColorizer;)V

    return-void
.end method

.method public setCustomTabView(III)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTabViewLayoutId:I

    .line 150
    iput p2, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTabViewTextViewId:I

    .line 151
    iput p3, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTabViewIconId:I

    return-void
.end method

.method public varargs setDividerColors([I)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTabStrip:Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;->setDividerColors([I)V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTabStrip:Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;->setSelectedIndicatorColors([I)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mTabStrip:Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabStrip;->removeAllViews()V

    .line 161
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 163
    new-instance v0, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout$1;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 164
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/View/SlidingTabLayout;->populateTabStrip()V

    :cond_0
    return-void
.end method
