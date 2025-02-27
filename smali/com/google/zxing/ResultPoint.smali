.class public Lcom/google/zxing/ResultPoint;
.super Ljava/lang/Object;


# instance fields
.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/ResultPoint;->x:F

    iput p2, p0, Lcom/google/zxing/ResultPoint;->y:F

    return-void
.end method

.method private static crossProductZ(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 3

    iget v0, p1, Lcom/google/zxing/ResultPoint;->x:F

    iget p1, p1, Lcom/google/zxing/ResultPoint;->y:F

    iget v1, p2, Lcom/google/zxing/ResultPoint;->x:F

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/google/zxing/ResultPoint;->y:F

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    iget p2, p2, Lcom/google/zxing/ResultPoint;->y:F

    sub-float/2addr p2, p1

    iget p0, p0, Lcom/google/zxing/ResultPoint;->x:F

    sub-float/2addr p0, v0

    mul-float p2, p2, p0

    sub-float/2addr v1, p2

    return v1
.end method

.method public static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 2

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    sub-float/2addr p0, p1

    mul-float v0, v0, v0

    mul-float p0, p0, p0

    add-float/2addr v0, p0

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static orderBestPatterns([Lcom/google/zxing/ResultPoint;)V
    .locals 9

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v2, 0x1

    aget-object v3, p0, v2

    invoke-static {v1, v3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    aget-object v3, p0, v2

    const/4 v4, 0x2

    aget-object v5, p0, v4

    invoke-static {v3, v5}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    aget-object v5, p0, v0

    aget-object v6, p0, v4

    invoke-static {v5, v6}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v5

    cmpl-float v6, v3, v1

    if-ltz v6, :cond_0

    cmpl-float v6, v3, v5

    if-ltz v6, :cond_0

    aget-object v1, p0, v0

    aget-object v3, p0, v2

    aget-object v5, p0, v4

    goto :goto_0

    :cond_0
    cmpl-float v3, v5, v3

    if-ltz v3, :cond_1

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_1

    aget-object v1, p0, v2

    aget-object v3, p0, v0

    aget-object v5, p0, v4

    goto :goto_0

    :cond_1
    aget-object v1, p0, v4

    aget-object v3, p0, v0

    aget-object v5, p0, v2

    :goto_0
    invoke-static {v3, v1, v5}, Lcom/google/zxing/ResultPoint;->crossProductZ(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    :cond_2
    aput-object v3, p0, v0

    aput-object v1, p0, v2

    aput-object v5, p0, v4

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/zxing/ResultPoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/zxing/ResultPoint;

    iget v0, p0, Lcom/google/zxing/ResultPoint;->x:F

    iget v2, p1, Lcom/google/zxing/ResultPoint;->x:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/zxing/ResultPoint;->y:F

    iget p1, p1, Lcom/google/zxing/ResultPoint;->y:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getX()F
    .locals 1

    iget v0, p0, Lcom/google/zxing/ResultPoint;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    iget v0, p0, Lcom/google/zxing/ResultPoint;->y:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/zxing/ResultPoint;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/ResultPoint;->y:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/google/zxing/ResultPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/google/zxing/ResultPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
