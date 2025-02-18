.class public Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/utils/AnimUtil;
.super Ljava/lang/Object;
.source "AnimUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startFromY(Landroid/view/View;F)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput v1, v0, p1

    const-string p1, "translationY"

    .line 93
    invoke-static {p0, p1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startHide(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 54
    invoke-static {p0}, Lcom/nineoldandroids/view/ViewHelper;->getAlpha(Landroid/view/View;)F

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v1, v0

    const-string v0, "alpha"

    invoke-static {p0, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startHide(Landroid/view/View;JJ)V
    .locals 3

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 40
    invoke-static {p0}, Lcom/nineoldandroids/view/ViewHelper;->getAlpha(Landroid/view/View;)F

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v1, v0

    const-string v0, "alpha"

    invoke-static {p0, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    .line 41
    invoke-virtual {p0, p3, p4}, Lcom/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 42
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startRotation(Landroid/view/View;F)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 13
    invoke-static {p0}, Lcom/nineoldandroids/view/ViewHelper;->getRotation(Landroid/view/View;)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const-string p1, "rotation"

    invoke-static {p0, p1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startRotation(Landroid/view/View;FJJ)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 17
    invoke-static {p0}, Lcom/nineoldandroids/view/ViewHelper;->getRotation(Landroid/view/View;)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const-string p1, "rotation"

    invoke-static {p0, p1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    .line 18
    invoke-virtual {p0, p4, p5}, Lcom/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 19
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startRotation(Landroid/view/View;FJJI)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 23
    invoke-static {p0}, Lcom/nineoldandroids/view/ViewHelper;->getRotation(Landroid/view/View;)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const-string p1, "rotation"

    invoke-static {p0, p1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    .line 24
    invoke-virtual {p0, p4, p5}, Lcom/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 25
    invoke-virtual {p0, p6}, Lcom/nineoldandroids/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 26
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 27
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startScale(Landroid/view/View;F)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 60
    invoke-static {p0}, Lcom/nineoldandroids/view/ViewHelper;->getScaleX(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    const-string v4, "scaleX"

    invoke-static {p0, v4, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    new-array v0, v0, [F

    .line 61
    invoke-static {p0}, Lcom/nineoldandroids/view/ViewHelper;->getScaleY(Landroid/view/View;)F

    move-result v1

    aput v1, v0, v3

    aput p1, v0, v2

    const-string p1, "scaleY"

    invoke-static {p0, p1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startScale(Landroid/view/View;FF)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    const-string v4, "scaleX"

    .line 76
    invoke-static {p0, v4, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    new-array v0, v0, [F

    aput p1, v0, v2

    aput p2, v0, v3

    const-string p1, "scaleY"

    .line 77
    invoke-static {p0, p1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startScale(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    const-string v4, "scaleX"

    .line 82
    invoke-static {p0, v4, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 83
    invoke-virtual {v1, p5, p6}, Lcom/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 84
    invoke-virtual {v1, p7}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 85
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    new-array v0, v0, [F

    aput p1, v0, v2

    aput p2, v0, v3

    const-string p1, "scaleY"

    .line 86
    invoke-static {p0, p1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    .line 87
    invoke-virtual {p0, p5, p6}, Lcom/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 88
    invoke-virtual {p0, p7}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 89
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startScale(Landroid/view/View;FJJLandroid/view/animation/Interpolator;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 65
    invoke-static {p0}, Lcom/nineoldandroids/view/ViewHelper;->getScaleX(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    const-string v4, "scaleX"

    invoke-static {p0, v4, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p4, p5}, Lcom/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 67
    invoke-virtual {v1, p6}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 68
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    new-array v0, v0, [F

    .line 69
    invoke-static {p0}, Lcom/nineoldandroids/view/ViewHelper;->getScaleY(Landroid/view/View;)F

    move-result v1

    aput v1, v0, v3

    aput p1, v0, v2

    const-string p1, "scaleY"

    invoke-static {p0, p1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    .line 70
    invoke-virtual {p0, p4, p5}, Lcom/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 71
    invoke-virtual {p0, p6}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 72
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startShow(Landroid/view/View;F)V
    .locals 2

    .line 47
    invoke-static {p0, p1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput p1, v1, v0

    const/4 p1, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v1, p1

    const-string p1, "alpha"

    .line 49
    invoke-static {p0, p1, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startShow(Landroid/view/View;FJJ)V
    .locals 2

    .line 31
    invoke-static {p0, p1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput p1, v1, v0

    const/4 p1, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v1, p1

    const-string p1, "alpha"

    .line 33
    invoke-static {p0, p1, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    .line 34
    invoke-virtual {p0, p4, p5}, Lcom/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 35
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startToY(Landroid/view/View;F)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const-string p1, "translationY"

    .line 97
    invoke-static {p0, p1, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method
