.class public Lcom/serenegiant/graphics/TriangleShape;
.super Lcom/serenegiant/graphics/PathShape;
.source "TriangleShape.java"


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 32
    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/graphics/TriangleShape;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 3

    .line 59
    invoke-static {p1, p3, p5}, Lcom/serenegiant/graphics/TriangleShape;->delta(FFF)F

    move-result v0

    invoke-static {p2, p4, p6}, Lcom/serenegiant/graphics/TriangleShape;->delta(FFF)F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/serenegiant/graphics/PathShape;-><init>(Landroid/graphics/Path;FF)V

    .line 60
    invoke-static {p1, p3, p5}, Lcom/serenegiant/graphics/TriangleShape;->min(FFF)F

    move-result v0

    .line 61
    invoke-static {p2, p4, p6}, Lcom/serenegiant/graphics/TriangleShape;->min(FFF)F

    move-result v1

    .line 62
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sub-float/2addr p1, v0

    sub-float/2addr p2, v1

    .line 63
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float/2addr p3, v0

    sub-float/2addr p4, v1

    .line 64
    invoke-virtual {v2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float/2addr p5, v0

    sub-float/2addr p6, v1

    .line 65
    invoke-virtual {v2, p5, p6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 67
    invoke-virtual {p0, v2}, Lcom/serenegiant/graphics/TriangleShape;->setPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 8

    const/4 v0, 0x0

    .line 43
    aget v2, p1, v0

    const/4 v0, 0x1

    aget v3, p1, v0

    const/4 v0, 0x2

    aget v4, p1, v0

    const/4 v0, 0x3

    aget v5, p1, v0

    const/4 v0, 0x4

    aget v6, p1, v0

    const/4 v0, 0x5

    aget v7, p1, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/serenegiant/graphics/TriangleShape;-><init>(FFFFFF)V

    return-void
.end method

.method private static final delta(FFF)F
    .locals 1

    .line 100
    invoke-static {p0, p1, p2}, Lcom/serenegiant/graphics/TriangleShape;->max(FFF)F

    move-result v0

    invoke-static {p0, p1, p2}, Lcom/serenegiant/graphics/TriangleShape;->min(FFF)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method private static final max(FFF)F
    .locals 0

    .line 89
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private static final min(FFF)F
    .locals 0

    .line 78
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method
