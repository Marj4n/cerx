.class public Lcom/serenegiant/utils/ViewAnimationHelper;
.super Ljava/lang/Object;
.source "ViewAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_FADE_IN:I = 0x1

.field public static final ANIMATION_FADE_OUT:I = 0x0

.field public static final ANIMATION_UNKNOWN:I = -0x1

.field public static final ANIMATION_ZOOM_IN:I = 0x2

.field public static final ANIMATION_ZOOM_OUT:I = 0x3

.field private static final DEFAULT_DURATION_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String;

.field private static final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/serenegiant/utils/ViewAnimationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/utils/ViewAnimationHelper;->TAG:Ljava/lang/String;

    .line 179
    new-instance v0, Lcom/serenegiant/utils/ViewAnimationHelper$5;

    invoke-direct {v0}, Lcom/serenegiant/utils/ViewAnimationHelper$5;-><init>()V

    sput-object v0, Lcom/serenegiant/utils/ViewAnimationHelper;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 31
    sget-object v0, Lcom/serenegiant/utils/ViewAnimationHelper;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/animation/Animator;I)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/serenegiant/utils/ViewAnimationHelper;->onAnimation(Landroid/animation/Animator;I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/serenegiant/utils/ViewAnimationHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static fadeIn(Landroid/view/View;JJLcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v7, Lcom/serenegiant/utils/ViewAnimationHelper$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/utils/ViewAnimationHelper$1;-><init>(Landroid/view/View;Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;JJ)V

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v7, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static fadeOut(Landroid/view/View;JJLcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;)V
    .locals 8

    if-eqz p0, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/serenegiant/utils/ViewAnimationHelper$2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p5

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/serenegiant/utils/ViewAnimationHelper$2;-><init>(Landroid/view/View;Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;JJ)V

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static onAnimation(Landroid/animation/Animator;I)V
    .locals 7

    .line 198
    instance-of v0, p0, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 199
    move-object v4, p0

    check-cast v4, Landroid/animation/ObjectAnimator;

    .line 200
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    .line 203
    :cond_0
    sget v0, Lcom/serenegiant/common/R$id;->anim_listener:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;

    .line 206
    :try_start_0
    sget v0, Lcom/serenegiant/common/R$id;->anim_type:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 211
    new-instance v0, Lcom/serenegiant/utils/ViewAnimationHelper$6;

    move-object v1, v0

    move v2, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/serenegiant/utils/ViewAnimationHelper$6;-><init>(ILcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;Landroid/animation/ObjectAnimator;Landroid/view/View;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    :catch_0
    :cond_1
    return-void
.end method

.method public static zoomIn(Landroid/view/View;JJLcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance v7, Lcom/serenegiant/utils/ViewAnimationHelper$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/utils/ViewAnimationHelper$3;-><init>(Landroid/view/View;Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;JJ)V

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v7, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static zoomOut(Landroid/view/View;JJLcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 154
    :cond_0
    new-instance v7, Lcom/serenegiant/utils/ViewAnimationHelper$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/utils/ViewAnimationHelper$4;-><init>(Landroid/view/View;Lcom/serenegiant/utils/ViewAnimationHelper$ViewAnimationListener;JJ)V

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v7, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
