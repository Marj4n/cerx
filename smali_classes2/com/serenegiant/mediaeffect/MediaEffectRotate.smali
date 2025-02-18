.class public Lcom/serenegiant/mediaeffect/MediaEffectRotate;
.super Lcom/serenegiant/mediaeffect/MediaEffect;
.source "MediaEffectRotate.java"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;I)V
    .locals 1

    const-string v0, "android.media.effect.effects.RotateEffect"

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/mediaeffect/MediaEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/serenegiant/mediaeffect/MediaEffectRotate;->setParameter(I)Lcom/serenegiant/mediaeffect/MediaEffectRotate;

    return-void
.end method


# virtual methods
.method public setParameter(I)Lcom/serenegiant/mediaeffect/MediaEffectRotate;
    .locals 1

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "angle"

    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectRotate;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    return-object p0
.end method
