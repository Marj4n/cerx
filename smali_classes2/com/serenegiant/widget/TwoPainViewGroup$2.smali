.class Lcom/serenegiant/widget/TwoPainViewGroup$2;
.super Ljava/lang/Object;
.source "TwoPainViewGroup.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/TwoPainViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/TwoPainViewGroup;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/TwoPainViewGroup;)V
    .locals 0

    .line 781
    iput-object p1, p0, Lcom/serenegiant/widget/TwoPainViewGroup$2;->this$0:Lcom/serenegiant/widget/TwoPainViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 798
    iget-object p1, p0, Lcom/serenegiant/widget/TwoPainViewGroup$2;->this$0:Lcom/serenegiant/widget/TwoPainViewGroup;

    invoke-static {p1}, Lcom/serenegiant/widget/TwoPainViewGroup;->access$100(Lcom/serenegiant/widget/TwoPainViewGroup;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup$2;->this$0:Lcom/serenegiant/widget/TwoPainViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/serenegiant/widget/TwoPainViewGroup;->access$202(Lcom/serenegiant/widget/TwoPainViewGroup;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 800
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    iget-object p1, p0, Lcom/serenegiant/widget/TwoPainViewGroup$2;->this$0:Lcom/serenegiant/widget/TwoPainViewGroup;

    invoke-virtual {p1}, Lcom/serenegiant/widget/TwoPainViewGroup;->requestLayout()V

    return-void

    :catchall_0
    move-exception v0

    .line 800
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 789
    iget-object p1, p0, Lcom/serenegiant/widget/TwoPainViewGroup$2;->this$0:Lcom/serenegiant/widget/TwoPainViewGroup;

    invoke-static {p1}, Lcom/serenegiant/widget/TwoPainViewGroup;->access$100(Lcom/serenegiant/widget/TwoPainViewGroup;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 790
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup$2;->this$0:Lcom/serenegiant/widget/TwoPainViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/serenegiant/widget/TwoPainViewGroup;->access$202(Lcom/serenegiant/widget/TwoPainViewGroup;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 791
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    iget-object p1, p0, Lcom/serenegiant/widget/TwoPainViewGroup$2;->this$0:Lcom/serenegiant/widget/TwoPainViewGroup;

    invoke-virtual {p1}, Lcom/serenegiant/widget/TwoPainViewGroup;->requestLayout()V

    return-void

    :catchall_0
    move-exception v0

    .line 791
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
