.class public final Lcom/google/zxing/datamatrix/detector/Detector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;,
        Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    }
.end annotation


# static fields
.field private static final INTEGERS:[Ljava/lang/Integer;


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/datamatrix/detector/Detector;->INTEGERS:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    new-instance v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    return-void
.end method

.method private correctTopRight(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;
    .locals 5

    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    int-to-float v0, v0

    int-to-float p5, p5

    div-float/2addr v0, p5

    invoke-static {p3, p4}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    new-instance v1, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    mul-float v2, v2, v0

    add-float/2addr v4, v2

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    mul-float v0, v0, v3

    add-float/2addr v2, v0

    invoke-direct {v1, v4, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p5

    invoke-static {p2, p4}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result p5

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    int-to-float p5, p5

    div-float/2addr v0, p5

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, p5

    new-instance p5, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    mul-float v0, v0, p1

    add-float/2addr v3, v0

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p4

    mul-float p1, p1, v2

    add-float/2addr p4, p1

    invoke-direct {p5, v3, p4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-direct {p0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, p5}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p5

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-direct {p0, p5}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    invoke-direct {p0, p3, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p1

    invoke-direct {p0, p2, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-direct {p0, p3, p5}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p3

    invoke-direct {p0, p2, p5}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p2

    sub-int/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-gt p1, p2, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p5

    :goto_0
    return-object v1
.end method

.method private correctTopRightRectangular(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/ResultPoint;
    .locals 5

    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p5

    div-float/2addr v0, v1

    invoke-static {p3, p4}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    new-instance v1, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    mul-float v2, v2, v0

    add-float/2addr v4, v2

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    mul-float v0, v0, v3

    add-float/2addr v2, v0

    invoke-direct {v1, v4, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-static {p1, p3}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, p6

    div-float/2addr p1, v0

    invoke-static {p2, p4}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v0

    new-instance v0, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    mul-float v2, v2, p1

    add-float/2addr v4, v2

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p4

    mul-float p1, p1, v3

    add-float/2addr p4, p1

    invoke-direct {v0, v4, p4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-direct {p0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    invoke-direct {p0, p3, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p1

    sub-int p1, p5, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-direct {p0, p2, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p4

    sub-int p4, p6, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    add-int/2addr p1, p4

    invoke-direct {p0, p3, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-direct {p0, p2, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p2

    sub-int/2addr p6, p2

    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p3, p2

    if-gt p1, p3, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method private static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    sub-float/2addr p0, p1

    mul-float v1, v1, p0

    add-float/2addr v0, v1

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Lcom/google/zxing/datamatrix/detector/Detector;->round(F)I

    move-result p0

    return p0
.end method

.method private static increment(Ljava/util/Hashtable;Lcom/google/zxing/ResultPoint;)V
    .locals 3

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/zxing/datamatrix/detector/Detector;->INTEGERS:[Ljava/lang/Integer;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/zxing/datamatrix/detector/Detector;->INTEGERS:[Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    aget-object v0, v2, v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isValid(Lcom/google/zxing/ResultPoint;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v2, v2, Lcom/google/zxing/common/BitMatrix;->width:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v0, v0, Lcom/google/zxing/common/BitMatrix;->height:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static round(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v0

    move/from16 v4, p5

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v6, v4, v5

    move v8, v6

    move/from16 v4, p6

    int-to-float v4, v4

    sub-float v11, v4, v5

    move v9, v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual/range {v0 .. v19}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method private transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v5, v4, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v6, v3, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    :cond_1
    sub-int v6, v3, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v9, v4, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    neg-int v10, v6

    shr-int/2addr v10, v8

    const/4 v11, -0x1

    if-ge v2, v4, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, -0x1

    :goto_1
    if-ge v1, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, -0x1

    :goto_2
    iget-object v11, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz v5, :cond_4

    move v13, v2

    goto :goto_3

    :cond_4
    move v13, v1

    :goto_3
    if-eqz v5, :cond_5

    move v14, v1

    goto :goto_4

    :cond_5
    move v14, v2

    :goto_4
    invoke-virtual {v11, v13, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    :goto_5
    if-eq v1, v3, :cond_b

    iget-object v13, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz v5, :cond_6

    move v14, v2

    goto :goto_6

    :cond_6
    move v14, v1

    :goto_6
    if-eqz v5, :cond_7

    move v15, v1

    goto :goto_7

    :cond_7
    move v15, v2

    :goto_7
    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eq v13, v11, :cond_8

    add-int/lit8 v7, v7, 0x1

    move v11, v13

    :cond_8
    add-int/2addr v10, v9

    if-lez v10, :cond_a

    if-ne v2, v4, :cond_9

    goto :goto_8

    :cond_9
    add-int/2addr v2, v12

    sub-int/2addr v10, v6

    :cond_a
    add-int/2addr v1, v8

    goto :goto_5

    :cond_b
    :goto_8
    new-instance v1, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;-><init>(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;ILcom/google/zxing/datamatrix/detector/Detector$1;)V

    return-object v1
.end method


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-virtual {v0}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    const/4 v8, 0x0

    aget-object v1, v0, v8

    const/4 v9, 0x1

    aget-object v2, v0, v9

    const/4 v10, 0x2

    aget-object v3, v0, v10

    const/4 v11, 0x3

    aget-object v0, v0, v11

    new-instance v4, Ljava/util/Vector;

    const/4 v12, 0x4

    invoke-direct {v4, v12}, Ljava/util/Vector;-><init>(I)V

    invoke-direct {v7, v1, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {v7, v1, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {v7, v2, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {v7, v3, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v5, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>(Lcom/google/zxing/datamatrix/detector/Detector$1;)V

    invoke-static {v4, v5}, Lcom/google/zxing/common/Collections;->insertionSort(Ljava/util/Vector;Lcom/google/zxing/common/Comparator;)V

    invoke-virtual {v4, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    invoke-virtual {v4, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/google/zxing/ResultPoint;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Hashtable;Lcom/google/zxing/ResultPoint;)V

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Hashtable;Lcom/google/zxing/ResultPoint;)V

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Hashtable;Lcom/google/zxing/ResultPoint;)V

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Hashtable;Lcom/google/zxing/ResultPoint;)V

    invoke-virtual {v13}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    move-object v5, v6

    move-object v14, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v13, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v10, :cond_0

    move-object v5, v15

    goto :goto_1

    :cond_0
    if-nez v6, :cond_1

    move-object v6, v15

    goto :goto_1

    :cond_1
    move-object v14, v15

    :goto_1
    const/4 v12, 0x4

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_f

    if-eqz v5, :cond_f

    if-eqz v14, :cond_f

    new-array v4, v11, [Lcom/google/zxing/ResultPoint;

    aput-object v6, v4, v8

    aput-object v5, v4, v9

    aput-object v14, v4, v10

    invoke-static {v4}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    aget-object v12, v4, v8

    aget-object v14, v4, v9

    aget-object v15, v4, v10

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v13, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v13, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v13, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v13, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object v13, v3

    goto :goto_2

    :cond_5
    move-object v13, v0

    :goto_2
    invoke-direct {v7, v15, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v0

    invoke-direct {v7, v12, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v1

    and-int/lit8 v2, v0, 0x1

    if-ne v2, v9, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    add-int/lit8 v5, v0, 0x2

    and-int/lit8 v0, v1, 0x1

    if-ne v0, v9, :cond_7

    add-int/lit8 v1, v1, 0x1

    :cond_7
    add-int/lit8 v6, v1, 0x2

    mul-int/lit8 v0, v5, 0x4

    mul-int/lit8 v1, v6, 0x7

    if-ge v0, v1, :cond_b

    mul-int/lit8 v0, v6, 0x4

    mul-int/lit8 v1, v5, 0x7

    if-lt v0, v1, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v12

    move-object v3, v15

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/datamatrix/detector/Detector;->correctTopRight(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    move-object v13, v0

    :goto_3
    invoke-direct {v7, v15, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v0

    invoke-direct {v7, v12, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v9

    and-int/lit8 v1, v0, 0x1

    if-ne v1, v9, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_a
    move/from16 v23, v0

    iget-object v0, v7, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v17, v0

    move-object/from16 v18, v15

    move-object/from16 v19, v14

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move/from16 v22, v23

    goto :goto_6

    :cond_b
    :goto_4
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v12

    move-object v3, v15

    move-object v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/detector/Detector;->correctTopRightRectangular(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    move-object v13, v0

    :goto_5
    invoke-direct {v7, v15, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v0

    invoke-direct {v7, v12, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v1

    and-int/lit8 v2, v0, 0x1

    if-ne v2, v9, :cond_d

    add-int/lit8 v0, v0, 0x1

    :cond_d
    move/from16 v22, v0

    and-int/lit8 v0, v1, 0x1

    if-ne v0, v9, :cond_e

    add-int/lit8 v1, v1, 0x1

    :cond_e
    move/from16 v23, v1

    iget-object v0, v7, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v17, v0

    move-object/from16 v18, v15

    move-object/from16 v19, v14

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    :goto_6
    invoke-static/range {v17 .. v23}, Lcom/google/zxing/datamatrix/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    new-instance v1, Lcom/google/zxing/common/DetectorResult;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/google/zxing/ResultPoint;

    aput-object v15, v2, v8

    aput-object v14, v2, v9

    aput-object v12, v2, v10

    aput-object v13, v2, v11

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v1

    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
