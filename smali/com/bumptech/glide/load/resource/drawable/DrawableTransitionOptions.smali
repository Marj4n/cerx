.class public final Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
.super Lcom/bumptech/glide/TransitionOptions;
.source "DrawableTransitionOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/TransitionOptions<",
        "Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/bumptech/glide/TransitionOptions;-><init>()V

    return-void
.end method

.method public static with(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->transition(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    return-object p0
.end method

.method public static withCrossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1

    .line 20
    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public static withCrossFade(I)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade(I)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public static withCrossFade(II)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1

    .line 38
    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade(II)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public static withCrossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1

    .line 58
    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public static withCrossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1

    .line 48
    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public crossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1

    .line 76
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public crossFade(I)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1

    .line 88
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object p1

    return-object p1
.end method

.method public crossFade(II)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1

    .line 102
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>(I)V

    .line 104
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->setDefaultAnimationId(I)Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object p1

    return-object p1
.end method

.method public crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 0

    .line 120
    invoke-virtual {p1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->build()Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object p1

    return-object p1
.end method

.method public crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->transition(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    return-object p1
.end method
