.class public Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "ZoomableSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;,
        Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;
    }
.end annotation


# instance fields
.field private SGD:Landroid/view/ScaleGestureDetector;

.field bottom:I

.field private context:Landroid/content/Context;

.field private height:F

.field private isSingleTouch:Z

.field left:I

.field private maxScale:F

.field private minScale:F

.field right:I

.field private scale:F

.field top:I

.field private width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->height:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    iput v0, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->scale:F

    .line 25
    iput v0, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->minScale:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 26
    iput v0, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->maxScale:F

    .line 31
    iput-object p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->context:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 23
    iput p2, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->height:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 24
    iput p2, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->scale:F

    .line 25
    iput p2, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->minScale:F

    const/high16 p2, 0x40a00000    # 5.0f

    .line 26
    iput p2, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->maxScale:F

    .line 37
    iput-object p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->context:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)Landroid/view/ScaleGestureDetector;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->SGD:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->isSingleTouch:Z

    return p0
.end method

.method static synthetic access$202(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->isSingleTouch:Z

    return p1
.end method

.method static synthetic access$300(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;Landroid/view/View;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->checkDimension(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)F
    .locals 0

    .line 18
    iget p0, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->scale:F

    return p0
.end method

.method static synthetic access$402(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;F)F
    .locals 0

    .line 18
    iput p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->scale:F

    return p1
.end method

.method static synthetic access$500(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)F
    .locals 0

    .line 18
    iget p0, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->width:F

    return p0
.end method

.method static synthetic access$600(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)F
    .locals 0

    .line 18
    iget p0, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->height:F

    return p0
.end method

.method static synthetic access$700(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)F
    .locals 0

    .line 18
    iget p0, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->minScale:F

    return p0
.end method

.method static synthetic access$800(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)F
    .locals 0

    .line 18
    iget p0, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->maxScale:F

    return p0
.end method

.method private checkDimension(Landroid/view/View;)V
    .locals 5

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iget v1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->left:I

    int-to-float v1, v1

    const-wide/16 v2, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->left:I

    int-to-float v1, v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 137
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->right:I

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    iget v1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->top:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->top:I

    int-to-float v1, v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 149
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 153
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->bottom:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->bottom:I

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 157
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-void
.end method

.method private init()V
    .locals 4

    .line 48
    new-instance v0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;

    invoke-direct {v0, p0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$MyTouchListeners;-><init>(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 49
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->context:Landroid/content/Context;

    new-instance v2, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$ScaleListener;-><init>(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->SGD:Landroid/view/ScaleGestureDetector;

    .line 50
    invoke-virtual {p0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$1;

    invoke-direct {v1, p0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView$1;-><init>(Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "onDraw"

    const-string v1, "onDrawonDrawonDraw1111"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 61
    invoke-super/range {p0 .. p5}, Landroid/opengl/GLSurfaceView;->onLayout(ZIIII)V

    .line 62
    iget p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->width:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->height:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->width:F

    .line 64
    invoke-virtual {p0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->height:F

    .line 65
    iput p2, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->left:I

    .line 66
    iput p4, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->right:I

    .line 67
    iput p3, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->top:I

    .line 68
    iput p5, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->bottom:I

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "width:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->width:F

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, "height"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->height:F

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, ",left:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "top"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    const-string v0, "onMeasure"

    const-string v1, "onMeasure1111"

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    return-void
.end method
