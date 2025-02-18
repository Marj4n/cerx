.class public final Lcom/google/zxing/aztec/detector/Detector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/detector/Detector$Point;
    }
.end annotation


# instance fields
.field private compact:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private nbCenterLayers:I

.field private nbDataBlocks:I

.field private nbLayers:I

.field private shift:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method private static correctParameterData([ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    const/4 v1, 0x4

    :goto_0
    sub-int v2, p1, v1

    new-array v3, p1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ge v5, p1, :cond_3

    const/4 v7, 0x1

    :goto_2
    if-gt v6, v0, :cond_2

    mul-int v8, v0, v5

    add-int/2addr v8, v0

    sub-int/2addr v8, v6

    aget-boolean v8, p0, v8

    if-eqz v8, :cond_1

    aget v8, v3, v5

    add-int/2addr v8, v7

    aput v8, v3, v5

    :cond_1
    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :try_start_0
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {p1, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {p1, v3, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    :goto_3
    if-ge p1, v1, :cond_6

    const/4 v2, 0x1

    const/4 v5, 0x1

    :goto_4
    if-gt v2, v0, :cond_5

    mul-int/lit8 v7, p1, 0x4

    add-int/2addr v7, v0

    sub-int/2addr v7, v2

    aget v8, v3, p1

    and-int/2addr v8, v5

    if-ne v8, v5, :cond_4

    const/4 v8, 0x1

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    :goto_5
    aput-boolean v8, p0, v7

    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    return-void

    :catch_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
    .locals 3

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget v1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget v2, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int/2addr v1, v2

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    iget v2, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr v1, v2

    iget p0, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    iget p1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr p0, p1

    mul-int v1, v1, p0

    add-int/2addr v0, v1

    int-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private extractParameters([Lcom/google/zxing/aztec/detector/Detector$Point;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v3, p1, v2

    iget v4, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    invoke-direct {p0, v1, v3, v4}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z

    move-result-object v1

    aget-object v3, p1, v2

    aget-object v4, p1, v5

    iget v6, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    invoke-direct {p0, v3, v4, v6}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z

    move-result-object v3

    aget-object v4, p1, v5

    const/4 v6, 0x3

    aget-object v7, p1, v6

    iget v8, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    invoke-direct {p0, v4, v7, v8}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z

    move-result-object v4

    aget-object v7, p1, v6

    aget-object p1, p1, v0

    iget v8, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    invoke-direct {p0, v7, p1, v8}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z

    move-result-object p1

    aget-boolean v7, v1, v0

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v7, v7, 0x2

    aget-boolean v7, v1, v7

    if-eqz v7, :cond_0

    iput v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    goto :goto_0

    :cond_0
    aget-boolean v7, v3, v0

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v7, v7, 0x2

    aget-boolean v7, v3, v7

    if-eqz v7, :cond_1

    iput v2, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    goto :goto_0

    :cond_1
    aget-boolean v7, v4, v0

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v7, v7, 0x2

    aget-boolean v7, v4, v7

    if-eqz v7, :cond_2

    iput v5, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    goto :goto_0

    :cond_2
    aget-boolean v7, p1, v0

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v7, v7, 0x2

    aget-boolean v5, p1, v7

    if-eqz v5, :cond_9

    iput v6, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    :goto_0
    iget-boolean v5, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v5, :cond_4

    const/16 v2, 0x1c

    new-array v5, v2, [Z

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x7

    if-ge v6, v7, :cond_3

    add-int/lit8 v7, v6, 0x2

    aget-boolean v8, v1, v7

    aput-boolean v8, v5, v6

    add-int/lit8 v8, v6, 0x7

    aget-boolean v9, v3, v7

    aput-boolean v9, v5, v8

    add-int/lit8 v8, v6, 0xe

    aget-boolean v9, v4, v7

    aput-boolean v9, v5, v8

    add-int/lit8 v8, v6, 0x15

    aget-boolean v7, p1, v7

    aput-boolean v7, v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    new-array p1, v2, [Z

    :goto_2
    if-ge v0, v2, :cond_8

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v0

    rem-int/2addr v1, v2

    aget-boolean v1, v5, v1

    aput-boolean v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/16 v5, 0x28

    new-array v6, v5, [Z

    const/4 v7, 0x0

    :goto_3
    const/16 v8, 0xb

    if-ge v7, v8, :cond_7

    const/4 v8, 0x5

    if-ge v7, v8, :cond_5

    add-int/lit8 v9, v7, 0x2

    aget-boolean v10, v1, v9

    aput-boolean v10, v6, v7

    add-int/lit8 v10, v7, 0xa

    aget-boolean v11, v3, v9

    aput-boolean v11, v6, v10

    add-int/lit8 v10, v7, 0x14

    aget-boolean v11, v4, v9

    aput-boolean v11, v6, v10

    add-int/lit8 v10, v7, 0x1e

    aget-boolean v9, p1, v9

    aput-boolean v9, v6, v10

    :cond_5
    if-le v7, v8, :cond_6

    add-int/lit8 v8, v7, -0x1

    add-int/lit8 v9, v7, 0x2

    aget-boolean v10, v1, v9

    aput-boolean v10, v6, v8

    add-int/lit8 v8, v7, 0xa

    sub-int/2addr v8, v2

    aget-boolean v10, v3, v9

    aput-boolean v10, v6, v8

    add-int/lit8 v8, v7, 0x14

    sub-int/2addr v8, v2

    aget-boolean v10, v4, v9

    aput-boolean v10, v6, v8

    add-int/lit8 v8, v7, 0x1e

    sub-int/2addr v8, v2

    aget-boolean v9, p1, v9

    aput-boolean v9, v6, v8

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    new-array p1, v5, [Z

    :goto_4
    if-ge v0, v5, :cond_8

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    rem-int/2addr v1, v5

    aget-boolean v1, v6, v1

    aput-boolean v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    invoke-static {p1, v0}, Lcom/google/zxing/aztec/detector/Detector;->correctParameterData([ZZ)V

    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/detector/Detector;->getParameters([Z)V

    return-void

    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private getBullEyeCornerPoints(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move-object/from16 v2, p1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    const/4 v6, 0x1

    :goto_0
    iget v7, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/16 v8, 0x9

    const/4 v9, 0x2

    if-ge v7, v8, :cond_1

    const/4 v7, -0x1

    invoke-direct {v0, v2, v6, v1, v7}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-direct {v0, v3, v6, v1, v1}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v10

    invoke-direct {v0, v4, v6, v7, v1}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v11

    invoke-direct {v0, v5, v6, v7, v7}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    iget v12, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    if-le v12, v9, :cond_0

    invoke-static {v7, v8}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v12

    iget v13, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v13, v13

    mul-float v12, v12, v13

    invoke-static {v5, v2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v13

    iget v14, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    add-int/2addr v14, v9

    int-to-float v14, v14

    mul-float v13, v13, v14

    div-float/2addr v12, v13

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe8000000000000L    # 0.75

    cmpg-double v16, v12, v14

    if-ltz v16, :cond_1

    const-wide/high16 v14, 0x3ff4000000000000L    # 1.25

    cmpl-double v16, v12, v14

    if-gtz v16, :cond_1

    invoke-direct {v0, v8, v10, v11, v7}, Lcom/google/zxing/aztec/detector/Detector;->isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_1

    :cond_0
    xor-int/lit8 v6, v6, 0x1

    iget v2, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move-object v5, v7

    move-object v2, v8

    move-object v3, v10

    move-object v4, v11

    goto :goto_0

    :cond_1
    :goto_1
    iget v6, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_3

    const/4 v8, 0x7

    if-ne v6, v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_3
    :goto_2
    iget v6, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v8, 0x0

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    iput-boolean v6, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    const/high16 v6, 0x3fc00000    # 1.5f

    iget v7, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v7, v7, 0x2

    const/4 v10, 0x3

    sub-int/2addr v7, v10

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, v2, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget v11, v4, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int/2addr v7, v11

    iget v11, v2, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    iget v12, v4, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr v11, v12

    iget v12, v4, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v12, v12

    int-to-float v7, v7

    mul-float v7, v7, v6

    sub-float/2addr v12, v7

    invoke-static {v12}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v12

    iget v4, v4, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v4, v4

    int-to-float v11, v11

    mul-float v11, v11, v6

    sub-float/2addr v4, v11

    invoke-static {v4}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v4

    iget v13, v2, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v13, v13

    add-float/2addr v13, v7

    invoke-static {v13}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v7

    iget v2, v2, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v2, v2

    add-float/2addr v2, v11

    invoke-static {v2}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v2

    iget v11, v3, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget v13, v5, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int/2addr v11, v13

    iget v13, v3, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    iget v14, v5, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr v13, v14

    iget v14, v5, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v14, v14

    int-to-float v11, v11

    mul-float v11, v11, v6

    sub-float/2addr v14, v11

    invoke-static {v14}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v14

    iget v5, v5, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v5, v5

    int-to-float v13, v13

    mul-float v6, v6, v13

    sub-float/2addr v5, v6

    invoke-static {v5}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v5

    iget v13, v3, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    invoke-static {v13}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v11

    iget v3, v3, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v3, v3

    add-float/2addr v3, v6

    invoke-static {v3}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v3

    invoke-direct {v0, v7, v2}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {v0, v11, v3}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {v0, v12, v4}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {v0, v14, v5}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Lcom/google/zxing/aztec/detector/Detector$Point;

    const/4 v13, 0x0

    invoke-direct {v6, v7, v2, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v2, v11, v3, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    new-instance v3, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v3, v12, v4, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    new-instance v4, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v4, v14, v5, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/aztec/detector/Detector$Point;

    aput-object v6, v5, v8

    aput-object v2, v5, v1

    aput-object v3, v5, v9

    aput-object v4, v5, v10

    return-object v5

    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
    .locals 10

    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v0

    iget v1, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget v2, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget p2, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    iget v2, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr p2, v2

    int-to-float p2, p2

    div-float/2addr p2, v0

    iget v2, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v5, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget p1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    invoke-virtual {v4, v5, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    int-to-float v7, v5

    cmpg-float v7, v7, v0

    if-gez v7, :cond_1

    add-float/2addr v2, v1

    add-float/2addr v3, p2

    iget-object v7, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static {v2}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v8

    invoke-static {v3}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eq v7, p1, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    int-to-float p2, v6

    div-float/2addr p2, v0

    float-to-double v0, p2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double p2, v0, v2

    if-lez p2, :cond_2

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    cmpg-double p2, v0, v5

    if-gez p2, :cond_2

    return v4

    :cond_2
    const/4 p2, -0x1

    const/4 v4, 0x1

    cmpg-double v5, v0, v2

    if-gtz v5, :cond_4

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    return p2

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p2, 0x1

    :goto_1
    return p2
.end method

.method private getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 2

    iget v0, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    add-int/2addr v0, p3

    iget p1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    :goto_0
    add-int/2addr p1, p4

    invoke-direct {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/2addr v0, p3

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p3

    sub-int/2addr p1, p4

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-ne v1, p2, :cond_1

    add-int/2addr v0, p3

    goto :goto_1

    :cond_1
    sub-int/2addr v0, p3

    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p3, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p3

    if-ne p3, p2, :cond_2

    add-int/2addr p1, p4

    goto :goto_2

    :cond_2
    sub-int/2addr p1, p4

    new-instance p2, Lcom/google/zxing/aztec/detector/Detector$Point;

    const/4 p3, 0x0

    invoke-direct {p2, v0, p1, p3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    return-object p2
.end method

.method private getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 13

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v7, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v7}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v6}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    aget-object v7, v6, v5

    aget-object v8, v6, v4

    aget-object v9, v6, v1

    aget-object v6, v6, v0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v6, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v6, v6, Lcom/google/zxing/common/BitMatrix;->width:I

    div-int/2addr v6, v1

    iget-object v7, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v7, v7, Lcom/google/zxing/common/BitMatrix;->height:I

    div-int/2addr v7, v1

    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v9, v6, 0x7

    add-int/lit8 v10, v7, -0x7

    invoke-direct {v8, v9, v10, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    invoke-direct {p0, v8, v5, v4, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v8

    new-instance v11, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v7, v7, 0x7

    invoke-direct {v11, v9, v7, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    invoke-direct {p0, v11, v5, v4, v4}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v9

    new-instance v11, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v6, v6, -0x7

    invoke-direct {v11, v6, v7, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    invoke-direct {p0, v11, v5, v2, v4}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v7

    new-instance v11, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v11, v6, v10, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    invoke-direct {p0, v11, v5, v2, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v6

    move-object v12, v9

    move-object v9, v7

    move-object v7, v8

    move-object v8, v12

    :goto_0
    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x40800000    # 4.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v10

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    add-float/2addr v7, v6

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    add-float/2addr v7, v6

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    add-float/2addr v7, v6

    div-float/2addr v7, v11

    invoke-static {v7}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v6

    :try_start_1
    new-instance v7, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    const/16 v9, 0xf

    invoke-direct {v7, v8, v9, v10, v6}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    invoke-virtual {v7}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v7

    aget-object v8, v7, v5

    aget-object v9, v7, v4

    aget-object v1, v7, v1

    aget-object v0, v7, v0
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-instance v0, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v1, v10, 0x7

    add-int/lit8 v7, v6, -0x7

    invoke-direct {v0, v1, v7, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    invoke-direct {p0, v0, v5, v4, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v8

    new-instance v0, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v6, v6, 0x7

    invoke-direct {v0, v1, v6, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    invoke-direct {p0, v0, v5, v4, v4}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v9

    new-instance v0, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v10, v10, -0x7

    invoke-direct {v0, v10, v6, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    invoke-direct {p0, v0, v5, v2, v4}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    new-instance v0, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v0, v10, v7, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    invoke-direct {p0, v0, v5, v2, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    :goto_1
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    add-float/2addr v2, v4

    div-float/2addr v2, v11

    invoke-static {v2}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v2

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    add-float/2addr v4, v0

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    add-float/2addr v4, v0

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    add-float/2addr v4, v0

    div-float/2addr v4, v11

    invoke-static {v4}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v0

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    return-object v1
.end method

.method private getMatrixCornerPoints([Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    iget v5, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    div-float/2addr v0, v5

    aget-object v1, p1, v3

    iget v1, v1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    const/4 v5, 0x2

    aget-object v6, p1, v5

    iget v6, v6, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int/2addr v1, v6

    const/4 v6, -0x1

    if-lez v1, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    add-int/2addr v1, v7

    aget-object v7, p1, v3

    iget v7, v7, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    aget-object v8, p1, v5

    iget v8, v8, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr v7, v8

    if-lez v7, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, -0x1

    :goto_2
    add-int/2addr v7, v8

    aget-object v8, p1, v5

    iget v8, v8, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v8, v8

    int-to-float v1, v1

    mul-float v1, v1, v0

    sub-float/2addr v8, v1

    invoke-static {v8}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v8

    aget-object v9, p1, v5

    iget v9, v9, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v9, v9

    int-to-float v7, v7

    mul-float v7, v7, v0

    sub-float/2addr v9, v7

    invoke-static {v9}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v9

    aget-object v10, p1, v3

    iget v10, v10, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v10, v10

    add-float/2addr v10, v1

    invoke-static {v10}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v1

    aget-object v10, p1, v3

    iget v10, v10, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v10, v10

    add-float/2addr v10, v7

    invoke-static {v10}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v7

    aget-object v10, p1, v4

    iget v10, v10, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    const/4 v11, 0x3

    aget-object v12, p1, v11

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int/2addr v10, v12

    if-lez v10, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, -0x1

    :goto_3
    add-int/2addr v10, v12

    aget-object v12, p1, v4

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    aget-object v13, p1, v11

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr v12, v13

    if-lez v12, :cond_4

    const/4 v6, 0x1

    :cond_4
    add-int/2addr v12, v6

    aget-object v6, p1, v11

    iget v6, v6, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v6, v6

    int-to-float v10, v10

    mul-float v10, v10, v0

    sub-float/2addr v6, v10

    invoke-static {v6}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v6

    aget-object v13, p1, v11

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v13, v13

    int-to-float v12, v12

    mul-float v0, v0, v12

    sub-float/2addr v13, v0

    invoke-static {v13}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v12

    aget-object v13, p1, v4

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v13, v13

    add-float/2addr v13, v10

    invoke-static {v13}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v10

    aget-object p1, p1, v4

    iget p1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-static {p1}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result p1

    invoke-direct {p0, v1, v7}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v10, p1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v8, v9}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v6, v12}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_5

    new-array v0, v2, [Lcom/google/zxing/ResultPoint;

    new-instance v2, Lcom/google/zxing/ResultPoint;

    int-to-float v1, v1

    int-to-float v7, v7

    invoke-direct {v2, v1, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v0, v3

    new-instance v1, Lcom/google/zxing/ResultPoint;

    int-to-float v2, v10

    int-to-float p1, p1

    invoke-direct {v1, v2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v1, v0, v4

    new-instance p1, Lcom/google/zxing/ResultPoint;

    int-to-float v1, v8

    int-to-float v2, v9

    invoke-direct {p1, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p1, v0, v5

    new-instance p1, Lcom/google/zxing/ResultPoint;

    int-to-float v1, v6

    int-to-float v2, v12

    invoke-direct {p1, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p1, v0, v11

    return-object v0

    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private getParameters([Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    const/16 v1, 0xb

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    shl-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    aget-boolean v4, p1, v2

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_2
    add-int v3, v0, v1

    if-ge v2, v3, :cond_4

    iget v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    shl-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    aget-boolean v4, p1, v2

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    iget p1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    return-void
.end method

.method private isValid(II)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v0, v0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget p1, p1, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z
    .locals 3

    new-instance v0, Lcom/google/zxing/aztec/detector/Detector$Point;

    iget v1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    add-int/lit8 v1, v1, -0x3

    iget p1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    add-int/lit8 p1, p1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    new-instance p1, Lcom/google/zxing/aztec/detector/Detector$Point;

    iget v1, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    add-int/lit8 v1, v1, -0x3

    iget p2, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    add-int/lit8 p2, p2, -0x3

    invoke-direct {p1, v1, p2, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    new-instance p2, Lcom/google/zxing/aztec/detector/Detector$Point;

    iget v1, p3, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    add-int/lit8 v1, v1, 0x3

    iget p3, p3, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    add-int/lit8 p3, p3, -0x3

    invoke-direct {p2, v1, p3, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    new-instance p3, Lcom/google/zxing/aztec/detector/Detector$Point;

    iget v1, p4, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    add-int/lit8 v1, v1, 0x3

    iget p4, p4, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    add-int/lit8 p4, p4, 0x3

    invoke-direct {p3, v1, p4, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    invoke-direct {p0, p3, v0}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result p4

    const/4 v1, 0x0

    if-nez p4, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v0

    if-ne v0, p4, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result p1

    if-ne p1, p4, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result p1

    if-ne p1, p4, :cond_3

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method private static round(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0xb

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_0
    iget v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    if-gt v1, v2, :cond_1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0xf

    goto :goto_0

    :cond_1
    mul-int/lit8 v3, v1, 0x4

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    add-int/lit8 v1, v3, 0xf

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v2

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    int-to-float v1, v5

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v11, v1, v3

    move v8, v11

    move v13, v11

    move v10, v11

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v21

    move-object/from16 v3, p1

    move v4, v5

    invoke-virtual/range {v2 .. v21}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method private sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z
    .locals 7

    new-array v0, p3, [Z

    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v1

    add-int/lit8 v2, p3, -0x1

    int-to-float v2, v2

    div-float v2, v1, v2

    iget v3, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget v4, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v2

    div-float/2addr v3, v1

    iget p2, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    iget v4, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr p2, v4

    int-to-float p2, p2

    mul-float v2, v2, p2

    div-float/2addr v2, v1

    iget p2, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float p2, p2

    iget p1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float p1, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    iget-object v4, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static {p2}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v5

    invoke-static {p1}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    aput-boolean v4, v0, v1

    add-float/2addr p2, v3

    add-float/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public detect()Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->getBullEyeCornerPoints(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->extractParameters([Lcom/google/zxing/aztec/detector/Detector$Point;)V

    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCornerPoints([Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    iget-object v5, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    rem-int/lit8 v1, v0, 0x4

    aget-object v6, v3, v1

    add-int/lit8 v1, v0, 0x3

    rem-int/lit8 v1, v1, 0x4

    aget-object v7, v3, v1

    add-int/lit8 v1, v0, 0x2

    rem-int/lit8 v1, v1, 0x4

    aget-object v8, v3, v1

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    aget-object v9, v3, v0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/aztec/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    new-instance v0, Lcom/google/zxing/aztec/AztecDetectorResult;

    iget-boolean v4, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    iget v5, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    iget v6, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/aztec/AztecDetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V

    return-object v0
.end method
