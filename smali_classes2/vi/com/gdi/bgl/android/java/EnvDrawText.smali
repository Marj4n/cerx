.class public Lvi/com/gdi/bgl/android/java/EnvDrawText;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field public static bBmpChange:Z

.field public static bmp:Landroid/graphics/Bitmap;

.field public static buffer:[I

.field public static canvasTemp:Landroid/graphics/Canvas;

.field public static fontCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lvi/com/gdi/bgl/android/java/a;",
            ">;"
        }
    .end annotation
.end field

.field public static iWordHightMax:I

.field public static iWordWidthMax:I

.field public static pt:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    const/4 v1, 0x0

    sput v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    sput v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    sput-boolean v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bBmpChange:Z

    sput-object v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    sput-object v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    sput-object v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;->buffer:[I

    sput-object v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized drawText(Ljava/lang/String;II[IIIII)[I
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    const-class v5, Lvi/com/gdi/bgl/android/java/EnvDrawText;

    monitor-enter v5

    :try_start_0
    sget-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    if-nez v6, :cond_0

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    sput-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    sget-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    :goto_0
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getPhoneType()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    const-string v8, "vivo X3L"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move/from16 v6, p2

    :goto_1
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v10, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v10

    sget-object v11, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3

    :cond_2
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v10, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v10

    sget-object v11, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    goto :goto_2

    :cond_3
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v10, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v10

    sget-object v11, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    goto :goto_2

    :goto_3
    sget-object v10, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    sget-object v10, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eqz v6, :cond_4

    sget-object v10, Lvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    if-eqz v10, :cond_4

    sget-object v10, Lvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvi/com/gdi/bgl/android/java/a;

    if-eqz v6, :cond_4

    sget-object v10, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    iget-object v6, v6, Lvi/com/gdi/bgl/android/java/a;->a:Landroid/graphics/Typeface;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_4
    sget-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    move/from16 v10, p1

    int-to-float v10, v10

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    const/16 v6, 0x5c

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    const/4 v11, -0x1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    if-ne v10, v11, :cond_c

    sget-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    sget-object v10, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v10, v10

    iget v11, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v15, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v11, v15

    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v11, v14

    aput v10, p3, v7

    aput v11, p3, v9

    int-to-double v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v10, v14

    int-to-double v14, v10

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-int v10, v14

    int-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v11, v14

    int-to-double v14, v11

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-int v11, v11

    sget v12, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    if-lt v12, v10, :cond_5

    sget v12, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    if-ge v12, v11, :cond_6

    :cond_5
    sput-boolean v9, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bBmpChange:Z

    sput v10, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    sput v11, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    :cond_6
    sget v10, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    aput v10, p3, v8

    sget v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    const/4 v10, 0x3

    aput v8, p3, v10

    sget-boolean v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bBmpChange:Z

    if-ne v8, v9, :cond_9

    sget-object v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_7

    sget-object v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_7

    sget-object v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    sget v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    sget v10, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    sput-object v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    sget-object v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    if-nez v8, :cond_8

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    sput-object v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    :cond_8
    sget-object v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    sget-object v10, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_9
    sget-object v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :goto_4
    const/high16 v8, -0x1000000

    and-int/2addr v8, v3

    if-nez v8, :cond_a

    sget-object v3, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    const v8, 0x1ffffff

    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_5

    :cond_a
    sget-object v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    invoke-virtual {v8, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_5
    const/4 v3, 0x0

    if-eqz v4, :cond_b

    sget-object v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    iget v4, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v4, v3, v4

    sget-object v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_b
    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    iget v2, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v2, v3, v2

    sget-object v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    :cond_c
    add-int/lit8 v11, v10, 0x1

    sget-object v14, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v10, v10

    const/4 v14, 0x2

    :goto_6
    invoke-virtual {v0, v6, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    if-lez v15, :cond_e

    sget-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v0, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    if-le v6, v10, :cond_d

    move v10, v6

    :cond_d
    add-int/lit8 v11, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    const/16 v6, 0x5c

    goto :goto_6

    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v11, v6, :cond_f

    sget-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v0, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    if-le v6, v10, :cond_f

    move v10, v6

    :cond_f
    sget-object v6, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v11, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v15, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v11, v15

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    mul-int v14, v14, v11

    aput v10, p3, v7

    aput v14, p3, v9

    int-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->log(D)D

    move-result-wide v17

    div-double v12, v12, v17

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v10, v12

    int-to-double v12, v10

    move-wide/from16 v7, v19

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v12, v12

    int-to-double v13, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v17

    div-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    int-to-double v13, v13

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v7, v7

    sget v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    if-lt v8, v12, :cond_10

    sget v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    if-ge v8, v7, :cond_11

    :cond_10
    sput-boolean v9, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bBmpChange:Z

    sput v12, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    sput v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    :cond_11
    sget v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    const/4 v8, 0x2

    aput v7, p3, v8

    sget v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    const/4 v8, 0x3

    aput v7, p3, v8

    sget-boolean v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bBmpChange:Z

    if-ne v7, v9, :cond_14

    sget-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_12

    sget-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_12

    sget-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    sget v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    sget v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    sput-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    sget-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    if-nez v7, :cond_13

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7}, Landroid/graphics/Canvas;-><init>()V

    sput-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    :cond_13
    sget-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    sget-object v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_7

    :cond_14
    sget-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :goto_7
    const/high16 v7, -0x1000000

    and-int/2addr v7, v3

    if-nez v7, :cond_15

    sget-object v3, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    const v7, 0x1ffffff

    invoke-virtual {v3, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_8

    :cond_15
    sget-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    invoke-virtual {v7, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_8
    const/4 v3, 0x0

    const/16 v7, 0x5c

    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    if-lez v12, :cond_17

    invoke-virtual {v0, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v13, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v13, v13

    add-int/lit8 v12, v12, 0x1

    if-eqz v4, :cond_16

    sget-object v14, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    int-to-float v7, v4

    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    const/4 v10, 0x0

    aget v14, p3, v10

    sub-int/2addr v14, v13

    const/4 v15, 0x2

    div-int/2addr v14, v15

    int-to-float v14, v14

    mul-int v10, v8, v11

    int-to-float v10, v10

    iget v15, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v10, v15

    sget-object v15, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v14, v10, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_16
    sget-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    const/4 v10, 0x0

    aget v14, p3, v10

    sub-int/2addr v14, v13

    const/4 v13, 0x2

    div-int/2addr v14, v13

    int-to-float v13, v14

    mul-int v14, v8, v11

    int-to-float v14, v14

    iget v10, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v14, v10

    sget-object v10, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v13, v14, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    move v3, v12

    const/16 v7, 0x5c

    goto :goto_9

    :cond_17
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v3, v7, :cond_19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    if-eqz v4, :cond_18

    sget-object v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    int-to-float v4, v4

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    aget v7, p3, v4

    sub-int/2addr v7, v3

    const/4 v4, 0x2

    div-int/2addr v7, v4

    int-to-float v4, v7

    mul-int v7, v8, v11

    int-to-float v7, v7

    iget v12, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v7, v12

    sget-object v12, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v4, v7, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_18
    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->canvasTemp:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    aget v4, p3, v2

    sub-int/2addr v4, v3

    const/4 v2, 0x2

    div-int/2addr v4, v2

    int-to-float v2, v4

    mul-int v8, v8, v11

    int-to-float v3, v8

    iget v4, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    sget-object v4, Lvi/com/gdi/bgl/android/java/EnvDrawText;->pt:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_19
    :goto_a
    sget v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    sget v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    mul-int v0, v0, v1

    sget-boolean v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bBmpChange:Z

    if-ne v1, v9, :cond_1a

    new-array v0, v0, [I

    sput-object v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;->buffer:[I

    :cond_1a
    sget-object v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->buffer:[I

    const/4 v2, 0x0

    sget v3, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    sget v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordWidthMax:I

    sget v8, Lvi/com/gdi/bgl/android/java/EnvDrawText;->iWordHightMax:I

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    invoke-virtual/range {p0 .. p7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    sput-boolean v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;->bBmpChange:Z

    sget-object v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;->buffer:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public static getTextSize(Ljava/lang/String;II)[S
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p1, 0x0

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {p2, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-array p2, v0, [S

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    int-to-short v4, v4

    aput-short v4, p2, v2

    move v2, v3

    goto :goto_1

    :cond_2
    return-object p2
.end method

.method public static declared-synchronized registFontCache(ILandroid/graphics/Typeface;)V
    .locals 2

    const-class v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;

    monitor-enter v0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    :cond_1
    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvi/com/gdi/bgl/android/java/a;

    if-nez v1, :cond_2

    new-instance v1, Lvi/com/gdi/bgl/android/java/a;

    invoke-direct {v1}, Lvi/com/gdi/bgl/android/java/a;-><init>()V

    iput-object p1, v1, Lvi/com/gdi/bgl/android/java/a;->a:Landroid/graphics/Typeface;

    iget p1, v1, Lvi/com/gdi/bgl/android/java/a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lvi/com/gdi/bgl/android/java/a;->b:I

    sget-object p1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {p1, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget p0, v1, Lvi/com/gdi/bgl/android/java/a;->b:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lvi/com/gdi/bgl/android/java/a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3
    :goto_1
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized removeFontCache(I)V
    .locals 3

    const-class v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvi/com/gdi/bgl/android/java/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget v2, v1, Lvi/com/gdi/bgl/android/java/a;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lvi/com/gdi/bgl/android/java/a;->b:I

    iget v1, v1, Lvi/com/gdi/bgl/android/java/a;->b:I

    if-nez v1, :cond_1

    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
