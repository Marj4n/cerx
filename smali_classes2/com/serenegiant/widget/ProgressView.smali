.class public Lcom/serenegiant/widget/ProgressView;
.super Landroid/view/View;
.source "ProgressView.java"


# static fields
.field protected static final GRAVITY_BOTTOM:I = 0x50

.field protected static final GRAVITY_CENTER:I = 0x11

.field protected static final GRAVITY_CENTER_HORIZONTAL:I = 0x1

.field protected static final GRAVITY_CENTER_VERTICAL:I = 0x10

.field protected static final GRAVITY_CLIP_HORIZONTAL:I = 0x8

.field protected static final GRAVITY_CLIP_VERTICAL:I = 0x80

.field protected static final GRAVITY_END:I = 0x800005

.field protected static final GRAVITY_FILL:I = 0x77

.field protected static final GRAVITY_FILL_HORIZONTAL:I = 0x7

.field protected static final GRAVITY_FILL_VERTICAL:I = 0x70

.field protected static final GRAVITY_LEFT:I = 0x3

.field protected static final GRAVITY_RIGHT:I = 0x5

.field protected static final GRAVITY_START:I = 0x800003

.field protected static final GRAVITY_TOP:I = 0x30


# instance fields
.field private mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

.field private mColor:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMin:I

.field private volatile mProgress:I

.field private mRotation:I

.field private mScale:F

.field private final mUpdateProgressTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x5a

    .line 32
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mRotation:I

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mMin:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mMax:I

    const/high16 p1, 0x42c80000    # 100.0f

    .line 42
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mScale:F

    const/16 p1, 0x28

    .line 46
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mProgress:I

    const/high16 p1, -0x10000

    .line 51
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mColor:I

    .line 108
    new-instance p1, Lcom/serenegiant/widget/ProgressView$1;

    invoke-direct {p1, p0}, Lcom/serenegiant/widget/ProgressView$1;-><init>(Lcom/serenegiant/widget/ProgressView;)V

    iput-object p1, p0, Lcom/serenegiant/widget/ProgressView;->mUpdateProgressTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x5a

    .line 32
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mRotation:I

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mMin:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mMax:I

    const/high16 p1, 0x42c80000    # 100.0f

    .line 42
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mScale:F

    const/16 p1, 0x28

    .line 46
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mProgress:I

    const/high16 p1, -0x10000

    .line 51
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mColor:I

    .line 108
    new-instance p1, Lcom/serenegiant/widget/ProgressView$1;

    invoke-direct {p1, p0}, Lcom/serenegiant/widget/ProgressView$1;-><init>(Lcom/serenegiant/widget/ProgressView;)V

    iput-object p1, p0, Lcom/serenegiant/widget/ProgressView;->mUpdateProgressTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x5a

    .line 32
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mRotation:I

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mMin:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mMax:I

    const/high16 p1, 0x42c80000    # 100.0f

    .line 42
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mScale:F

    const/16 p1, 0x28

    .line 46
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mProgress:I

    const/high16 p1, -0x10000

    .line 51
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mColor:I

    .line 108
    new-instance p1, Lcom/serenegiant/widget/ProgressView$1;

    invoke-direct {p1, p0}, Lcom/serenegiant/widget/ProgressView$1;-><init>(Lcom/serenegiant/widget/ProgressView;)V

    iput-object p1, p0, Lcom/serenegiant/widget/ProgressView;->mUpdateProgressTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/widget/ProgressView;)Landroid/graphics/drawable/ClipDrawable;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/serenegiant/widget/ProgressView;->mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/serenegiant/widget/ProgressView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/serenegiant/widget/ProgressView;->mProgress:I

    return p0
.end method

