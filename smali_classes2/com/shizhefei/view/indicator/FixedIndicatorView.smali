.class public Lcom/shizhefei/view/indicator/FixedIndicatorView;
.super Landroid/widget/LinearLayout;
.source "FixedIndicatorView.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/Indicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;
    }
.end annotation


# static fields
.field public static final SPLITMETHOD_EQUALS:I = 0x0

.field public static final SPLITMETHOD_WEIGHT:I = 0x1

.field public static final SPLITMETHOD_WRAP:I = 0x2


# instance fields
.field private cacheBitmap:Landroid/graphics/Bitmap;

.field private cacheCanvas:Landroid/graphics/Canvas;

.field private cacheMatrix:Landroid/graphics/Matrix;

.field private centerView:Landroid/view/View;

.field private centerViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private dataSetObserver:Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;

.field private inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

.field private itemClickable:Z

.field private mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

.field private mPosition:I

.field private mPositionOffset:F

.field private mPositionOffsetPixels:I

.field private mPreSelectedTabIndex:I

.field private mSelectedTabIndex:I

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

.field private onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

.field private prePositions:[I

.field private scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

.field private splitMethod:I

.field private state:I

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->splitMethod:I

    .line 38
    iput v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->state:I

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->itemClickable:Z

    .line 115
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    .line 173
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->views:Ljava/util/List;

    .line 175
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->dataSetObserver:Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;

    .line 225
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 450
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheMatrix:Landroid/graphics/Matrix;

    .line 451
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 453
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->prePositions:[I

    .line 42
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/4 p2, 0x0

    .line 37
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->splitMethod:I

    .line 38
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->state:I

    const/4 p2, 0x1

    .line 104
    iput-boolean p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->itemClickable:Z

    .line 115
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    .line 173
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->views:Ljava/util/List;

    .line 175
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->dataSetObserver:Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;

    .line 225
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 450
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheMatrix:Landroid/graphics/Matrix;

    .line 451
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 453
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->prePositions:[I

    .line 53
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/4 p2, 0x0

    .line 37
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->splitMethod:I

    .line 38
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->state:I

    const/4 p2, 0x1

    .line 104
    iput-boolean p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->itemClickable:Z

    .line 115
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    .line 173
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->views:Ljava/util/List;

    .line 175
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$1;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->dataSetObserver:Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;

    .line 225
    new-instance p1, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$2;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 450
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheMatrix:Landroid/graphics/Matrix;

    .line 451
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 453
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->prePositions:[I

    .line 48
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    return-object p0
.end method

.method static synthetic access$100(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getTabCountInLayout()I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    return p0
.end method

.method static synthetic access$1002(Lcom/shizhefei/view/indicator/FixedIndicatorView;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->measureTabs()V

    return-void
.end method

.method static synthetic access$1200(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->itemClickable:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->views:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/shizhefei/view/indicator/FixedIndicatorView;I)Landroid/view/View;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    return p0
.end method

.method static synthetic access$700(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->centerViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-object p0
.end method

.method private drawSlideBar(Landroid/graphics/Canvas;)V
    .locals 14

    .line 339
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 343
    :cond_0
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 345
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->stop()V

    return-void

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v0, :cond_2

    sub-int/2addr v0, v2

    .line 349
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setCurrentItem(I)V

    .line 350
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->stop()V

    return-void

    .line 355
    :cond_2
    sget-object v1, Lcom/shizhefei/view/indicator/FixedIndicatorView$3;->$SwitchMap$com$shizhefei$view$indicator$slidebar$ScrollBar$Gravity:[I

    iget-object v3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v3}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_3

    const/4 v5, 0x5

    if-eq v1, v5, :cond_4

    .line 367
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v1

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v5

    sub-int/2addr v1, v5

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    .line 358
    :cond_3
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v1

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v5

    sub-int/2addr v1, v5

    div-int/2addr v1, v3

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 372
    :goto_1
    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->isFinished()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 373
    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->getCurrentX()I

    move-result v5

    int-to-float v5, v5

    move-object v9, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v0, :cond_6

    .line 376
    invoke-direct {p0, v8}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v9

    .line 377
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v10, v5

    if-gtz v10, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v5, v10

    if-gez v10, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    .line 382
    :goto_3
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 383
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v5, v10

    float-to-int v10, v10

    .line 384
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v5, v9

    int-to-float v0, v0

    div-float/2addr v9, v0

    .line 385
    invoke-direct {p0, v8, v9, v10}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->notifyPageScrolled(IFI)V

    .line 386
    invoke-direct {p0, v8, v9, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->measureScrollBar(IFZ)I

    move-result v0

    goto :goto_4

    .line 388
    :cond_7
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->state:I

    if-eqz v0, :cond_8

    .line 389
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPosition:I

    invoke-direct {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 391
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v5, v5

    iget v8, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPositionOffset:F

    mul-float v5, v5, v8

    add-float/2addr v5, v0

    .line 392
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPosition:I

    iget v9, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPositionOffsetPixels:I

    invoke-direct {p0, v0, v8, v9}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->notifyPageScrolled(IFI)V

    .line 393
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPosition:I

    iget v8, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPositionOffset:F

    invoke-direct {p0, v0, v8, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->measureScrollBar(IFZ)I

    move-result v0

    goto :goto_4

    .line 396
    :cond_8
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    invoke-direct {p0, v0, v4, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->measureScrollBar(IFZ)I

    move-result v0

    .line 397
    iget v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    invoke-direct {p0, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_9

    return-void

    .line 401
    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v5, v2

    .line 403
    :goto_4
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 404
    iget-object v8, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v8}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int v9, v0, v8

    .line 405
    div-int/2addr v9, v3

    int-to-float v3, v9

    add-float/2addr v5, v3

    .line 407
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 409
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getMeasuredWidth()I

    move-result v9

    .line 410
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getMeasuredHeight()I

    move-result v10

    .line 414
    iget-object v11, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v11}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->isLoop()Z

    move-result v11

    if-eqz v11, :cond_c

    int-to-float v11, v8

    add-float/2addr v11, v5

    int-to-float v12, v9

    cmpl-float v13, v11, v12

    if-lez v13, :cond_c

    .line 417
    iget-object v13, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-lt v13, v8, :cond_a

    iget-object v13, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-ge v13, v2, :cond_b

    .line 418
    :cond_a
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    .line 419
    iget-object v10, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_b
    sub-float/2addr v11, v12

    .line 423
    iget-object v9, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 424
    iget-object v9, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v7, v7, v8, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 425
    iget-object v9, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v7, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 426
    iget-object v9, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v9}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 427
    iget-object v9, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 429
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 430
    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 431
    invoke-virtual {p1, v7, v7, v8, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 433
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v4, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 434
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    int-to-float v1, v2

    .line 437
    invoke-virtual {p1, v4, v4, v11, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 438
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheMatrix:Landroid/graphics/Matrix;

    int-to-float v0, v0

    sub-float/2addr v11, v0

    invoke-virtual {v1, v11, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 439
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->cacheMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 441
    :cond_c
    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 442
    invoke-virtual {p1, v7, v7, v8, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 444
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 446
    :goto_5
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 340
    :cond_d
    :goto_6
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->stop()V

    return-void
.end method

.method private getItemOutView(I)Landroid/view/View;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 627
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getItemViewUnCheck(I)Landroid/view/View;
    .locals 1

    .line 617
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 618
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getTabCountInLayout()I
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 1

    .line 57
    new-instance v0, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-direct {v0, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    return-void
.end method

.method private measureScrollBar(IFZ)I
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 495
    :cond_0
    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_4

    .line 497
    :cond_1
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p3

    add-int/lit8 p1, p1, 0x1

    .line 499
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 500
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 502
    :cond_2
    invoke-direct {p0, v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_4

    .line 505
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float p3, p3, v2

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    :goto_1
    add-float/2addr p3, p1

    float-to-int p1, p3

    .line 506
    iget-object p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {p2, p1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getWidth(I)I

    move-result p2

    .line 507
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p3, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result p3

    .line 508
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 509
    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/view/View;->layout(IIII)V

    return p1

    .line 513
    :cond_4
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1
.end method

.method private measureTabs()V
    .locals 6

    .line 517
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getTabCountInLayout()I

    move-result v0

    .line 518
    iget v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->splitMethod:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v4, -0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_3

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_3

    .line 530
    invoke-direct {p0, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v1

    .line 531
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 532
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, 0x0

    .line 533
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 534
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v0, :cond_3

    .line 539
    invoke-direct {p0, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v1

    .line 540
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 541
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 542
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 543
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 521
    invoke-direct {p0, v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v4

    .line 522
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 523
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 524
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 525
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private notifyPageScrolled(IFI)V
    .locals 8

    if-ltz p1, :cond_6

    .line 456
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_1

    .line 460
    invoke-interface {v0, p1, p2, p3}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->onPageScrolled(IFI)V

    .line 462
    :cond_1
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    if-eqz p3, :cond_6

    .line 463
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->prePositions:[I

    array-length v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_3

    aget v5, p3, v3

    if-eq v5, p1, :cond_2

    add-int/lit8 v6, p1, 0x1

    if-eq v5, v6, :cond_2

    .line 465
    invoke-virtual {p0, v5}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 467
    iget-object v7, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    invoke-interface {v7, v6, v5, v4}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 471
    :cond_3
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->prePositions:[I

    aput p1, p3, v2

    add-int/lit8 v0, p1, 0x1

    .line 472
    aput v0, p3, v1

    .line 474
    iget p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    invoke-virtual {p0, p3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 476
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    iget v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    invoke-interface {v1, p3, v2, v4}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    .line 479
    :cond_4
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 481
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    invoke-interface {v1, p3, p1, v2}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    .line 484
    :cond_5
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 486
    iget-object p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    invoke-interface {p3, p1, v0, p2}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_6
    :goto_1
    return-void
.end method

.method private updateTabSelectState(I)V
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 161
    invoke-direct {p0, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemViewUnCheck(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    if-ne p1, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 163
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v0

    sget-object v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    if-ne v0, v1, :cond_0

    .line 330
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->drawSlideBar(Landroid/graphics/Canvas;)V

    .line 332
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 333
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v0

    sget-object v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    if-eq v0, v1, :cond_1

    .line 334
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->drawSlideBar(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getCenterView()Landroid/view/View;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 553
    :cond_0
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    return v0
.end method

.method public getIndicatorAdapter()Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    return-object v0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_1

    .line 610
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemViewUnCheck(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOnItemSelectListener()Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    return-object v0
.end method

.method public getOnTransitionListener()Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    .line 690
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    return v0
.end method

.method public getScrollBar()Lcom/shizhefei/view/indicator/slidebar/ScrollBar;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    return-object v0
.end method

.method public getSplitMethod()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->splitMethod:I

    return v0
.end method

.method public isItemClickable()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->itemClickable:Z

    return v0
.end method

.method protected measureChildren(II)V
    .locals 0

    .line 558
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureChildren(II)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 63
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->stop()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 78
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 79
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->centerViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 584
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->state:I

    if-nez p1, :cond_0

    .line 586
    iget p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->updateTabSelectState(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 572
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPosition:I

    .line 573
    iput p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPositionOffset:F

    .line 574
    iput p3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPositionOffsetPixels:I

    .line 575
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_0

    .line 576
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 578
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->notifyPageScrolled(IFI)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 563
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 564
    iget p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->measureScrollBar(IFZ)I

    return-void
.end method

.method public removeCenterView()V
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->removeView(Landroid/view/View;)V

    .line 673
    iput-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    .line 675
    :cond_0
    iput-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->centerViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public setAdapter(Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->dataSetObserver:Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->unRegistDataSetObserver(Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;)V

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    .line 72
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->dataSetObserver:Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->registDataSetObserver(Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;)V

    .line 73
    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCenterView(Landroid/view/View;)V
    .locals 1

    .line 642
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setCenterView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCenterView(Landroid/view/View;II)V
    .locals 1

    .line 635
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    .line 636
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x10

    .line 637
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 638
    invoke-virtual {p0, p1, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setCenterView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCenterView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 646
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->removeCenterView()V

    if-nez p2, :cond_0

    .line 649
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 651
    :cond_0
    invoke-virtual {p0, p2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    .line 653
    :goto_0
    iput-object p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->centerViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 654
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    .line 655
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 656
    invoke-virtual {p0, p1, v0, p2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    move p1, v0

    .line 128
    :cond_2
    :goto_0
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    if-eq v0, p1, :cond_6

    .line 129
    iput v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    .line 130
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    .line 132
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->stop()V

    .line 135
    :cond_3
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->state:I

    if-nez v0, :cond_5

    .line 136
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->updateTabSelectState(I)V

    if-eqz p2, :cond_4

    .line 137
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getMeasuredWidth()I

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    if-ltz p2, :cond_4

    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getTabCountInLayout()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 138
    iget p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    invoke-direct {p0, p2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    .line 139
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v1, v0, p2

    .line 140
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v1, v1, p1

    float-to-int p1, v1

    const/16 v1, 0x258

    .line 142
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 143
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->inRun:Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v1, p2, v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView$InRun;->startScroll(III)V

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 145
    invoke-direct {p0, p1, p2, v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->notifyPageScrolled(IFI)V

    goto :goto_1

    .line 148
    :cond_5
    iget-object p2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    if-nez p2, :cond_6

    .line 149
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->updateTabSelectState(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setItemClickable(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->itemClickable:Z

    return-void
.end method

.method public setOnItemSelectListener(Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onItemSelectedListener:Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;

    return-void
.end method

.method public setOnTransitionListener(Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;)V
    .locals 3

    .line 594
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onTransitionListener:Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;

    .line 595
    iget v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    invoke-direct {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->updateTabSelectState(I)V

    .line 596
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 597
    :goto_0
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mAdapter:Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 598
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 600
    iget v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    if-ne v2, v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1, v1, v0, v2}, Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V
    .locals 6

    .line 244
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getPaddingBottom()I

    move-result v0

    .line 245
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getPaddingTop()I

    move-result v1

    .line 246
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 247
    sget-object v2, Lcom/shizhefei/view/indicator/FixedIndicatorView$3;->$SwitchMap$com$shizhefei$view$indicator$slidebar$ScrollBar$Gravity:[I

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v5}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 259
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    .line 260
    sget-object v2, Lcom/shizhefei/view/indicator/FixedIndicatorView$3;->$SwitchMap$com$shizhefei$view$indicator$slidebar$ScrollBar$Gravity:[I

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->scrollBar:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v5}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 266
    :cond_3
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_1

    .line 262
    :cond_4
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result p1

    add-int/2addr v0, p1

    .line 271
    :goto_1
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setPadding(IIII)V

    return-void
.end method

.method public setSplitMethod(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->splitMethod:I

    .line 218
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->measureTabs()V

    return-void
.end method
