.class final Lcom/google/android/material/progressindicator/LinearDrawingDelegate;
.super Ljava/lang/Object;
.source "LinearDrawingDelegate.java"

# interfaces
.implements Lcom/google/android/material/progressindicator/DrawingDelegate;


# instance fields
.field private trackLength:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x43960000    # 300.0f

    .line 34
    iput v0, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    return-void
.end method

.method private static drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFLandroid/graphics/RectF;)V
    .locals 6

    .line 198
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 199
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p6

    move v2, p4

    move v3, p5

    move-object v5, p1

    .line 200
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 201
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public adjustCanvas(Landroid/graphics/Canvas;Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;F)V
    .locals 7

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    .line 63
    iget v1, p2, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorSize:I

    int-to-float v1, v1

    .line 67
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 68
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v5, p2, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorSize:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v4, v0

    .line 66
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 71
    iget-boolean v0, p2, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->inverse:Z

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 75
    :cond_0
    iget v0, p2, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->growMode:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    .line 76
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 79
    :cond_1
    iget v0, p2, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->growMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget v0, p2, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->growMode:I

    if-ne v0, v6, :cond_3

    .line 81
    :cond_2
    iget p2, p2, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorSize:I

    int-to-float p2, p2

    sub-float/2addr p3, v4

    mul-float p2, p2, p3

    div-float/2addr p2, v3

    invoke-virtual {p1, v5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 86
    :cond_3
    iget p2, p0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    neg-float p3, p2

    div-float/2addr p3, v3

    neg-float v0, v1

    div-float/2addr v0, v3

    div-float/2addr p2, v3

    div-float/2addr v1, v3

    invoke-virtual {p1, p3, v0, p2, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    return-void
.end method

.method public fillTrackWithColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFFFF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move/from16 v9, p6

    move/from16 v10, p7

    cmpl-float v1, p4, p5

    if-nez v1, :cond_0

    return-void

    .line 116
    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    .line 117
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    new-instance v11, Landroid/graphics/PointF;

    iget v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    neg-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v10

    mul-float v12, v10, v3

    sub-float/2addr v1, v12

    mul-float v1, v1, p4

    add-float/2addr v2, v1

    neg-float v1, v9

    div-float v13, v1, v3

    add-float v1, v13, v10

    invoke-direct {v11, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 125
    new-instance v14, Landroid/graphics/PointF;

    iget v1, v0, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    neg-float v2, v1

    div-float/2addr v2, v3

    add-float/2addr v2, v10

    sub-float/2addr v1, v12

    mul-float v1, v1, p5

    add-float/2addr v2, v1

    div-float v15, v9, v3

    sub-float v1, v15, v10

    invoke-direct {v14, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-lez v1, :cond_1

    .line 131
    new-instance v7, Landroid/graphics/RectF;

    neg-float v1, v10

    invoke-direct {v7, v1, v1, v10, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 134
    iget v3, v11, Landroid/graphics/PointF;->x:F

    iget v4, v11, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, 0x42b40000    # 90.0f

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v16, v7

    invoke-static/range {v1 .. v7}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFLandroid/graphics/RectF;)V

    .line 143
    iget v3, v11, Landroid/graphics/PointF;->x:F

    iget v4, v14, Landroid/graphics/PointF;->y:F

    const/high16 v6, -0x3d4c0000    # -90.0f

    invoke-static/range {v1 .. v7}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFLandroid/graphics/RectF;)V

    .line 152
    iget v3, v14, Landroid/graphics/PointF;->x:F

    iget v4, v11, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFLandroid/graphics/RectF;)V

    .line 161
    iget v3, v14, Landroid/graphics/PointF;->x:F

    iget v4, v14, Landroid/graphics/PointF;->y:F

    const/high16 v6, 0x42b40000    # 90.0f

    invoke-static/range {v1 .. v7}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFLandroid/graphics/RectF;)V

    cmpl-float v1, v9, v12

    if-lez v1, :cond_1

    .line 171
    iget v1, v11, Landroid/graphics/PointF;->x:F

    sub-float v2, v1, v10

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget v4, v11, Landroid/graphics/PointF;->x:F

    iget v5, v14, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 177
    iget v2, v14, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget v1, v14, Landroid/graphics/PointF;->x:F

    add-float v4, v1, v10

    iget v5, v14, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 186
    :cond_1
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v4, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v1, p1

    move v3, v13

    move v5, v15

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getPreferredHeight(Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;)I
    .locals 0

    .line 43
    iget p1, p1, Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;->indicatorSize:I

    return p1
.end method

.method public getPreferredWidth(Lcom/google/android/material/progressindicator/ProgressIndicatorSpec;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method
