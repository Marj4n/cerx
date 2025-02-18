.class public Lcom/serenegiant/math/RingBounds;
.super Lcom/serenegiant/math/CylinderBounds;
.source "RingBounds.java"


# static fields
.field private static final serialVersionUID:J = -0x47917be17f2fcf00L


# instance fields
.field protected height:F

.field protected inner_r:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/serenegiant/math/CylinderBounds;-><init>(FFFFF)V

    .line 31
    iput p6, p0, Lcom/serenegiant/math/RingBounds;->inner_r:F

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/math/Vector;FFF)V
    .locals 7

    .line 35
    iget v1, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v2, p1, Lcom/serenegiant/math/Vector;->y:F

    iget v3, p1, Lcom/serenegiant/math/Vector;->z:F

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/math/RingBounds;-><init>(FFFFFF)V

    return-void
.end method


# virtual methods
.method public ptInBounds(FFF)Z
    .locals 1

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/serenegiant/math/CylinderBounds;->ptInBounds(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget v0, p0, Lcom/serenegiant/math/RingBounds;->inner_r:F

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/serenegiant/math/RingBounds;->ptInCylinder(FFFF)Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    :cond_0
    return v0
.end method
