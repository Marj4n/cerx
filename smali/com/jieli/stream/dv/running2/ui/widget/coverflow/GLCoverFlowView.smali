.class public Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;
.super Landroid/opengl/GLSurfaceView;
.source "GLCoverFlowView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$OnCoverFlowListener;,
        Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;
    }
.end annotation


# static fields
.field private static final FLANK_SPREAD:F = 0.3f

.field private static final FRICTION:F = 10.0f

.field private static final GTextures:[F

.field private static final GVertices:[F

.field private static final IMAGE_SIZE:I = 0x80

.field private static final MAX_SPEED:F = 6.0f

.field private static final MAX_TILES:I = 0x30

.field private static final SCALE:F = 0.4f

.field private static final SPREAD_IMAGE:F = 0.14f

.field private static final TOUCH_MINIMUM_MOVE:I = 0x5

.field private static final VISIBLE_TILES:I = 0x3

.field static myH:I

.field static myW:I

.field private static final tag:Ljava/lang/String;


# instance fields
.field private bitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mBgBitmapId:I

.field private mBgTexture:I

.field private mBgTexturesBuffer:Ljava/nio/FloatBuffer;

.field private mBgVerticesBuffer:Ljava/nio/FloatBuffer;

.field private mCache:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache<",
            "Ljava/lang/Integer;",
            "Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:F

.field private mGLContext:Ljavax/microedition/khronos/opengles/GL10;

.field private mInitBackground:Z

.field private mLastOffset:I

.field private mListener:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$OnCoverFlowListener;

.field private mMatrix:[F

.field private mOffset:F

.field private mStartOffset:F

.field private mStartSpeed:F

.field private mStartTime:J

.field private mStopBackgroundThread:Z

.field private mTexturesBuffer:Ljava/nio/FloatBuffer;

.field private mTouchMoved:Z

.field private mTouchRect:Landroid/graphics/RectF;

.field private mTouchStartPos:F

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private mVelocity:Landroid/view/VelocityTracker;

.field private mVerticesBuffer:Ljava/nio/FloatBuffer;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->tag:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 45
    fill-array-data v0, :array_0

    sput-object v0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->GVertices:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 52
    fill-array-data v0, :array_1

    sput-object v0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->GTextures:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x404ccccd    # -1.4f
        -0x404ccccd    # -1.4f
        0x0
        0x3fb33333    # 1.4f
        -0x404ccccd    # -1.4f
        0x0
        -0x404ccccd    # -1.4f
        0x3fb33333    # 1.4f
        0x0
        0x3fb33333    # 1.4f
        0x3fb33333    # 1.4f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 113
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 524
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->bitmapList:Ljava/util/List;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    .line 115
    invoke-virtual/range {v0 .. v6}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->setEGLConfigChooser(IIIIII)V

    .line 117
    invoke-virtual {p0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 118
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->setRenderMode(I)V

    .line 120
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 125
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;-><init>(I)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mCache:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;

    .line 126
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mLastOffset:I

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mOffset:F

    .line 128
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mInitBackground:Z

    .line 129
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mBgBitmapId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 524
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->bitmapList:Ljava/util/List;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    .line 95
    invoke-virtual/range {v0 .. v6}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->setEGLConfigChooser(IIIIII)V

    .line 97
    invoke-virtual {p0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 98
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->setRenderMode(I)V

    .line 100
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    const/4 v0, -0x3

    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 105
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;

    const/16 v0, 0x30

    invoke-direct {p2, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;-><init>(I)V

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mCache:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;

    .line 106
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mLastOffset:I

    const/4 p2, 0x0

    .line 107
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mOffset:F

    .line 108
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mInitBackground:Z

    .line 109
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mBgBitmapId:I

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->driveAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->bitmapList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStopBackgroundThread:Z

    return p0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;)Ljavax/microedition/khronos/opengles/GL10;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mGLContext:Ljavax/microedition/khronos/opengles/GL10;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;ILjavax/microedition/khronos/opengles/GL10;)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->getTileAtIndex(ILjavax/microedition/khronos/opengles/GL10;)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;

    move-result-object p0

    return-object p0
.end method

.method private checkValid(F)F
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->bitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    return v1

    :cond_0
    int-to-float v0, v0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method private static createTextureBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    .line 562
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 563
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 564
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x80

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 565
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v5, 0x40000000    # 2.0f

    if-gt v0, v3, :cond_1

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    rsub-int v3, v0, 0x80

    int-to-float v3, v3

    div-float/2addr v3, v5

    rsub-int v6, v1, 0x80

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 585
    sget-object v5, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "left="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", top="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", w="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", h="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, p0, v3, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 568
    :cond_1
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v6, 0x43000000    # 128.0f

    if-le v0, v1, :cond_2

    int-to-float v7, v0

    goto :goto_1

    :cond_2
    int-to-float v7, v1

    :goto_1
    div-float/2addr v6, v7

    int-to-float v0, v0

    mul-float v0, v0, v6

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float v1, v1, v6

    float-to-int v1, v1

    rsub-int v6, v0, 0x80

    int-to-float v6, v6

    div-float/2addr v6, v5

    rsub-int v7, v1, 0x80

    int-to-float v7, v7

    div-float/2addr v7, v5

    .line 579
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v0, v0

    add-float/2addr v0, v6

    int-to-float v1, v1

    add-float/2addr v1, v7

    invoke-direct {v5, v6, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 581
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, p0, v3, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 588
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->myW:I

    .line 589
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    float-to-int p0, p0

    sput p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->myH:I

    return-object v2
.end method

.method private draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9

    const/4 v0, 0x1

    .line 436
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStopBackgroundThread:Z

    .line 437
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 439
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 440
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mTexturesBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    invoke-interface {p1, v2, v3, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const/16 v1, 0xde1

    .line 441
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v1, 0xbe2

    .line 443
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    .line 444
    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 446
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mOffset:F

    .line 448
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->bitmapList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    float-to-double v5, v1

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    .line 449
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    add-int/lit8 v3, v0, -0x3

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_1

    int-to-float v5, v3

    sub-float/2addr v5, v1

    .line 456
    invoke-direct {p0, v3, v5, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->drawTile(IFLjavax/microedition/khronos/opengles/GL10;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v0, 0x3

    if-le v3, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-lt v2, v0, :cond_3

    int-to-float v3, v2

    sub-float/2addr v3, v1

    .line 464
    invoke-direct {p0, v2, v3, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->drawTile(IFLjavax/microedition/khronos/opengles/GL10;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 474
    :cond_3
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 475
    iput-boolean v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStopBackgroundThread:Z

    return-void
.end method

.method private drawTile(IFLjavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    if-gez p1, :cond_0

    return-void

    .line 482
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->getTileAtIndex(ILjavax/microedition/khronos/opengles/GL10;)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 483
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 484
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mMatrix:[F

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 485
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mMatrix:[F

    const/16 v4, 0xf

    aput v3, v0, v4

    const/16 v4, 0xa

    aput v3, v0, v4

    aput v3, v0, v1

    aput v3, v0, v2

    :cond_1
    const v0, 0x3e0f5c29    # 0.14f

    mul-float v0, v0, p2

    const v4, 0x3e99999a    # 0.3f

    mul-float p2, p2, v4

    const v5, -0x41666666    # -0.3f

    cmpl-float v6, p2, v4

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    cmpg-float v4, p2, v5

    if-gez v4, :cond_3

    const v4, -0x41666666    # -0.3f

    goto :goto_0

    :cond_3
    move v4, p2

    .line 499
    :goto_0
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mMatrix:[F

    const/4 v5, 0x3

    neg-float v6, v4

    aput v6, p2, v5

    .line 500
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v3, v5

    aput v5, p2, v2

    const p2, 0x3ec28f5c    # 0.38f

    .line 501
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mMatrix:[F

    aget v5, v5, v2

    mul-float v5, v5, p2

    mul-float v4, v4, v3

    add-float/2addr v0, v4

    .line 504
    invoke-interface {p3}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    const/16 p2, 0xde1

    .line 505
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;->access$100(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;)I

    move-result p1

    invoke-interface {p3, p2, p1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/4 p1, 0x0

    .line 508
    invoke-interface {p3, v0, p1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 509
    invoke-interface {p3, v5, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 510
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mMatrix:[F

    invoke-interface {p3, p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    const/4 p1, 0x4

    .line 511
    invoke-interface {p3, v1, v2, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 520
    invoke-interface {p3}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    :cond_4
    return-void
.end method

.method private driveAnimation()V
    .locals 4

    .line 273
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 274
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mDuration:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->endAnimation()V

    goto :goto_0

    .line 277
    :cond_0
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->updateAnimationAtElapsed(F)V

    .line 278
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private endAnimation()V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 284
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mOffset:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mOffset:F

    .line 285
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->checkValid(F)F

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mOffset:F

    .line 287
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->requestRender()V

    .line 289
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mAnimationRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private getTileAtIndex(ILjavax/microedition/khronos/opengles/GL10;)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;
    .locals 2

    .line 541
    monitor-enter p0

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mCache:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->objectForKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;

    if-nez v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->bitmapList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 548
    monitor-exit p0

    return-object p1

    .line 550
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->imageToTexture(Landroid/graphics/Bitmap;Ljavax/microedition/khronos/opengles/GL10;)I

    move-result v0

    .line 552
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;

    invoke-direct {v1, v0, p2}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;-><init>(ILjavax/microedition/khronos/opengles/GL10;)V

    .line 553
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mCache:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->putObjectForKey(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 555
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 556
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private imageToTexture(Landroid/graphics/Bitmap;Ljavax/microedition/khronos/opengles/GL10;)I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 596
    invoke-interface {p2, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 597
    aget v0, v1, v2

    const/16 v3, 0xde1

    invoke-interface {p2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 599
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->createTextureBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 600
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 601
    invoke-static {v3, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 602
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/16 p1, 0x2801

    const/high16 v0, 0x46180000    # 9728.0f

    .line 605
    invoke-interface {p2, v3, p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 p1, 0x2800

    const v0, 0x46180400    # 9729.0f

    .line 606
    invoke-interface {p2, v3, p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const v0, 0x47012f00    # 33071.0f

    .line 607
    invoke-interface {p2, v3, p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 p1, 0x2803

    .line 608
    invoke-interface {p2, v3, p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 p1, 0x2300

    const/16 v0, 0x2200

    const/high16 v3, 0x46040000    # 8448.0f

    .line 610
    invoke-interface {p2, p1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 612
    aget p1, v1, v2

    return p1
.end method

.method private initBg()V
    .locals 13

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mInitBackground:Z

    .line 353
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mBgBitmapId:I

    if-eqz v1, :cond_2

    .line 354
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mBgBitmapId:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 355
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mBgBitmapId:I

    .line 358
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 359
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    if-gt v2, v5, :cond_1

    if-le v3, v5, :cond_0

    goto/16 :goto_1

    .line 366
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 367
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int v8, v5, v2

    .line 369
    div-int/lit8 v9, v8, 0x2

    sub-int v10, v5, v3

    .line 370
    div-int/lit8 v11, v10, 0x2

    int-to-float v9, v9

    int-to-float v11, v11

    .line 371
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v7, v1, v9, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 373
    iget-object v7, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mGLContext:Ljavax/microedition/khronos/opengles/GL10;

    new-array v9, v4, [I

    .line 376
    invoke-interface {v7, v4, v9, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 377
    aget v9, v9, v0

    iput v9, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mBgTexture:I

    const/16 v11, 0xde1

    .line 379
    invoke-interface {v7, v11, v9}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 380
    invoke-static {v11, v0, v6, v0}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 381
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 382
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v1, 0x2801

    const/high16 v6, 0x46180000    # 9728.0f

    .line 384
    invoke-interface {v7, v11, v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    const v6, 0x46180400    # 9729.0f

    .line 385
    invoke-interface {v7, v11, v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const v6, 0x47012f00    # 33071.0f

    .line 386
    invoke-interface {v7, v11, v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    .line 387
    invoke-interface {v7, v11, v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v1, 0x2300

    const/16 v6, 0x2200

    const v9, 0x45f00800    # 7681.0f

    .line 388
    invoke-interface {v7, v1, v6, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    int-to-float v6, v8

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    int-to-float v8, v5

    div-float/2addr v6, v8

    aput v6, v1, v0

    int-to-float v0, v10

    div-float/2addr v0, v7

    div-float/2addr v0, v8

    aput v0, v1, v4

    add-int/2addr v2, v5

    int-to-float v2, v2

    div-float/2addr v2, v7

    div-float/2addr v2, v8

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v4, 0x3

    aput v0, v1, v4

    const/4 v0, 0x4

    aput v6, v1, v0

    const/4 v0, 0x5

    add-int/2addr v5, v3

    int-to-float v3, v5

    div-float/2addr v3, v7

    div-float/2addr v3, v8

    aput v3, v1, v0

    const/4 v0, 0x6

    aput v2, v1, v0

    const/4 v0, 0x7

    aput v3, v1, v0

    .line 396
    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mBgTexturesBuffer:Ljava/nio/FloatBuffer;

    goto :goto_2

    :cond_1
    :goto_1
    shl-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private static makeFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 638
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 639
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 640
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 641
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 642
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private startAnimation(D)V
    .locals 5

    .line 245
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    mul-double v0, p1, p1

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    if-gez v4, :cond_1

    neg-double v0, v0

    .line 252
    :cond_1
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartOffset:F

    float-to-double p1, p1

    add-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    .line 253
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 254
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->checkValid(F)F

    move-result p1

    float-to-double p1, p1

    .line 256
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartOffset:F

    float-to-double v0, v0

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartSpeed:F

    .line 257
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartOffset:F

    float-to-double v1, v1

    cmpg-double v3, p1, v1

    if-gez v3, :cond_2

    neg-float p1, v0

    .line 258
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartSpeed:F

    .line 260
    :cond_2
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartSpeed:F

    const/high16 p2, 0x41200000    # 10.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mDuration:F

    .line 261
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartTime:J

    .line 263
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$1;

    invoke-direct {p1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$1;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 269
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private touchBegan(Landroid/view/MotionEvent;)V
    .locals 3

    .line 175
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->endAnimation()V

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 178
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mTouchStartX:F

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mTouchStartY:F

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartTime:J

    .line 181
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mOffset:F

    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartOffset:F

    const/4 v1, 0x0

    .line 183
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mTouchMoved:Z

    .line 185
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mTouchStartPos:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 186
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mTouchStartPos:F

    .line 188
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mVelocity:Landroid/view/VelocityTracker;

    .line 189
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private touchEnded(Landroid/view/MotionEvent;)V
    .locals 6

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 216
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mTouchMoved:Z

    if-eqz v1, :cond_2

    .line 217
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartOffset:F

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mTouchStartPos:F

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartOffset:F

    .line 218
    invoke-direct {p0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->checkValid(F)F

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartOffset:F

    .line 219
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mOffset:F

    .line 221
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 223
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mVelocity:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 224
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    float-to-double v0, p1

    .line 225
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mWidth:I

    int-to-double v2, p1

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    const-wide/high16 v2, -0x3fe8000000000000L    # -6.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpl-double p1, v0, v4

    if-lez p1, :cond_0

    move-wide v0, v4

    goto :goto_0

    :cond_0
    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    move-wide v0, v2

    :cond_1
    :goto_0
    neg-double v0, v0

    .line 231
    invoke-direct {p0, v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->startAnimation(D)V

    goto/16 :goto_1

    .line 234
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->myW:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->myW:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->myH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->myH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 237
    sget-object v1, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mOffset:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", x="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mListener:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$OnCoverFlowListener;

    if-eqz p1, :cond_3

    .line 239
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mOffset:F

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v0, v2

    double-to-int v0, v0

    invoke-interface {p1, p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$OnCoverFlowListener;->onTileClicked(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private touchMoved(Landroid/view/MotionEvent;)V
    .locals 5

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 196
    iget-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mTouchMoved:Z

    if-nez v2, :cond_1

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mTouchStartX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mTouchStartY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    cmpg-float v1, v3, v1

    if-gez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 203
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mTouchMoved:Z

    .line 206
    :cond_1
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartOffset:F

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mTouchStartPos:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->checkValid(F)F

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mOffset:F

    .line 208
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->requestRender()V

    .line 209
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private updateAnimationAtElapsed(F)V
    .locals 2

    .line 295
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mDuration:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    .line 298
    :cond_0
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartSpeed:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v0, v0, p1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v1, v1, p1

    mul-float v1, v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    sub-float/2addr v0, v1

    .line 299
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartSpeed:F

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    neg-float v0, v0

    .line 302
    :cond_1
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStartOffset:F

    add-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->checkValid(F)F

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mOffset:F

    .line 303
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->requestRender()V

    return-void
.end method


# virtual methods
.method public addData(Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->bitmapList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearTileCache()V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mCache:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->clear()V

    return-void
.end method

.method public drawBg(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .line 418
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mInitBackground:Z

    if-eqz v0, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->initBg()V

    .line 421
    :cond_0
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mBgTexture:I

    if-eqz v0, :cond_1

    .line 422
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    const/4 v0, 0x3

    .line 424
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mBgVerticesBuffer:Ljava/nio/FloatBuffer;

    const/16 v2, 0x1406

    const/4 v3, 0x0

    invoke-interface {p1, v0, v2, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const/4 v0, 0x2

    .line 425
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mBgTexturesBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v2, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const/16 v0, 0xde1

    .line 426
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 428
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mBgTexture:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 429
    invoke-interface {p1, v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 431
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    :cond_1
    return-void
.end method

.method public getSelected(I)Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->bitmapList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->bitmapList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11

    const/16 v0, 0x1700

    .line 402
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 403
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v1, p1

    .line 404
    invoke-static/range {v1 .. v10}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    const/16 v0, 0xb71

    .line 406
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/4 v0, 0x0

    .line 407
    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 408
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    const v0, 0x8074

    .line 410
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const v0, 0x8078

    .line 411
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 413
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->drawBg(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 414
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 11

    .line 320
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mWidth:I

    int-to-float v0, p2

    const v1, 0x3ee66666    # 0.45f

    mul-float v2, v0, v1

    const v3, 0x3ecccccd    # 0.4f

    div-float/2addr v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    int-to-float v5, p3

    mul-float v1, v1, v5

    div-float/2addr v1, v3

    div-float/2addr v1, v4

    .line 324
    new-instance v4, Landroid/graphics/RectF;

    div-int/lit8 v6, p2, 0x2

    int-to-float v6, v6

    sub-float v7, v6, v2

    div-int/lit8 v8, p3, 0x2

    int-to-float v8, v8

    sub-float v9, v8, v1

    add-float/2addr v6, v2

    add-float/2addr v8, v1

    invoke-direct {v4, v7, v9, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mTouchRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    .line 326
    invoke-interface {p1, v1, v1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    div-float/2addr v0, v5

    const/16 p2, 0x1701

    .line 329
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 330
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    neg-float p2, v0

    mul-float p2, p2, v3

    mul-float v0, v0, v3

    const v7, -0x41333333    # -0.4f

    const v8, 0x3ecccccd    # 0.4f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x40400000    # 3.0f

    move-object v4, p1

    move v5, p2

    move v6, v0

    .line 331
    invoke-interface/range {v4 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    const/16 p1, 0xc

    new-array p1, p1, [F

    aput p2, p1, v1

    const/4 p3, 0x1

    const v1, -0x41333333    # -0.4f

    aput v1, p1, p3

    const/4 p3, 0x2

    const/4 v2, 0x0

    aput v2, p1, p3

    const/4 p3, 0x3

    aput v0, p1, p3

    const/4 p3, 0x4

    aput v1, p1, p3

    const/4 p3, 0x5

    aput v2, p1, p3

    const/4 p3, 0x6

    aput p2, p1, p3

    const/4 p2, 0x7

    aput v3, p1, p2

    const/16 p2, 0x8

    aput v2, p1, p2

    const/16 p2, 0x9

    aput v0, p1, p2

    const/16 p2, 0xa

    aput v3, p1, p2

    const/16 p2, 0xb

    aput v2, p1, p2

    .line 339
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mBgVerticesBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 308
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mCache:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/DataCache;->clear()V

    .line 310
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mGLContext:Ljavax/microedition/khronos/opengles/GL10;

    .line 311
    sget-object p1, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->GVertices:[F

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 312
    sget-object p1, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->GTextures:[F

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mTexturesBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 165
    :cond_0
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->touchMoved(Landroid/view/MotionEvent;)V

    return v1

    .line 168
    :cond_1
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->touchEnded(Landroid/view/MotionEvent;)V

    return v1

    .line 162
    :cond_2
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->touchBegan(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public preLoadCache(II)V
    .locals 2

    const/4 v0, 0x0

    .line 618
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mStopBackgroundThread:Z

    .line 619
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mGLContext:Ljavax/microedition/khronos/opengles/GL10;

    if-eqz v0, :cond_0

    .line 620
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$2;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 633
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    :cond_0
    return-void
.end method

.method public setBackgroundTexture(I)V
    .locals 0

    .line 343
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mBgBitmapId:I

    const/4 p1, 0x1

    .line 344
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mInitBackground:Z

    return-void
.end method

.method public setCoverFlowListener(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$OnCoverFlowListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mListener:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$OnCoverFlowListener;

    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;",
            ">;)V"
        }
    .end annotation

    .line 527
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->bitmapList:Ljava/util/List;

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->endAnimation()V

    int-to-float p1, p1

    .line 149
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->mOffset:F

    .line 150
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->requestRender()V

    return-void
.end method
