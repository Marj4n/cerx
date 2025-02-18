.class public Lcom/serenegiant/widget/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"

# interfaces
.implements Lcom/serenegiant/widget/IAspectRatioView;


# instance fields
.field private mRequestedAspect:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, v0, v1}, Lcom/serenegiant/widget/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 34
    iput-wide p1, p0, Lcom/serenegiant/widget/AspectRatioFrameLayout;->mRequestedAspect:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 34
    iput-wide v0, p0, Lcom/serenegiant/widget/AspectRatioFrameLayout;->mRequestedAspect:D

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/serenegiant/common/R$styleable;->IAspectRatioView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    :try_start_0
    sget p2, Lcom/serenegiant/common/R$styleable;->IAspectRatioView_aspect_ratio:I

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    float-to-double p2, p2

    iput-wide p2, p0, Lcom/serenegiant/widget/AspectRatioFrameLayout;->mRequestedAspect:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public getAspectRatio()D
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/serenegiant/widget/AspectRatioFrameLayout;->mRequestedAspect:D

    return-wide v0
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 60
    iget-wide v1, v0, Lcom/serenegiant/widget/AspectRatioFrameLayout;->mRequestedAspect:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    .line 61
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 62
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/AspectRatioFrameLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/AspectRatioFrameLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/AspectRatioFrameLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/AspectRatioFrameLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v1, v5

    sub-int/2addr v2, v6

    int-to-double v7, v1

    int-to-double v9, v2

    div-double v11, v7, v9

    .line 69
    iget-wide v13, v0, Lcom/serenegiant/widget/AspectRatioFrameLayout;->mRequestedAspect:D

    div-double/2addr v13, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v13, v11

    .line 72
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v17, v11, v15

    if-lez v17, :cond_1

    cmpl-double v11, v13, v3

    if-lez v11, :cond_0

    .line 75
    iget-wide v2, v0, Lcom/serenegiant/widget/AspectRatioFrameLayout;->mRequestedAspect:D

    div-double/2addr v7, v2

    double-to-int v2, v7

    goto :goto_0

    .line 78
    :cond_0
    iget-wide v3, v0, Lcom/serenegiant/widget/AspectRatioFrameLayout;->mRequestedAspect:D

    mul-double v9, v9, v3

    double-to-int v1, v9

    :goto_0
    add-int/2addr v1, v5

    add-int/2addr v2, v6

    const/high16 v3, 0x40000000    # 2.0f

    .line 82
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 83
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_1

    :cond_1
    move/from16 v1, p1

    move/from16 v2, p2

    .line 87
    :goto_1
    invoke-super {v0, v1, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setAspectRatio(D)V
    .locals 3

    .line 92
    iget-wide v0, p0, Lcom/serenegiant/widget/AspectRatioFrameLayout;->mRequestedAspect:D

    cmpl-double v2, v0, p1

    if-eqz v2, :cond_0

    .line 93
    iput-wide p1, p0, Lcom/serenegiant/widget/AspectRatioFrameLayout;->mRequestedAspect:D

    .line 94
    invoke-virtual {p0}, Lcom/serenegiant/widget/AspectRatioFrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setAspectRatio(II)V
    .locals 2

    int-to-double v0, p1

    int-to-double p1, p2

    div-double/2addr v0, p1

    .line 100
    invoke-virtual {p0, v0, v1}, Lcom/serenegiant/widget/AspectRatioFrameLayout;->setAspectRatio(D)V

    return-void
.end method
