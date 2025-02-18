.class final Lcom/serenegiant/utils/ViewAnimationHelper$2;
.super Ljava/lang/Object;
.source "ViewAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/utils/ViewAnimationHelper;->fadeOut(Landroid/view/View;JJLcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;)V
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

    .line 90
    iput-object p1, p0, Lcom/serenegiant/utils/ViewAnimationHelper$2;->val$target:Landroid/view/View;

    iput-object p2, p0, Lcom/serenegiant/utils/ViewAnimationHelper$2;->val$listener:Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;

    iput-wide p3, p0, Lcom/serenegiant/utils/ViewAnimationHelper$2;->val$duration:J

    iput-wide p5, p0, Lcom/serenegiant/utils/ViewAnimationHelper$2;->val$startDelay:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 93
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$2;->val$target:Landroid/view/View;

    sget v1, Lcom/serenegiant/common/R$id;->anim_type:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$2;->val$target:Landroid/view/View;

    sget v1, Lcom/serenegiant/common/R$id;->anim_listener:I

    iget-object v2, p0, Lcom/serenegiant/utils/ViewAnimationHelper$2;->val$listener:Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$2;->val$target:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 96
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$2;->val$target:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 97
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$2;->val$target:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 98
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$2;->val$target:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/serenegiant/utils/ViewAnimationHelper;->access$000()Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4_3()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 102
    :cond_0
    iget-wide v1, p0, Lcom/serenegiant/utils/ViewAnimationHelper$2;->val$duration:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x1f4

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 103
    iget-wide v1, p0, Lcom/serenegiant/utils/ViewAnimationHelper$2;->val$startDelay:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    move-wide v3, v1

    :cond_2
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 104
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
