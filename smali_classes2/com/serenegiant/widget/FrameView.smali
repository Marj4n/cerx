.class public Lcom/serenegiant/widget/FrameView;
.super Landroid/view/View;
.source "FrameView.java"


# static fields
.field private static final DEFAULT_FRAME_WIDTH_DP:F = 3.0f

.field public static final FRAME_TYPE_CIRCLE:I = 0x4

.field public static final FRAME_TYPE_CIRCLE_2:I = 0x6

.field public static final FRAME_TYPE_CROSS_CIRCLE:I = 0x5

.field public static final FRAME_TYPE_CROSS_CIRCLE2:I = 0x7

.field public static final FRAME_TYPE_CROSS_FULL:I = 0x2

.field public static final FRAME_TYPE_CROSS_QUARTER:I = 0x3

.field public static final FRAME_TYPE_FRAME:I = 0x1

.field public static final FRAME_TYPE_NONE:I = 0x0

.field public static final FRAME_TYPE_NUMS:I = 0x8

.field public static final MAX_SCALE:F = 10.0f

.field public static final SCALE_TYPE_INCH:I = 0x1

.field public static final SCALE_TYPE_MM:I = 0x2

.field public static final SCALE_TYPE_NONE:I = 0x0

.field public static final SCALE_TYPE_NUMS:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final defaultFrameWidth:F

.field private final mBoundsRect:Landroid/graphics/RectF;

.field private mCenterX:F

.field private mCenterY:F

.field private mFrameColor:I

.field private mFrameType:I

.field private mFrameWidth:F

.field private mHeight:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mRadius2:F

.field private mRadius4:F

.field private mRadiusQ:F

.field private mRotation:F

.field private mScale:F

.field private mScaleColor:I

.field private mScaleType:I

.field private mScaleWidth:F

.field private mTickColor:I

.field private mWidth:F

