.class public Lcom/serenegiant/widget/MaskImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "MaskImageView.java"


# instance fields
.field private final mCopyPaint:Landroid/graphics/Paint;

.field private final mMaskBounds:Landroid/graphics/Rect;

.field private mMaskDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMaskedPaint:Landroid/graphics/Paint;

.field private final mViewBoundsF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, v0, v1}, Lcom/serenegiant/widget/MaskImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/widget/MaskImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/widget/MaskImageView;->mMaskedPaint:Landroid/graphics/Paint;

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/widget/MaskImageView;->mCopyPaint:Landroid/graphics/Paint;

    .line 40
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/widget/MaskImageView;->mMaskBounds:Landroid/graphics/Rect;

    .line 41
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/widget/MaskImageView;->mViewBoundsF:Landroid/graphics/RectF;

    .line 54
    iget-object p1, p0, Lcom/serenegiant/widget/MaskImageView;->mMaskedPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/serenegiant/widget/MaskImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/widget/MaskImageView;->mViewBoundsF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/serenegiant/widget/MaskImageView;->mCopyPaint:Landroid/graphics/Paint;

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/widget/MaskImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/serenegiant/widget/MaskImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    iget-object v1, p0, Lcom/serenegiant/widget/MaskImageView;->mViewBoundsF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/serenegiant/widget/MaskImageView;->mMaskedPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :try_start_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 107
    :try_start_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onSizeChanged(IIII)V
    .locals 4

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/serenegiant/widget/MaskImageView;->getPaddingLeft()I

    move-result p3

    .line 80
    invoke-virtual {p0}, Lcom/serenegiant/widget/MaskImageView;->getPaddingTop()I

    move-result p4

    sub-int v0, p1, p3

    .line 81
    invoke-virtual {p0}, Lcom/serenegiant/widget/MaskImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v1, p2, p4

    invoke-virtual {p0}, Lcom/serenegiant/widget/MaskImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v1, p1, v0

    .line 82
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    sub-int p3, p2, v0

    .line 83
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p4

    .line 84
    iget-object p4, p0, Lcom/serenegiant/widget/MaskImageView;->mMaskBounds:Landroid/graphics/Rect;

    add-int v2, v1, v0

    add-int v3, p3, v0

    invoke-virtual {p4, v1, p3, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p3, 0x3

    if-le v0, p3, :cond_1

    .line 86
    iget-object p3, p0, Lcom/serenegiant/widget/MaskImageView;->mMaskedPaint:Landroid/graphics/Paint;

    new-instance p4, Landroid/graphics/BlurMaskFilter;

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p4, v0, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 90
    :cond_1
    iget-object p3, p0, Lcom/serenegiant/widget/MaskImageView;->mViewBoundsF:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 91
    iget-object p1, p0, Lcom/serenegiant/widget/MaskImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 92
    iget-object p1, p0, Lcom/serenegiant/widget/MaskImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/serenegiant/widget/MaskImageView;->mMaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_2
    monitor-exit p0

    return-void

    .line 77
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/widget/MaskImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 66
    iput-object p1, p0, Lcom/serenegiant/widget/MaskImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/serenegiant/widget/MaskImageView;->mMaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/serenegiant/widget/MaskImageView;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
