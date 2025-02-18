.class public Lcom/serenegiant/mediaeffect/MediaEffectEmboss;
.super Lcom/serenegiant/mediaeffect/MediaEffectKernel;
.source "MediaEffectEmboss.java"


# instance fields
.field private mIntensity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    invoke-direct {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectEmboss;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [F

    const/high16 v1, -0x40000000    # -2.0f

    mul-float v1, v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    neg-float v1, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p1

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 29
    invoke-direct {p0, v0}, Lcom/serenegiant/mediaeffect/MediaEffectKernel;-><init>([F)V

    .line 34
    iput p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectEmboss;->mIntensity:F

    return-void
.end method


# virtual methods
.method public setParameter(F)Lcom/serenegiant/mediaeffect/MediaEffectEmboss;
    .locals 4

    .line 38
    iget v0, p0, Lcom/serenegiant/mediaeffect/MediaEffectEmboss;->mIntensity:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 39
    iput p1, p0, Lcom/serenegiant/mediaeffect/MediaEffectEmboss;->mIntensity:F

    const/16 v0, 0x9

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, -0x40000000    # -2.0f

    mul-float v2, v2, p1

    aput v2, v0, v1

    const/4 v1, 0x1

    neg-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x0

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    const/16 v1, 0x8

    const/high16 v2, 0x40000000    # 2.0f

    mul-float p1, p1, v2

    aput p1, v0, v1

    .line 40
    invoke-virtual {p0, v0, v3}, Lcom/serenegiant/mediaeffect/MediaEffectEmboss;->setParameter([FF)Lcom/serenegiant/mediaeffect/MediaEffectKernel;

    :cond_0
    return-object p0
.end method
