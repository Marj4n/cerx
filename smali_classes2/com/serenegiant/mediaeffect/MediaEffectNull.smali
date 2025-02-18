.class public Lcom/serenegiant/mediaeffect/MediaEffectNull;
.super Lcom/serenegiant/mediaeffect/MediaEffect;
.source "MediaEffectNull.java"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;)V
    .locals 1

    const-string v0, "android.media.effect.effects.AutoFixEffect"

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/mediaeffect/MediaEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 33
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "scale"

    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectNull;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    return-void
.end method
