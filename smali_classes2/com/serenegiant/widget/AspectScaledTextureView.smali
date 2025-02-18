.class public Lcom/serenegiant/widget/AspectScaledTextureView;
.super Landroid/view/TextureView;
.source "AspectScaledTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/serenegiant/widget/IAspectRatioView;
.implements Lcom/serenegiant/widget/IScaledView;
.implements Lcom/serenegiant/widget/ITextureView;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mHasSurface:Z

.field protected final mImageMatrix:Landroid/graphics/Matrix;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/TextureView$SurfaceTextureListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestedAspect:D

.field private mScaleMode:I

.field private mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private prevHeight:I

.field private prevWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/serenegiant/widget/AspectScaledTextureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/widget/AspectScaledTextureView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, v0, v1}, Lcom/serenegiant/widget/AspectScaledTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/widget/AspectScaledTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mImageMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mScaleMode:I

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 41
    iput-wide v1, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mRequestedAspect:D

    .line 43
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mListeners:Ljava/util/Set;

    const/4 v1, -0x1

    .line 102
    iput v1, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->prevWidth:I

    .line 103
    iput v1, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->prevHeight:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/serenegiant/common/R$styleable;->AspectScaledTextureView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    :try_start_0
    sget p2, Lcom/serenegiant/common/R$styleable;->AspectScaledTextureView_aspect_ratio:I

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    float-to-double p2, p2

    iput-wide p2, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mRequestedAspect:D

    .line 58
    sget p2, Lcom/serenegiant/common/R$styleable;->AspectScaledTextureView_scale_mode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mScaleMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-super {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void

    :catchall_0
    move-exception p2

    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public getAspectRatio()D
    .locals 2

    .line 221
    iget-wide v0, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mRequestedAspect:D

    return-wide v0
.end method

.method public getScaleMode()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mScaleMode:I

    return v0
.end method

.method protected init()V
    .locals 14

    .line 253
    invoke-virtual {p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->getWidth()I

    move-result v0

    .line 254
    invoke-virtual {p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->getHeight()I

    move-result v1

    .line 256
    iget-object v2, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 257
    iget v2, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mScaleMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-wide v4, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mRequestedAspect:D

    int-to-double v6, v1

    mul-double v4, v4, v6

    int-to-double v8, v0

    div-double v10, v8, v4

    div-double v12, v6, v6

    .line 267
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    mul-double v4, v4, v10

    mul-double v10, v10, v6

    .line 273
    iget-object v2, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mImageMatrix:Landroid/graphics/Matrix;

    div-double/2addr v4, v8

    double-to-float v4, v4

    div-double/2addr v10, v6

    double-to-float v5, v10

    div-int/2addr v0, v3

    int-to-float v0, v0

    div-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 276
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/AspectScaledTextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 106
    invoke-super/range {p0 .. p5}, Landroid/view/TextureView;->onLayout(ZIIII)V

    .line 109
    invoke-virtual {p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->getWidth()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->getHeight()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget p1, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->prevWidth:I

    invoke-virtual {p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->getWidth()I

    move-result p2

    if-ne p1, p2, :cond_1

    iget p1, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->prevHeight:I

    invoke-virtual {p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->getHeight()I

    move-result p2

    if-eq p1, p2, :cond_2

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->prevWidth:I

    .line 112
    invoke-virtual {p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->prevHeight:I

    .line 113
    iget p2, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->prevWidth:I

    invoke-virtual {p0, p2, p1}, Lcom/serenegiant/widget/AspectScaledTextureView;->onResize(II)V

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->init()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 72
    iget-wide v1, v0, Lcom/serenegiant/widget/AspectScaledTextureView;->mRequestedAspect:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    iget v1, v0, Lcom/serenegiant/widget/AspectScaledTextureView;->mScaleMode:I

    if-nez v1, :cond_1

    .line 73
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 74
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v1, v5

    sub-int/2addr v2, v6

    int-to-double v7, v1

    int-to-double v9, v2

    div-double v11, v7, v9

    .line 81
    iget-wide v13, v0, Lcom/serenegiant/widget/AspectScaledTextureView;->mRequestedAspect:D

    div-double/2addr v13, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v13, v11

    .line 84
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v17, v11, v15

    if-lez v17, :cond_1

    cmpl-double v11, v13, v3

    if-lez v11, :cond_0

    .line 87
    iget-wide v2, v0, Lcom/serenegiant/widget/AspectScaledTextureView;->mRequestedAspect:D

    div-double/2addr v7, v2

    double-to-int v2, v7

    goto :goto_0

    .line 90
    :cond_0
    iget-wide v3, v0, Lcom/serenegiant/widget/AspectScaledTextureView;->mRequestedAspect:D

    mul-double v9, v9, v3

    double-to-int v1, v9

    :goto_0
    add-int/2addr v1, v5

    add-int/2addr v2, v6

    const/high16 v3, 0x40000000    # 2.0f

    .line 94
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 95
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_1

    :cond_1
    move/from16 v1, p1

    move/from16 v2, p2

    .line 99
    :goto_1
    invoke-super {v0, v1, v2}, Landroid/view/TextureView;->onMeasure(II)V

    return-void
.end method

.method protected onResize(II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mHasSurface:Z

    .line 150
    invoke-virtual {p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->init()V

    .line 151
    iget-object v0, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView$SurfaceTextureListener;

    .line 153
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 155
    iget-object v3, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mListeners:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 156
    sget-object v1, Lcom/serenegiant/widget/AspectScaledTextureView;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 5

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mHasSurface:Z

    .line 176
    iget-object v1, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView$SurfaceTextureListener;

    .line 178
    :try_start_0
    invoke-interface {v2, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 180
    iget-object v4, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mListeners:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 181
    sget-object v2, Lcom/serenegiant/widget/AspectScaledTextureView;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView$SurfaceTextureListener;

    .line 165
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 167
    iget-object v3, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mListeners:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 168
    sget-object v1, Lcom/serenegiant/widget/AspectScaledTextureView;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView$SurfaceTextureListener;

    .line 191
    :try_start_0
    invoke-interface {v1, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 193
    iget-object v3, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mListeners:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 194
    sget-object v1, Lcom/serenegiant/widget/AspectScaledTextureView;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public register(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 3

    .line 208
    iget-wide v0, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mRequestedAspect:D

    cmpl-double v2, v0, p1

    if-eqz v2, :cond_0

    .line 209
    iput-wide p1, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mRequestedAspect:D

    .line 210
    invoke-virtual {p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setAspectRatio(II)V
    .locals 2

    int-to-double v0, p1

    int-to-double p1, p2

    div-double/2addr v0, p1

    .line 216
    invoke-virtual {p0, v0, v1}, Lcom/serenegiant/widget/AspectScaledTextureView;->setAspectRatio(D)V

    return-void
.end method

.method public setScaleMode(I)V
    .locals 1

    .line 230
    iget v0, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mScaleMode:I

    if-eq v0, p1, :cond_0

    .line 231
    iput p1, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mScaleMode:I

    .line 232
    invoke-virtual {p0}, Lcom/serenegiant/widget/AspectScaledTextureView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/AspectScaledTextureView;->unregister(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 125
    iput-object p1, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 126
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/AspectScaledTextureView;->register(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public unregister(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/serenegiant/widget/AspectScaledTextureView;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
