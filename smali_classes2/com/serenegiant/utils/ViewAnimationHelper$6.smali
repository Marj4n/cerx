.class final Lcom/serenegiant/utils/ViewAnimationHelper$6;
.super Ljava/lang/Object;
.source "ViewAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/utils/ViewAnimationHelper;->onAnimation(Landroid/animation/Animator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$anim:Landroid/animation/ObjectAnimator;

.field final synthetic val$animType:I

.field final synthetic val$event:I

.field final synthetic val$listener:Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(ILcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;Landroid/animation/ObjectAnimator;Landroid/view/View;I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$event:I

    iput-object p2, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$listener:Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;

    iput-object p3, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$anim:Landroid/animation/ObjectAnimator;

    iput-object p4, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$target:Landroid/view/View;

    iput p5, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$animType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 215
    :try_start_0
    iget v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$event:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$listener:Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;

    iget-object v1, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$anim:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$target:Landroid/view/View;

    iget v3, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$animType:I

    invoke-interface {v0, v1, v2, v3}, Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;->onAnimationCancel(Landroid/animation/Animator;Landroid/view/View;I)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$listener:Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;

    iget-object v1, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$anim:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$target:Landroid/view/View;

    iget v3, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$animType:I

    invoke-interface {v0, v1, v2, v3}, Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;->onAnimationEnd(Landroid/animation/Animator;Landroid/view/View;I)V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$listener:Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;

    iget-object v1, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$anim:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$target:Landroid/view/View;

    iget v3, p0, Lcom/serenegiant/utils/ViewAnimationHelper$6;->val$animType:I

    invoke-interface {v0, v1, v2, v3}, Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;->onAnimationStart(Landroid/animation/Animator;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    invoke-static {}, Lcom/serenegiant/utils/ViewAnimationHelper;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
