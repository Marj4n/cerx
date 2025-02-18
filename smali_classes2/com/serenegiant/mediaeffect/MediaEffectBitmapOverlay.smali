.class public Lcom/serenegiant/mediaeffect/MediaEffectBitmapOverlay;
.super Lcom/serenegiant/mediaeffect/MediaEffect;
.source "MediaEffectBitmapOverlay.java"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "android.media.effect.effects.BitmapOverlayEffect"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/mediaeffect/MediaEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/serenegiant/mediaeffect/MediaEffectBitmapOverlay;->setParameter(Landroid/graphics/Bitmap;)Lcom/serenegiant/mediaeffect/MediaEffectBitmapOverlay;

    return-void
.end method


# virtual methods
.method public setParameter(Landroid/graphics/Bitmap;)Lcom/serenegiant/mediaeffect/MediaEffectBitmapOverlay;
    .locals 1

    const-string v0, "bitmap"

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectBitmapOverlay;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    return-object p0
.end method
