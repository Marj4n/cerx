.class public Lcom/serenegiant/graphics/IsoscelesTriangleShape;
.super Lcom/serenegiant/graphics/TriangleShape;
.source "IsoscelesTriangleShape.java"


# direct methods
.method public constructor <init>(FF)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    const/4 p1, 0x4

    aput p2, v0, p1

    const/4 p1, 0x5

    aput v2, v0, p1

    .line 34
    invoke-direct {p0, v0}, Lcom/serenegiant/graphics/TriangleShape;-><init>([F)V

    return-void
.end method
