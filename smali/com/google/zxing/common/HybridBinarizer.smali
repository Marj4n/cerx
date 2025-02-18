.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/common/GlobalHistogramBinarizer;


# static fields
.field private static final MINIMUM_DIMENSION:I = 0x28


# instance fields
.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method private binarizeEntireImage()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/zxing/common/HybridBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v1

    const/16 v2, 0x28

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v1

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v7

    shr-int/lit8 v0, v6, 0x3

    and-int/lit8 v1, v6, 0x7

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    move v4, v0

    shr-int/lit8 v0, v7, 0x3

    and-int/lit8 v1, v7, 0x7

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v5, v0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/google/zxing/common/HybridBinarizer;->calculateBlackPoints([BIIII)[[I

    move-result-object v8

    new-instance v9, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v9, v6, v7}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    iput-object v9, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    invoke-static/range {v3 .. v9}, Lcom/google/zxing/common/HybridBinarizer;->calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    :cond_3
    :goto_0
    return-void
.end method

.method private static calculateBlackPoints([BIIII)[[I
    .locals 18

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v0, v4, v5

    const/4 v6, 0x0

    aput v1, v4, v6

    const-class v7, I

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_9

    shl-int/lit8 v8, v7, 0x3

    add-int/lit8 v9, v8, 0x8

    if-lt v9, v3, :cond_0

    add-int/lit8 v8, v3, -0x8

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v0, :cond_8

    shl-int/lit8 v10, v9, 0x3

    add-int/lit8 v11, v10, 0x8

    if-lt v11, v2, :cond_1

    add-int/lit8 v10, v2, -0x8

    :cond_1
    const/16 v11, 0xff

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xff

    const/4 v15, 0x0

    :goto_2
    const/16 v5, 0x8

    if-ge v12, v5, :cond_5

    add-int v16, v8, v12

    mul-int v16, v16, v2

    add-int v16, v16, v10

    :goto_3
    if-ge v6, v5, :cond_4

    add-int v17, v16, v6

    aget-byte v5, p0, v17

    and-int/2addr v5, v11

    add-int/2addr v15, v5

    if-ge v5, v14, :cond_2

    move v14, v5

    :cond_2
    if-le v5, v13, :cond_3

    move v13, v5

    :cond_3
    add-int/lit8 v6, v6, 0x1

    const/16 v5, 0x8

    goto :goto_3

    :cond_4
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    sub-int v5, v13, v14

    const/16 v6, 0x18

    if-le v5, v6, :cond_6

    shr-int/lit8 v5, v15, 0x6

    goto :goto_4

    :cond_6
    if-nez v13, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    shr-int/lit8 v5, v14, 0x1

    :goto_4
    aget-object v6, v4, v7

    aput v5, v6, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_1

    :cond_8
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_9
    return-object v4
.end method

.method private static calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v8, p3

    move/from16 v9, p4

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v1, :cond_8

    shl-int/lit8 v2, v11, 0x3

    add-int/lit8 v3, v2, 0x8

    if-lt v3, v9, :cond_0

    add-int/lit8 v2, v9, -0x8

    :cond_0
    move v12, v2

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v0, :cond_7

    shl-int/lit8 v2, v13, 0x3

    add-int/lit8 v3, v2, 0x8

    if-lt v3, v8, :cond_1

    add-int/lit8 v2, v8, -0x8

    :cond_1
    move v3, v2

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-le v13, v4, :cond_2

    move v5, v13

    goto :goto_2

    :cond_2
    const/4 v5, 0x2

    :goto_2
    add-int/lit8 v6, v0, -0x2

    if-ge v5, v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v0, -0x3

    :goto_3
    if-le v11, v4, :cond_4

    move v4, v11

    goto :goto_4

    :cond_4
    const/4 v4, 0x2

    :goto_4
    add-int/lit8 v6, v1, -0x2

    if-ge v4, v6, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v1, -0x3

    :goto_5
    const/4 v6, -0x2

    const/4 v7, 0x0

    :goto_6
    if-gt v6, v2, :cond_6

    add-int v14, v4, v6

    aget-object v14, p5, v14

    add-int/lit8 v15, v5, -0x2

    aget v15, v14, v15

    add-int/2addr v7, v15

    add-int/lit8 v15, v5, -0x1

    aget v15, v14, v15

    add-int/2addr v7, v15

    aget v15, v14, v5

    add-int/2addr v7, v15

    add-int/lit8 v15, v5, 0x1

    aget v15, v14, v15

    add-int/2addr v7, v15

    add-int/lit8 v15, v5, 0x2

    aget v14, v14, v15

    add-int/2addr v7, v14

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    div-int/lit8 v5, v7, 0x19

    move-object/from16 v2, p0

    move v4, v12

    move/from16 v6, p3

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/google/zxing/common/HybridBinarizer;->threshold8x8Block([BIIIILcom/google/zxing/common/BitMatrix;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method private static threshold8x8Block([BIIIILcom/google/zxing/common/BitMatrix;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    add-int v3, p2, v1

    mul-int v4, v3, p4

    add-int/2addr v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    add-int v6, v4, v5

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    if-ge v6, p3, :cond_0

    add-int v6, p1, v5

    invoke-virtual {p5, v6, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .locals 1

    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/zxing/common/HybridBinarizer;->binarizeEntireImage()V

    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method
