.class public Lcom/serenegiant/mediaeffect/MediaEffectBlackWhite;
.super Lcom/serenegiant/mediaeffect/MediaEffect;
.source "MediaEffectBlackWhite.java"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 32
    invoke-direct {p0, p1, v0, v1}, Lcom/serenegiant/mediaeffect/MediaEffectBlackWhite;-><init>(Landroid/media/effect/EffectContext;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/media/effect/EffectContext;FF)V
    .locals 1

    const-string v0, "android.media.effect.effects.BlackWhiteEffect"

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/mediaeffect/MediaEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectBlackWhite;->setParameter(FF)Lcom/serenegiant/mediaeffect/MediaEffectBlackWhite;

    return-void
.end method


# virtual methods
.method public setParameter(FF)Lcom/serenegiant/mediaeffect/MediaEffectBlackWhite;
    .locals 1

    .line 54
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "black"

    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectBlackWhite;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    .line 55
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "white"

    invoke-virtual {p0, p2, p1}, Lcom/serenegiant/mediaeffect/MediaEffectBlackWhite;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    return-object p0
.end method