.method static synthetic access$200(Lcom/serenegiant/widget/ProgressView;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/serenegiant/widget/ProgressView;->mScale:F

    return p0
.end method

.method static synthetic access$300(Lcom/serenegiant/widget/ProgressView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/serenegiant/widget/ProgressView;->mMin:I

    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    iget-object v0, p0, Lcom/serenegiant/widget/ProgressView;->mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ClipDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 81
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 82
    invoke-virtual {p0}, Lcom/serenegiant/widget/ProgressView;->resize()V

    return-void
.end method

.method protected refreshDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 223
    iput-object p1, p0, Lcom/serenegiant/widget/ProgressView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 225
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget v0, p0, Lcom/serenegiant/widget/ProgressView;->mColor:I

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/serenegiant/widget/ProgressView;->mDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/16 p1, 0x73

    .line 229
    iget v0, p0, Lcom/serenegiant/widget/ProgressView;->mRotation:I

    const/16 v1, 0x5a

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_1

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/16 p1, 0x37

    goto :goto_1

    :cond_2
    const/16 p1, 0x75

    goto :goto_0

    :cond_3
    const/16 p1, 0x57

    .line 243
    :goto_1
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    iget-object v1, p0, Lcom/serenegiant/widget/ProgressView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, p1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Lcom/serenegiant/widget/ProgressView;->mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 244
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 245
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ProgressView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 246
    iget-object v0, p0, Lcom/serenegiant/widget/ProgressView;->mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ClipDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 247
    iget-object p1, p0, Lcom/serenegiant/widget/ProgressView;->mClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    iget v0, p0, Lcom/serenegiant/widget/ProgressView;->mProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/serenegiant/widget/ProgressView;->mScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/serenegiant/widget/ProgressView;->mMin:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 248
    invoke-virtual {p0}, Lcom/serenegiant/widget/ProgressView;->postInvalidate()V

    return-void
.end method

.method protected resize()V
    .locals 4

    .line 216
    iget v0, p0, Lcom/serenegiant/widget/ProgressView;->mProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/serenegiant/widget/ProgressView;->mScale:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/serenegiant/widget/ProgressView;->mMin:I

    int-to-float v2, v1

    add-float/2addr v0, v2

    .line 217
    iget v2, p0, Lcom/serenegiant/widget/ProgressView;->mMax:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v3, v2

    iput v3, p0, Lcom/serenegiant/widget/ProgressView;->mScale:F

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 218
    iput v0, p0, Lcom/serenegiant/widget/ProgressView;->mProgress:I

    .line 219
    iget-object v0, p0, Lcom/serenegiant/widget/ProgressView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/ProgressView;->refreshDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 198
    iget v0, p0, Lcom/serenegiant/widget/ProgressView;->mColor:I

    if-eq v0, p1, :cond_0

    .line 199
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mColor:I

    const/4 p1, 0x0

    .line 200
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ProgressView;->refreshDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/serenegiant/widget/ProgressView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 211
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ProgressView;->refreshDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setMinMax(II)V
    .locals 1

    .line 86
    iget v0, p0, Lcom/serenegiant/widget/ProgressView;->mMin:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/serenegiant/widget/ProgressView;->mMax:I

    if-eq v0, p2, :cond_1

    :cond_0
    if-eq p1, p2, :cond_1

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/widget/ProgressView;->mMin:I

    .line 88
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mMax:I

    .line 89
    invoke-virtual {p0}, Lcom/serenegiant/widget/ProgressView;->resize()V

    :cond_1
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 99
    iget v0, p0, Lcom/serenegiant/widget/ProgressView;->mProgress:I

    if-eq v0, p1, :cond_0

    .line 100
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mProgress:I

    .line 103
    iget-object p1, p0, Lcom/serenegiant/widget/ProgressView;->mUpdateProgressTask:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ProgressView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 104
    iget-object p1, p0, Lcom/serenegiant/widget/ProgressView;->mUpdateProgressTask:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ProgressView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setRotation(I)V
    .locals 1

    .line 185
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    rem-int/lit16 p1, p1, 0x168

    .line 186
    iget v0, p0, Lcom/serenegiant/widget/ProgressView;->mRotation:I

    if-eq v0, p1, :cond_0

    .line 187
    iput p1, p0, Lcom/serenegiant/widget/ProgressView;->mRotation:I

    .line 188
    invoke-virtual {p0}, Lcom/serenegiant/widget/ProgressView;->resize()V

    :cond_0
    return-void
.end method
