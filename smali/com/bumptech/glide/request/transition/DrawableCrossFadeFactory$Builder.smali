.class public Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_DURATION_MS:I = 0x12c


# instance fields
.field private durationMillis:I

.field private factory:Lcom/bumptech/glide/request/transition/ViewAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/ViewAnimationFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private isCrossFadeEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x12c

    .line 92
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->durationMillis:I

    .line 104
    new-instance v0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;

    new-instance v1, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$DefaultViewTransitionAnimationFactory;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$DefaultViewTransitionAnimationFactory;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;-><init>(Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->factory:Lcom/bumptech/glide/request/transition/ViewAnimationFactory;

    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
    .locals 4

    .line 156
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;

    iget-object v1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->factory:Lcom/bumptech/glide/request/transition/ViewAnimationFactory;

    iget v2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->durationMillis:I

    iget-boolean v3, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->isCrossFadeEnabled:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/transition/ViewAnimationFactory;IZ)V

    return-object v0
.end method

.method public setCrossFadeEnabled(Z)Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->isCrossFadeEnabled:Z

    return-object p0
.end method

.method public setDefaultAnimation(Landroid/view/animation/Animation;)Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
    .locals 1

    .line 143
    new-instance v0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->setDefaultAnimationFactory(Lcom/bumptech/glide/request/transition/ViewAnimationFactory;)Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultAnimationFactory(Lcom/bumptech/glide/request/transition/ViewAnimationFactory;)Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/ViewAnimationFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->factory:Lcom/bumptech/glide/request/transition/ViewAnimationFactory;

    return-object p0
.end method

.method public setDefaultAnimationId(I)Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
    .locals 1

    .line 132
    new-instance v0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->setDefaultAnimationFactory(Lcom/bumptech/glide/request/transition/ViewAnimationFactory;)Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    move-result-object p1

    return-object p1
.end method
