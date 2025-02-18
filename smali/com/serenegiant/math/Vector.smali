.class public Lcom/serenegiant/math/Vector;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final TO_DEGREE:F = 57.29578f

.field public static final TO_RADIAN:F = 0.017453292f

.field private static final inVec:[F

.field private static final matrix:[F

.field public static final normVector:Lcom/serenegiant/math/Vector;

.field private static final outVec:[F

.field private static final serialVersionUID:J = 0x167cf667e72bb9ecL

.field public static final zeroVector:Lcom/serenegiant/math/Vector;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    sput-object v0, Lcom/serenegiant/math/Vector;->zeroVector:Lcom/serenegiant/math/Vector;

    .line 36
    new-instance v0, Lcom/serenegiant/math/Vector;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/serenegiant/math/Vector;-><init>(FFF)V

    sput-object v0, Lcom/serenegiant/math/Vector;->normVector:Lcom/serenegiant/math/Vector;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 38
    sput-object v0, Lcom/serenegiant/math/Vector;->matrix:[F

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 39
    sput-object v1, Lcom/serenegiant/math/Vector;->inVec:[F

    new-array v0, v0, [F

    .line 40
    sput-object v0, Lcom/serenegiant/math/Vector;->outVec:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/math/Vector;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 57
    iput p2, p0, Lcom/serenegiant/math/Vector;->y:F

    .line 58
    iput p3, p0, Lcom/serenegiant/math/Vector;->z:F

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/math/Vector;)V
    .locals 2

    .line 52
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    invoke-direct {p0, v0, v1, p1}, Lcom/serenegiant/math/Vector;-><init>(FFF)V

    return-void
.end method

.method public static cross(Lcom/serenegiant/math/Vector;Lcom/serenegiant/math/Vector;Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;
    .locals 6

    .line 527
    iget v0, p1, Lcom/serenegiant/math/Vector;->y:F

    iget v1, p2, Lcom/serenegiant/math/Vector;->z:F

    mul-float v2, v0, v1

    iget v3, p1, Lcom/serenegiant/math/Vector;->z:F

    iget v4, p2, Lcom/serenegiant/math/Vector;->y:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    .line 528
    iget p2, p2, Lcom/serenegiant/math/Vector;->x:F

    mul-float v3, v3, p2

    iget p1, p1, Lcom/serenegiant/math/Vector;->x:F

    mul-float v1, v1, p1

    sub-float/2addr v3, v1

    mul-float p1, p1, v4

    mul-float v0, v0, p2

    sub-float/2addr p1, v0

    .line 530
    iput v2, p0, Lcom/serenegiant/math/Vector;->x:F

    iput v3, p0, Lcom/serenegiant/math/Vector;->y:F

    iput p1, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public static crossProduct(Lcom/serenegiant/math/Vector;Lcom/serenegiant/math/Vector;Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;
    .locals 6

    .line 538
    iget v0, p1, Lcom/serenegiant/math/Vector;->y:F

    iget v1, p2, Lcom/serenegiant/math/Vector;->z:F

    mul-float v2, v0, v1

    iget v3, p1, Lcom/serenegiant/math/Vector;->z:F

    iget v4, p2, Lcom/serenegiant/math/Vector;->y:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    .line 539
    iget p2, p2, Lcom/serenegiant/math/Vector;->x:F

    mul-float v3, v3, p2

    iget p1, p1, Lcom/serenegiant/math/Vector;->x:F

    mul-float v1, v1, p1

    sub-float/2addr v3, v1

    mul-float p1, p1, v4

    mul-float v0, v0, p2

    sub-float/2addr p1, v0

    .line 541
    iput v2, p0, Lcom/serenegiant/math/Vector;->x:F

    iput v3, p0, Lcom/serenegiant/math/Vector;->y:F

    iput p1, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public static rotate(Lcom/serenegiant/math/Vector;FFF)Lcom/serenegiant/math/Vector;
    .locals 18

    move-object/from16 v0, p0

    .line 681
    sget-object v1, Lcom/serenegiant/math/Vector;->inVec:[F

    iget v2, v0, Lcom/serenegiant/math/Vector;->x:F

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 682
    iget v2, v0, Lcom/serenegiant/math/Vector;->y:F

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 683
    iget v2, v0, Lcom/serenegiant/math/Vector;->z:F

    const/4 v5, 0x2

    aput v2, v1, v5

    const/4 v2, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    .line 684
    aput v6, v1, v2

    .line 685
    sget-object v1, Lcom/serenegiant/math/Vector;->matrix:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-eqz v2, :cond_0

    .line 687
    sget-object v6, Lcom/serenegiant/math/Vector;->matrix:[F

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v8, p1

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_0
    cmpl-float v2, p2, v1

    if-eqz v2, :cond_1

    .line 689
    sget-object v12, Lcom/serenegiant/math/Vector;->matrix:[F

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move/from16 v14, p2

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_1
    cmpl-float v1, p3, v1

    if-eqz v1, :cond_2

    .line 691
    sget-object v6, Lcom/serenegiant/math/Vector;->matrix:[F

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move/from16 v8, p3

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 692
    :cond_2
    sget-object v12, Lcom/serenegiant/math/Vector;->outVec:[F

    const/4 v13, 0x0

    sget-object v14, Lcom/serenegiant/math/Vector;->matrix:[F

    const/4 v15, 0x0

    sget-object v16, Lcom/serenegiant/math/Vector;->inVec:[F

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 693
    sget-object v1, Lcom/serenegiant/math/Vector;->outVec:[F

    aget v2, v1, v3

    iput v2, v0, Lcom/serenegiant/math/Vector;->x:F

    .line 694
    aget v2, v1, v4

    iput v2, v0, Lcom/serenegiant/math/Vector;->y:F

    .line 695
    aget v1, v1, v5

    iput v1, v0, Lcom/serenegiant/math/Vector;->z:F

    return-object v0
.end method

.method public static rotate([Lcom/serenegiant/math/Vector;FFF)[Lcom/serenegiant/math/Vector;
    .locals 9

    .line 708
    sget-object v0, Lcom/serenegiant/math/Vector;->matrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    if-eqz v2, :cond_0

    .line 710
    sget-object v3, Lcom/serenegiant/math/Vector;->matrix:[F

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p1

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_0
    cmpl-float p1, p2, v0

    if-eqz p1, :cond_1

    .line 712
    sget-object v2, Lcom/serenegiant/math/Vector;->matrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move v4, p2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_1
    cmpl-float p1, p3, v0

    if-eqz p1, :cond_2

    .line 714
    sget-object v2, Lcom/serenegiant/math/Vector;->matrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move v4, p3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_2
    if-eqz p0, :cond_3

    .line 715
    array-length p1, p0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_5

    .line 717
    aget-object p3, p0, p2

    if-nez p3, :cond_4

    goto :goto_2

    .line 718
    :cond_4
    sget-object v6, Lcom/serenegiant/math/Vector;->inVec:[F

    aget-object p3, p0, p2

    iget p3, p3, Lcom/serenegiant/math/Vector;->x:F

    aput p3, v6, v1

    .line 719
    aget-object p3, p0, p2

    iget p3, p3, Lcom/serenegiant/math/Vector;->y:F

    const/4 v0, 0x1

    aput p3, v6, v0

    .line 720
    aget-object p3, p0, p2

    iget p3, p3, Lcom/serenegiant/math/Vector;->z:F

    const/4 v8, 0x2

    aput p3, v6, v8

    const/4 p3, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 721
    aput v2, v6, p3

    .line 722
    sget-object v2, Lcom/serenegiant/math/Vector;->outVec:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/serenegiant/math/Vector;->matrix:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 723
    aget-object p3, p0, p2

    sget-object v2, Lcom/serenegiant/math/Vector;->outVec:[F

    aget v3, v2, v1

    iput v3, p3, Lcom/serenegiant/math/Vector;->x:F

    .line 724
    aget-object p3, p0, p2

    aget v0, v2, v0

    iput v0, p3, Lcom/serenegiant/math/Vector;->y:F

    .line 725
    aget-object p3, p0, p2

    aget v0, v2, v8

    iput v0, p3, Lcom/serenegiant/math/Vector;->z:F

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    return-object p0
.end method

.method public static vector(FFF)Lcom/serenegiant/math/Vector;
    .locals 1

    .line 62
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0, p0, p1, p2}, Lcom/serenegiant/math/Vector;-><init>(FFF)V

    return-object v0
.end method

.method public static vector(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;
    .locals 3

    .line 66
    new-instance v0, Lcom/serenegiant/math/Vector;

    iget v1, p0, Lcom/serenegiant/math/Vector;->x:F

    iget v2, p0, Lcom/serenegiant/math/Vector;->y:F

    iget p0, p0, Lcom/serenegiant/math/Vector;->z:F

    invoke-direct {v0, v1, v2, p0}, Lcom/serenegiant/math/Vector;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method public add(FF)Lcom/serenegiant/math/Vector;
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, p1, p2, v0}, Lcom/serenegiant/math/Vector;->add(FFF)Lcom/serenegiant/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public add(FFF)Lcom/serenegiant/math/Vector;
    .locals 1

    .line 208
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 209
    iget p1, p0, Lcom/serenegiant/math/Vector;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/serenegiant/math/Vector;->y:F

    .line 210
    iget p1, p0, Lcom/serenegiant/math/Vector;->z:F

    add-float/2addr p1, p3

    iput p1, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public add(FFFF)Lcom/serenegiant/math/Vector;
    .locals 1

    .line 223
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    mul-float p1, p1, p4

    add-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 224
    iget p1, p0, Lcom/serenegiant/math/Vector;->y:F

    mul-float p2, p2, p4

    add-float/2addr p1, p2

    iput p1, p0, Lcom/serenegiant/math/Vector;->y:F

    .line 225
    iget p1, p0, Lcom/serenegiant/math/Vector;->z:F

    mul-float p3, p3, p4

    add-float/2addr p1, p3

    iput p1, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public add(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;
    .locals 2

    .line 235
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/serenegiant/math/Vector;->add(FFF)Lcom/serenegiant/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/serenegiant/math/Vector;F)Lcom/serenegiant/math/Vector;
    .locals 2

    .line 245
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/serenegiant/math/Vector;->add(FFFF)Lcom/serenegiant/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public angleXY()F
    .locals 4

    .line 549
    iget v0, p0, Lcom/serenegiant/math/Vector;->y:F

    float-to-double v0, v0

    iget v2, p0, Lcom/serenegiant/math/Vector;->x:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float v0, v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public angleXZ()F
    .locals 4

    .line 559
    iget v0, p0, Lcom/serenegiant/math/Vector;->z:F

    float-to-double v0, v0

    iget v2, p0, Lcom/serenegiant/math/Vector;->x:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float v0, v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public angleYZ()F
    .locals 4

    .line 569
    iget v0, p0, Lcom/serenegiant/math/Vector;->z:F

    float-to-double v0, v0

    iget v2, p0, Lcom/serenegiant/math/Vector;->y:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float v0, v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public clear(F)Lcom/serenegiant/math/Vector;
    .locals 0

    .line 80
    iput p1, p0, Lcom/serenegiant/math/Vector;->z:F

    iput p1, p0, Lcom/serenegiant/math/Vector;->y:F

    iput p1, p0, Lcom/serenegiant/math/Vector;->x:F

    return-object p0
.end method

.method public clone()Lcom/serenegiant/math/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 70
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/math/Vector;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/serenegiant/math/Vector;->clone()Lcom/serenegiant/math/Vector;

    move-result-object v0

    return-object v0
.end method

.method public cross(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;
    .locals 0

    .line 511
    invoke-static {p0, p0, p1}, Lcom/serenegiant/math/Vector;->crossProduct(Lcom/serenegiant/math/Vector;Lcom/serenegiant/math/Vector;Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public cross2(Lcom/serenegiant/math/Vector;)F
    .locals 2

    .line 494
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    mul-float v0, v0, v1

    iget p1, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p0, Lcom/serenegiant/math/Vector;->y:F

    mul-float p1, p1, v1

    sub-float/2addr v0, p1

    return v0
.end method

.method public crossProduct(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;
    .locals 0

    .line 520
    invoke-static {p0, p0, p1}, Lcom/serenegiant/math/Vector;->crossProduct(Lcom/serenegiant/math/Vector;Lcom/serenegiant/math/Vector;Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public crossProduct2(Lcom/serenegiant/math/Vector;)F
    .locals 2

    .line 502
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    mul-float v0, v0, v1

    iget p1, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p0, Lcom/serenegiant/math/Vector;->y:F

    mul-float p1, p1, v1

    sub-float/2addr v0, p1

    return v0
.end method

.method public distSquared(FF)F
    .locals 1

    .line 861
    iget v0, p0, Lcom/serenegiant/math/Vector;->z:F

    invoke-virtual {p0, p1, p2, v0}, Lcom/serenegiant/math/Vector;->distSquared(FFF)F

    move-result p1

    return p1
.end method

.method public distSquared(FFF)F
    .locals 1

    .line 872
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    sub-float/2addr v0, p1

    .line 873
    iget p1, p0, Lcom/serenegiant/math/Vector;->y:F

    sub-float/2addr p1, p2

    .line 874
    iget p2, p0, Lcom/serenegiant/math/Vector;->z:F

    sub-float/2addr p2, p3

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    mul-float p2, p2, p2

    add-float/2addr v0, p2

    return v0
.end method

.method public distSquared(Lcom/serenegiant/math/Vector;)F
    .locals 2

    .line 851
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/serenegiant/math/Vector;->distSquared(FFF)F

    move-result p1

    return p1
.end method

.method public distance(FF)F
    .locals 1

    .line 831
    iget v0, p0, Lcom/serenegiant/math/Vector;->z:F

    invoke-virtual {p0, p1, p2, v0}, Lcom/serenegiant/math/Vector;->distance(FFF)F

    move-result p1

    return p1
.end method

.method public distance(FFF)F
    .locals 0

    .line 842
    invoke-virtual {p0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->distSquared(FFF)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public distance(Lcom/serenegiant/math/Vector;)F
    .locals 2

    .line 821
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/serenegiant/math/Vector;->distance(FFF)F

    move-result p1

    return p1
.end method

.method public div(F)Lcom/serenegiant/math/Vector;
    .locals 1

    .line 350
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 351
    iget v0, p0, Lcom/serenegiant/math/Vector;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->y:F

    .line 352
    iget v0, p0, Lcom/serenegiant/math/Vector;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public div(FF)Lcom/serenegiant/math/Vector;
    .locals 1

    .line 360
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 361
    iget p1, p0, Lcom/serenegiant/math/Vector;->y:F

    div-float/2addr p1, p2

    iput p1, p0, Lcom/serenegiant/math/Vector;->y:F

    return-object p0
.end method

.method public div(FFF)Lcom/serenegiant/math/Vector;
    .locals 1

    .line 369
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 370
    iget p1, p0, Lcom/serenegiant/math/Vector;->y:F

    div-float/2addr p1, p2

    iput p1, p0, Lcom/serenegiant/math/Vector;->y:F

    .line 371
    iget p1, p0, Lcom/serenegiant/math/Vector;->z:F

    div-float/2addr p1, p3

    iput p1, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public div(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;
    .locals 2

    .line 341
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 342
    iget v0, p0, Lcom/serenegiant/math/Vector;->y:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/serenegiant/math/Vector;->y:F

    .line 343
    iget v0, p0, Lcom/serenegiant/math/Vector;->z:F

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public dot(FFF)F
    .locals 1

    .line 479
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    mul-float v0, v0, p1

    iget p1, p0, Lcom/serenegiant/math/Vector;->y:F

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    iget p1, p0, Lcom/serenegiant/math/Vector;->z:F

    mul-float p1, p1, p3

    add-float/2addr v0, p1

    return v0
.end method

.method public dot(Lcom/serenegiant/math/Vector;)F
    .locals 3

    .line 464
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->x:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/serenegiant/math/Vector;->y:F

    iget v2, p1, Lcom/serenegiant/math/Vector;->y:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/serenegiant/math/Vector;->z:F

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public dotProduct(FFF)F
    .locals 1

    .line 486
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    mul-float v0, v0, p1

    iget p1, p0, Lcom/serenegiant/math/Vector;->y:F

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    iget p1, p0, Lcom/serenegiant/math/Vector;->z:F

    mul-float p1, p1, p3

    add-float/2addr v0, p1

    return v0
.end method

.method public dotProduct(Lcom/serenegiant/math/Vector;)F
    .locals 3

    .line 472
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->x:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/serenegiant/math/Vector;->y:F

    iget v2, p1, Lcom/serenegiant/math/Vector;->y:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/serenegiant/math/Vector;->z:F

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public getAngle(Lcom/serenegiant/math/Vector;)F
    .locals 3

    .line 585
    invoke-virtual {p0, p1}, Lcom/serenegiant/math/Vector;->dotProduct(Lcom/serenegiant/math/Vector;)F

    move-result v0

    invoke-virtual {p0}, Lcom/serenegiant/math/Vector;->lenSquared()F

    move-result v1

    invoke-virtual {p1}, Lcom/serenegiant/math/Vector;->lenSquared()F

    move-result p1

    mul-float v1, v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    div-float/2addr v0, p1

    float-to-double v0, v0

    .line 586
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float p1, v0

    const v0, 0x42652ee1

    mul-float p1, p1, v0

    return p1
.end method

.method public getQuat()[F
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 798
    iget v1, p0, Lcom/serenegiant/math/Vector;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 799
    iget v1, p0, Lcom/serenegiant/math/Vector;->y:F

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 800
    iget v1, p0, Lcom/serenegiant/math/Vector;->z:F

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    return-object v0
.end method

.method public len()F
    .locals 2

    .line 436
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    mul-float v0, v0, v0

    iget v1, p0, Lcom/serenegiant/math/Vector;->y:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/serenegiant/math/Vector;->z:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public lenSquared()F
    .locals 2

    .line 443
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    mul-float v0, v0, v0

    iget v1, p0, Lcom/serenegiant/math/Vector;->y:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/serenegiant/math/Vector;->z:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public limit(F)Lcom/serenegiant/math/Vector;
    .locals 3

    .line 407
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    cmpl-float v1, v0, p1

    if-ltz v1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    neg-float v1, p1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 408
    iget v0, p0, Lcom/serenegiant/math/Vector;->y:F

    cmpl-float v1, v0, p1

    if-ltz v1, :cond_2

    move v0, p1

    goto :goto_1

    :cond_2
    neg-float v1, p1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_3

    move v0, v1

    :cond_3
    :goto_1
    iput v0, p0, Lcom/serenegiant/math/Vector;->y:F

    .line 409
    iget v0, p0, Lcom/serenegiant/math/Vector;->z:F

    cmpl-float v1, v0, p1

    if-ltz v1, :cond_4

    move v0, p1

    goto :goto_2

    :cond_4
    neg-float v1, p1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_5

    move v0, v1

    :cond_5
    :goto_2
    iput v0, p0, Lcom/serenegiant/math/Vector;->z:F

    .line 410
    :goto_3
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    cmpl-float v1, v0, p1

    if-ltz v1, :cond_6

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    goto :goto_3

    .line 411
    :cond_6
    :goto_4
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    neg-float v1, p1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_7

    add-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    goto :goto_4

    .line 412
    :cond_7
    :goto_5
    iget v0, p0, Lcom/serenegiant/math/Vector;->y:F

    cmpl-float v2, v0, p1

    if-ltz v2, :cond_8

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->y:F

    goto :goto_5

    .line 413
    :cond_8
    :goto_6
    iget v0, p0, Lcom/serenegiant/math/Vector;->y:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_9

    add-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->y:F

    goto :goto_6

    .line 414
    :cond_9
    :goto_7
    iget v0, p0, Lcom/serenegiant/math/Vector;->z:F

    cmpl-float v2, v0, p1

    if-ltz v2, :cond_a

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->z:F

    goto :goto_7

    .line 415
    :cond_a
    :goto_8
    iget v0, p0, Lcom/serenegiant/math/Vector;->z:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_b

    add-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->z:F

    goto :goto_8

    :cond_b
    return-object p0
.end method

.method public limit(FF)Lcom/serenegiant/math/Vector;
    .locals 2

    .line 426
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    cmpl-float v1, v0, p2

    if-ltz v1, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    cmpg-float v1, v0, p1

    if-gez v1, :cond_1

    move v0, p1

    :cond_1
    :goto_0
    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 427
    iget v0, p0, Lcom/serenegiant/math/Vector;->y:F

    cmpl-float v1, v0, p2

    if-ltz v1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    cmpg-float v1, v0, p1

    if-gez v1, :cond_3

    move v0, p1

    :cond_3
    :goto_1
    iput v0, p0, Lcom/serenegiant/math/Vector;->y:F

    .line 428
    iget v0, p0, Lcom/serenegiant/math/Vector;->z:F

    cmpl-float v1, v0, p2

    if-ltz v1, :cond_4

    move p1, p2

    goto :goto_2

    :cond_4
    cmpg-float p2, v0, p1

    if-gez p2, :cond_5

    goto :goto_2

    :cond_5
    move p1, v0

    :goto_2
    iput p1, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public mod(F)Lcom/serenegiant/math/Vector;
    .locals 1

    .line 379
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    rem-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 380
    iget v0, p0, Lcom/serenegiant/math/Vector;->y:F

    rem-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->y:F

    .line 381
    iget v0, p0, Lcom/serenegiant/math/Vector;->z:F

    rem-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public mult(F)Lcom/serenegiant/math/Vector;
    .locals 1

    .line 310
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 311
    iget v0, p0, Lcom/serenegiant/math/Vector;->y:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->y:F

    .line 312
    iget v0, p0, Lcom/serenegiant/math/Vector;->z:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public mult(FF)Lcom/serenegiant/math/Vector;
    .locals 1

    .line 320
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 321
    iget p1, p0, Lcom/serenegiant/math/Vector;->y:F

    mul-float p1, p1, p2

    iput p1, p0, Lcom/serenegiant/math/Vector;->y:F

    return-object p0
.end method

.method public mult(FFF)Lcom/serenegiant/math/Vector;
    .locals 1

    .line 329
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 330
    iget p1, p0, Lcom/serenegiant/math/Vector;->y:F

    mul-float p1, p1, p2

    iput p1, p0, Lcom/serenegiant/math/Vector;->y:F

    .line 331
    iget p1, p0, Lcom/serenegiant/math/Vector;->z:F

    mul-float p1, p1, p3

    iput p1, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public mult(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;
    .locals 2

    .line 300
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->x:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 301
    iget v0, p0, Lcom/serenegiant/math/Vector;->y:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/serenegiant/math/Vector;->y:F

    .line 302
    iget v0, p0, Lcom/serenegiant/math/Vector;->z:F

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public normalize()Lcom/serenegiant/math/Vector;
    .locals 2

    .line 450
    invoke-virtual {p0}, Lcom/serenegiant/math/Vector;->len()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 452
    iget v1, p0, Lcom/serenegiant/math/Vector;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 453
    iget v1, p0, Lcom/serenegiant/math/Vector;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/serenegiant/math/Vector;->y:F

    .line 454
    iget v1, p0, Lcom/serenegiant/math/Vector;->z:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/serenegiant/math/Vector;->z:F

    :cond_0
    return-object p0
.end method

.method public rotate(FFF)Lcom/serenegiant/math/Vector;
    .locals 0

    .line 669
    invoke-static {p0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->rotate(Lcom/serenegiant/math/Vector;FFF)Lcom/serenegiant/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public rotate(FFFF)Lcom/serenegiant/math/Vector;
    .locals 14

    move-object v0, p0

    .line 648
    sget-object v1, Lcom/serenegiant/math/Vector;->inVec:[F

    iget v2, v0, Lcom/serenegiant/math/Vector;->x:F

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 649
    iget v2, v0, Lcom/serenegiant/math/Vector;->y:F

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 650
    iget v2, v0, Lcom/serenegiant/math/Vector;->z:F

    const/4 v5, 0x2

    aput v2, v1, v5

    const/4 v2, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    .line 651
    aput v6, v1, v2

    .line 652
    sget-object v1, Lcom/serenegiant/math/Vector;->matrix:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 653
    sget-object v6, Lcom/serenegiant/math/Vector;->matrix:[F

    const/4 v7, 0x0

    move v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 654
    sget-object v8, Lcom/serenegiant/math/Vector;->outVec:[F

    sget-object v10, Lcom/serenegiant/math/Vector;->matrix:[F

    sget-object v12, Lcom/serenegiant/math/Vector;->inVec:[F

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 655
    sget-object v1, Lcom/serenegiant/math/Vector;->outVec:[F

    aget v2, v1, v3

    iput v2, v0, Lcom/serenegiant/math/Vector;->x:F

    .line 656
    aget v2, v1, v4

    iput v2, v0, Lcom/serenegiant/math/Vector;->y:F

    .line 657
    aget v1, v1, v5

    iput v1, v0, Lcom/serenegiant/math/Vector;->z:F

    return-object v0
.end method

.method public rotate(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;
    .locals 2

    .line 742
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/serenegiant/math/Vector;->rotate(FFF)Lcom/serenegiant/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public rotate(Lcom/serenegiant/math/Vector;F)Lcom/serenegiant/math/Vector;
    .locals 2

    .line 737
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    mul-float v0, v0, p2

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    mul-float v1, v1, p2

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    mul-float p1, p1, p2

    invoke-virtual {p0, v0, v1, p1}, Lcom/serenegiant/math/Vector;->rotate(FFF)Lcom/serenegiant/math/Vector;

    return-object p0
.end method

.method public rotateXY(F)Lcom/serenegiant/math/Vector;
    .locals 5

    const v0, 0x3c8efa35

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 592
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 593
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 595
    iget v1, p0, Lcom/serenegiant/math/Vector;->x:F

    mul-float v2, v1, p1

    iget v3, p0, Lcom/serenegiant/math/Vector;->y:F

    mul-float v4, v3, v0

    sub-float/2addr v2, v4

    mul-float v1, v1, v0

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    .line 598
    iput v2, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 599
    iput v1, p0, Lcom/serenegiant/math/Vector;->y:F

    return-object p0
.end method

.method public rotateXZ(F)Lcom/serenegiant/math/Vector;
    .locals 5

    const v0, 0x3c8efa35

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 609
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 610
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 612
    iget v1, p0, Lcom/serenegiant/math/Vector;->x:F

    mul-float v2, v1, p1

    iget v3, p0, Lcom/serenegiant/math/Vector;->z:F

    mul-float v4, v3, v0

    sub-float/2addr v2, v4

    mul-float v1, v1, v0

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    .line 615
    iput v2, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 616
    iput v1, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public rotateYZ(F)Lcom/serenegiant/math/Vector;
    .locals 5

    const v0, 0x3c8efa35

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 626
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 627
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 629
    iget v1, p0, Lcom/serenegiant/math/Vector;->y:F

    mul-float v2, v1, p1

    iget v3, p0, Lcom/serenegiant/math/Vector;->z:F

    mul-float v4, v3, v0

    sub-float/2addr v2, v4

    mul-float v1, v1, v0

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    .line 632
    iput v2, p0, Lcom/serenegiant/math/Vector;->y:F

    .line 633
    iput v1, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public rotate_inv(FFF)Lcom/serenegiant/math/Vector;
    .locals 18

    move-object/from16 v0, p0

    .line 753
    sget-object v1, Lcom/serenegiant/math/Vector;->inVec:[F

    iget v2, v0, Lcom/serenegiant/math/Vector;->x:F

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 754
    iget v2, v0, Lcom/serenegiant/math/Vector;->y:F

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 755
    iget v2, v0, Lcom/serenegiant/math/Vector;->z:F

    const/4 v5, 0x2

    aput v2, v1, v5

    const/4 v2, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    .line 756
    aput v6, v1, v2

    .line 757
    sget-object v1, Lcom/serenegiant/math/Vector;->matrix:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v1, 0x0

    cmpl-float v2, p3, v1

    if-eqz v2, :cond_0

    .line 759
    sget-object v6, Lcom/serenegiant/math/Vector;->matrix:[F

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move/from16 v8, p3

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_0
    cmpl-float v2, p2, v1

    if-eqz v2, :cond_1

    .line 761
    sget-object v12, Lcom/serenegiant/math/Vector;->matrix:[F

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move/from16 v14, p2

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_1
    cmpl-float v1, p1, v1

    if-eqz v1, :cond_2

    .line 763
    sget-object v6, Lcom/serenegiant/math/Vector;->matrix:[F

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v8, p1

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 764
    :cond_2
    sget-object v12, Lcom/serenegiant/math/Vector;->outVec:[F

    const/4 v13, 0x0

    sget-object v14, Lcom/serenegiant/math/Vector;->matrix:[F

    const/4 v15, 0x0

    sget-object v16, Lcom/serenegiant/math/Vector;->inVec:[F

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 765
    sget-object v1, Lcom/serenegiant/math/Vector;->outVec:[F

    aget v2, v1, v3

    iput v2, v0, Lcom/serenegiant/math/Vector;->x:F

    .line 766
    aget v2, v1, v4

    iput v2, v0, Lcom/serenegiant/math/Vector;->y:F

    .line 767
    aget v1, v1, v5

    iput v1, v0, Lcom/serenegiant/math/Vector;->z:F

    return-object v0
.end method

.method public rotate_inv(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 788
    invoke-virtual {p0, p1, v0}, Lcom/serenegiant/math/Vector;->rotate_inv(Lcom/serenegiant/math/Vector;F)Lcom/serenegiant/math/Vector;

    return-object p0
.end method

.method public rotate_inv(Lcom/serenegiant/math/Vector;F)Lcom/serenegiant/math/Vector;
    .locals 2

    .line 778
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    mul-float v0, v0, p2

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    mul-float v1, v1, p2

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    mul-float p1, p1, p2

    invoke-virtual {p0, v0, v1, p1}, Lcom/serenegiant/math/Vector;->rotate_inv(FFF)Lcom/serenegiant/math/Vector;

    return-object p0
.end method

.method public set(FF)Lcom/serenegiant/math/Vector;
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, p2, v0}, Lcom/serenegiant/math/Vector;->set(FFF)Lcom/serenegiant/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public set(FFF)Lcom/serenegiant/math/Vector;
    .locals 0

    .line 121
    iput p1, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 122
    iput p2, p0, Lcom/serenegiant/math/Vector;->y:F

    .line 123
    iput p3, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public set(FFFF)Lcom/serenegiant/math/Vector;
    .locals 0

    mul-float p1, p1, p4

    .line 136
    iput p1, p0, Lcom/serenegiant/math/Vector;->x:F

    mul-float p2, p2, p4

    .line 137
    iput p2, p0, Lcom/serenegiant/math/Vector;->y:F

    mul-float p3, p3, p4

    .line 138
    iput p3, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public set(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;
    .locals 2

    .line 100
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/serenegiant/math/Vector;->set(FFF)Lcom/serenegiant/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/serenegiant/math/Vector;F)Lcom/serenegiant/math/Vector;
    .locals 2

    .line 110
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/serenegiant/math/Vector;->set(FFFF)Lcom/serenegiant/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public setQuat([F)Lcom/serenegiant/math/Vector;
    .locals 1

    const/4 v0, 0x0

    .line 811
    aget v0, p1, v0

    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    const/4 v0, 0x1

    .line 812
    aget v0, p1, v0

    iput v0, p0, Lcom/serenegiant/math/Vector;->y:F

    const/4 v0, 0x2

    .line 813
    aget p1, p1, v0

    iput p1, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public sign()Lcom/serenegiant/math/Vector;
    .locals 1

    .line 922
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iput v0, p0, Lcom/serenegiant/math/Vector;->x:F

    .line 923
    iget v0, p0, Lcom/serenegiant/math/Vector;->y:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iput v0, p0, Lcom/serenegiant/math/Vector;->y:F

    .line 924
    iget v0, p0, Lcom/serenegiant/math/Vector;->z:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iput v0, p0, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public slope()F
    .locals 3

    .line 911
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 912
    iget v1, p0, Lcom/serenegiant/math/Vector;->y:F

    div-float/2addr v1, v0

    return v1

    .line 914
    :cond_0
    iget v0, p0, Lcom/serenegiant/math/Vector;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public slope(Lcom/serenegiant/math/Vector;)F
    .locals 3

    .line 900
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p0, Lcom/serenegiant/math/Vector;->x:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 901
    iget p1, p1, Lcom/serenegiant/math/Vector;->y:F

    iget v2, p0, Lcom/serenegiant/math/Vector;->y:F

    sub-float/2addr p1, v2

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    return p1

    .line 903
    :cond_0
    iget p1, p1, Lcom/serenegiant/math/Vector;->y:F

    iget v0, p0, Lcom/serenegiant/math/Vector;->y:F

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public sub(FF)Lcom/serenegiant/math/Vector;
    .locals 1

    neg-float p1, p1

    neg-float p2, p2

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, p1, p2, v0}, Lcom/serenegiant/math/Vector;->add(FFF)Lcom/serenegiant/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public sub(FFF)Lcom/serenegiant/math/Vector;
    .locals 0

    neg-float p1, p1

    neg-float p2, p2

    neg-float p3, p3

    .line 279
    invoke-virtual {p0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->add(FFF)Lcom/serenegiant/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public sub(FFFF)Lcom/serenegiant/math/Vector;
    .locals 0

    neg-float p1, p1

    neg-float p2, p2

    neg-float p3, p3

    .line 291
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/serenegiant/math/Vector;->add(FFFF)Lcom/serenegiant/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public sub(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;
    .locals 2

    .line 264
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    neg-float v0, v0

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    neg-float v1, v1

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    neg-float p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/serenegiant/math/Vector;->add(FFF)Lcom/serenegiant/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public sub(Lcom/serenegiant/math/Vector;F)Lcom/serenegiant/math/Vector;
    .locals 2

    .line 268
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    neg-float v0, v0

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    neg-float v1, v1

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    neg-float p1, p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/serenegiant/math/Vector;->add(FFFF)Lcom/serenegiant/math/Vector;

    move-result-object p1

    return-object p1
.end method

.method public swap(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;
    .locals 2

    .line 882
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->x:F

    iput v1, p0, Lcom/serenegiant/math/Vector;->x:F

    iput v0, p1, Lcom/serenegiant/math/Vector;->x:F

    .line 883
    iget v0, p0, Lcom/serenegiant/math/Vector;->y:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    iput v1, p0, Lcom/serenegiant/math/Vector;->y:F

    iput v0, p1, Lcom/serenegiant/math/Vector;->y:F

    .line 884
    iget v0, p0, Lcom/serenegiant/math/Vector;->z:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->z:F

    iput v1, p0, Lcom/serenegiant/math/Vector;->z:F

    iput v0, p1, Lcom/serenegiant/math/Vector;->z:F

    return-object p0
.end method

.method public swapXY()Lcom/serenegiant/math/Vector;
    .locals 2

    .line 892
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p0, Lcom/serenegiant/math/Vector;->y:F

    iput v1, p0, Lcom/serenegiant/math/Vector;->x:F

    iput v0, p0, Lcom/serenegiant/math/Vector;->y:F

    return-object p0
.end method

.method public toDegree()Lcom/serenegiant/math/Vector;
    .locals 1

    const v0, 0x42652ee1

    .line 398
    invoke-virtual {p0, v0}, Lcom/serenegiant/math/Vector;->mult(F)Lcom/serenegiant/math/Vector;

    move-result-object v0

    return-object v0
.end method

.method public toRadian()Lcom/serenegiant/math/Vector;
    .locals 1

    const v0, 0x3c8efa35

    .line 390
    invoke-virtual {p0, v0}, Lcom/serenegiant/math/Vector;->mult(F)Lcom/serenegiant/math/Vector;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 930
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/serenegiant/math/Vector;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/serenegiant/math/Vector;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/serenegiant/math/Vector;->z:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "(%f,%f,%f)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 934
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/serenegiant/math/Vector;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/serenegiant/math/Vector;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/serenegiant/math/Vector;->z:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public x()F
    .locals 1

    .line 147
    iget v0, p0, Lcom/serenegiant/math/Vector;->x:F

    return v0
.end method

.method public x(F)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/serenegiant/math/Vector;->x:F

    return-void
.end method

.method public y()F
    .locals 1

    .line 163
    iget v0, p0, Lcom/serenegiant/math/Vector;->y:F

    return v0
.end method

.method public y(F)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/serenegiant/math/Vector;->y:F

    return-void
.end method

.method public z()F
    .locals 1

    .line 179
    iget v0, p0, Lcom/serenegiant/math/Vector;->z:F

    return v0
.end method

.method public z(F)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/serenegiant/math/Vector;->z:F

    return-void
.end method
