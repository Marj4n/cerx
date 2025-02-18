.class public Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;
.super Landroid/widget/FrameLayout;
.source "VerticalSeekBarWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private applyViewRotation(II)V
    .locals 9

    .line 132
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 135
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 136
    :goto_0
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->getRotationAngle()I

    move-result v3

    .line 137
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->getMeasuredWidth()I

    move-result v4

    .line 138
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->getMeasuredHeight()I

    move-result v5

    .line 139
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    .line 140
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr p1, v6

    .line 141
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v5

    int-to-float p1, p1

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float p1, p1, v6

    .line 142
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    sub-int/2addr p2, v7

    .line 144
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, -0x2

    .line 145
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    invoke-virtual {v0, v6}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    .line 149
    :cond_1
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    :goto_1
    invoke-static {v0, p2}, Landroidx/core/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    .line 150
    invoke-static {v0, v6}, Landroidx/core/view/ViewCompat;->setPivotY(Landroid/view/View;F)V

    const/16 p2, 0x5a

    if-eq v3, p2, :cond_4

    const/16 p2, 0x10e

    if-eq v3, p2, :cond_2

    goto :goto_2

    :cond_2
    const/high16 p2, 0x43870000    # 270.0f

    .line 164
    invoke-static {v0, p2}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    if-eqz v1, :cond_3

    .line 166
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    int-to-float p1, v4

    .line 167
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_2

    :cond_3
    int-to-float p2, v5

    add-float/2addr p2, p1

    neg-float p1, p2

    .line 169
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 170
    invoke-static {v0, v6}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_2

    :cond_4
    const/high16 p2, 0x42b40000    # 90.0f

    .line 154
    invoke-static {v0, p2}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    if-eqz v1, :cond_5

    int-to-float p2, v5

    add-float/2addr p2, p1

    .line 156
    invoke-static {v0, p2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 157
    invoke-static {v0, v6}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_2

    :cond_5
    neg-float p1, p1

    .line 159
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    int-to-float p1, v4

    .line 160
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_6
    :goto_2
    return-void
.end method

.method private getChildSeekBar()Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;
    .locals 3

    .line 178
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 179
    :goto_0
    instance-of v2, v0, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    :cond_1
    return-object v1
.end method

.method private onSizeChangedTraditionalRotation(IIII)V
    .locals 8

    .line 51
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 55
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 56
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    .line 58
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int v2, p2, v2

    const/4 v4, 0x0

    .line 59
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 60
    invoke-virtual {v0, v3}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {v0, v4, v4}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->measure(II)V

    .line 64
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->getMeasuredWidth()I

    move-result v5

    sub-int v1, p1, v1

    .line 66
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 67
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 65
    invoke-virtual {v0, v6, v2}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->measure(II)V

    const/16 v2, 0x33

    .line 69
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 70
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 71
    invoke-virtual {v0, v3}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method private onSizeChangedUseViewRotation(IIII)V
    .locals 5

    .line 78
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 82
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v2, p2, v2

    const/4 v3, 0x0

    .line 84
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int v1, p1, v1

    .line 85
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->measure(II)V

    .line 88
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->applyViewRotation(II)V

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method private useViewRotation()Z
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->useViewRotation()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method applyViewRotation()V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->applyViewRotation(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 94
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    move-result-object v0

    .line 95
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 96
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 98
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-eqz v0, :cond_1

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v1, v5, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 104
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v3, v5

    const/4 v7, 0x0

    .line 105
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sub-int/2addr v4, v6

    .line 106
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 108
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->useViewRotation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    invoke-virtual {v0, v2, v1}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->measure(II)V

    .line 110
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->getMeasuredHeight()I

    move-result v1

    .line 111
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->measure(II)V

    .line 114
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    .line 115
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    :goto_0
    add-int/2addr v1, v5

    .line 118
    invoke-static {v1, p1, v7}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result p1

    add-int/2addr v0, v6

    .line 119
    invoke-static {v0, p2, v7}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result p2

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->setMeasuredDimension(II)V

    goto :goto_1

    .line 123
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->useViewRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->onSizeChangedUseViewRotation(IIII)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBarWrapper;->onSizeChangedTraditionalRotation(IIII)V

    :goto_0
    return-void
.end method
