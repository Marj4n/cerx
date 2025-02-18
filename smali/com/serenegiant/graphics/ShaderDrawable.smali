.class public Lcom/serenegiant/graphics/ShaderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ShaderDrawable.java"


# instance fields
.field private final mDrawFilter:Landroid/graphics/DrawFilter;

.field private final mPaint:Landroid/graphics/Paint;

.field private mShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0, v0}, Lcom/serenegiant/graphics/ShaderDrawable;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/graphics/ShaderDrawable;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/graphics/ShaderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/serenegiant/graphics/ShaderDrawable;->mDrawFilter:Landroid/graphics/DrawFilter;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/serenegiant/graphics/ShaderDrawable;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDrawFilter()Landroid/graphics/DrawFilter;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/serenegiant/graphics/ShaderDrawable;->mDrawFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 64
    iget-object v2, p0, Lcom/serenegiant/graphics/ShaderDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/serenegiant/graphics/ShaderDrawable;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 65
    iget-object v2, p0, Lcom/serenegiant/graphics/ShaderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 66
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 67
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/serenegiant/graphics/ShaderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/serenegiant/graphics/ShaderDrawable;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/serenegiant/graphics/ShaderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBounds(FFFF)V
    .locals 0

    float-to-int p1, p1

    float-to-int p2, p2

    float-to-int p3, p3

    float-to-int p4, p4

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/RectF;)V
    .locals 3

    .line 93
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-super {p0, v0, v1, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/serenegiant/graphics/ShaderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/serenegiant/graphics/ShaderDrawable;->mShader:Landroid/graphics/Shader;

    if-eq v0, p1, :cond_0

    .line 102
    iput-object p1, p0, Lcom/serenegiant/graphics/ShaderDrawable;->mShader:Landroid/graphics/Shader;

    :cond_0
    return-object p1
.end method
