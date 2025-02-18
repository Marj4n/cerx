.class public Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;
.super Landroid/view/TextureView;
.source "TextureRenderView.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;,
        Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$InternalSurfaceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureRenderView"


# instance fields
.field private mMeasureHelper:Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;

.field private mSurfaceCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;)Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;

    return-object p0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 0

    .line 71
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;

    invoke-direct {p1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->mMeasureHelper:Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;

    .line 72
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;

    invoke-direct {p1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;

    .line 73
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->addRenderCallback(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;)V

    return-void
.end method

.method public getSurfaceHolder()Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;
    .locals 3

    .line 135
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;

    invoke-direct {v0, p0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->willDetachFromWindow()V

    .line 89
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 90
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->didDetachFromWindow()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 362
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 363
    const-class v0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 368
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 369
    const-class v0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->mMeasureHelper:Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;->doMeasure(II)V

    .line 127
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->mMeasureHelper:Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->mMeasureHelper:Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeRenderCallback(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->mSurfaceCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->removeRenderCallback(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;)V

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->mMeasureHelper:Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;->setAspectRatio(I)V

    .line 121
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->requestLayout()V

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->mMeasureHelper:Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;->setVideoRotation(I)V

    int-to-float p1, p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->setRotation(F)V

    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->mMeasureHelper:Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;->setVideoSampleAspectRatio(II)V

    .line 108
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->mMeasureHelper:Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/MeasureHelper;->setVideoSize(II)V

    .line 100
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