.field private final metrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/serenegiant/widget/FrameView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/widget/FrameView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, v0, v1}, Lcom/serenegiant/widget/FrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/widget/FrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/widget/FrameView;->mBoundsRect:Landroid/graphics/RectF;

    .line 78
    invoke-virtual {p0}, Lcom/serenegiant/widget/FrameView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    .line 79
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/serenegiant/widget/FrameView;->defaultFrameWidth:F

    .line 80
    sget-object v0, Lcom/serenegiant/common/R$styleable;->FrameView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 81
    sget p2, Lcom/serenegiant/common/R$styleable;->FrameView_frame_type:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/FrameView;->mFrameType:I

    .line 82
    sget p2, Lcom/serenegiant/common/R$styleable;->FrameView_frame_width:I

    iget p3, p0, Lcom/serenegiant/widget/FrameView;->defaultFrameWidth:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/FrameView;->mFrameWidth:F

    .line 83
    sget p2, Lcom/serenegiant/common/R$styleable;->FrameView_frame_color:I

    const p3, -0x4e4e4f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/FrameView;->mFrameColor:I

    .line 84
    sget p2, Lcom/serenegiant/common/R$styleable;->FrameView_scale_type:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/FrameView;->mScaleType:I

    .line 85
    sget p2, Lcom/serenegiant/common/R$styleable;->FrameView_scale_width:I

    iget p3, p0, Lcom/serenegiant/widget/FrameView;->mFrameWidth:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/FrameView;->mScaleWidth:F

    .line 86
    sget p2, Lcom/serenegiant/common/R$styleable;->FrameView_scale_color:I

    iget p3, p0, Lcom/serenegiant/widget/FrameView;->mFrameColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/FrameView;->mScaleColor:I

    .line 87
    sget p2, Lcom/serenegiant/common/R$styleable;->FrameView_tick_color:I

    iget p3, p0, Lcom/serenegiant/widget/FrameView;->mScaleColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/FrameView;->mTickColor:I

    .line 88
    sget p2, Lcom/serenegiant/common/R$styleable;->FrameView_scale_rotation:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/FrameView;->mRotation:F

    .line 89
    sget p2, Lcom/serenegiant/common/R$styleable;->FrameView_scale_scale:I

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/FrameView;->mScale:F

    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    iget-object p1, p0, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private draw_scale_full(Landroid/graphics/Canvas;FFFFI)V
    .locals 25

    move-object/from16 v0, p0

    .line 222
    iget v7, v0, Lcom/serenegiant/widget/FrameView;->mCenterX:F

    .line 223
    iget v8, v0, Lcom/serenegiant/widget/FrameView;->mCenterY:F

    .line 224
    iget v1, v0, Lcom/serenegiant/widget/FrameView;->mScaleWidth:F

    iget v2, v0, Lcom/serenegiant/widget/FrameView;->defaultFrameWidth:F

    const/high16 v3, 0x40800000    # 4.0f

    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    mul-float v1, v1, v3

    goto :goto_0

    :cond_0
    mul-float v1, v2, v3

    :goto_0
    move v9, v1

    .line 225
    iget v1, v0, Lcom/serenegiant/widget/FrameView;->mScaleWidth:F

    iget v2, v0, Lcom/serenegiant/widget/FrameView;->defaultFrameWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v4, v1, v2

    if-lez v4, :cond_1

    mul-float v1, v1, v3

    goto :goto_1

    :cond_1
    mul-float v1, v2, v3

    :goto_1
    move v10, v1

    div-float v11, p2, v3

    div-float v1, p3, v3

    div-float v2, v11, p4

    float-to-int v12, v2

    div-float v2, v1, p5

    float-to-int v13, v2

    sub-float v3, v8, v1

    add-float v5, v8, v1

    .line 230
    iget-object v6, v0, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v7

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v2, v7, v11

    add-float v4, v7, v11

    .line 231
    iget-object v6, v0, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    move v3, v8

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 232
    iget-object v1, v0, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/serenegiant/widget/FrameView;->mTickColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v12, :cond_3

    .line 234
    rem-int v3, v2, p6

    if-nez v3, :cond_2

    move v3, v9

    goto :goto_3

    :cond_2
    move v3, v10

    :goto_3
    int-to-float v4, v2

    mul-float v4, v4, p4

    add-float v17, v7, v4

    sub-float v20, v8, v3

    add-float v22, v8, v3

    .line 236
    iget-object v3, v0, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move/from16 v15, v17

    move/from16 v16, v20

    move/from16 v18, v22

    move-object/from16 v19, v3

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v21, v7, v4

    .line 238
    iget-object v3, v0, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, p1

    move/from16 v19, v21

    move-object/from16 v23, v3

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    if-ge v1, v13, :cond_5

    .line 241
    rem-int v2, v1, p6

    if-nez v2, :cond_4

    move v2, v9

    goto :goto_5

    :cond_4
    move v2, v10

    :goto_5
    int-to-float v3, v1

    mul-float v3, v3, p5

    add-float v18, v8, v3

    sub-float v20, v7, v2

    add-float v22, v7, v2

    .line 243
    iget-object v2, v0, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move/from16 v15, v20

    move/from16 v16, v18

    move/from16 v17, v22

    move-object/from16 v19, v2

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v23, v8, v3

    .line 245
    iget-object v2, v0, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move/from16 v21, v23

    move-object/from16 v24, v2

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 247
    :cond_5
    iget-object v1, v0, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/serenegiant/widget/FrameView;->mScaleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getFrameColor()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mFrameColor:I

    return v0
.end method

.method public getFrameType()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mFrameType:I

    return v0
.end method

.method public getFrameWidth()F
    .locals 1

    .line 313
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mFrameWidth:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 416
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mRotation:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 435
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mScale:F

    return v0
.end method

.method public getScaleColor()I
    .locals 1

    .line 336
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mScaleColor:I

    return v0
.end method

.method public getScaleType()I
    .locals 1

    .line 355
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mScaleType:I

    return v0
.end method

.method public getScaleWidth()F
    .locals 1

    .line 375
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mScaleWidth:F

    return v0
.end method

