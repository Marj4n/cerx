.class public Lcom/serenegiant/mediaeffect/MediaEffectSaturate;
.super Lcom/serenegiant/mediaeffect/MediaEffect;
.source "MediaEffectSaturate.java"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;F)V
    .locals 1

    const-string v0, "android.media.effect.effects.SaturateEffect"

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/mediaeffect/MediaEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/serenegiant/mediaeffect/MediaEffectSaturate;->setParameter(F)Lcom/serenegiant/mediaeffect/MediaEffectSaturate;

    return-void
.end method


# virtual methods
.method public setParameter(F)Lcom/serenegiant/mediaeffect/MediaEffectSaturate;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    invoke-virtual {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectSaturate;->setEnable(Z)Lcom/serenegiant/mediaeffect/IEffect;

    .line 47
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "scale"

    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectSaturate;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    return-object p0
.end method
