.class public Lcom/serenegiant/mediaeffect/MediaEffectFishEye;
.super Lcom/serenegiant/mediaeffect/MediaEffect;
.source "MediaEffectFishEye.java"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;F)V
    .locals 1

    const-string v0, "android.media.effect.effects.FisheyeEffect"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/mediaeffect/MediaEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p2}, Lcom/serenegiant/mediaeffect/MediaEffectFishEye;->setParameter(F)Lcom/serenegiant/mediaeffect/MediaEffectFishEye;

    return-void
.end method


# virtual methods
.method public setParameter(F)Lcom/serenegiant/mediaeffect/MediaEffectFishEye;
    .locals 1

    .line 42
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "scale"

    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectFishEye;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    return-object p0
.end method
