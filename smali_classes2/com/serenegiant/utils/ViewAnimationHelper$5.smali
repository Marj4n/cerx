.class final Lcom/serenegiant/utils/ViewAnimationHelper$5;
.super Ljava/lang/Object;
.source "ViewAnimationHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/utils/ViewAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x2

    .line 190
    invoke-static {p1, v0}, Lcom/serenegiant/utils/ViewAnimationHelper;->access$100(Landroid/animation/Animator;I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    .line 186
    invoke-static {p1, v0}, Lcom/serenegiant/utils/ViewAnimationHelper;->access$100(Landroid/animation/Animator;I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-static {p1, v0}, Lcom/serenegiant/utils/ViewAnimationHelper;->access$100(Landroid/animation/Animator;I)V

    return-void
.end method
