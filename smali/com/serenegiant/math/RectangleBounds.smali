.class public Lcom/serenegiant/math/RectangleBounds;
.super Lcom/serenegiant/math/BaseBounds;
.source "RectangleBounds.java"


# static fields
.field private static final serialVersionUID:J = 0x39d3b0d7e2fe024L


# instance fields
.field private final boundsRect:Landroid/graphics/Rect;

.field public final box:Lcom/serenegiant/math/Vector;

.field private final w:Lcom/serenegiant/math/Vector;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 58
    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/math/RectangleBounds;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/serenegiant/math/BaseBounds;-><init>()V

    .line 31
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->boundsRect:Landroid/graphics/Rect;

    .line 33
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->w:Lcom/serenegiant/math/Vector;

    .line 45
    iget-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->set(FFF)Lcom/serenegiant/math/Vector;

    .line 46
    iget-object p1, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p4, p2

    div-float/2addr p5, p2

    div-float/2addr p6, p2

    invoke-virtual {p1, p4, p5, p6}, Lcom/serenegiant/math/Vector;->set(FFF)Lcom/serenegiant/math/Vector;

    .line 47
    iget-object p1, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    invoke-virtual {p1}, Lcom/serenegiant/math/Vector;->len()F

    move-result p1

    iput p1, p0, Lcom/serenegiant/math/RectangleBounds;->radius:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 3

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/serenegiant/math/RectangleBounds;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/math/Vector;FF)V
    .locals 7

    .line 68
    iget v1, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v2, p1, Lcom/serenegiant/math/Vector;->y:F

    iget v3, p1, Lcom/serenegiant/math/Vector;->z:F

    const/4 v6, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/math/RectangleBounds;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/math/Vector;Lcom/serenegiant/math/Vector;)V
    .locals 4

    .line 76
    invoke-direct {p0}, Lcom/serenegiant/math/BaseBounds;-><init>()V

    .line 31
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->boundsRect:Landroid/graphics/Rect;

    .line 33
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->w:Lcom/serenegiant/math/Vector;

    .line 78
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p2, Lcom/serenegiant/math/Vector;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 79
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p2, Lcom/serenegiant/math/Vector;->x:F

    iput v1, p1, Lcom/serenegiant/math/Vector;->x:F

    iput v0, p2, Lcom/serenegiant/math/Vector;->x:F

    .line 81
    :cond_0
    iget v0, p1, Lcom/serenegiant/math/Vector;->y:F

    iget v1, p2, Lcom/serenegiant/math/Vector;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 82
    iget v0, p1, Lcom/serenegiant/math/Vector;->y:F

    iget v1, p2, Lcom/serenegiant/math/Vector;->y:F

    iput v1, p1, Lcom/serenegiant/math/Vector;->y:F

    iput v0, p2, Lcom/serenegiant/math/Vector;->y:F

    .line 84
    :cond_1
    iget v0, p1, Lcom/serenegiant/math/Vector;->z:F

    iget v1, p2, Lcom/serenegiant/math/Vector;->z:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 85
    iget v0, p1, Lcom/serenegiant/math/Vector;->z:F

    iget v1, p2, Lcom/serenegiant/math/Vector;->z:F

    iput v1, p1, Lcom/serenegiant/math/Vector;->z:F

    iput v0, p2, Lcom/serenegiant/math/Vector;->z:F

    .line 87
    :cond_2
    iget v0, p2, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->x:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p2, Lcom/serenegiant/math/Vector;->y:F

    iget v3, p1, Lcom/serenegiant/math/Vector;->y:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    iget p2, p2, Lcom/serenegiant/math/Vector;->z:F

    iget v3, p1, Lcom/serenegiant/math/Vector;->z:F

    sub-float/2addr p2, v3

    div-float/2addr p2, v1

    invoke-virtual {p0, v0, v2, p2}, Lcom/serenegiant/math/RectangleBounds;->setPosition(FFF)Lcom/serenegiant/math/BaseBounds;

    .line 91
    iget-object p2, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {p2, v0}, Lcom/serenegiant/math/Vector;->set(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/serenegiant/math/Vector;->sub(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    .line 92
    iget-object p1, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    invoke-virtual {p1}, Lcom/serenegiant/math/Vector;->len()F

    move-result p1

    iput p1, p0, Lcom/serenegiant/math/RectangleBounds;->radius:F

    return-void
.end method


# virtual methods
.method public boundsRect()Landroid/graphics/Rect;
    .locals 6

    .line 133
    iget-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->boundsRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v1, v1, Lcom/serenegiant/math/Vector;->x:F

    iget-object v2, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v2, v2, Lcom/serenegiant/math/Vector;->x:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v2, v2, Lcom/serenegiant/math/Vector;->y:F

    iget-object v3, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v3, v3, Lcom/serenegiant/math/Vector;->y:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v3, v3, Lcom/serenegiant/math/Vector;->x:F

    iget-object v4, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v4, v4, Lcom/serenegiant/math/Vector;->x:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v4, v4, Lcom/serenegiant/math/Vector;->y:F

    iget-object v5, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v5, v5, Lcom/serenegiant/math/Vector;->y:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 136
    iget-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->boundsRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public boundsRect(F)Landroid/graphics/Rect;
    .locals 6

    .line 145
    iget-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->boundsRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v1, v1, Lcom/serenegiant/math/Vector;->x:F

    iget-object v2, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v2, v2, Lcom/serenegiant/math/Vector;->x:F

    mul-float v2, v2, p1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v2, v2, Lcom/serenegiant/math/Vector;->y:F

    iget-object v3, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v3, v3, Lcom/serenegiant/math/Vector;->y:F

    mul-float v3, v3, p1

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v3, v3, Lcom/serenegiant/math/Vector;->x:F

    iget-object v4, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v4, v4, Lcom/serenegiant/math/Vector;->x:F

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v4, v4, Lcom/serenegiant/math/Vector;->y:F

    iget-object v5, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v5, v5, Lcom/serenegiant/math/Vector;->y:F

    mul-float v5, v5, p1

    add-float/2addr v4, v5

    float-to-int p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 148
    iget-object p1, p0, Lcom/serenegiant/math/RectangleBounds;->boundsRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method public ptInBounds(FFF)Z
    .locals 4

    .line 109
    iget v0, p0, Lcom/serenegiant/math/RectangleBounds;->radius:F

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/serenegiant/math/RectangleBounds;->ptInBoundsSphere(FFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->w:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->set(FFF)Lcom/serenegiant/math/Vector;

    move-result-object p1

    iget-object p2, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {p1, p2}, Lcom/serenegiant/math/Vector;->sub(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    move-result-object p1

    iget-object p2, p0, Lcom/serenegiant/math/RectangleBounds;->angle:Lcom/serenegiant/math/Vector;

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p3}, Lcom/serenegiant/math/Vector;->rotate(Lcom/serenegiant/math/Vector;F)Lcom/serenegiant/math/Vector;

    .line 115
    iget-object p1, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->x:F

    iget-object p2, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget p2, p2, Lcom/serenegiant/math/Vector;->x:F

    sub-float/2addr p1, p2

    .line 116
    iget-object p2, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    iget p2, p2, Lcom/serenegiant/math/Vector;->x:F

    iget-object p3, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget p3, p3, Lcom/serenegiant/math/Vector;->x:F

    add-float/2addr p2, p3

    .line 117
    iget-object p3, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    iget p3, p3, Lcom/serenegiant/math/Vector;->y:F

    iget-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->y:F

    sub-float/2addr p3, v0

    .line 118
    iget-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v0, v0, Lcom/serenegiant/math/Vector;->y:F

    iget-object v1, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v1, v1, Lcom/serenegiant/math/Vector;->y:F

    add-float/2addr v0, v1

    .line 119
    iget-object v1, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v1, v1, Lcom/serenegiant/math/Vector;->z:F

    iget-object v2, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v2, v2, Lcom/serenegiant/math/Vector;->z:F

    sub-float/2addr v1, v2

    .line 120
    iget-object v2, p0, Lcom/serenegiant/math/RectangleBounds;->position:Lcom/serenegiant/math/Vector;

    iget v2, v2, Lcom/serenegiant/math/Vector;->z:F

    iget-object v3, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v3, v3, Lcom/serenegiant/math/Vector;->z:F

    add-float/2addr v2, v3

    .line 121
    iget-object v3, p0, Lcom/serenegiant/math/RectangleBounds;->w:Lcom/serenegiant/math/Vector;

    iget v3, v3, Lcom/serenegiant/math/Vector;->x:F

    cmpl-float p1, v3, p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/serenegiant/math/RectangleBounds;->w:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->x:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/serenegiant/math/RectangleBounds;->w:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->y:F

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/serenegiant/math/RectangleBounds;->w:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->y:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/serenegiant/math/RectangleBounds;->w:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/serenegiant/math/RectangleBounds;->w:Lcom/serenegiant/math/Vector;

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
