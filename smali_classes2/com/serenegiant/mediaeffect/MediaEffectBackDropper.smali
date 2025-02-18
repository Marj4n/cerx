.class public Lcom/serenegiant/mediaeffect/MediaEffectBackDropper;
.super Lcom/serenegiant/mediaeffect/MediaEffect;
.source "MediaEffectBackDropper.java"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 1

    const-string v0, "android.media.effect.effects.BackDropperEffect"

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/mediaeffect/MediaEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/serenegiant/mediaeffect/MediaEffectBackDropper;->setParameter(Ljava/lang/String;)Lcom/serenegiant/mediaeffect/MediaEffectBackDropper;

    return-void
.end method


# virtual methods
.method public setParameter(Ljava/lang/String;)Lcom/serenegiant/mediaeffect/MediaEffectBackDropper;
    .locals 1

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "source"

    .line 46
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectBackDropper;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    :cond_0
    return-object p0
.end method
