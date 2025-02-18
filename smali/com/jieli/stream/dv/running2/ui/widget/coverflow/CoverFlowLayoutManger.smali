.class public Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "CoverFlowLayoutManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;,
        Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$OnSelected;
    }
.end annotation


# static fields
.field private static SCROLL_LEFT:I = 0x1

.field private static SCROLL_RIGHT:I = 0x2


# instance fields
.field private mAllItemFrames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimation:Landroid/animation/ValueAnimator;

.field private mDecoratedChildHeight:I

.field private mDecoratedChildWidth:I

.field private mHasAttachedItems:Landroid/util/SparseBooleanArray;

.field private mIntervalRatio:F

.field private mIsFlatFlow:Z

.field private mItemGradualAlpha:Z

.field private mItemGradualGrey:Z

.field private mLastSelectPosition:I

.field private mOffsetAll:I

.field private mRecycle:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field private mSelectPosition:I

.field private mSelectedListener:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$OnSelected;

.field private mStartX:I

.field private mStartY:I

.field private mState:Landroidx/recyclerview/widget/RecyclerView$State;

.field tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZZZF)V
    .locals 2

    .line 125
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    .line 41
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mDecoratedChildWidth:I

    .line 46
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mDecoratedChildHeight:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 51
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mIntervalRatio:F

    .line 56
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mStartX:I

    .line 61
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mStartY:I

    .line 66
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAllItemFrames:Landroid/util/SparseArray;

    .line 71
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mHasAttachedItems:Landroid/util/SparseBooleanArray;

    .line 91
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mSelectPosition:I

    .line 96
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mLastSelectPosition:I

    .line 116
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mIsFlatFlow:Z

    .line 119
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mItemGradualGrey:Z

    .line 122
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mItemGradualAlpha:Z

    .line 126
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mIsFlatFlow:Z

    .line 127
    iput-boolean p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mItemGradualGrey:Z

    .line 128
    iput-boolean p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mItemGradualAlpha:Z

    const/4 p2, 0x0

    cmpl-float p2, p4, p2

    if-ltz p2, :cond_0

    .line 130
    iput p4, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mIntervalRatio:F

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x3f8ccccd    # 1.1f

    .line 133
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mIntervalRatio:F

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    return p1
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;)Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mRecycle:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;)Landroidx/recyclerview/widget/RecyclerView$State;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->layoutItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->onSelectedCallBack()V

    return-void
.end method

