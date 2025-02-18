.class Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LinearIndeterminateNonSeamlessAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->maybeInitializeAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 119
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;

    iget-boolean p1, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->animatorCompleteEndRequested:Z

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->animatorCompleteEndRequested:Z

    .line 121
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1, v0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->resetPropertiesForNewStart()V

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->resetPropertiesForNextCycle()V

    .line 127
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->startAnimator()V

    goto :goto_0

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateNonSeamlessAnimatorDelegate;->resetPropertiesForNewStart()V

    :goto_0
    return-void
.end method
