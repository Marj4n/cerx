.class final Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$DefaultViewTransitionAnimationFactory;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultViewTransitionAnimationFactory"
.end annotation


# instance fields
.field private final durationMillis:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$DefaultViewTransitionAnimationFactory;->durationMillis:I

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 2

    .line 76
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 77
    iget v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$DefaultViewTransitionAnimationFactory;->durationMillis:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object p1
.end method