.method public getTickColor()I
    .locals 1

    .line 394
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mTickColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    .line 121
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    iget v0, v8, Lcom/serenegiant/widget/FrameView;->mFrameType:I

    if-eqz v0, :cond_c

    .line 123
    iget-object v0, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    iget v1, v8, Lcom/serenegiant/widget/FrameView;->mFrameWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    iget-object v0, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    iget v1, v8, Lcom/serenegiant/widget/FrameView;->mFrameColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v0, v8, Lcom/serenegiant/widget/FrameView;->mBoundsRect:Landroid/graphics/RectF;

    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 127
    iget-object v0, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    iget v1, v8, Lcom/serenegiant/widget/FrameView;->mScaleWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 128
    iget-object v0, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    iget v1, v8, Lcom/serenegiant/widget/FrameView;->mScaleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget v0, v8, Lcom/serenegiant/widget/FrameView;->mCenterX:F

    .line 130
    iget v10, v8, Lcom/serenegiant/widget/FrameView;->mCenterY:F

    .line 131
    iget v4, v8, Lcom/serenegiant/widget/FrameView;->mRadius2:F

    .line 132
    iget v11, v8, Lcom/serenegiant/widget/FrameView;->mRadius4:F

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 136
    :try_start_0
    iget v1, v8, Lcom/serenegiant/widget/FrameView;->mRotation:F

    invoke-virtual {v9, v1, v0, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 137
    iget v1, v8, Lcom/serenegiant/widget/FrameView;->mScale:F

    iget v2, v8, Lcom/serenegiant/widget/FrameView;->mScale:F

    invoke-virtual {v9, v1, v2, v0, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 138
    iget v1, v8, Lcom/serenegiant/widget/FrameView;->mFrameType:I

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v5, 0x414b3333    # 12.7f

    const/high16 v6, 0x41200000    # 10.0f

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 190
    :pswitch_0
    iget v1, v8, Lcom/serenegiant/widget/FrameView;->mScaleType:I

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v6, v1, v5

    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v7, v1, v5

    const/4 v14, 0x5

    move-object v1, p0

    move-object/from16 v2, p1

    move v3, v4

    move v5, v6

    move v6, v7

    move v7, v14

    invoke-direct/range {v1 .. v7}, Lcom/serenegiant/widget/FrameView;->draw_scale_full(Landroid/graphics/Canvas;FFFFI)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v5, v1, v6

    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v6, v1, v6

    const/16 v7, 0xa

    move-object v1, p0

    move-object/from16 v2, p1

    move v3, v4

    invoke-direct/range {v1 .. v7}, Lcom/serenegiant/widget/FrameView;->draw_scale_full(Landroid/graphics/Canvas;FFFFI)V

    goto :goto_0

    :cond_2
    sub-float v3, v10, v11

    add-float v5, v10, v11

    .line 192
    iget-object v6, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v0

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v2, v0, v11

    add-float v4, v0, v11

    .line 193
    iget-object v6, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v10

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    div-float v1, v11, v13

    .line 202
    iget-object v2, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 203
    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v10, v11, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :pswitch_1
    div-float v1, v11, v13

    .line 186
    iget-object v2, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 187
    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v10, v11, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 171
    :pswitch_2
    iget v1, v8, Lcom/serenegiant/widget/FrameView;->mScaleType:I

    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    goto :goto_1

    .line 180
    :cond_3
    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v6, v1, v5

    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v7, v1, v5

    const/4 v13, 0x5

    move-object v1, p0

    move-object/from16 v2, p1

    move v3, v4

    move v5, v6

    move v6, v7

    move v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/serenegiant/widget/FrameView;->draw_scale_full(Landroid/graphics/Canvas;FFFFI)V

    goto :goto_1

    .line 177
    :cond_4
    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v5, v1, v6

    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v6, v1, v6

    const/16 v7, 0xa

    move-object v1, p0

    move-object/from16 v2, p1

    move v3, v4

    invoke-direct/range {v1 .. v7}, Lcom/serenegiant/widget/FrameView;->draw_scale_full(Landroid/graphics/Canvas;FFFFI)V

    goto :goto_1

    :cond_5
    sub-float v3, v10, v11

    add-float v5, v10, v11

    .line 173
    iget-object v6, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v0

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v2, v0, v11

    add-float v4, v0, v11

    .line 174
    iget-object v6, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v10

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 183
    :goto_1
    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v10, v11, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 168
    :pswitch_3
    iget v0, v8, Lcom/serenegiant/widget/FrameView;->mCenterX:F

    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v10, v11, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 154
    :pswitch_4
    iget v1, v8, Lcom/serenegiant/widget/FrameView;->mScaleType:I

    if-eqz v1, :cond_8

    if-eq v1, v3, :cond_7

    if-eq v1, v2, :cond_6

    goto/16 :goto_2

    .line 163
    :cond_6
    iget-object v0, v8, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v5

    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v6, v1, v5

    const/4 v7, 0x5

    move-object v1, p0

    move-object/from16 v2, p1

    move v3, v4

    move v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/serenegiant/widget/FrameView;->draw_scale_full(Landroid/graphics/Canvas;FFFFI)V

    goto/16 :goto_2

    .line 160
    :cond_7
    iget-object v0, v8, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v5, v0, v6

    iget-object v0, v8, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v6, v0, v6

    const/16 v7, 0xa

    move-object v1, p0

    move-object/from16 v2, p1

    move v3, v4

    invoke-direct/range {v1 .. v7}, Lcom/serenegiant/widget/FrameView;->draw_scale_full(Landroid/graphics/Canvas;FFFFI)V

    goto/16 :goto_2

    :cond_8
    sub-float v3, v10, v11

    add-float v5, v10, v11

    .line 156
    iget-object v6, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v0

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v2, v0, v11

    add-float v4, v0, v11

    .line 157
    iget-object v6, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v10

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 140
    :pswitch_5
    iget v1, v8, Lcom/serenegiant/widget/FrameView;->mScaleType:I

    if-eqz v1, :cond_b

    if-eq v1, v3, :cond_a

    if-eq v1, v2, :cond_9

    goto :goto_2

    .line 149
    :cond_9
    iget v3, v8, Lcom/serenegiant/widget/FrameView;->mWidth:F

    iget v4, v8, Lcom/serenegiant/widget/FrameView;->mHeight:F

    iget-object v0, v8, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v5

    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v6, v1, v5

    const/4 v7, 0x5

    move-object v1, p0

    move-object/from16 v2, p1

    move v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/serenegiant/widget/FrameView;->draw_scale_full(Landroid/graphics/Canvas;FFFFI)V

    goto :goto_2

    .line 146
    :cond_a
    iget v3, v8, Lcom/serenegiant/widget/FrameView;->mWidth:F

    iget v4, v8, Lcom/serenegiant/widget/FrameView;->mHeight:F

    iget-object v0, v8, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v5, v0, v6

    iget-object v0, v8, Lcom/serenegiant/widget/FrameView;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v6, v0, v6

    const/16 v7, 0xa

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/serenegiant/widget/FrameView;->draw_scale_full(Landroid/graphics/Canvas;FFFFI)V

    goto :goto_2

    .line 142
    :cond_b
    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->mBoundsRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, v8, Lcom/serenegiant/widget/FrameView;->mBoundsRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v0

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 143
    iget-object v0, v8, Lcom/serenegiant/widget/FrameView;->mBoundsRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, v8, Lcom/serenegiant/widget/FrameView;->mBoundsRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v6, v8, Lcom/serenegiant/widget/FrameView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v10

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :goto_2
    invoke-virtual {v9, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v9, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :cond_c
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 102
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 105
    iget p1, p0, Lcom/serenegiant/widget/FrameView;->mFrameWidth:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 106
    iget-object p3, p0, Lcom/serenegiant/widget/FrameView;->mBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/serenegiant/widget/FrameView;->getPaddingLeft()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p4, p1

    invoke-virtual {p0}, Lcom/serenegiant/widget/FrameView;->getPaddingTop()I

    move-result p5

    int-to-float p5, p5

    add-float/2addr p5, p1

    .line 107
    invoke-virtual {p0}, Lcom/serenegiant/widget/FrameView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/serenegiant/widget/FrameView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/serenegiant/widget/FrameView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/serenegiant/widget/FrameView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, p1

    .line 106
    invoke-virtual {p3, p4, p5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    iget-object p1, p0, Lcom/serenegiant/widget/FrameView;->mBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/FrameView;->mCenterX:F

    .line 110
    iget-object p1, p0, Lcom/serenegiant/widget/FrameView;->mBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/FrameView;->mCenterY:F

    .line 111
    iget-object p1, p0, Lcom/serenegiant/widget/FrameView;->mBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/FrameView;->mWidth:F

    .line 112
    iget-object p1, p0, Lcom/serenegiant/widget/FrameView;->mBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/FrameView;->mHeight:F

    .line 113
    iget p3, p0, Lcom/serenegiant/widget/FrameView;->mWidth:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const p3, 0x3f666666    # 0.9f

    mul-float p1, p1, p3

    iput p1, p0, Lcom/serenegiant/widget/FrameView;->mRadius:F

    div-float p2, p1, p2

    .line 114
    iput p2, p0, Lcom/serenegiant/widget/FrameView;->mRadius2:F

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    .line 115
    iput p1, p0, Lcom/serenegiant/widget/FrameView;->mRadius4:F

    float-to-double p1, p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    .line 116
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    double-to-float p1, p1

    iput p1, p0, Lcom/serenegiant/widget/FrameView;->mRadiusQ:F

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 97
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setFrameColor(I)V
    .locals 2

    .line 275
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mFrameColor:I

    if-eq v0, p1, :cond_1

    .line 276
    iget v1, p0, Lcom/serenegiant/widget/FrameView;->mScaleColor:I

    if-ne v0, v1, :cond_0

    .line 277
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/FrameView;->setScaleColor(I)V

    .line 279
    :cond_0
    iput p1, p0, Lcom/serenegiant/widget/FrameView;->mFrameColor:I

    .line 280
    invoke-virtual {p0}, Lcom/serenegiant/widget/FrameView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setFrameType(I)V
    .locals 1

    .line 255
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mFrameType:I

    if-eq v0, p1, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    .line 256
    iput p1, p0, Lcom/serenegiant/widget/FrameView;->mFrameType:I

    .line 257
    invoke-virtual {p0}, Lcom/serenegiant/widget/FrameView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setFrameWidth(F)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/4 p1, 0x0

    .line 299
    :cond_0
    iget v1, p0, Lcom/serenegiant/widget/FrameView;->mFrameWidth:F

    cmpl-float v2, v1, p1

    if-eqz v2, :cond_2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 300
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mScaleWidth:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    .line 301
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/FrameView;->setScaleWidth(F)V

    .line 303
    :cond_1
    iput p1, p0, Lcom/serenegiant/widget/FrameView;->mFrameWidth:F

    .line 304
    invoke-virtual {p0}, Lcom/serenegiant/widget/FrameView;->postInvalidate()V

    :cond_2
    return-void
.end method

.method public setRotation(F)V
    .locals 2

    :goto_0
    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_0
    :goto_1
    const/high16 v1, -0x3c4c0000    # -360.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    add-float/2addr p1, v0

    goto :goto_1

    .line 405
    :cond_1
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mRotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 406
    iput p1, p0, Lcom/serenegiant/widget/FrameView;->mRotation:F

    .line 407
    invoke-virtual {p0}, Lcom/serenegiant/widget/FrameView;->postInvalidate()V

    :cond_2
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 424
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 425
    iput p1, p0, Lcom/serenegiant/widget/FrameView;->mScale:F

    .line 426
    invoke-virtual {p0}, Lcom/serenegiant/widget/FrameView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setScaleColor(I)V
    .locals 2

    .line 322
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mScaleColor:I

    if-eq v0, p1, :cond_1

    .line 323
    iget v1, p0, Lcom/serenegiant/widget/FrameView;->mTickColor:I

    if-ne v0, v1, :cond_0

    .line 324
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/FrameView;->setTickColor(I)V

    .line 326
    :cond_0
    iput p1, p0, Lcom/serenegiant/widget/FrameView;->mScaleColor:I

    .line 327
    invoke-virtual {p0}, Lcom/serenegiant/widget/FrameView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setScaleType(I)V
    .locals 1

    .line 344
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mScaleType:I

    if-eq v0, p1, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 345
    iput p1, p0, Lcom/serenegiant/widget/FrameView;->mScaleType:I

    .line 346
    invoke-virtual {p0}, Lcom/serenegiant/widget/FrameView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setScaleWidth(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    .line 364
    :cond_0
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mScaleWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 365
    iput p1, p0, Lcom/serenegiant/widget/FrameView;->mScaleWidth:F

    .line 366
    invoke-virtual {p0}, Lcom/serenegiant/widget/FrameView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setTickColor(I)V
    .locals 1

    .line 383
    iget v0, p0, Lcom/serenegiant/widget/FrameView;->mTickColor:I

    if-eq v0, p1, :cond_0

    .line 384
    iput p1, p0, Lcom/serenegiant/widget/FrameView;->mTickColor:I

    .line 385
    invoke-virtual {p0}, Lcom/serenegiant/widget/FrameView;->postInvalidate()V

    :cond_0
    return-void
.end method
