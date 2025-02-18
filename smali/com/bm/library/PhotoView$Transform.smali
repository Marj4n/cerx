.class Lcom/bm/library/PhotoView$Transform;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bm/library/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transform"
.end annotation


# instance fields
.field C:Lcom/bm/library/PhotoView$ClipCalculate;

.field isRuning:Z

.field mClipRect:Landroid/graphics/RectF;

.field mClipScroller:Landroid/widget/Scroller;

.field mFlingScroller:Landroid/widget/OverScroller;

.field mInterpolatorProxy:Lcom/bm/library/PhotoView$InterpolatorProxy;

.field mLastFlingX:I

.field mLastFlingY:I

.field mLastTranslateX:I

.field mLastTranslateY:I

.field mRotateScroller:Landroid/widget/Scroller;

.field mScaleScroller:Landroid/widget/Scroller;

.field mTranslateScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/bm/library/PhotoView;


# direct methods
.method constructor <init>(Lcom/bm/library/PhotoView;)V
    .locals 3

    .line 997
    iput-object p1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    .line 995
    new-instance v0, Lcom/bm/library/PhotoView$InterpolatorProxy;

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bm/library/PhotoView$InterpolatorProxy;-><init>(Lcom/bm/library/PhotoView;Lcom/bm/library/PhotoView$1;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mInterpolatorProxy:Lcom/bm/library/PhotoView$InterpolatorProxy;

    .line 998
    invoke-virtual {p1}, Lcom/bm/library/PhotoView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 999
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->mInterpolatorProxy:Lcom/bm/library/PhotoView$InterpolatorProxy;

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    .line 1000
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->mInterpolatorProxy:Lcom/bm/library/PhotoView$InterpolatorProxy;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    .line 1001
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->mInterpolatorProxy:Lcom/bm/library/PhotoView$InterpolatorProxy;

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    .line 1002
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->mInterpolatorProxy:Lcom/bm/library/PhotoView$InterpolatorProxy;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mClipScroller:Landroid/widget/Scroller;

    .line 1003
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->mInterpolatorProxy:Lcom/bm/library/PhotoView$InterpolatorProxy;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private applyAnima()V
    .locals 5

    .line 1174
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1175
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$2900(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2900(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1176
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1177
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$3000(Lcom/bm/library/PhotoView;)F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$3100(Lcom/bm/library/PhotoView;)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1178
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$200(Lcom/bm/library/PhotoView;)F

    move-result v1

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$2500(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1179
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$500(Lcom/bm/library/PhotoView;)F

    move-result v1

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$500(Lcom/bm/library/PhotoView;)F

    move-result v2

    iget-object v3, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$2400(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$2400(Lcom/bm/library/PhotoView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1180
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$300(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1800(Lcom/bm/library/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v2}, Lcom/bm/library/PhotoView;->access$2200(Lcom/bm/library/PhotoView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1181
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$600(Lcom/bm/library/PhotoView;)V

    return-void
.end method

.method private postExecute()V
    .locals 1

    .line 1186
    iget-boolean v0, p0, Lcom/bm/library/PhotoView$Transform;->isRuning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-virtual {v0, p0}, Lcom/bm/library/PhotoView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1082
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const v1, 0x461c4000    # 10000.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-static {v0, v4}, Lcom/bm/library/PhotoView;->access$502(Lcom/bm/library/PhotoView;F)F

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1087
    :goto_0
    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget v4, p0, Lcom/bm/library/PhotoView$Transform;->mLastTranslateX:I

    sub-int/2addr v0, v4

    .line 1089
    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    iget v5, p0, Lcom/bm/library/PhotoView$Transform;->mLastTranslateY:I

    sub-int/2addr v4, v5

    .line 1090
    iget-object v5, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v5}, Lcom/bm/library/PhotoView;->access$1800(Lcom/bm/library/PhotoView;)I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v5, v6}, Lcom/bm/library/PhotoView;->access$1802(Lcom/bm/library/PhotoView;I)I

    .line 1091
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$2200(Lcom/bm/library/PhotoView;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v0, v5}, Lcom/bm/library/PhotoView;->access$2202(Lcom/bm/library/PhotoView;I)I

    .line 1092
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/bm/library/PhotoView$Transform;->mLastTranslateX:I

    .line 1093
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/bm/library/PhotoView$Transform;->mLastTranslateY:I

    const/4 v0, 0x0

    .line 1097
    :cond_1
    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1098
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget v4, p0, Lcom/bm/library/PhotoView$Transform;->mLastFlingX:I

    sub-int/2addr v0, v4

    .line 1099
    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    iget v5, p0, Lcom/bm/library/PhotoView$Transform;->mLastFlingY:I

    sub-int/2addr v4, v5

    .line 1101
    iget-object v5, p0, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    iput v5, p0, Lcom/bm/library/PhotoView$Transform;->mLastFlingX:I

    .line 1102
    iget-object v5, p0, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    iput v5, p0, Lcom/bm/library/PhotoView$Transform;->mLastFlingY:I

    .line 1104
    iget-object v5, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v5}, Lcom/bm/library/PhotoView;->access$1800(Lcom/bm/library/PhotoView;)I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v5, v6}, Lcom/bm/library/PhotoView;->access$1802(Lcom/bm/library/PhotoView;I)I

    .line 1105
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$2200(Lcom/bm/library/PhotoView;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v0, v5}, Lcom/bm/library/PhotoView;->access$2202(Lcom/bm/library/PhotoView;I)I

    const/4 v0, 0x0

    .line 1109
    :cond_2
    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1110
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Lcom/bm/library/PhotoView;->access$202(Lcom/bm/library/PhotoView;F)F

    const/4 v0, 0x0

    .line 1114
    :cond_3
    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->mClipScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$3600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1115
    :cond_4
    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->mClipScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 1116
    iget-object v5, p0, Lcom/bm/library/PhotoView$Transform;->mClipScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    .line 1117
    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v6, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v6}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v7}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/bm/library/PhotoView$Transform;->C:Lcom/bm/library/PhotoView$ClipCalculate;

    invoke-interface {v7}, Lcom/bm/library/PhotoView$ClipCalculate;->calculateTop()F

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1118
    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$2800(Lcom/bm/library/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v6, p0, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v7}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v1

    if-nez v4, :cond_5

    .line 1121
    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v6}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 1122
    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v6}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iput v6, v4, Landroid/graphics/RectF;->right:F

    :cond_5
    cmpl-float v1, v5, v1

    if-nez v1, :cond_6

    .line 1126
    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iput v4, v1, Landroid/graphics/RectF;->top:F

    .line 1127
    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 1130
    :cond_6
    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    invoke-static {v1, v4}, Lcom/bm/library/PhotoView;->access$3602(Lcom/bm/library/PhotoView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    :cond_7
    if-nez v0, :cond_8

    .line 1134
    invoke-direct {p0}, Lcom/bm/library/PhotoView$Transform;->applyAnima()V

    .line 1135
    invoke-direct {p0}, Lcom/bm/library/PhotoView$Transform;->postExecute()V

    goto/16 :goto_3

    .line 1137
    :cond_8
    iput-boolean v3, p0, Lcom/bm/library/PhotoView$Transform;->isRuning:Z

    .line 1142
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1200(Lcom/bm/library/PhotoView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1143
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 1144
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1800(Lcom/bm/library/PhotoView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v3}, Lcom/bm/library/PhotoView;->access$1802(Lcom/bm/library/PhotoView;I)I

    goto :goto_1

    .line 1145
    :cond_9
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a

    .line 1146
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1800(Lcom/bm/library/PhotoView;)I

    move-result v3

    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v5}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Lcom/bm/library/PhotoView;->access$1802(Lcom/bm/library/PhotoView;I)I

    :cond_a
    :goto_1
    const/4 v3, 0x1

    .line 1151
    :cond_b
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1300(Lcom/bm/library/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1152
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    .line 1153
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$2200(Lcom/bm/library/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/bm/library/PhotoView;->access$2202(Lcom/bm/library/PhotoView;I)I

    goto :goto_2

    .line 1154
    :cond_c
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v1}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    .line 1155
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$2200(Lcom/bm/library/PhotoView;)I

    move-result v1

    iget-object v3, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v3}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/bm/library/PhotoView;->access$2202(Lcom/bm/library/PhotoView;I)I

    goto :goto_2

    :cond_d
    move v2, v3

    :cond_e
    :goto_2
    if-eqz v2, :cond_f

    .line 1161
    invoke-direct {p0}, Lcom/bm/library/PhotoView$Transform;->applyAnima()V

    .line 1164
    :cond_f
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-virtual {v0}, Lcom/bm/library/PhotoView;->invalidate()V

    .line 1166
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$3700(Lcom/bm/library/PhotoView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1167
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v0}, Lcom/bm/library/PhotoView;->access$3700(Lcom/bm/library/PhotoView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1168
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bm/library/PhotoView;->access$3702(Lcom/bm/library/PhotoView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_10
    :goto_3
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mInterpolatorProxy:Lcom/bm/library/PhotoView$InterpolatorProxy;

    invoke-virtual {v0, p1}, Lcom/bm/library/PhotoView$InterpolatorProxy;->setTargetInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method start()V
    .locals 1

    const/4 v0, 0x1

    .line 1062
    iput-boolean v0, p0, Lcom/bm/library/PhotoView$Transform;->isRuning:Z

    .line 1063
    invoke-direct {p0}, Lcom/bm/library/PhotoView$Transform;->postExecute()V

    return-void
.end method

.method stop()V
    .locals 1

    .line 1067
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-virtual {v0, p0}, Lcom/bm/library/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1068
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1069
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1070
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1071
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 1072
    iput-boolean v0, p0, Lcom/bm/library/PhotoView$Transform;->isRuning:Z

    return-void
.end method

.method withClip(FFFFILcom/bm/library/PhotoView$ClipCalculate;)V
    .locals 6

    .line 1021
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mClipScroller:Landroid/widget/Scroller;

    const v1, 0x461c4000    # 10000.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    mul-float p2, p2, v1

    float-to-int v2, p2

    mul-float p3, p3, v1

    float-to-int v3, p3

    mul-float p4, p4, v1

    float-to-int v4, p4

    move v1, p1

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1022
    iput-object p6, p0, Lcom/bm/library/PhotoView$Transform;->C:Lcom/bm/library/PhotoView$ClipCalculate;

    return-void
.end method

.method withFling(FF)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    cmpg-float v6, v1, v3

    if-gez v6, :cond_0

    const v7, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 1034
    :goto_0
    iput v7, v0, Lcom/bm/library/PhotoView$Transform;->mLastFlingX:I

    cmpl-float v7, v1, v3

    .line 1035
    iget-object v8, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v8}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v8

    if-lez v7, :cond_1

    iget v8, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    goto :goto_1

    :cond_1
    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget-object v9, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v9}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v9

    :goto_1
    float-to-int v8, v8

    if-gez v6, :cond_2

    sub-int v8, v4, v8

    :cond_2
    if-gez v6, :cond_3

    move v9, v8

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-gez v6, :cond_4

    const v10, 0x7fffffff

    goto :goto_3

    :cond_4
    move v10, v8

    :goto_3
    if-gez v6, :cond_5

    sub-int v8, v4, v9

    :cond_5
    cmpg-float v6, v2, v3

    if-gez v6, :cond_6

    const v11, 0x7fffffff

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    .line 1041
    :goto_4
    iput v11, v0, Lcom/bm/library/PhotoView$Transform;->mLastFlingY:I

    cmpl-float v3, v2, v3

    .line 1042
    iget-object v11, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v11}, Lcom/bm/library/PhotoView;->access$1500(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v11

    if-lez v3, :cond_7

    iget v11, v11, Landroid/graphics/RectF;->top:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    goto :goto_5

    :cond_7
    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    iget-object v12, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v12}, Lcom/bm/library/PhotoView;->access$1600(Lcom/bm/library/PhotoView;)Landroid/graphics/RectF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v11, v12

    :goto_5
    float-to-int v11, v11

    if-gez v6, :cond_8

    sub-int v11, v4, v11

    :cond_8
    if-gez v6, :cond_9

    move v12, v11

    goto :goto_6

    :cond_9
    const/4 v12, 0x0

    :goto_6
    if-gez v6, :cond_a

    const v13, 0x7fffffff

    goto :goto_7

    :cond_a
    move v13, v11

    :goto_7
    if-gez v6, :cond_b

    sub-int v11, v4, v12

    :cond_b
    if-nez v7, :cond_c

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_8

    :cond_c
    move/from16 v19, v9

    move/from16 v20, v10

    :goto_8
    if-nez v3, :cond_d

    const/16 v21, 0x0

    const/16 v22, 0x0

    goto :goto_9

    :cond_d
    move/from16 v21, v12

    move/from16 v22, v13

    .line 1058
    :goto_9
    iget-object v14, v0, Lcom/bm/library/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    iget v15, v0, Lcom/bm/library/PhotoView$Transform;->mLastFlingX:I

    iget v3, v0, Lcom/bm/library/PhotoView$Transform;->mLastFlingY:I

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v6, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v6}, Lcom/bm/library/PhotoView;->access$3500(Lcom/bm/library/PhotoView;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_e

    const/16 v23, 0x0

    goto :goto_a

    :cond_e
    iget-object v4, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$3500(Lcom/bm/library/PhotoView;)I

    move-result v4

    move/from16 v23, v4

    :goto_a
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v6, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v6}, Lcom/bm/library/PhotoView;->access$3500(Lcom/bm/library/PhotoView;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_f

    const/16 v24, 0x0

    goto :goto_b

    :cond_f
    iget-object v4, v0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {v4}, Lcom/bm/library/PhotoView;->access$3500(Lcom/bm/library/PhotoView;)I

    move-result v5

    move/from16 v24, v5

    :goto_b
    move/from16 v16, v3

    move/from16 v17, v1

    move/from16 v18, v2

    invoke-virtual/range {v14 .. v24}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method withRotate(II)V
    .locals 6

    .line 1026
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    sub-int v3, p2, p1

    iget-object p2, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p2}, Lcom/bm/library/PhotoView;->access$3400(Lcom/bm/library/PhotoView;)I

    move-result v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method withRotate(III)V
    .locals 6

    .line 1030
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    sub-int v3, p2, p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method withScale(FF)V
    .locals 6

    .line 1017
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    const v1, 0x461c4000    # 10000.0f

    mul-float v2, p1, v1

    float-to-int v2, v2

    sub-float/2addr p2, p1

    mul-float p2, p2, v1

    float-to-int v3, p2

    iget-object p1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$3400(Lcom/bm/library/PhotoView;)I

    move-result v5

    const/4 p1, 0x0

    const/4 v4, 0x0

    move v1, v2

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method withTranslate(IIII)V
    .locals 6

    const/4 p1, 0x0

    .line 1011
    iput p1, p0, Lcom/bm/library/PhotoView$Transform;->mLastTranslateX:I

    .line 1012
    iput p1, p0, Lcom/bm/library/PhotoView$Transform;->mLastTranslateY:I

    .line 1013
    iget-object v0, p0, Lcom/bm/library/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    iget-object p1, p0, Lcom/bm/library/PhotoView$Transform;->this$0:Lcom/bm/library/PhotoView;

    invoke-static {p1}, Lcom/bm/library/PhotoView;->access$3400(Lcom/bm/library/PhotoView;)I

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method
