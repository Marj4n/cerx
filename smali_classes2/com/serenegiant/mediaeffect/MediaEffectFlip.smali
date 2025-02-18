.class public Lcom/serenegiant/mediaeffect/MediaEffectFlip;
.super Lcom/serenegiant/mediaeffect/MediaEffect;
.source "MediaEffectFlip.java"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;ZZ)V
    .locals 1

    const-string v0, "android.media.effect.effects.FlipEffect"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/mediaeffect/MediaEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectFlip;->setParameter(ZZ)Lcom/serenegiant/mediaeffect/MediaEffectFlip;

    return-void
.end method


# virtual methods
.method public setParameter(ZZ)Lcom/serenegiant/mediaeffect/MediaEffectFlip;
    .locals 1

    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "vertical"

    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectFlip;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    .line 50
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "horizontal"

    invoke-virtual {p0, p2, p1}, Lcom/serenegiant/mediaeffect/MediaEffectFlip;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    return-object p0
.end method
