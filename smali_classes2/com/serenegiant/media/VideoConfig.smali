.class public Lcom/serenegiant/media/VideoConfig;
.super Ljava/lang/Object;
.source "VideoConfig.java"


# static fields
.field private static BPP:F = 0.25f

.field public static BPP_MAX:F = 0.3f

.field public static final BPP_MIN:F = 0.01f

.field public static final FPS_MAX:I = 0x79

.field public static final FPS_MIN:I = 0x2

.field private static IFI:F = 0.0f

.field private static IFRAME_INTERVAL:F = 10.0f

.field private static final IFRAME_MAX:I = 0x1e

.field private static final IFRAME_MIN:I = 0x1

.field private static captureFps:I = 0xf

.field public static maxDuration:J = 0x7530L

.field public static maxRepeats:I = 0x1

.field public static repeatInterval:J = 0xea60L

.field public static sIsSurfaceCapture:Z

.field public static sUseMediaMuxer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x41200000    # 10.0f

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float v0, v0, v1

    .line 49
    sput v0, Lcom/serenegiant/media/VideoConfig;->IFI:F

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/serenegiant/media/VideoConfig;->sUseMediaMuxer:Z

    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sput-boolean v0, Lcom/serenegiant/media/VideoConfig;->sIsSurfaceCapture:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bpp()F
    .locals 1

    .line 220
    sget v0, Lcom/serenegiant/media/VideoConfig;->BPP:F

    return v0
.end method

.method public static calcBPP(III)F
    .locals 1

    .line 187
    invoke-static {}, Lcom/serenegiant/media/VideoConfig;->getCaptureFps()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/serenegiant/media/VideoConfig;->calcBPP(IIII)F

    move-result p0

    return p0
.end method

.method public static calcBPP(IIII)F
    .locals 0

    int-to-float p3, p3

    mul-int p2, p2, p0

    mul-int p2, p2, p1

    int-to-float p0, p2

    div-float/2addr p3, p0

    return p3
.end method

.method public static calcBitrate(IIIF)I
    .locals 0

    int-to-float p2, p2

    mul-float p3, p3, p2

    int-to-float p0, p0

    mul-float p3, p3, p0

    int-to-float p0, p1

    mul-float p3, p3, p0

    const/high16 p0, 0x447a0000    # 1000.0f

    div-float/2addr p3, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p3, p0

    float-to-double p0, p3

    .line 120
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    mul-double p0, p0, p2

    double-to-int p0, p0

    mul-int/lit16 p0, p0, 0x3e8

    const p1, 0x1312d00

    const p2, 0x30d40

    if-ge p0, p2, :cond_0

    const p0, 0x30d40

    goto :goto_0

    :cond_0
    if-le p0, p1, :cond_1

    const p0, 0x1312d00

    :cond_1
    :goto_0
    return p0
.end method

.method public static getBitrate(II)I
    .locals 2

    .line 135
    invoke-static {}, Lcom/serenegiant/media/VideoConfig;->getCaptureFps()I

    move-result v0

    sget v1, Lcom/serenegiant/media/VideoConfig;->BPP:F

    invoke-static {p0, p1, v0, v1}, Lcom/serenegiant/media/VideoConfig;->calcBitrate(IIIF)I

    move-result p0

    return p0
.end method

.method public static getBitrate(III)I
    .locals 1

    .line 146
    sget v0, Lcom/serenegiant/media/VideoConfig;->BPP:F

    invoke-static {p0, p1, p2, v0}, Lcom/serenegiant/media/VideoConfig;->calcBitrate(IIIF)I

    move-result p0

    return p0
.end method

.method public static getBitrate(IIIF)I
    .locals 0

    .line 159
    invoke-static {p0, p1, p2, p3}, Lcom/serenegiant/media/VideoConfig;->calcBitrate(IIIF)I

    move-result p0

    return p0
.end method

.method public static getCaptureFps()I
    .locals 3

    .line 84
    sget v0, Lcom/serenegiant/media/VideoConfig;->captureFps:I

    const/4 v1, 0x2

    const/16 v2, 0x79

    if-le v0, v2, :cond_0

    const/16 v0, 0x79

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 v0, 0x2

    :cond_1
    :goto_0
    return v0
.end method

.method public static final getIFrame()I
    .locals 4

    .line 93
    invoke-static {}, Lcom/serenegiant/media/VideoConfig;->getCaptureFps()I

    move-result v0

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 99
    :cond_0
    :try_start_0
    sget v1, Lcom/serenegiant/media/VideoConfig;->IFI:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    double-to-float v0, v0

    goto :goto_0

    .line 101
    :catch_0
    sget v0, Lcom/serenegiant/media/VideoConfig;->IFRAME_INTERVAL:F

    :goto_0
    float-to-int v1, v0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x1e

    if-le v1, v2, :cond_2

    const/high16 v2, 0x41f00000    # 30.0f

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    float-to-int v0, v2

    return v0
.end method

.method public static getSizeRate(II)I
    .locals 0

    .line 231
    invoke-static {p0, p1}, Lcom/serenegiant/media/VideoConfig;->getBitrate(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3c

    .line 232
    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static setBPP(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 209
    sget v0, Lcom/serenegiant/media/VideoConfig;->BPP_MAX:F

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_0

    .line 212
    sput p0, Lcom/serenegiant/media/VideoConfig;->BPP:F

    return-void

    .line 210
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bpp should be within [BPP_MIN, BPP_MAX]"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setBPP(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 200
    invoke-static {p0, p1, p2}, Lcom/serenegiant/media/VideoConfig;->calcBPP(III)F

    move-result p0

    invoke-static {p0}, Lcom/serenegiant/media/VideoConfig;->setBPP(F)V

    return-void
.end method

.method public static setCaptureFps(I)V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x79

    if-le p0, v1, :cond_0

    const/16 p0, 0x79

    goto :goto_0

    :cond_0
    if-ge p0, v0, :cond_1

    const/4 p0, 0x2

    .line 80
    :cond_1
    :goto_0
    sput p0, Lcom/serenegiant/media/VideoConfig;->captureFps:I

    return-void
.end method

.method public static setIFrame(F)V
    .locals 1

    .line 88
    sput p0, Lcom/serenegiant/media/VideoConfig;->IFRAME_INTERVAL:F

    const/high16 v0, 0x41f00000    # 30.0f

    mul-float p0, p0, v0

    .line 89
    sput p0, Lcom/serenegiant/media/VideoConfig;->IFI:F

    return-void
.end method
