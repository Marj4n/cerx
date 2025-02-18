.class public Lcom/serenegiant/mediaeffect/MediaEffectCrop;
.super Lcom/serenegiant/mediaeffect/MediaEffect;
.source "MediaEffectCrop.java"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;IIII)V
    .locals 1

    const-string v0, "android.media.effect.effects.CropEffect"

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/mediaeffect/MediaEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/serenegiant/mediaeffect/MediaEffectCrop;->setParameter(IIII)Lcom/serenegiant/mediaeffect/MediaEffectCrop;

    return-void
.end method


# virtual methods
.method public setParameter(IIII)Lcom/serenegiant/mediaeffect/MediaEffectCrop;
    .locals 1

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "xorigin"

    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectCrop;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "yorigin"

    invoke-virtual {p0, p2, p1}, Lcom/serenegiant/mediaeffect/MediaEffectCrop;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    .line 58
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {p0, p2, p1}, Lcom/serenegiant/mediaeffect/MediaEffectCrop;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    .line 59
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {p0, p2, p1}, Lcom/serenegiant/mediaeffect/MediaEffectCrop;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    return-object p0
.end method
