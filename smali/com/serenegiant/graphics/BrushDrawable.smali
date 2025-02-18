.class public Lcom/serenegiant/graphics/BrushDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "BrushDrawable.java"


# static fields
.field public static final BRUSH_ELIPSE:I = 0x1

.field public static final BRUSH_LINE:I = 0x2

.field public static final BRUSH_RECTANGLE:I = 0x4

.field public static final BRUSH_TRIANGLE:I = 0x3

.field private static final DEBUG:Z = false

.field public static final ERASE_ELIPSE:I = -0x1

.field public static final ERASE_LINE:I = -0x2

.field public static final ERASE_RECTANGLE:I = -0x4

.field public static final ERASE_TRIANGLE:I = -0x3

.field private static final TAG:Ljava/lang/String; = "BrushDrawable"


# instance fields
.field private final mClearXfermode:Landroid/graphics/Xfermode;

.field private final mDrawFilter:Landroid/graphics/DrawFilter;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPivot:Landroid/graphics/PointF;

.field private mRotation:F

.field private mShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(III)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/serenegiant/graphics/BrushDrawable;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/graphics/BrushDrawable;->mPivot:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/serenegiant/graphics/BrushDrawable;->mRotation:F

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/graphics/BrushDrawable;->mPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v0, p4, p5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/serenegiant/graphics/BrushDrawable;->mDrawFilter:Landroid/graphics/DrawFilter;

    .line 64
    new-instance p4, Landroid/graphics/PorterDuffXfermode;

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, p5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p4, p0, Lcom/serenegiant/graphics/BrushDrawable;->mClearXfermode:Landroid/graphics/Xfermode;

    const/16 p4, 0x64

    .line 65
    invoke-direct {p0, p4, p4}, Lcom/serenegiant/graphics/BrushDrawable;->init(II)V

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lcom/serenegiant/graphics/BrushDrawable;->setType(III)V

    return-void
.end method

.method private final init(II)V
    .locals 1

    const/16 v0, 0x64

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    .line 72
    :goto_0
    invoke-virtual {p0, p1}, Lcom/serenegiant/graphics/BrushDrawable;->setIntrinsicWidth(I)V

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x64

    .line 73
    :goto_1
    invoke-virtual {p0, p2}, Lcom/serenegiant/graphics/BrushDrawable;->setIntrinsicHeight(I)V

    .line 74
    iget-object p1, p0, Lcom/serenegiant/graphics/BrushDrawable;->mPivot:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/serenegiant/graphics/BrushDrawable;->getIntrinsicWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/serenegiant/graphics/BrushDrawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method


# virtual methods
.method public getPaintAlpha()I
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/serenegiant/graphics/BrushDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getPivot()Landroid/graphics/PointF;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/serenegiant/graphics/BrushDrawable;->mPivot:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/serenegiant/graphics/BrushDrawable;->mPivot:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/serenegiant/graphics/BrushDrawable;->mPivot:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method public getRotation()F
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/serenegiant/graphics/BrushDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    .line 122
    instance-of v1, v0, Lcom/serenegiant/graphics/BaseShape;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/serenegiant/graphics/BaseShape;

    invoke-virtual {v0}, Lcom/serenegiant/graphics/BaseShape;->getRotation()F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/serenegiant/graphics/BrushDrawable;->mRotation:F

    :goto_0
    return v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/serenegiant/graphics/BrushDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    .line 83
    iget v0, p0, Lcom/serenegiant/graphics/BrushDrawable;->mRotation:F

    iget-object v1, p0, Lcom/serenegiant/graphics/BrushDrawable;->mPivot:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/serenegiant/graphics/BrushDrawable;->mPivot:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 86
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/graphics/BrushDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/serenegiant/graphics/BrushDrawable;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/ShapeDrawable;->onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p1
.end method

.method public setColor(I)V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/serenegiant/graphics/BrushDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    invoke-virtual {p0}, Lcom/serenegiant/graphics/BrushDrawable;->invalidateSelf()V

    return-void
.end method

.method public setPaintAlpha(I)V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/serenegiant/graphics/BrushDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setPaintStyle(Landroid/graphics/Paint$Style;)V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/serenegiant/graphics/BrushDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    invoke-virtual {p0}, Lcom/serenegiant/graphics/BrushDrawable;->invalidateSelf()V

    return-void
.end method

.method public setPivot(FF)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/serenegiant/graphics/BrushDrawable;->mPivot:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/graphics/BrushDrawable;->mPivot:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/graphics/BrushDrawable;->mPivot:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 104
    invoke-virtual {p0}, Lcom/serenegiant/graphics/BrushDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setRotation(F)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/serenegiant/graphics/BrushDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    .line 128
    instance-of v1, v0, Lcom/serenegiant/graphics/BaseShape;

    if-eqz v1, :cond_0

    .line 129
    check-cast v0, Lcom/serenegiant/graphics/BaseShape;

    invoke-virtual {v0, p1}, Lcom/serenegiant/graphics/BaseShape;->setRotation(F)V

    const/4 p1, 0x0

    .line 130
    iput p1, p0, Lcom/serenegiant/graphics/BrushDrawable;->mRotation:F

    goto :goto_0

    .line 132
    :cond_0
    iget v0, p0, Lcom/serenegiant/graphics/BrushDrawable;->mRotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 133
    iput p1, p0, Lcom/serenegiant/graphics/BrushDrawable;->mRotation:F

    .line 136
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/serenegiant/graphics/BrushDrawable;->invalidateSelf()V

    return-void
.end method

.method public setShader(Landroid/graphics/Shader;)V
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/serenegiant/graphics/BrushDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 182
    invoke-virtual {p0}, Lcom/serenegiant/graphics/BrushDrawable;->invalidateSelf()V

    return-void
.end method

.method public setType(III)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 151
    :cond_0
    new-instance p1, Lcom/serenegiant/graphics/BaseShape;

    int-to-float v0, p2

    int-to-float v1, p3

    invoke-direct {p1, v0, v1}, Lcom/serenegiant/graphics/BaseShape;-><init>(FF)V

    goto :goto_0

    .line 148
    :cond_1
    new-instance p1, Lcom/serenegiant/graphics/IsoscelesTriangleShape;

    int-to-float v0, p2

    int-to-float v1, p3

    invoke-direct {p1, v0, v1}, Lcom/serenegiant/graphics/IsoscelesTriangleShape;-><init>(FF)V

    goto :goto_0

    .line 143
    :cond_2
    new-instance p1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {p1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/serenegiant/graphics/BrushDrawable;->mRotation:F

    int-to-float p2, p2

    int-to-float p3, p3

    .line 156
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/serenegiant/graphics/BrushDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    :cond_3
    return-void
.end method
