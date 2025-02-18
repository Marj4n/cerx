.class public Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;
.super Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;
.source "CandleStickChartRenderer.java"


# instance fields
.field private mBodyBuffers:[F

.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

.field private mCloseBuffers:[F

.field private mOpenBuffers:[F

.field private mRangeBuffers:[F

.field private mShadowBuffers:[F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0

    .line 33
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    const/16 p2, 0x8

    new-array p2, p2, [F

    .line 25
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    const/4 p2, 0x4

    new-array p3, p2, [F

    .line 26
    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    new-array p3, p2, [F

    .line 27
    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRangeBuffers:[F

    new-array p3, p2, [F

    .line 28
    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mOpenBuffers:[F

    new-array p2, p2, [F

    .line 29
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mCloseBuffers:[F

    .line 34
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleData;->getDataSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    .line 49
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 57
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v2

    .line 59
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v3

    .line 60
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getBarSpace()F

    move-result v4

    .line 61
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShowCandleBar()Z

    move-result v5

    .line 63
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-virtual {v6, v7, v1}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 65
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShadowWidth()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v6, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    :goto_0
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v7, v7, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v8, v8, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v7, v8

    if-gt v6, v7, :cond_15

    .line 71
    invoke-interface {v1, v6}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/CandleEntry;

    if-nez v7, :cond_0

    move-object/from16 v12, p1

    goto/16 :goto_b

    .line 76
    :cond_0
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleEntry;->getX()F

    move-result v8

    .line 78
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleEntry;->getOpen()F

    move-result v9

    .line 79
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleEntry;->getClose()F

    move-result v10

    .line 80
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v11

    .line 81
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v7

    const v13, 0x112233

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x1

    if-eqz v5, :cond_f

    .line 86
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    aput v8, v12, v15

    .line 87
    aput v8, v12, v14

    const/16 v19, 0x4

    .line 88
    aput v8, v12, v19

    const/16 v19, 0x6

    .line 89
    aput v8, v12, v19

    const/16 v19, 0x7

    const/16 v20, 0x5

    cmpl-float v21, v9, v10

    if-lez v21, :cond_1

    mul-float v11, v11, v3

    .line 92
    aput v11, v12, v17

    mul-float v11, v9, v3

    .line 93
    aput v11, v12, v16

    mul-float v7, v7, v3

    .line 94
    aput v7, v12, v20

    mul-float v7, v10, v3

    .line 95
    aput v7, v12, v19

    goto :goto_1

    :cond_1
    cmpg-float v22, v9, v10

    if-gez v22, :cond_2

    mul-float v11, v11, v3

    .line 97
    aput v11, v12, v17

    mul-float v11, v10, v3

    .line 98
    aput v11, v12, v16

    mul-float v7, v7, v3

    .line 99
    aput v7, v12, v20

    mul-float v7, v9, v3

    .line 100
    aput v7, v12, v19

    goto :goto_1

    :cond_2
    mul-float v11, v11, v3

    .line 102
    aput v11, v12, v17

    mul-float v11, v9, v3

    .line 103
    aput v11, v12, v16

    mul-float v7, v7, v3

    .line 104
    aput v7, v12, v20

    .line 105
    aget v7, v12, v16

    aput v7, v12, v19

    .line 108
    :goto_1
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 112
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShadowColorSameAsCandle()Z

    move-result v7

    if-eqz v7, :cond_8

    if-lez v21, :cond_4

    .line 115
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 116
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v11

    if-ne v11, v13, :cond_3

    .line 117
    invoke-interface {v1, v6}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v11

    goto :goto_2

    .line 118
    :cond_3
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v11

    .line 115
    :goto_2
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    :cond_4
    cmpg-float v7, v9, v10

    if-gez v7, :cond_6

    .line 122
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 123
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v11

    if-ne v11, v13, :cond_5

    .line 124
    invoke-interface {v1, v6}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v11

    goto :goto_3

    .line 125
    :cond_5
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v11

    .line 122
    :goto_3
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    .line 129
    :cond_6
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 130
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getNeutralColor()I

    move-result v11

    if-ne v11, v13, :cond_7

    .line 131
    invoke-interface {v1, v6}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v11

    goto :goto_4

    .line 132
    :cond_7
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getNeutralColor()I

    move-result v11

    .line 129
    :goto_4
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    .line 136
    :cond_8
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 137
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShadowColor()I

    move-result v11

    if-ne v11, v13, :cond_9

    .line 138
    invoke-interface {v1, v6}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v11

    goto :goto_5

    .line 139
    :cond_9
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShadowColor()I

    move-result v11

    .line 136
    :goto_5
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    :goto_6
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[F

    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    invoke-virtual {v12, v7, v11}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 149
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float v18, v8, v11

    add-float v18, v18, v4

    aput v18, v7, v15

    mul-float v18, v10, v3

    .line 150
    aput v18, v7, v17

    add-float/2addr v8, v11

    sub-float/2addr v8, v4

    .line 151
    aput v8, v7, v14

    mul-float v8, v9, v3

    .line 152
    aput v8, v7, v16

    .line 154
    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    if-lez v21, :cond_b

    .line 159
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v7

    if-ne v7, v13, :cond_a

    .line 160
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v1, v6}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    .line 162
    :cond_a
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    :goto_7
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingPaintStyle()Landroid/graphics/Paint$Style;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    aget v23, v7, v15

    aget v24, v7, v16

    aget v25, v7, v14

    aget v26, v7, v17

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v22, p1

    move-object/from16 v27, v7

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    :cond_b
    cmpg-float v7, v9, v10

    if-gez v7, :cond_d

    .line 174
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v7

    if-ne v7, v13, :cond_c

    .line 175
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v1, v6}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 177
    :cond_c
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    :goto_8
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingPaintStyle()Landroid/graphics/Paint$Style;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    aget v23, v7, v15

    aget v24, v7, v17

    aget v25, v7, v14

    aget v26, v7, v16

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v22, p1

    move-object/from16 v27, v7

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    .line 188
    :cond_d
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getNeutralColor()I

    move-result v7

    if-ne v7, v13, :cond_e

    .line 189
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v1, v6}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    .line 191
    :cond_e
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getNeutralColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    :goto_9
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[F

    aget v23, v7, v15

    aget v24, v7, v17

    aget v25, v7, v14

    aget v26, v7, v16

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v22, p1

    move-object/from16 v27, v7

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    :cond_f
    move-object/from16 v12, p1

    .line 201
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRangeBuffers:[F

    aput v8, v13, v15

    mul-float v11, v11, v3

    .line 202
    aput v11, v13, v17

    .line 203
    aput v8, v13, v14

    mul-float v7, v7, v3

    .line 204
    aput v7, v13, v16

    .line 206
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mOpenBuffers:[F

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float v18, v8, v11

    add-float v18, v18, v4

    aput v18, v7, v15

    mul-float v18, v9, v3

    .line 207
    aput v18, v7, v17

    .line 208
    aput v8, v7, v14

    .line 209
    aput v18, v7, v16

    .line 211
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mCloseBuffers:[F

    add-float/2addr v11, v8

    sub-float/2addr v11, v4

    aput v11, v7, v15

    mul-float v11, v10, v3

    .line 212
    aput v11, v7, v17

    .line 213
    aput v8, v7, v14

    .line 214
    aput v11, v7, v16

    .line 216
    invoke-virtual {v2, v13}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 217
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mOpenBuffers:[F

    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 218
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mCloseBuffers:[F

    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    cmpl-float v7, v9, v10

    if-lez v7, :cond_11

    .line 224
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v7

    const v8, 0x112233

    if-ne v7, v8, :cond_10

    .line 225
    invoke-interface {v1, v6}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v7

    goto :goto_a

    .line 226
    :cond_10
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v7

    goto :goto_a

    :cond_11
    const v8, 0x112233

    cmpg-float v7, v9, v10

    if-gez v7, :cond_13

    .line 228
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v7

    if-ne v7, v8, :cond_12

    .line 229
    invoke-interface {v1, v6}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v7

    goto :goto_a

    .line 230
    :cond_12
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v7

    goto :goto_a

    .line 232
    :cond_13
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getNeutralColor()I

    move-result v7

    if-ne v7, v8, :cond_14

    .line 233
    invoke-interface {v1, v6}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v7

    goto :goto_a

    .line 234
    :cond_14
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getNeutralColor()I

    move-result v7

    .line 236
    :goto_a
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRangeBuffers:[F

    aget v23, v7, v15

    aget v24, v7, v17

    aget v25, v7, v14

    aget v26, v7, v16

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v22, p1

    move-object/from16 v27, v7

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 241
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mOpenBuffers:[F

    aget v23, v7, v15

    aget v24, v7, v17

    aget v25, v7, v14

    aget v26, v7, v16

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v7

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 245
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mCloseBuffers:[F

    aget v23, v7, v15

    aget v24, v7, v17

    aget v25, v7, v14

    aget v26, v7, v16

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v7

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 9

    .line 307
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v0

    .line 309
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 311
    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    if-eqz v4, :cond_2

    .line 313
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->isHighlightEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v5

    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 318
    invoke-virtual {p0, v5, v4}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 321
    :cond_1
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v6

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v7

    mul-float v6, v6, v7

    .line 322
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v7

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v8

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 325
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v7

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/CandleEntry;->getX()F

    move-result v5

    invoke-virtual {v7, v5, v6}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v5

    .line 327
    iget-wide v6, v5, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v6, v6

    iget-wide v7, v5, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Lcom/github/mikephil/charting/highlight/Highlight;->setDraw(FF)V

    .line 330
    iget-wide v6, v5, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v3, v6

    iget-wide v5, v5, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v5, v5

    invoke-virtual {p0, p1, v3, v5, v4}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->drawHighlightLines(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/interfaces/datasets/ILineScatterCandleRadarDataSet;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v9, p0

    .line 257
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 259
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleData;->getDataSets()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 261
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_5

    .line 263
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    .line 265
    invoke-virtual {v9, v13}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->shouldDrawValues(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 269
    :cond_0
    invoke-virtual {v9, v13}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 271
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    .line 273
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget-object v2, v9, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-virtual {v0, v2, v13}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 275
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 276
    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v3

    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v4

    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v5, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v6, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->max:I

    move-object v2, v13

    .line 275
    invoke-virtual/range {v1 .. v6}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesCandle(Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;FFII)[F

    move-result-object v14

    const/high16 v0, 0x40a00000    # 5.0f

    .line 278
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v15

    const/4 v8, 0x0

    .line 280
    :goto_1
    array-length v0, v14

    if-ge v8, v0, :cond_4

    .line 282
    aget v6, v14, v8

    add-int/lit8 v0, v8, 0x1

    .line 283
    aget v0, v14, v0

    .line 285
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_4

    .line 288
    :cond_1
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 291
    :cond_2
    div-int/lit8 v1, v8, 0x2

    iget-object v2, v9, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v2, v1

    invoke-interface {v13, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 293
    invoke-interface {v13}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v2

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v3

    sub-float v7, v0, v15

    .line 294
    invoke-interface {v13, v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getValueTextColor(I)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v12

    move/from16 v17, v8

    move/from16 v8, v16

    .line 293
    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v17, v8

    :goto_3
    add-int/lit8 v8, v17, 0x2

    goto :goto_1

    :cond_4
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public initBuffers()V
    .locals 0

    return-void
.end method
