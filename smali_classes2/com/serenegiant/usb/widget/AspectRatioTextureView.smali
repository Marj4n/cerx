.class public Lcom/serenegiant/usb/widget/AspectRatioTextureView;
.super Landroid/view/TextureView;
.source "AspectRatioTextureView.java"

# interfaces
.implements Lcom/serenegiant/widget/IAspectRatioView;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "AbstractCameraView"


# instance fields
.field private mCallback:Lcom/serenegiant/usb/widget/CameraViewInterface$Callback;

.field private mRequestedAspect:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, v0, v1}, Lcom/serenegiant/usb/widget/AspectRatioTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/usb/widget/AspectRatioTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 44
    iput-wide p1, p0, Lcom/serenegiant/usb/widget/AspectRatioTextureView;->mRequestedAspect:D

    return-void
.end method


# virtual methods
.method public getAspectRatio()D
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/serenegiant/usb/widget/AspectRatioTextureView;->mRequestedAspect:D

    return-wide v0
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 84
    iget-wide v1, v0, Lcom/serenegiant/usb/widget/AspectRatioTextureView;->mRequestedAspect:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    .line 85
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 86
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/usb/widget/AspectRatioTextureView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/usb/widget/AspectRatioTextureView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/usb/widget/AspectRatioTextureView;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/usb/widget/AspectRatioTextureView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v1, v5

    sub-int/2addr v2, v6

    int-to-double v7, v1

    int-to-double v9, v2

    div-double v11, v7, v9

    .line 94
    iget-wide v13, v0, Lcom/serenegiant/usb/widget/AspectRatioTextureView;->mRequestedAspect:D

    div-double/2addr v13, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v13, v11

    .line 96
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v17, v11, v15

    if-lez v17, :cond_1

    cmpl-double v11, v13, v3

    if-lez v11, :cond_0

    .line 99
    iget-wide v2, v0, Lcom/serenegiant/usb/widget/AspectRatioTextureView;->mRequestedAspect:D

    div-double/2addr v7, v2

    double-to-int v2, v7

    goto :goto_0

    .line 102
    :cond_0
    iget-wide v3, v0, Lcom/serenegiant/usb/widget/AspectRatioTextureView;->mRequestedAspect:D

    mul-double v9, v9, v3

    double-to-int v1, v9

    :goto_0
    add-int/2addr v1, v5

    add-int/2addr v2, v6

    const/high16 v3, 0x40000000    # 2.0f

    .line 106
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 107
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_1

    :cond_1
    move/from16 v1, p1

    move/from16 v2, p2

    .line 111
    :goto_1
    invoke-super {v0, v1, v2}, Landroid/view/TextureView;->onMeasure(II)V

    return-void
.end method

.method public setAspectRatio(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    .line 65
    iget-wide v0, p0, Lcom/serenegiant/usb/widget/AspectRatioTextureView;->mRequestedAspect:D

    cmpl-double v2, v0, p1

    if-eqz v2, :cond_0

    .line 66
    iput-wide p1, p0, Lcom/serenegiant/usb/widget/AspectRatioTextureView;->mRequestedAspect:D

    .line 67
    invoke-virtual {p0}, Lcom/serenegiant/usb/widget/AspectRatioTextureView;->requestLayout()V

    :cond_0
    return-void

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setAspectRatio(II)V
    .locals 2

    int-to-double v0, p1

    int-to-double p1, p2

    div-double/2addr v0, p1

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/serenegiant/usb/widget/AspectRatioTextureView;->setAspectRatio(D)V

    return-void
.end method
