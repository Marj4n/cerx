.class Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LinearIndeterminateSeamlessAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;->maybeInitializeAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 97
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;->access$200(Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;->access$200(Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate$2;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;->access$100(Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;)V

    :cond_0
    return-void
.end method
