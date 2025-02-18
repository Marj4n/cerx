.class final Lcom/serenegiant/utils/ViewAnimationHelper$4;
.super Ljava/lang/Object;
.source "ViewAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/utils/ViewAnimationHelper;->zoomOut(Landroid/view/View;JJLcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;)V
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

    .line 154
    iput-object p1, p0, Lcom/serenegiant/utils/ViewAnimationHelper$4;->val$target:Landroid/view/View;

    iput-object p2, p0, Lcom/serenegiant/utils/ViewAnimationHelper$4;->val$listener:Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;

    iput-wide p3, p0, Lcom/serenegiant/utils/ViewAnimationHelper$4;->val$duration:J

    iput-wide p5, p0, Lcom/serenegiant/utils/ViewAnimationHelper$4;->val$startDelay:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 157
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$4;->val$target:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$4;->val$target:Landroid/view/View;

    sget v2, Lcom/serenegiant/common/R$id;->anim_type:I

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$4;->val$target:Landroid/view/View;

    sget v2, Lcom/serenegiant/common/R$id;->anim_listener:I

    iget-object v3, p0, Lcom/serenegiant/utils/ViewAnimationHelper$4;->val$listener:Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$4;->val$target:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 161
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$4;->val$target:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 162
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$4;->val$target:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v2, v0, [F

    .line 163
    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v0, [F

    .line 164
    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 165
    iget-object v4, p0, Lcom/serenegiant/utils/ViewAnimationHelper$4;->val$target:Landroid/view/View;

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    invoke-static {v4, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 166
    invoke-static {}, Lcom/serenegiant/utils/ViewAnimationHelper;->access$000()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isJellyBeanMR2()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 169
    :cond_0
    iget-wide v1, p0, Lcom/serenegiant/utils/ViewAnimationHelper$4;->val$duration:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x1f4

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 170
    iget-wide v1, p0, Lcom/serenegiant/utils/ViewAnimationHelper$4;->val$startDelay:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    move-wide v3, v1

    :cond_2
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 171
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
