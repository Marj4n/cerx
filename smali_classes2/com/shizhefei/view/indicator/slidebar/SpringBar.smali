.class public Lcom/shizhefei/view/indicator/slidebar/SpringBar;
.super Landroid/view/View;
.source "SpringBar.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/slidebar/ScrollBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;
    }
.end annotation


# instance fields
.field private acceleration:F

.field private foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

.field private footMoveOffset:F

.field private head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

.field private headMoveOffset:F

.field private maxRadiusPercent:F

.field private minRadiusPercent:F

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private positionOffset:F

.field private radiusMax:F

.field private radiusMin:F

.field private radiusOffset:F

.field private tabWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const v0, 0x3f666666    # 0.9f

    const v1, 0x3eb33333    # 0.35f

    .line 42
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/shizhefei/view/indicator/slidebar/SpringBar;-><init>(Landroid/content/Context;IFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IFF)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 35
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->acceleration:F

    const p1, 0x3f19999a    # 0.6f

    .line 36
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->headMoveOffset:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 37
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->footMoveOffset:F

    .line 47
    iput p3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->maxRadiusPercent:F

    .line 48
    iput p4, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->minRadiusPercent:F

    .line 49
    new-instance p1, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;-><init>(Lcom/shizhefei/view/indicator/slidebar/SpringBar;Lcom/shizhefei/view/indicator/slidebar/SpringBar$1;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    .line 50
    new-instance p1, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-direct {p1, p0, p3}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;-><init>(Lcom/shizhefei/view/indicator/slidebar/SpringBar;Lcom/shizhefei/view/indicator/slidebar/SpringBar$1;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    .line 51
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->path:Landroid/graphics/Path;

    .line 52
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->paint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    .line 53
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->paint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private getOffsetX(F)F
    .locals 4

    .line 131
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->tabWidth:I

    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v2, v0, 0x4

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    int-to-float p1, v0

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p1, v0

    add-float/2addr v1, p1

    return v1
.end method

.method private getPositionDistance(I)F
    .locals 0

    .line 135
    iget p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->tabWidth:I

    int-to-float p1, p1

    return p1
.end method

.method private makePath()V
    .locals 12

    .line 150
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getRadius()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-float v0, v0

    .line 151
    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getRadius()F

    move-result v1

    float-to-double v1, v1

    iget-object v3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-float v1, v1

    .line 153
    iget-object v2, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getRadius()F

    move-result v2

    float-to-double v2, v2

    iget-object v4, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v6}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    double-to-float v2, v2

    .line 154
    iget-object v3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getRadius()F

    move-result v3

    float-to-double v3, v3

    iget-object v5, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v6}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v6}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v7}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    double-to-float v3, v3

    .line 156
    iget-object v4, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v4}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getX()F

    move-result v4

    sub-float/2addr v4, v0

    .line 157
    iget-object v5, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v5}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getY()F

    move-result v5

    add-float/2addr v5, v1

    .line 159
    iget-object v6, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v6}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getX()F

    move-result v6

    add-float/2addr v6, v0

    .line 160
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getY()F

    move-result v0

    sub-float/2addr v0, v1

    .line 162
    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getX()F

    move-result v1

    sub-float/2addr v1, v2

    .line 163
    iget-object v7, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v7}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getY()F

    move-result v7

    add-float/2addr v7, v3

    .line 165
    iget-object v8, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v8}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getX()F

    move-result v8

    add-float/2addr v8, v2

    .line 166
    iget-object v2, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getY()F

    move-result v2

    sub-float/2addr v2, v3

    .line 168
    iget-object v3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v3}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getX()F

    move-result v3

    iget-object v9, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v9}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getX()F

    move-result v9

    add-float/2addr v3, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v3, v9

    .line 169
    iget-object v10, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v10}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getY()F

    move-result v10

    iget-object v11, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v11}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getY()F

    move-result v11

    add-float/2addr v10, v11

    div-float/2addr v10, v9

    .line 171
    iget-object v9, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->path:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 172
    iget-object v9, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->path:Landroid/graphics/Path;

    invoke-virtual {v9, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 173
    iget-object v9, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->path:Landroid/graphics/Path;

    invoke-virtual {v9, v3, v10, v1, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 174
    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 175
    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v10, v6, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 176
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method


# virtual methods
.method public getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;
    .locals 1

    .line 86
    sget-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-object v0
.end method

.method public getHeight(I)I
    .locals 3

    .line 61
    div-int/lit8 v0, p1, 0x2

    .line 62
    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->setY(F)V

    .line 63
    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v1, v0}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->setY(F)V

    .line 64
    iget v1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->maxRadiusPercent:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->radiusMax:F

    .line 65
    iget v2, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->minRadiusPercent:F

    mul-float v0, v0, v2

    iput v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->radiusMin:F

    sub-float/2addr v1, v0

    .line 66
    iput v1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->radiusOffset:F

    return p1
.end method

.method public getSlideView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getWidth(I)I
    .locals 2

    .line 72
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->tabWidth:I

    .line 73
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->positionOffset:F

    const v1, 0x3ca3d70a    # 0.02f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    const v1, 0x3f7ae148    # 0.98f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v1, v0, v1}, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->onPageScrolled(IFI)V

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 140
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->makePath()V

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 143
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 144
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getRadius()F

    move-result v2

    iget-object v3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 145
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-virtual {v2}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->getRadius()F

    move-result v2

    iget-object v3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 9

    .line 93
    iput p2, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->positionOffset:F

    const/4 p3, 0x0

    const v0, 0x3ca3d70a    # 0.02f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_5

    const v0, 0x3f7ae148    # 0.98f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_1

    .line 102
    iget-object v2, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    iget v3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->radiusMin:F

    invoke-virtual {v2, v3}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->setRadius(F)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    sub-float v3, p2, v0

    div-float/2addr v3, v0

    iget v4, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->radiusOffset:F

    mul-float v3, v3, v4

    iget v4, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->radiusMin:F

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->setRadius(F)V

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    div-float v0, p2, v0

    sub-float v0, v2, v0

    iget v3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->radiusOffset:F

    mul-float v0, v0, v3

    iget v3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->radiusMin:F

    add-float/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->setRadius(F)V

    goto :goto_1

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    iget v1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->radiusMin:F

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->setRadius(F)V

    .line 113
    :goto_1
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->headMoveOffset:F

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v5, p2, v0

    if-lez v5, :cond_3

    sub-float p3, p2, v0

    sub-float v0, v2, v0

    div-float/2addr p3, v0

    .line 115
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->acceleration:F

    mul-float p3, p3, v0

    mul-float p3, p3, v1

    sub-float/2addr p3, v0

    float-to-double v5, p3

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    iget p3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->acceleration:F

    float-to-double v7, p3

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    iget p3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->acceleration:F

    float-to-double v7, p3

    .line 116
    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    mul-double v7, v7, v3

    div-double/2addr v5, v7

    double-to-float p3, v5

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-direct {p0, p2}, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->getOffsetX(F)F

    move-result v5

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->getPositionDistance(I)F

    move-result v6

    mul-float p3, p3, v6

    sub-float/2addr v5, p3

    invoke-virtual {v0, v5}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->setX(F)V

    .line 121
    iget p3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->footMoveOffset:F

    cmpg-float v0, p2, p3

    if-gez v0, :cond_4

    div-float p3, p2, p3

    .line 123
    iget v0, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->acceleration:F

    mul-float p3, p3, v0

    mul-float p3, p3, v1

    sub-float/2addr p3, v0

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    iget p3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->acceleration:F

    float-to-double v5, p3

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    add-double/2addr v0, v5

    iget p3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->acceleration:F

    float-to-double v5, p3

    .line 124
    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    div-double/2addr v0, v5

    double-to-float v2, v0

    .line 126
    :cond_4
    iget-object p3, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-direct {p0, p2}, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->getOffsetX(F)F

    move-result p2

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->getPositionDistance(I)F

    move-result p1

    mul-float v2, v2, p1

    sub-float/2addr p2, v2

    invoke-virtual {p3, p2}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->setX(F)V

    goto :goto_3

    .line 95
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-direct {p0, p3}, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->getOffsetX(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->setX(F)V

    .line 96
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    invoke-direct {p0, p3}, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->getOffsetX(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->setX(F)V

    .line 97
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->head:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    iget p2, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->radiusMax:F

    invoke-virtual {p1, p2}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->setRadius(F)V

    .line 98
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->foot:Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;

    iget p2, p0, Lcom/shizhefei/view/indicator/slidebar/SpringBar;->radiusMax:F

    invoke-virtual {p1, p2}, Lcom/shizhefei/view/indicator/slidebar/SpringBar$Point;->setRadius(F)V

    :goto_3
    return-void
.end method
