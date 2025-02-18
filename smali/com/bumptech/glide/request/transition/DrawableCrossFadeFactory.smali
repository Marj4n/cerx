.class public Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/TransitionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;,
        Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$DefaultViewTransitionAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/TransitionFactory<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final duration:I

.field private firstResourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

.field private final isCrossFadeEnabled:Z

.field private secondResourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

.field private final viewAnimationFactory:Lcom/bumptech/glide/request/transition/ViewAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/ViewAnimationFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/bumptech/glide/request/transition/ViewAnimationFactory;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/ViewAnimationFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;IZ)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->viewAnimationFactory:Lcom/bumptech/glide/request/transition/ViewAnimationFactory;

    .line 29
    iput p2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->duration:I

    .line 30
    iput-boolean p3, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->isCrossFadeEnabled:Z

    return-void
.end method

.method private buildTransition(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->viewAnimationFactory:Lcom/bumptech/glide/request/transition/ViewAnimationFactory;

    .line 61
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/transition/ViewAnimationFactory;->build(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/Transition;

    move-result-object p1

    .line 62
    new-instance p2, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    iget v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->duration:I

    iget-boolean v1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->isCrossFadeEnabled:Z

    invoke-direct {p2, p1, v0, v1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;-><init>(Lcom/bumptech/glide/request/transition/Transition;IZ)V

    return-object p2
.end method

.method private getFirstResourceTransition(Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/request/transition/Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->firstResourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->buildTransition(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->firstResourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->firstResourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    return-object p1
.end method

.method private getSecondResourceTransition(Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/request/transition/Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->secondResourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->buildTransition(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->secondResourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->secondResourceTransition:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    return-object p1
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-ne p1, v0, :cond_0

    .line 36
    invoke-static {}, Lcom/bumptech/glide/request/transition/NoTransition;->get()Lcom/bumptech/glide/request/transition/Transition;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 38
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->getFirstResourceTransition(Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/request/transition/Transition;

    move-result-object p1

    return-object p1

    .line 40
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->getSecondResourceTransition(Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/request/transition/Transition;

    move-result-object p1

    return-object p1
.end method
