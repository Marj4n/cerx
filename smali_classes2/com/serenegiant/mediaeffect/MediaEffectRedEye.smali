.class public Lcom/serenegiant/mediaeffect/MediaEffectRedEye;
.super Lcom/serenegiant/mediaeffect/MediaEffect;
.source "MediaEffectRedEye.java"


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;[F)V
    .locals 1

    const-string v0, "android.media.effect.effects.RedEyeEffect"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/mediaeffect/MediaEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/serenegiant/mediaeffect/MediaEffectRedEye;->setParameter([F)Lcom/serenegiant/mediaeffect/MediaEffectRedEye;

    return-void
.end method


# virtual methods
.method public setParameter([F)Lcom/serenegiant/mediaeffect/MediaEffectRedEye;
    .locals 1

    const-string v0, "centers"

    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/mediaeffect/MediaEffectRedEye;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/serenegiant/mediaeffect/MediaEffect;

    return-object p0
.end method
