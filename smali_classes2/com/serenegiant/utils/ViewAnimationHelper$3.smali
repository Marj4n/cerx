.class final Lcom/serenegiant/utils/ViewAnimationHelper$3;
.super Ljava/lang/Object;
.source "ViewAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/utils/ViewAnimationHelper;->zoomIn(Landroid/view/View;JJLcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:J

.field final synthetic val$listener:Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;

.field final synthetic val$startDelay:J

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;JJ)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/serenegiant/utils/ViewAnimationHelper$3;->val$target:Landroid/view/View;

    iput-object p2, p0, Lcom/serenegiant/utils/ViewAnimationHelper$3;->val$listener:Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;

    iput-wide p3, p0, Lcom/serenegiant/utils/ViewAnimationHelper$3;->val$duration:J

    iput-wide p5, p0, Lcom/serenegiant/utils/ViewAnimationHelper$3;->val$startDelay:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$3;->val$target:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$3;->val$target:Landroid/view/View;

    sget v2, Lcom/serenegiant/common/R$id;->anim_type:I

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$3;->val$target:Landroid/view/View;

    sget v2, Lcom/serenegiant/common/R$id;->anim_listener:I

    iget-object v4, p0, Lcom/serenegiant/utils/ViewAnimationHelper$3;->val$listener:Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$3;->val$target:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 128
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$3;->val$target:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 129
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$3;->val$target:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    new-array v0, v3, [F

    .line 130
    fill-array-data v0, :array_0

    const-string v2, "scaleX"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v2, v3, [F

    .line 131
    fill-array-data v2, :array_1

    const-string v4, "scaleY"

    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 132
    iget-object v4, p0, Lcom/serenegiant/utils/ViewAnimationHelper$3;->val$target:Landroid/view/View;

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-static {v4, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 133
    invoke-static {}, Lcom/serenegiant/utils/ViewAnimationHelper;->access$000()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 134
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isJellyBeanMR2()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 136
    :cond_0
    iget-wide v2, p0, Lcom/serenegiant/utils/ViewAnimationHelper$3;->val$duration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1f4

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 137
    iget-wide v2, p0, Lcom/serenegiant/utils/ViewAnimationHelper$3;->val$startDelay:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    move-wide v4, v2

    :cond_2
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 138
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data
.end method
