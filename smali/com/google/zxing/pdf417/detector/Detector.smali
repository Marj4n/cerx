.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_AVG_VARIANCE:I = 0x6b

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xcc

.field private static final SKEW_THRESHOLD:I = 0x2

.field private static final START_PATTERN:[I

.field private static final START_PATTERN_REVERSE:[I

.field private static final STOP_PATTERN:[I

.field private static final STOP_PATTERN_REVERSE:[I


# instance fields
.field private final image:Lcom/google/zxing/BinaryBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x1
        0x3
        0x1
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/BinaryBitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/pdf417/detector/Detector;->image:Lcom/google/zxing/BinaryBitmap;

    return-void
.end method

.method private static computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p0

    div-float/2addr p0, p4

    invoke-static {p0}, Lcom/google/zxing/pdf417/detector/Detector;->round(F)I

    move-result p0

    invoke-static {p2, p3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p1

    div-float/2addr p1, p4

    invoke-static {p1}, Lcom/google/zxing/pdf417/detector/Detector;->round(F)I

    move-result p1

    add-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 p0, p0, 0x8

    div-int/lit8 p0, p0, 0x11

    mul-int/lit8 p0, p0, 0x11

    return p0
.end method

.method private static computeModuleWidth([Lcom/google/zxing/ResultPoint;)F
    .locals 4

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x4

    aget-object v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x5

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x42080000    # 34.0f

    div-float/2addr v0, v1

    const/4 v1, 0x6

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v1, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    const/4 v2, 0x7

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-static {v2, p0}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p0

    add-float/2addr v1, p0

    const/high16 p0, 0x42100000    # 36.0f

    div-float/2addr v1, p0

    add-float/2addr v0, v1

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method

.method private static correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V
    .locals 7

    const/4 v0, 0x4

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    const/4 v2, 0x6

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    if-eqz p1, :cond_0

    neg-float v1, v1

    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v4, v1, v3

    if-lez v4, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    const/4 v4, 0x0

    aget-object v5, p0, v4

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    sub-float/2addr v1, v5

    aget-object v5, p0, v2

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    aget-object v6, p0, v4

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    sub-float/2addr v2, v4

    mul-float v1, v1, v2

    div-float/2addr v1, v5

    new-instance v2, Lcom/google/zxing/ResultPoint;

    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    add-float/2addr v5, v1

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, p0, v0

    goto :goto_0

    :cond_1
    neg-float v1, v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    const/4 v1, 0x2

    aget-object v4, p0, v1

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    aget-object v5, p0, v2

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    aget-object v5, p0, v1

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    aget-object v6, p0, v0

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    sub-float/2addr v1, v0

    mul-float v4, v4, v1

    div-float/2addr v4, v5

    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget-object v1, p0, v2

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    aget-object v5, p0, v2

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    sub-float/2addr v5, v4

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, p0, v2

    :cond_2
    :goto_0
    const/4 v0, 0x7

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    const/4 v2, 0x5

    aget-object v4, p0, v2

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    sub-float/2addr v1, v4

    if-eqz p1, :cond_3

    neg-float v1, v1

    :cond_3
    cmpl-float p1, v1, v3

    if-lez p1, :cond_4

    aget-object p1, p0, v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result p1

    const/4 v1, 0x1

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    sub-float/2addr p1, v3

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    aget-object v4, p0, v1

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float p1, p1, v0

    div-float/2addr p1, v3

    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget-object v1, p0, v2

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    add-float/2addr v3, p1

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, p0, v2

    goto :goto_1

    :cond_4
    neg-float p1, v1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_5

    const/4 p1, 0x3

    aget-object v1, p0, p1

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    aget-object v3, p0, p1

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    aget-object v4, p0, v2

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    aget-object p1, p0, p1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    sub-float/2addr p1, v2

    mul-float v1, v1, p1

    div-float/2addr v1, v3

    new-instance p1, Lcom/google/zxing/ResultPoint;

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    sub-float/2addr v3, v1

    invoke-direct {p1, v2, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p1, p0, v0

    :cond_5
    :goto_1
    return-void
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I
    .locals 15

    move-object/from16 v0, p5

    array-length v1, v0

    new-array v2, v1, [I

    const/4 v3, 0x0

    move/from16 v5, p1

    move v7, v5

    move/from16 v4, p4

    const/4 v6, 0x0

    :goto_0
    add-int v8, p1, p3

    if-ge v5, v8, :cond_4

    move-object v8, p0

    move/from16 v9, p2

    invoke-virtual {p0, v5, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    xor-int/2addr v10, v4

    const/4 v11, 0x1

    if-eqz v10, :cond_0

    aget v10, v2, v6

    add-int/2addr v10, v11

    aput v10, v2, v6

    goto :goto_3

    :cond_0
    add-int/lit8 v10, v1, -0x1

    if-ne v6, v10, :cond_3

    const/16 v12, 0xcc

    invoke-static {v2, v0, v12}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[II)I

    move-result v12

    const/16 v13, 0x6b

    const/4 v14, 0x2

    if-ge v12, v13, :cond_1

    new-array v0, v14, [I

    aput v7, v0, v3

    aput v5, v0, v11

    return-object v0

    :cond_1
    aget v12, v2, v3

    aget v13, v2, v11

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    :goto_1
    if-ge v14, v1, :cond_2

    add-int/lit8 v12, v14, -0x2

    aget v13, v2, v14

    aput v13, v2, v12

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v12, v1, -0x2

    aput v3, v2, v12

    aput v3, v2, v10

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    :goto_2
    aput v11, v2, v6

    xor-int/lit8 v4, v4, 0x1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findVertices(Lcom/google/zxing/common/BitMatrix;)[Lcom/google/zxing/ResultPoint;
    .locals 12

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    const/16 v1, 0x8

    new-array v8, v1, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x1

    if-ge v10, v0, :cond_1

    const/4 v2, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v1, p0

    move v3, v10

    move v4, v7

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/zxing/ResultPoint;

    aget v3, v1, v9

    int-to-float v3, v3

    int-to-float v4, v10

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v8, v9

    const/4 v2, 0x4

    new-instance v3, Lcom/google/zxing/ResultPoint;

    aget v1, v1, v11

    int-to-float v1, v1

    invoke-direct {v3, v1, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v8, v2

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    move v10, v1

    :goto_2
    if-lez v10, :cond_3

    const/4 v2, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v1, p0

    move v3, v10

    move v4, v7

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/google/zxing/ResultPoint;

    aget v3, v1, v9

    int-to-float v3, v3

    int-to-float v4, v10

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v8, v11

    const/4 v2, 0x5

    new-instance v3, Lcom/google/zxing/ResultPoint;

    aget v1, v1, v11

    int-to-float v1, v1

    invoke-direct {v3, v1, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v8, v2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_3
    if-eqz v1, :cond_7

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v0, :cond_6

    const/4 v2, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v1, p0

    move v3, v10

    move v4, v7

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    new-instance v3, Lcom/google/zxing/ResultPoint;

    aget v4, v1, v11

    int-to-float v4, v4

    int-to-float v5, v10

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v8, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/google/zxing/ResultPoint;

    aget v1, v1, v9

    int-to-float v1, v1

    invoke-direct {v3, v1, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v8, v2

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_5
    if-eqz v1, :cond_9

    sub-int/2addr v0, v11

    :goto_6
    if-lez v0, :cond_a

    const/4 v2, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v1, p0

    move v3, v0

    move v4, v7

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 p0, 0x3

    new-instance v2, Lcom/google/zxing/ResultPoint;

    aget v3, v1, v11

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-direct {v2, v3, v0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v8, p0

    const/4 p0, 0x7

    new-instance v2, Lcom/google/zxing/ResultPoint;

    aget v1, v1, v9

    int-to-float v1, v1

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v8, p0

    const/4 v9, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_9
    move v9, v1

    :cond_a
    :goto_7
    if-eqz v9, :cond_b

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    :goto_8
    return-object v8
.end method

.method private static findVertices180(Lcom/google/zxing/common/BitMatrix;)[Lcom/google/zxing/ResultPoint;
    .locals 13

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    const/16 v3, 0x8

    new-array v9, v3, [Lcom/google/zxing/ResultPoint;

    add-int/lit8 v10, v0, -0x1

    move v11, v10

    :goto_0
    const/4 v12, 0x0

    if-lez v11, :cond_1

    const/4 v7, 0x1

    sget-object v8, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    move-object v3, p0

    move v4, v1

    move v5, v11

    move v6, v1

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v3, v2

    int-to-float v5, v5

    int-to-float v6, v11

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v9, v12

    const/4 v4, 0x4

    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget v3, v3, v12

    int-to-float v3, v3

    invoke-direct {v5, v3, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v9, v4

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v0, :cond_3

    const/4 v7, 0x1

    sget-object v8, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    move-object v3, p0

    move v4, v1

    move v5, v11

    move v6, v1

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, v3, v2

    int-to-float v5, v5

    int-to-float v6, v11

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v9, v2

    const/4 v4, 0x5

    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget v3, v3, v12

    int-to-float v3, v3

    invoke-direct {v5, v3, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v9, v4

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_3
    if-eqz v3, :cond_7

    :goto_4
    if-lez v10, :cond_6

    const/4 v4, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    move-object v3, p0

    move v5, v10

    move v6, v1

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v4, 0x2

    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget v6, v3, v12

    int-to-float v6, v6

    int-to-float v7, v10

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v9, v4

    const/4 v4, 0x6

    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget v3, v3, v2

    int-to-float v3, v3

    invoke-direct {v5, v3, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v9, v4

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_5
    if-eqz v3, :cond_a

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v0, :cond_9

    const/4 v4, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    move-object v3, p0

    move v5, v10

    move v6, v1

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I)[I

    move-result-object v3

    if-eqz v3, :cond_8

    const/4 p0, 0x3

    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v1, v3, v12

    int-to-float v1, v1

    int-to-float v4, v10

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v9, p0

    const/4 p0, 0x7

    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v1, v3, v2

    int-to-float v1, v1

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v9, p0

    goto :goto_7

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    goto :goto_7

    :cond_a
    move v2, v3

    :goto_7
    if-eqz v2, :cond_b

    goto :goto_8

    :cond_b
    const/4 v9, 0x0

    :goto_8
    return-object v9
.end method

.method private static patternMatchVariance([I[II)I
    .locals 8

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v5, p0, v2

    add-int/2addr v3, v5

    aget v5, p1, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7fffffff

    if-ge v3, v4, :cond_1

    return v2

    :cond_1
    shl-int/lit8 v5, v3, 0x8

    div-int/2addr v5, v4

    mul-int p2, p2, v5

    shr-int/lit8 p2, p2, 0x8

    const/4 v4, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    aget v6, p0, v1

    shl-int/lit8 v6, v6, 0x8

    aget v7, p1, v1

    mul-int v7, v7, v5

    if-le v6, v7, :cond_2

    sub-int/2addr v6, v7

    goto :goto_2

    :cond_2
    sub-int v6, v7, v6

    :goto_2
    if-le v6, p2, :cond_3

    return v2

    :cond_3
    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    div-int/2addr v4, v3

    return v4
.end method

.method private static round(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/BitMatrix;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v3, p5

    move/from16 v2, p5

    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v0

    move/from16 v4, p5

    int-to-float v6, v4

    move v8, v6

    move v9, v6

    move v11, v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v19}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/detector/Detector;->detect(Ljava/util/Hashtable;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public detect(Ljava/util/Hashtable;)Lcom/google/zxing/common/DetectorResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/zxing/pdf417/detector/Detector;->image:Lcom/google/zxing/BinaryBitmap;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices(Lcom/google/zxing/common/BitMatrix;)[Lcom/google/zxing/ResultPoint;

    move-result-object p1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_0

    invoke-static {v0}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices180(Lcom/google/zxing/common/BitMatrix;)[Lcom/google/zxing/ResultPoint;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1, v7}, Lcom/google/zxing/pdf417/detector/Detector;->correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v6}, Lcom/google/zxing/pdf417/detector/Detector;->correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/google/zxing/pdf417/detector/Detector;->computeModuleWidth([Lcom/google/zxing/ResultPoint;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_3

    const/4 v8, 0x4

    aget-object v2, p1, v8

    const/4 v9, 0x6

    aget-object v3, p1, v9

    const/4 v10, 0x5

    aget-object v4, p1, v10

    const/4 v11, 0x7

    aget-object v5, p1, v11

    invoke-static {v2, v3, v4, v5, v1}, Lcom/google/zxing/pdf417/detector/Detector;->computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v5

    if-lt v5, v7, :cond_2

    aget-object v1, p1, v8

    aget-object v2, p1, v10

    aget-object v3, p1, v9

    aget-object v4, p1, v11

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    new-instance v1, Lcom/google/zxing/common/DetectorResult;

    new-array v2, v8, [Lcom/google/zxing/ResultPoint;

    aget-object v3, p1, v8

    aput-object v3, v2, v6

    aget-object v3, p1, v10

    aput-object v3, v2, v7

    const/4 v3, 0x2

    aget-object v4, p1, v9

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aget-object p1, p1, v11

    aput-object p1, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v1

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method
