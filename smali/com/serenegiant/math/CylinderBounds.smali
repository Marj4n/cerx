.class public Lcom/serenegiant/math/CylinderBounds;
.super Lcom/serenegiant/math/BaseBounds;
.source "CylinderBounds.java"


# static fields
.field private static final serialVersionUID:J = -0x27e91405f826db50L


# instance fields
.field protected height:F

.field protected outer_r:F

.field private final w1:Lcom/serenegiant/math/Vector;

.field private final w2:Lcom/serenegiant/math/Vector;


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/serenegiant/math/BaseBounds;-><init>()V

    .line 28
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/math/CylinderBounds;->w1:Lcom/serenegiant/math/Vector;

    .line 29
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/math/CylinderBounds;->w2:Lcom/serenegiant/math/Vector;

    .line 33
    iget-object v0, p0, Lcom/serenegiant/math/CylinderBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->set(FFF)Lcom/serenegiant/math/Vector;

    mul-float p1, p5, p5

    mul-float p2, p4, p4

    const/high16 p3, 0x40800000    # 4.0f

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 34
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/serenegiant/math/CylinderBounds;->radius:F

    .line 35
    iput p5, p0, Lcom/serenegiant/math/CylinderBounds;->outer_r:F

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p4, p1

    .line 36
    iput p4, p0, Lcom/serenegiant/math/CylinderBounds;->height:F

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/math/Vector;FF)V
    .locals 6

    .line 41
    iget v1, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v2, p1, Lcom/serenegiant/math/Vector;->y:F

    iget v3, p1, Lcom/serenegiant/math/Vector;->z:F

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/serenegiant/math/CylinderBounds;-><init>(FFFFF)V

    return-void
.end method


# virtual methods
.method public ptInBounds(FFF)Z
    .locals 1

    .line 63
    iget v0, p0, Lcom/serenegiant/math/CylinderBounds;->radius:F

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/serenegiant/math/CylinderBounds;->ptInBoundsSphere(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget v0, p0, Lcom/serenegiant/math/CylinderBounds;->outer_r:F

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/serenegiant/math/CylinderBounds;->ptInCylinder(FFFF)Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected ptInCylinder(FFFF)Z
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/serenegiant/math/CylinderBounds;->w1:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->set(FFF)Lcom/serenegiant/math/Vector;

    move-result-object p1

    iget-object p2, p0, Lcom/serenegiant/math/CylinderBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {p1, p2}, Lcom/serenegiant/math/Vector;->sub(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    move-result-object p1

    iget-object p2, p0, Lcom/serenegiant/math/CylinderBounds;->angle:Lcom/serenegiant/math/Vector;

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p3}, Lcom/serenegiant/math/Vector;->rotate(Lcom/serenegiant/math/Vector;F)Lcom/serenegiant/math/Vector;

    .line 50
    iget-object p1, p0, Lcom/serenegiant/math/CylinderBounds;->w2:Lcom/serenegiant/math/Vector;

    iget-object p2, p0, Lcom/serenegiant/math/CylinderBounds;->w1:Lcom/serenegiant/math/Vector;

    invoke-virtual {p1, p2}, Lcom/serenegiant/math/Vector;->set(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    iget-object p1, p0, Lcom/serenegiant/math/CylinderBounds;->w2:Lcom/serenegiant/math/Vector;

    const/4 p2, 0x0

    iput p2, p1, Lcom/serenegiant/math/Vector;->y:F

    .line 51
    iget-object p1, p0, Lcom/serenegiant/math/CylinderBounds;->w2:Lcom/serenegiant/math/Vector;

    iget-object p3, p0, Lcom/serenegiant/math/CylinderBounds;->position:Lcom/serenegiant/math/Vector;

    iget p3, p3, Lcom/serenegiant/math/Vector;->x:F

    iget-object v0, p0, Lcom/serenegiant/math/CylinderBounds;->position:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->z:F

    invoke-virtual {p1, p3, p2, v0}, Lcom/serenegiant/math/Vector;->distSquared(FFF)F

    move-result p1

    mul-float p2, p4, p4

    const/4 p3, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/serenegiant/math/CylinderBounds;->position:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->x:F

    sub-float/2addr p1, p4

    .line 53
    iget-object p2, p0, Lcom/serenegiant/math/CylinderBounds;->position:Lcom/serenegiant/math/Vector;

    iget p2, p2, Lcom/serenegiant/math/Vector;->x:F

    add-float/2addr p2, p4

    .line 54
    iget-object p4, p0, Lcom/serenegiant/math/CylinderBounds;->position:Lcom/serenegiant/math/Vector;

    iget p4, p4, Lcom/serenegiant/math/Vector;->y:F

    iget v0, p0, Lcom/serenegiant/math/CylinderBounds;->height:F

    sub-float/2addr p4, v0

    .line 55
    iget-object v0, p0, Lcom/serenegiant/math/CylinderBounds;->position:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->y:F

    iget v1, p0, Lcom/serenegiant/math/CylinderBounds;->height:F

    add-float/2addr v0, v1

    .line 56
    iget-object v1, p0, Lcom/serenegiant/math/CylinderBounds;->w1:Lcom/serenegiant/math/Vector;

    iget v1, v1, Lcom/serenegiant/math/Vector;->x:F

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/serenegiant/math/CylinderBounds;->w1:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->x:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/serenegiant/math/CylinderBounds;->w1:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->y:F

    cmpl-float p1, p1, p4

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/serenegiant/math/CylinderBounds;->w1:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->y:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    const/4 p3, 0x1

    :cond_0
    return p3
.end method
