.class public Lcom/serenegiant/media/MediaCodecHelper;
.super Ljava/lang/Object;
.source "MediaCodecHelper.java"


# static fields
.field public static final BUFFER_FLAG_KEY_FRAME:I

.field public static final MIME_AUDIO_AAC:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final MIME_VIDEO_AVC:Ljava/lang/String; = "video/avc"

.field public static final OMX_COLOR_Format12bitRGB444:I = 0x3

.field public static final OMX_COLOR_Format16bitARGB1555:I = 0x5

.field public static final OMX_COLOR_Format16bitARGB4444:I = 0x4

.field public static final OMX_COLOR_Format16bitBGR565:I = 0x7

.field public static final OMX_COLOR_Format16bitRGB565:I = 0x6

.field public static final OMX_COLOR_Format18BitBGR666:I = 0x29

.field public static final OMX_COLOR_Format18bitARGB1665:I = 0x9

.field public static final OMX_COLOR_Format18bitRGB666:I = 0x8

.field public static final OMX_COLOR_Format19bitARGB1666:I = 0xa

.field public static final OMX_COLOR_Format24BitABGR6666:I = 0x2b

.field public static final OMX_COLOR_Format24BitARGB6666:I = 0x2a

.field public static final OMX_COLOR_Format24bitARGB1887:I = 0xd

.field public static final OMX_COLOR_Format24bitBGR888:I = 0xc

.field public static final OMX_COLOR_Format24bitRGB888:I = 0xb

.field public static final OMX_COLOR_Format25bitARGB1888:I = 0xe

.field public static final OMX_COLOR_Format32bitARGB8888:I = 0x10

.field public static final OMX_COLOR_Format32bitBGRA8888:I = 0xf

.field public static final OMX_COLOR_Format8bitRGB332:I = 0x2

.field public static final OMX_COLOR_FormatAndroidOpaque:I = 0x7f000789

.field public static final OMX_COLOR_FormatCbYCrY:I = 0x1b

.field public static final OMX_COLOR_FormatCrYCbY:I = 0x1c

.field public static final OMX_COLOR_FormatKhronosExtensions:I = 0x6f000000

.field public static final OMX_COLOR_FormatL16:I = 0x24

.field public static final OMX_COLOR_FormatL2:I = 0x21

.field public static final OMX_COLOR_FormatL24:I = 0x25

.field public static final OMX_COLOR_FormatL32:I = 0x26

.field public static final OMX_COLOR_FormatL4:I = 0x22

.field public static final OMX_COLOR_FormatL8:I = 0x23

.field public static final OMX_COLOR_FormatMax:I = 0x7fffffff

.field public static final OMX_COLOR_FormatMonochrome:I = 0x1

.field public static final OMX_COLOR_FormatRawBayer10bit:I = 0x1f

.field public static final OMX_COLOR_FormatRawBayer8bit:I = 0x1e

.field public static final OMX_COLOR_FormatRawBayer8bitcompressed:I = 0x20

.field public static final OMX_COLOR_FormatUnused:I = 0x0

.field public static final OMX_COLOR_FormatVendorStartUnused:I = 0x7f000000

.field public static final OMX_COLOR_FormatYCbYCr:I = 0x19

.field public static final OMX_COLOR_FormatYCrYCb:I = 0x1a

.field public static final OMX_COLOR_FormatYUV411PackedPlanar:I = 0x12

.field public static final OMX_COLOR_FormatYUV411Planar:I = 0x11

.field public static final OMX_COLOR_FormatYUV420PackedPlanar:I = 0x14

.field public static final OMX_COLOR_FormatYUV420PackedSemiPlanar:I = 0x27

.field public static final OMX_COLOR_FormatYUV420Planar:I = 0x13

.field public static final OMX_COLOR_FormatYUV420SemiPlanar:I = 0x15

.field public static final OMX_COLOR_FormatYUV422PackedPlanar:I = 0x17

.field public static final OMX_COLOR_FormatYUV422PackedSemiPlanar:I = 0x28

.field public static final OMX_COLOR_FormatYUV422Planar:I = 0x16

.field public static final OMX_COLOR_FormatYUV422SemiPlanar:I = 0x18

.field public static final OMX_COLOR_FormatYUV444Interleaved:I = 0x1d

.field public static final OMX_QCOM_COLOR_FormatYUV420PackedSemiPlanar32m:I = 0x7fa30c04

.field public static final OMX_QCOM_COLOR_FormatYUV420PackedSemiPlanar64x32Tile2m8ka:I = 0x7fa30c03

.field public static final OMX_QCOM_COLOR_FormatYVU420SemiPlanar:I = 0x7fa30c00

.field public static final OMX_SEC_COLOR_FormatNV12Tiled:I = 0x7fc00002

