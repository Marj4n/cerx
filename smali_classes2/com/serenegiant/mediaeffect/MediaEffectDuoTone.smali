.class public Lcom/serenegiant/mediaeffect/MediaEffectDuoTone;
.super Lcom/serenegiant/mediaeffect/MediaEffect;
.source "MediaEffectDuoTone.java"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;II)V
    .locals 1

    const-string v0, "android.media.effect.effects.DuotoneEffect"

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/mediaeffect/MediaEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/serenegiant/mediaeffect/MediaEffectDuoTone;->setParameter(II)Lcom/serenegiant/mediaeffect/MediaEffectDuoTone;

    return-void
.end method


# virtual methods
.method public setParameter(II)Lcom/serenegiant/mediaeffect/MediaEffectDuoTone;
    .locals 1

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "first_color"

    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectDuoTone;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "second_color"

    invoke-virtual {p0, p2, p1}, Lcom/serenegiant/mediaeffect/MediaEffectDuoTone;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    return-object p0
.end method
