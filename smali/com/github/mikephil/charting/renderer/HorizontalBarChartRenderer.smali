.class public Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.source "HorizontalBarChartRenderer.java"


# instance fields
.field private mBarShadowRectBuffer:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 51
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 35
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 56
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    .line 58
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderWidth()F

    move-result v5

    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderWidth()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 63
    :goto_0
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v7

    .line 64
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v8

    .line 67
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawBarShadowEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 68
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarShadowColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v9

    .line 72
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 76
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v7

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_3

    .line 80
    invoke-interface {v1, v11}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/data/BarEntry;

    .line 82
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v12

    .line 84
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    sub-float v14, v12, v9

    iput v14, v13, Landroid/graphics/RectF;->top:F

    .line 85
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    add-float/2addr v12, v9

    iput v12, v13, Landroid/graphics/RectF;->bottom:F

    .line 87
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    invoke-virtual {v3, v12}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;)V

    .line 89
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v12, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v15, p1

    goto :goto_2

    .line 92
    :cond_1
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_3

    .line 95
    :cond_2
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v13

    iput v13, v12, Landroid/graphics/RectF;->left:F

    .line 96
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v13

    iput v13, v12, Landroid/graphics/RectF;->right:F

    .line 98
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v12, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    move-object/from16 v15, p1

    .line 103
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v9, v9, v2

    .line 104
    invoke-virtual {v9, v7, v8}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setPhases(FF)V

    .line 105
    invoke-virtual {v9, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setDataSet(I)V

    .line 106
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v2

    invoke-virtual {v9, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setInverted(Z)V

    .line 107
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v2

    invoke-virtual {v9, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setBarWidth(F)V

    .line 109
    invoke-virtual {v9, v1}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    .line 111
    iget-object v2, v9, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 113
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_4

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_5

    .line 116
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    :cond_5
    :goto_5
    invoke-virtual {v9}, Lcom/github/mikephil/charting/buffer/BarBuffer;->size()I

    move-result v2

    if-ge v5, v2, :cond_a

    .line 121
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v7, v5, 0x3

    aget v3, v3, v7

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_7

    .line 124
    :cond_6
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v8, v5, 0x1

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    if-nez v6, :cond_8

    .line 130
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v3, v5, 0x4

    invoke-interface {v1, v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    :cond_8
    iget-object v2, v9, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v2, v2, v5

    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v16, v3, v8

    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v10, v5, 0x2

    aget v17, v3, v10

    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v18, v3, v7

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move v15, v2

    move-object/from16 v19, v3

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-eqz v4, :cond_9

    .line 137
    iget-object v2, v9, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v15, v2, v5

    iget-object v2, v9, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v16, v2, v8

    iget-object v2, v9, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v17, v2, v10

    iget-object v2, v9, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v18, v2, v7

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v2

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x4

    move-object/from16 v15, p1

    goto :goto_5

    :cond_a
    :goto_7
    return-void
.end method

.method protected drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget-object p5, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 31

    move-object/from16 v6, p0

    .line 146
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 148
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v7

    const/high16 v0, 0x40a00000    # 5.0f

    .line 150
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v8

    .line 153
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawValueAboveBarEnabled()Z

    move-result v9

    const/4 v11, 0x0

    .line 155
    :goto_0
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v0

    if-ge v11, v0, :cond_23

    .line 157
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 159
    invoke-virtual {v6, v12}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->shouldDrawValues(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    move-object/from16 v19, v7

    goto/16 :goto_16

    .line 162
    :cond_1
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v13

    .line 165
    invoke-virtual {v6, v12}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 166
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const-string v1, "10"

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v14, 0x40000000    # 2.0f

    div-float v15, v0, v14

    .line 168
    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v5

    .line 171
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v4, v0, v11

    .line 173
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v16

    .line 176
    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v0

    const/16 v17, 0x0

    if-nez v0, :cond_9

    const/4 v3, 0x0

    :goto_2
    int-to-float v0, v3

    .line 178
    iget-object v1, v4, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    array-length v1, v1

    int-to-float v1, v1

    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v2

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 180
    iget-object v0, v4, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v1, v3, 0x1

    aget v0, v0, v1

    iget-object v2, v4, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v16, v3, 0x3

    aget v2, v2, v16

    add-float/2addr v0, v2

    div-float/2addr v0, v14

    .line 182
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v10, v4, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v10, v10, v1

    invoke-virtual {v2, v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 185
    :cond_2
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v10, v4, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v10, v10, v3

    invoke-virtual {v2, v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_3
    move v10, v3

    move-object v14, v5

    move-object/from16 v19, v7

    move-object v7, v4

    goto/16 :goto_6

    .line 188
    :cond_3
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v10, v4, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v10, v1

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 191
    :cond_4
    div-int/lit8 v1, v3, 0x4

    invoke-interface {v12, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarEntry;

    .line 192
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v2

    .line 193
    iget-object v10, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-interface {v5, v2, v1, v11, v10}, Lcom/github/mikephil/charting/formatter/IValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object v10

    .line 196
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-static {v1, v10}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    if-eqz v9, :cond_5

    move v14, v8

    goto :goto_4

    :cond_5
    add-float v14, v1, v8

    neg-float v14, v14

    :goto_4
    move-object/from16 v19, v5

    if-eqz v9, :cond_6

    add-float v5, v1, v8

    neg-float v5, v5

    goto :goto_5

    :cond_6
    move v5, v8

    :goto_5
    if-eqz v13, :cond_7

    neg-float v14, v14

    sub-float/2addr v14, v1

    neg-float v5, v5

    sub-float/2addr v5, v1

    .line 205
    :cond_7
    iget-object v1, v4, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v16, v3, 0x2

    aget v1, v1, v16

    cmpl-float v2, v2, v17

    if-ltz v2, :cond_8

    move v5, v14

    :cond_8
    add-float/2addr v5, v1

    add-float v14, v0, v15

    div-int/lit8 v0, v3, 0x2

    .line 206
    invoke-interface {v12, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueTextColor(I)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move v10, v3

    move v3, v5

    move-object v5, v4

    move v4, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v7

    move-object v7, v5

    move/from16 v5, v16

    .line 205
    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    :goto_6
    add-int/lit8 v3, v10, 0x4

    move-object v4, v7

    move-object v5, v14

    move-object/from16 v7, v19

    const/high16 v14, 0x40000000    # 2.0f

    goto/16 :goto_2

    :cond_9
    move-object v14, v5

    move-object/from16 v19, v7

    move-object v7, v4

    .line 212
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v10

    const/4 v5, 0x0

    const/16 v20, 0x0

    :goto_7
    int-to-float v0, v5

    .line 217
    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v2

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_22

    .line 219
    invoke-interface {v12, v5}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/github/mikephil/charting/data/BarEntry;

    .line 221
    invoke-interface {v12, v5}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueTextColor(I)I

    move-result v21

    .line 222
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v3

    if-nez v3, :cond_11

    .line 229
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v20, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_16

    .line 232
    :cond_a
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_7

    .line 235
    :cond_b
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_7

    .line 238
    :cond_c
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v0

    .line 239
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-interface {v14, v0, v4, v11, v1}, Lcom/github/mikephil/charting/formatter/IValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object v1

    .line 242
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    move-object/from16 v22, v1

    if-eqz v9, :cond_d

    move v1, v8

    goto :goto_8

    :cond_d
    add-float v1, v0, v8

    neg-float v1, v1

    :goto_8
    move-object/from16 v23, v3

    if-eqz v9, :cond_e

    add-float v3, v0, v8

    neg-float v3, v3

    goto :goto_9

    :cond_e
    move v3, v8

    :goto_9
    if-eqz v13, :cond_f

    neg-float v1, v1

    sub-float/2addr v1, v0

    neg-float v3, v3

    sub-float/2addr v3, v0

    .line 251
    :cond_f
    iget-object v0, v7, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v24, v20, 0x2

    aget v0, v0, v24

    .line 252
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v4

    cmpl-float v4, v4, v17

    if-ltz v4, :cond_10

    goto :goto_a

    :cond_10
    move v1, v3

    :goto_a
    add-float v3, v0, v1

    iget-object v0, v7, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v0, v0, v2

    add-float v4, v0, v15

    move-object/from16 v0, p0

    move-object/from16 v2, v22

    move-object/from16 v1, p1

    move-object/from16 v22, v12

    move-object/from16 v12, v23

    move/from16 v23, v5

    move/from16 v5, v21

    .line 251
    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto/16 :goto_13

    :cond_11
    move/from16 v23, v5

    move-object/from16 v22, v12

    move-object v12, v3

    .line 257
    array-length v0, v12

    mul-int/lit8 v5, v0, 0x2

    new-array v3, v5, [F

    .line 260
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v0

    neg-float v0, v0

    move/from16 v24, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v25, 0x0

    :goto_b
    if-ge v0, v5, :cond_15

    .line 264
    aget v2, v12, v1

    cmpl-float v26, v2, v17

    if-nez v26, :cond_13

    cmpl-float v27, v25, v17

    if-eqz v27, :cond_12

    cmpl-float v27, v24, v17

    if-nez v27, :cond_13

    :cond_12
    move/from16 v30, v24

    move/from16 v24, v2

    move/from16 v2, v30

    goto :goto_c

    :cond_13
    if-ltz v26, :cond_14

    add-float v25, v25, v2

    move/from16 v2, v24

    move/from16 v24, v25

    goto :goto_c

    :cond_14
    sub-float v2, v24, v2

    :goto_c
    mul-float v24, v24, v16

    .line 278
    aput v24, v3, v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    move/from16 v24, v2

    goto :goto_b

    .line 281
    :cond_15
    invoke-virtual {v10, v3}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v5, :cond_20

    .line 285
    div-int/lit8 v0, v2, 0x2

    aget v0, v12, v0

    .line 286
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-interface {v14, v0, v4, v11, v1}, Lcom/github/mikephil/charting/formatter/IValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v26, v4

    .line 289
    iget-object v4, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-static {v4, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v27, v1

    if-eqz v9, :cond_16

    move v1, v8

    goto :goto_e

    :cond_16
    add-float v1, v4, v8

    neg-float v1, v1

    :goto_e
    move/from16 v28, v5

    if-eqz v9, :cond_17

    add-float v5, v4, v8

    neg-float v5, v5

    goto :goto_f

    :cond_17
    move v5, v8

    :goto_f
    if-eqz v13, :cond_18

    neg-float v1, v1

    sub-float/2addr v1, v4

    neg-float v5, v5

    sub-float/2addr v5, v4

    :cond_18
    cmpl-float v4, v0, v17

    if-nez v4, :cond_19

    cmpl-float v4, v24, v17

    if-nez v4, :cond_19

    cmpl-float v4, v25, v17

    if-gtz v4, :cond_1a

    :cond_19
    cmpg-float v0, v0, v17

    if-gez v0, :cond_1b

    :cond_1a
    const/4 v0, 0x1

    goto :goto_10

    :cond_1b
    const/4 v0, 0x0

    .line 302
    :goto_10
    aget v4, v3, v2

    if-eqz v0, :cond_1c

    move v1, v5

    :cond_1c
    add-float/2addr v4, v1

    .line 304
    iget-object v0, v7, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v1, v20, 0x1

    aget v0, v0, v1

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v5, v20, 0x3

    aget v1, v1, v5

    add-float/2addr v0, v1

    const/high16 v18, 0x40000000    # 2.0f

    div-float v0, v0, v18

    .line 306
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_14

    .line 309
    :cond_1d
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v1

    if-nez v1, :cond_1e

    :goto_11
    move/from16 v29, v2

    move-object/from16 v27, v3

    goto :goto_12

    .line 312
    :cond_1e
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_11

    :cond_1f
    add-float v5, v0, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v29, v2

    move-object/from16 v2, v27

    move-object/from16 v27, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v21

    .line 315
    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    :goto_12
    add-int/lit8 v2, v29, 0x2

    move-object/from16 v4, v26

    move-object/from16 v3, v27

    move/from16 v5, v28

    goto/16 :goto_d

    :cond_20
    :goto_13
    const/high16 v18, 0x40000000    # 2.0f

    :goto_14
    if-nez v12, :cond_21

    add-int/lit8 v20, v20, 0x4

    goto :goto_15

    .line 319
    :cond_21
    array-length v0, v12

    mul-int/lit8 v0, v0, 0x4

    add-int v20, v20, v0

    :goto_15
    add-int/lit8 v5, v23, 0x1

    move-object/from16 v12, v22

    goto/16 :goto_7

    :cond_22
    :goto_16
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v19

    goto/16 :goto_0

    :cond_23
    return-void
.end method

.method public initBuffers()V
    .locals 7

    .line 41
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v1

    new-array v1, v1, [Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;

    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    const/4 v1, 0x0

    .line 44
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 45
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 46
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getStackSize()I

    move-result v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    :goto_1
    mul-int v5, v5, v6

    .line 47
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v6

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v2

    invoke-direct {v4, v5, v6, v2}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;-><init>(IIZ)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z
    .locals 2

    .line 352
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;->getMaxVisibleCount()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 353
    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v1

    mul-float p1, p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V
    .locals 1

    sub-float v0, p1, p4

    add-float/2addr p1, p4

    .line 340
    iget-object p4, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {p4, p2, v0, p3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 342
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result p2

    invoke-virtual {p5, p1, p2}, Lcom/github/mikephil/charting/utils/Transformer;->rectToPixelPhaseHorizontal(Landroid/graphics/RectF;F)V

    return-void
.end method

.method protected setHighlightDrawPos(Lcom/github/mikephil/charting/highlight/Highlight;Landroid/graphics/RectF;)V
    .locals 1

    .line 347
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget p2, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0, p2}, Lcom/github/mikephil/charting/highlight/Highlight;->setDraw(FF)V

    return-void
.end method