.field public static final OMX_TI_COLOR_FormatYUV420PackedSemiPlanar:I = 0x7f000100

.field public static final START_MARKER:[B

.field private static final TAG:Ljava/lang/String;

.field public static recognizedFormats:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/serenegiant/media/MediaCodecHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/media/MediaCodecHelper;->TAG:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    const/4 v0, 0x1

    sput v0, Lcom/serenegiant/media/MediaCodecHelper;->BUFFER_FLAG_KEY_FRAME:I

    .line 49
    sget-object v0, Lcom/serenegiant/utils/BufferHelper;->ANNEXB_START_MARK:[B

    sput-object v0, Lcom/serenegiant/media/MediaCodecHelper;->START_MARKER:[B

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 273
    fill-array-data v0, :array_0

    sput-object v0, Lcom/serenegiant/media/MediaCodecHelper;->recognizedFormats:[I

    return-void

    :array_0
    .array-data 4
        0x13
        0x15
        0x7fa30c00
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkProfileLevel(Ljava/lang/String;Landroid/media/MediaCodecInfo;)Z
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "video/avc"

    .line 484
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    invoke-static {p1, p0}, Lcom/serenegiant/media/MediaCodecHelper;->getCodecCapabilities(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    .line 486
    iget-object p0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 487
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 488
    aget-object v1, p0, v0

    iget v1, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/16 v2, 0x4000

    if-lt v1, v2, :cond_0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final dumpDecoders()V
    .locals 9

    .line 351
    invoke-static {}, Lcom/serenegiant/media/MediaCodecHelper;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 353
    invoke-static {v2}, Lcom/serenegiant/media/MediaCodecHelper;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 355
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 359
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 360
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 361
    sget-object v6, Lcom/serenegiant/media/MediaCodecHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "codec:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",MIME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    aget-object v6, v4, v5

    invoke-static {v3, v6}, Lcom/serenegiant/media/MediaCodecHelper;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final dumpEncoders()V
    .locals 9

    .line 329
    invoke-static {}, Lcom/serenegiant/media/MediaCodecHelper;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 331
    invoke-static {v2}, Lcom/serenegiant/media/MediaCodecHelper;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 333
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 337
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 338
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 339
    sget-object v6, Lcom/serenegiant/media/MediaCodecHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "codec:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",MIME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    aget-object v6, v4, v5

    invoke-static {v3, v6}, Lcom/serenegiant/media/MediaCodecHelper;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final dumpVideoCodecEncoders()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    invoke-static {}, Lcom/serenegiant/media/MediaCodecHelper;->dumpEncoders()V

    return-void
.end method

.method public static final findStartMarker([BI)I
    .locals 2

    .line 670
    sget-object v0, Lcom/serenegiant/media/MediaCodecHelper;->START_MARKER:[B

    array-length v1, v0

    invoke-static {p0, p1, v0, v1}, Lcom/serenegiant/utils/BufferHelper;->byteComp([BI[BI)I

    move-result p0

    return p0
.end method

.method public static getAudioEncoderInfos(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    invoke-static {}, Lcom/serenegiant/media/MediaCodecHelper;->getCodecCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 441
    invoke-static {v3}, Lcom/serenegiant/media/MediaCodecHelper;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 442
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 445
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 446
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 448
    aget-object v7, v5, v6

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 449
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getCodecCapabilities(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
    .locals 0

    .line 471
    invoke-static {p0, p1}, Lcom/serenegiant/utils/MediaInfo;->getCodecCapabilities(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public static final getCodecCount()I
    .locals 1

    .line 457
    invoke-static {}, Lcom/serenegiant/utils/MediaInfo;->getCodecCount()I

    move-result v0

    return v0
.end method

.method public static final getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 0

    .line 465
    invoke-static {p0}, Lcom/serenegiant/utils/MediaInfo;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final getCodecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .line 461
    invoke-static {}, Lcom/serenegiant/utils/MediaInfo;->getCodecs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getProfileLevelString(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecProfileLevel;)Ljava/lang/String;
    .locals 5

    const-string v0, "video/avc"

    .line 506
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ",level=unknown "

    const-string v2, "profile:unknown "

    if-eqz v0, :cond_9

    .line 507
    iget p0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v0, 0x2

    const/4 v3, 0x1

    if-eq p0, v3, :cond_6

    if-eq p0, v0, :cond_5

    const/4 v4, 0x4

    if-eq p0, v4, :cond_4

    const/16 v4, 0x8

    if-eq p0, v4, :cond_3

    const/16 v4, 0x10

    if-eq p0, v4, :cond_2

    const/16 v4, 0x20

    if-eq p0, v4, :cond_1

    const/16 v4, 0x40

    if-eq p0, v4, :cond_0

    .line 524
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "profile:AVCProfileHigh444"

    goto :goto_0

    :cond_1
    const-string p0, "profile:AVCProfileHigh422"

    goto :goto_0

    :cond_2
    const-string p0, "profile:AVCProfileHigh10"

    goto :goto_0

    :cond_3
    const-string p0, "profile:AVCProfileHigh"

    goto :goto_0

    :cond_4
    const-string p0, "profile:AVCProfileExtended"

    goto :goto_0

    :cond_5
    const-string p0, "profile:AVCProfileMain"

    goto :goto_0

    :cond_6
    const-string p0, "profile:AVCProfileBaseline"

    .line 526
    :goto_0
    iget v2, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-eq v2, v3, :cond_8

    if-eq v2, v0, :cond_7

    sparse-switch v2, :sswitch_data_0

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 559
    :sswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",level=AVCLevel51"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 557
    :sswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",level=AVCLevel5"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 555
    :sswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",level=AVCLevel42"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 553
    :sswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",level=AVCLevel41"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 551
    :sswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",level=AVCLevel4"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 549
    :sswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",level=AVCLevel32"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 547
    :sswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",level=AVCLevel31"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 545
    :sswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",level=AVCLevel3"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 543
    :sswitch_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",level=AVCLevel22"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 541
    :sswitch_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",level=AVCLevel21"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 539
    :sswitch_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",level=AVCLevel2"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 537
    :sswitch_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",level=AVCLevel13"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 535
    :sswitch_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",level=AVCLevel12"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 533
    :sswitch_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",level=AVCLevel11"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 531
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",level=AVCLevel1b"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 529
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",level=AVCLevel1"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :cond_9
    const-string v0, "video/h263"

    .line 563
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 564
    iget p0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 576
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 578
    iget v0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :cond_a
    const-string v0, "video/mpeg4"

    .line 591
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 592
    iget p0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 611
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 613
    iget v0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_b
    const-string v0, "audio/aac"

    .line 626
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 628
    iget p0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 640
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_c
    const-string v0, "video/vp8"

    .line 642
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 643
    iget p0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 647
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 649
    iget v0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_d
    const/4 p0, 0x0

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_d
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x20 -> :sswitch_a
        0x40 -> :sswitch_9
        0x80 -> :sswitch_8
        0x100 -> :sswitch_7
        0x200 -> :sswitch_6
        0x400 -> :sswitch_5
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_2
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getVideoEncoderInfos(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-static {}, Lcom/serenegiant/media/MediaCodecHelper;->getCodecCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 225
    invoke-static {v3}, Lcom/serenegiant/media/MediaCodecHelper;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 227
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 252
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 253
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    .line 256
    aget-object v8, v5, v7

    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 258
    invoke-static {v4, p0}, Lcom/serenegiant/media/MediaCodecHelper;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_1

    .line 260
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static final isRecognizedVideoFormat(I)Z
    .locals 4

    .line 286
    sget-object v0, Lcom/serenegiant/media/MediaCodecHelper;->recognizedFormats:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 288
    sget-object v3, Lcom/serenegiant/media/MediaCodecHelper;->recognizedFormats:[I

    aget v3, v3, v2

    if-ne v3, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public static final isSemiPlanarYUV(I)Z
    .locals 3

    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    const v0, 0x7f000100

    if-eq p0, v0, :cond_0

    const v0, 0x7fa30c00

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 383
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final selectAudioCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    invoke-static {p0}, Lcom/serenegiant/media/MediaCodecHelper;->selectAudioEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final selectAudioEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    .line 411
    invoke-static {}, Lcom/serenegiant/media/MediaCodecHelper;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 413
    invoke-static {v2}, Lcom/serenegiant/media/MediaCodecHelper;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 414
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 417
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 418
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 420
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_3
    return-object v3
.end method

.method public static final selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 4

    .line 302
    invoke-static {p0, p1}, Lcom/serenegiant/media/MediaCodecHelper;->getCodecCapabilities(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    .line 303
    iget-object p0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 304
    array-length p1, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 307
    aget v2, p0, v1

    .line 308
    invoke-static {v2}, Lcom/serenegiant/media/MediaCodecHelper;->isRecognizedVideoFormat(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static selectVideoCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    invoke-static {p0}, Lcom/serenegiant/media/MediaCodecHelper;->selectVideoEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object p0

    return-object p0
.end method

.method public static selectVideoEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 8

    .line 168
    invoke-static {}, Lcom/serenegiant/media/MediaCodecHelper;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 170
    invoke-static {v2}, Lcom/serenegiant/media/MediaCodecHelper;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 172
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 198
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 199
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    .line 202
    aget-object v7, v4, v6

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 204
    invoke-static {v3, p0}, Lcom/serenegiant/media/MediaCodecHelper;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