.method private calculateOffsetForPosition(I)I
    .locals 1

    .line 427
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getIntervalDistance()F

    move-result v0

    int-to-float p1, p1

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private computeAlpha(I)F
    .locals 4

    .line 415
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mStartX:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mStartX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mDecoratedChildWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mIntervalRatio:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p1, v1

    sub-float p1, v0, p1

    const v1, 0x3e99999a    # 0.3f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const p1, 0x3e99999a    # 0.3f

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method private computeGreyScale(I)F
    .locals 6

    .line 399
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mDecoratedChildWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    .line 400
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getHorizontalSpace()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    .line 401
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getHorizontalSpace()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr p1, v1

    sub-float p1, v0, p1

    float-to-double v1, p1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    const p1, 0x3dcccccd    # 0.1f

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    float-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    .line 404
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private computeScale(I)F
    .locals 4

    .line 387
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mStartX:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mStartX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mDecoratedChildWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mIntervalRatio:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p1, v1

    sub-float p1, v0, p1

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p1, 0x0

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method private fixOffsetWhenFinishScroll()V
    .locals 8

    .line 434
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getIntervalDistance()F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 435
    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getIntervalDistance()F

    move-result v3

    rem-float/2addr v2, v3

    float-to-double v2, v2

    .line 436
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getIntervalDistance()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v6

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    int-to-float v0, v0

    .line 439
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getIntervalDistance()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 440
    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    invoke-direct {p0, v2, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->startScroll(II)V

    int-to-float v0, v0

    mul-float v0, v0, v1

    .line 441
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getIntervalDistance()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mSelectPosition:I

    return-void
.end method

.method private getHorizontalSpace()I
    .locals 2

    .line 363
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getIntervalDistance()F
    .locals 2

    .line 493
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mDecoratedChildWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mIntervalRatio:F

    mul-float v0, v0, v1

    return v0
.end method

.method private getMaxOffset()F
    .locals 2

    .line 377
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getIntervalDistance()F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method private getVerticalSpace()I
    .locals 2

    .line 370
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private greyItem(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 9

    .line 278
    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    sub-int/2addr p2, v0

    invoke-direct {p0, p2}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->computeGreyScale(I)F

    move-result p2

    .line 279
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v1, v3

    const/4 v3, 0x2

    aput v4, v1, v3

    const/4 v5, 0x3

    aput v4, v1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, p2

    const/high16 v7, 0x42f00000    # 120.0f

    mul-float v7, v7, v6

    const/4 v8, 0x4

    aput v7, v1, v8

    const/4 v8, 0x5

    aput v4, v1, v8

    const/4 v8, 0x6

    aput p2, v1, v8

    const/4 v8, 0x7

    aput v4, v1, v8

    const/16 v8, 0x8

    aput v4, v1, v8

    const/16 v8, 0x9

    aput v7, v1, v8

    const/16 v8, 0xa

    aput v4, v1, v8

    const/16 v8, 0xb

    aput v4, v1, v8

    const/16 v8, 0xc

    aput p2, v1, v8

    const/16 v8, 0xd

    aput v4, v1, v8

    const/16 v8, 0xe

    aput v7, v1, v8

    const/16 v7, 0xf

    aput v4, v1, v7

    const/16 v7, 0x10

    aput v4, v1, v7

    const/16 v7, 0x11

    aput v4, v1, v7

    const/16 v4, 0x12

    aput v5, v1, v4

    const/high16 v4, 0x437a0000    # 250.0f

    mul-float v6, v6, v4

    const/16 v4, 0x13

    aput v6, v1, v4

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 288
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 289
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 292
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    cmpl-float p2, p2, v5

    if-ltz p2, :cond_0

    const/4 p2, 0x0

    .line 295
    invoke-virtual {p1, v2, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private layoutItem(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 8

    .line 253
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    sub-int v4, v0, v1

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    sub-int v6, v0, v1

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->layoutDecorated(Landroid/view/View;IIII)V

    .line 258
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mIsFlatFlow:Z

    if-nez v0, :cond_0

    .line 259
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->computeScale(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 260
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->computeScale(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 263
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mItemGradualAlpha:Z

    if-eqz v0, :cond_1

    .line 264
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->computeAlpha(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 267
    :cond_1
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mItemGradualGrey:Z

    if-eqz v0, :cond_2

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->greyItem(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method private layoutItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 6

    if-eqz p2, :cond_6

    .line 212
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_5

    .line 216
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getHorizontalSpace()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getVerticalSpace()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p2, v0, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    .line 218
    :goto_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 219
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 220
    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 222
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAllItemFrames:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAllItemFrames:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-static {p2, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 223
    invoke-virtual {p0, v1, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 224
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mHasAttachedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 226
    :cond_1
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAllItemFrames:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-direct {p0, v1, v5}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->layoutItem(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 227
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mHasAttachedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 230
    :goto_2
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 231
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAllItemFrames:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAllItemFrames:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {p2, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mHasAttachedItems:Landroid/util/SparseBooleanArray;

    .line 232
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 233
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 234
    invoke-virtual {p0, v1, v3, v3}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->measureChildWithMargins(Landroid/view/View;II)V

    .line 235
    sget v4, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->SCROLL_LEFT:I

    if-eq p3, v4, :cond_4

    iget-boolean v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mIsFlatFlow:Z

    if-eqz v4, :cond_3

    goto :goto_3

    .line 238
    :cond_3
    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 236
    :cond_4
    :goto_3
    invoke-virtual {p0, v1, v3}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->addView(Landroid/view/View;I)V

    .line 240
    :goto_4
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAllItemFrames:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-direct {p0, v1, v4}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->layoutItem(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 241
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mHasAttachedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_5
    return-void
.end method

.method private onSelectedCallBack()V
    .locals 3

    .line 500
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getIntervalDistance()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mSelectPosition:I

    .line 501
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mSelectedListener:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$OnSelected;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mLastSelectPosition:I

    if-eq v0, v2, :cond_0

    .line 502
    invoke-interface {v1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$OnSelected;->onItemSelected(I)V

    .line 504
    :cond_0
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mSelectPosition:I

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mLastSelectPosition:I

    return-void
.end method

.method private startScroll(II)V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-ge p1, p2, :cond_1

    .line 454
    sget v0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->SCROLL_RIGHT:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->SCROLL_LEFT:I

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float p1, p1

    aput p1, v1, v2

    const/4 p1, 0x1

    int-to-float p2, p2

    aput p2, v1, p1

    .line 455
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    .line 456
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 457
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 458
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$1;

    invoke-direct {p2, p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$1;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 465
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$2;

    invoke-direct {p2, p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$2;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 486
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 141
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getCenterPosition()I
    .locals 4

    .line 547
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getIntervalDistance()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 548
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getIntervalDistance()F

    move-result v2

    rem-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 549
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getIntervalDistance()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 513
    :goto_0
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mHasAttachedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 514
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mHasAttachedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getLastVisiblePosition()I
    .locals 3

    .line 525
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mHasAttachedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 526
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mHasAttachedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_0

    .line 527
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mHasAttachedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getMaxVisibleCount()I
    .locals 2

    .line 537
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getHorizontalSpace()I

    move-result v0

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getIntervalDistance()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSelectedPos()I
    .locals 1

    .line 566
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mSelectPosition:I

    return v0
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 349
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->removeAllViews()V

    const/4 p1, 0x0

    .line 350
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mRecycle:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 351
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 p1, 0x0

    .line 352
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    .line 353
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mSelectPosition:I

    .line 354
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mLastSelectPosition:I

    .line 355
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mHasAttachedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 356
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAllItemFrames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9

    .line 148
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAllItemFrames:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 153
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mHasAttachedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 156
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->addView(Landroid/view/View;)V

    .line 158
    invoke-virtual {p0, v0, v1, v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->measureChildWithMargins(Landroid/view/View;II)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mDecoratedChildWidth:I

    .line 161
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mDecoratedChildHeight:I

    .line 162
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getHorizontalSpace()I

    move-result v0

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mDecoratedChildWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mStartX:I

    .line 163
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getVerticalSpace()I

    move-result v0

    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mDecoratedChildHeight:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float v0, v0, v2

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mStartY:I

    .line 165
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mStartX:I

    int-to-float v0, v0

    const/4 v2, 0x0

    .line 166
    :goto_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 167
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAllItemFrames:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    if-nez v3, :cond_1

    .line 169
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 171
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mStartY:I

    iget v6, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mDecoratedChildWidth:I

    int-to-float v6, v6

    add-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mStartY:I

    iget v8, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mDecoratedChildHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 172
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAllItemFrames:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mHasAttachedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 174
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getIntervalDistance()F

    move-result v3

    add-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 178
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mRecycle:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    if-nez v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mSelectPosition:I

    if-eqz v0, :cond_4

    .line 180
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->calculateOffsetForPosition(I)I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    .line 181
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->onSelectedCallBack()V

    .line 184
    :cond_4
    sget v0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->SCROLL_RIGHT:I

    invoke-direct {p0, p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->layoutItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 186
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mRecycle:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 187
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    return-void

    .line 149
    :cond_5
    :goto_1
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    .line 302
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->tag:Ljava/lang/String;

    const-string v0, "scroll_state_settling"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->tag:Ljava/lang/String;

    const-string v0, "scroll_state_dragginf"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->tag:Ljava/lang/String;

    const-string v0, "scroll_state_idle"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->fixOffsetWhenFinishScroll()V

    :goto_0
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 195
    :cond_0
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    add-int v1, p1, v0

    if-gez v1, :cond_1

    neg-int v0, v0

    goto :goto_0

    :cond_1
    add-int/2addr v0, p1

    int-to-float v0, v0

    .line 197
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getMaxOffset()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 198
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getMaxOffset()F

    move-result v0

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_2
    move v0, p1

    .line 200
    :goto_0
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    if-lez p1, :cond_3

    .line 201
    sget p1, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->SCROLL_RIGHT:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->SCROLL_LEFT:I

    :goto_1
    invoke-direct {p0, p2, p3, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->layoutItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 3

    if-ltz p1, :cond_4

    .line 322
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_2

    .line 323
    :cond_0
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->calculateOffsetForPosition(I)I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    .line 324
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mRecycle:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    if-nez v1, :cond_1

    goto :goto_1

    .line 327
    :cond_1
    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mSelectPosition:I

    if-le p1, v2, :cond_2

    sget p1, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->SCROLL_RIGHT:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->SCROLL_LEFT:I

    :goto_0
    invoke-direct {p0, v0, v1, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->layoutItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 328
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->onSelectedCallBack()V

    goto :goto_2

    .line 325
    :cond_3
    :goto_1
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mSelectPosition:I

    :cond_4
    :goto_2
    return-void
.end method

.method public setOnSelectedListener(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$OnSelected;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mSelectedListener:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$OnSelected;

    return-void
.end method

.method public setSelectPosition(I)V
    .locals 1

    .line 583
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mSelectPosition:I

    invoke-direct {p0, v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->startScroll(II)V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 334
    invoke-direct {p0, p3}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->calculateOffsetForPosition(I)I

    move-result p1

    .line 335
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mRecycle:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    if-nez p2, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mOffsetAll:I

    invoke-direct {p0, p2, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->startScroll(II)V

    goto :goto_1

    .line 336
    :cond_1
    :goto_0
    iput p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;->mSelectPosition:I

    :goto_1
    return-void
.end method
