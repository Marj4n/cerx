.class public Lcom/serenegiant/math/OverlapTester;
.super Ljava/lang/Object;
.source "OverlapTester.java"


# static fields
.field private static final r1L:Lcom/serenegiant/math/Vector;

.field private static final r2L:Lcom/serenegiant/math/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    sput-object v0, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    .line 38
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    sput-object v0, Lcom/serenegiant/math/OverlapTester;->r2L:Lcom/serenegiant/math/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Lcom/serenegiant/math/BaseBounds;Lcom/serenegiant/math/BaseBounds;)Z
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iget-object v1, p1, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, v1}, Lcom/serenegiant/math/Vector;->distSquared(Lcom/serenegiant/math/Vector;)F

    move-result v0

    .line 27
    iget p0, p0, Lcom/serenegiant/math/BaseBounds;->radius:F

    iget p1, p1, Lcom/serenegiant/math/BaseBounds;->radius:F

    add-float/2addr p0, p1

    mul-float p0, p0, p0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/CircleBounds;FF)Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/serenegiant/math/CircleBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/math/Vector;->distSquared(FF)F

    move-result p1

    iget p2, p0, Lcom/serenegiant/math/CircleBounds;->radius:F

    iget p0, p0, Lcom/serenegiant/math/CircleBounds;->radius:F

    mul-float p2, p2, p0

    cmpg-float p0, p1, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/CircleBounds;FFF)Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/serenegiant/math/CircleBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->distSquared(FFF)F

    move-result p1

    iget p2, p0, Lcom/serenegiant/math/CircleBounds;->radius:F

    iget p0, p0, Lcom/serenegiant/math/CircleBounds;->radius:F

    mul-float p2, p2, p0

    cmpg-float p0, p1, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/CircleBounds;Lcom/serenegiant/math/CircleBounds;)Z
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/serenegiant/math/CircleBounds;->position:Lcom/serenegiant/math/Vector;

    iget-object v1, p1, Lcom/serenegiant/math/CircleBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, v1}, Lcom/serenegiant/math/Vector;->distSquared(Lcom/serenegiant/math/Vector;)F

    move-result v0

    .line 33
    iget p0, p0, Lcom/serenegiant/math/CircleBounds;->radius:F

    iget p1, p1, Lcom/serenegiant/math/CircleBounds;->radius:F

    add-float/2addr p0, p1

    mul-float p0, p0, p0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/CircleBounds;Lcom/serenegiant/math/RectangleBounds;)Z
    .locals 7

    .line 58
    iget-object v0, p0, Lcom/serenegiant/math/CircleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->x:F

    .line 59
    iget-object v1, p0, Lcom/serenegiant/math/CircleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v1, v1, Lcom/serenegiant/math/Vector;->y:F

    .line 60
    iget-object v2, p0, Lcom/serenegiant/math/CircleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v2, v2, Lcom/serenegiant/math/Vector;->z:F

    .line 61
    sget-object v3, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget-object v4, p1, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v3, v4}, Lcom/serenegiant/math/Vector;->set(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    move-result-object v3

    iget-object v4, p1, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    invoke-virtual {v3, v4}, Lcom/serenegiant/math/Vector;->sub(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    .line 62
    iget-object v3, p1, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v3, v3, Lcom/serenegiant/math/Vector;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    .line 63
    iget-object v5, p1, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v5, v5, Lcom/serenegiant/math/Vector;->y:F

    mul-float v5, v5, v4

    .line 64
    iget-object p1, p1, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    mul-float p1, p1, v4

    .line 66
    iget-object v4, p0, Lcom/serenegiant/math/CircleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v4, v4, Lcom/serenegiant/math/Vector;->x:F

    sget-object v6, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v6, v6, Lcom/serenegiant/math/Vector;->x:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_0

    .line 67
    sget-object v0, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->x:F

    goto :goto_0

    .line 68
    :cond_0
    iget-object v4, p0, Lcom/serenegiant/math/CircleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v4, v4, Lcom/serenegiant/math/Vector;->x:F

    sget-object v6, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v6, v6, Lcom/serenegiant/math/Vector;->x:F

    add-float/2addr v6, v3

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    .line 69
    sget-object v0, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->x:F

    add-float/2addr v0, v3

    .line 72
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/serenegiant/math/CircleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v3, v3, Lcom/serenegiant/math/Vector;->y:F

    sget-object v4, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v4, v4, Lcom/serenegiant/math/Vector;->y:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 73
    sget-object v1, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v1, v1, Lcom/serenegiant/math/Vector;->y:F

    goto :goto_1

    .line 74
    :cond_2
    iget-object v3, p0, Lcom/serenegiant/math/CircleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v3, v3, Lcom/serenegiant/math/Vector;->y:F

    sget-object v4, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v4, v4, Lcom/serenegiant/math/Vector;->y:F

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 75
    sget-object v1, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v1, v1, Lcom/serenegiant/math/Vector;->y:F

    add-float/2addr v1, v5

    .line 78
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/serenegiant/math/CircleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v3, v3, Lcom/serenegiant/math/Vector;->z:F

    sget-object v4, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v4, v4, Lcom/serenegiant/math/Vector;->z:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 79
    sget-object p1, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v2, p1, Lcom/serenegiant/math/Vector;->z:F

    goto :goto_2

    .line 80
    :cond_4
    iget-object v3, p0, Lcom/serenegiant/math/CircleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v3, v3, Lcom/serenegiant/math/Vector;->z:F

    sget-object v4, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v4, v4, Lcom/serenegiant/math/Vector;->z:F

    add-float/2addr v4, p1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 81
    sget-object v2, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v2, v2, Lcom/serenegiant/math/Vector;->z:F

    add-float/2addr v2, p1

    .line 84
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/serenegiant/math/CircleBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {p1, v0, v1, v2}, Lcom/serenegiant/math/Vector;->distSquared(FFF)F

    move-result p1

    iget v0, p0, Lcom/serenegiant/math/CircleBounds;->radius:F

    iget p0, p0, Lcom/serenegiant/math/CircleBounds;->radius:F

    mul-float v0, v0, p0

    cmpg-float p0, p1, v0

    if-gez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_3

    :cond_6
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method public static check(Lcom/serenegiant/math/CircleBounds;Lcom/serenegiant/math/Vector;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/serenegiant/math/CircleBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1}, Lcom/serenegiant/math/Vector;->distSquared(Lcom/serenegiant/math/Vector;)F

    move-result p1

    iget v0, p0, Lcom/serenegiant/math/CircleBounds;->radius:F

    iget p0, p0, Lcom/serenegiant/math/CircleBounds;->radius:F

    mul-float v0, v0, p0

    cmpg-float p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/RectangleBounds;FF)Z
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-static {p0, p1, p2, v0}, Lcom/serenegiant/math/OverlapTester;->check(Lcom/serenegiant/math/RectangleBounds;FFF)Z

    move-result p0

    return p0
.end method

.method public static check(Lcom/serenegiant/math/RectangleBounds;FFF)Z
    .locals 3

    .line 108
    sget-object v0, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget-object v1, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, v1}, Lcom/serenegiant/math/Vector;->set(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, v1}, Lcom/serenegiant/math/Vector;->sub(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    .line 109
    sget-object v0, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->x:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    sget-object v0, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->x:F

    iget-object v1, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v1, v1, Lcom/serenegiant/math/Vector;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    sget-object p1, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->y:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    sget-object p1, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->y:F

    iget-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->y:F

    mul-float v0, v0, v2

    add-float/2addr p1, v0

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    sget-object p1, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_0

    sget-object p1, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    iget-object p0, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget p0, p0, Lcom/serenegiant/math/Vector;->z:F

    mul-float p0, p0, v2

    add-float/2addr p1, p0

    cmpl-float p0, p1, p3

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/RectangleBounds;Lcom/serenegiant/math/RectangleBounds;)Z
    .locals 6

    .line 40
    sget-object v0, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget-object v1, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, v1}, Lcom/serenegiant/math/Vector;->set(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, v1}, Lcom/serenegiant/math/Vector;->sub(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    .line 41
    iget-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    .line 42
    iget-object v2, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v2, v2, Lcom/serenegiant/math/Vector;->y:F

    mul-float v2, v2, v1

    .line 43
    iget-object p0, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget p0, p0, Lcom/serenegiant/math/Vector;->z:F

    mul-float p0, p0, v1

    .line 44
    sget-object v3, Lcom/serenegiant/math/OverlapTester;->r2L:Lcom/serenegiant/math/Vector;

    iget-object v4, p1, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v3, v4}, Lcom/serenegiant/math/Vector;->set(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    move-result-object v3

    iget-object v4, p1, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    invoke-virtual {v3, v4}, Lcom/serenegiant/math/Vector;->sub(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    .line 45
    iget-object v3, p1, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v3, v3, Lcom/serenegiant/math/Vector;->x:F

    mul-float v3, v3, v1

    .line 46
    iget-object v4, p1, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v4, v4, Lcom/serenegiant/math/Vector;->y:F

    mul-float v4, v4, v1

    .line 47
    iget-object p1, p1, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    mul-float p1, p1, v1

    .line 49
    sget-object v1, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v1, v1, Lcom/serenegiant/math/Vector;->x:F

    sget-object v5, Lcom/serenegiant/math/OverlapTester;->r2L:Lcom/serenegiant/math/Vector;

    iget v5, v5, Lcom/serenegiant/math/Vector;->x:F

    add-float/2addr v5, v3

    cmpg-float v1, v1, v5

    if-gez v1, :cond_0

    sget-object v1, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v1, v1, Lcom/serenegiant/math/Vector;->x:F

    add-float/2addr v1, v0

    sget-object v0, Lcom/serenegiant/math/OverlapTester;->r2L:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->x:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->y:F

    sget-object v1, Lcom/serenegiant/math/OverlapTester;->r2L:Lcom/serenegiant/math/Vector;

    iget v1, v1, Lcom/serenegiant/math/Vector;->y:F

    add-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->y:F

    add-float/2addr v0, v2

    sget-object v1, Lcom/serenegiant/math/OverlapTester;->r2L:Lcom/serenegiant/math/Vector;

    iget v1, v1, Lcom/serenegiant/math/Vector;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->z:F

    sget-object v1, Lcom/serenegiant/math/OverlapTester;->r2L:Lcom/serenegiant/math/Vector;

    iget v1, v1, Lcom/serenegiant/math/Vector;->z:F

    add-float/2addr v1, p1

    cmpg-float p1, v0, v1

    if-gez p1, :cond_0

    sget-object p1, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    add-float/2addr p1, p0

    sget-object p0, Lcom/serenegiant/math/OverlapTester;->r2L:Lcom/serenegiant/math/Vector;

    iget p0, p0, Lcom/serenegiant/math/Vector;->z:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/RectangleBounds;Lcom/serenegiant/math/Vector;)Z
    .locals 2

    .line 100
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    invoke-static {p0, v0, v1, p1}, Lcom/serenegiant/math/OverlapTester;->check(Lcom/serenegiant/math/RectangleBounds;FFF)Z

    move-result p0

    return p0
.end method

.method public static check(Lcom/serenegiant/math/SphereBounds;FFF)Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/serenegiant/math/SphereBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->distance(FFF)F

    move-result p1

    iget p2, p0, Lcom/serenegiant/math/SphereBounds;->radius:F

    iget p0, p0, Lcom/serenegiant/math/SphereBounds;->radius:F

    mul-float p2, p2, p0

    cmpg-float p0, p1, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/SphereBounds;Lcom/serenegiant/math/SphereBounds;)Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/serenegiant/math/SphereBounds;->position:Lcom/serenegiant/math/Vector;

    iget-object v1, p1, Lcom/serenegiant/math/SphereBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, v1}, Lcom/serenegiant/math/Vector;->distance(Lcom/serenegiant/math/Vector;)F

    move-result v0

    .line 116
    iget p0, p0, Lcom/serenegiant/math/SphereBounds;->radius:F

    iget p1, p1, Lcom/serenegiant/math/SphereBounds;->radius:F

    add-float/2addr p0, p1

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/SphereBounds;Lcom/serenegiant/math/Vector;)Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/serenegiant/math/SphereBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1}, Lcom/serenegiant/math/Vector;->distSquared(Lcom/serenegiant/math/Vector;)F

    move-result p1

    iget v0, p0, Lcom/serenegiant/math/SphereBounds;->radius:F

    iget p0, p0, Lcom/serenegiant/math/SphereBounds;->radius:F

    mul-float v0, v0, p0

    cmpg-float p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
