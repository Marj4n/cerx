.class public Lcom/generalplus/ffmpegLib/ffmpegWrapper;
.super Ljava/lang/Object;
.source "ffmpegWrapper.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;,
        Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;,
        Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;,
        Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;
    }
.end annotation


# static fields
.field public static final CODEC_ID_H264:I = 0x1c

.field public static final CODEC_ID_MJPEG:I = 0x8

.field public static final CODEC_ID_NONE:I = 0x0

.field public static final EXTRACTOR_BUSY:I = 0x1

.field public static final EXTRACTOR_DECODEFAILED:I = 0x3

.field public static final EXTRACTOR_NOSUCHFRAME:I = 0x4

.field public static final EXTRACTOR_OK:I = 0x0

.field public static final EXTRACTOR_READFILEFAILED:I = 0x2

.field public static final FFMPEG_STATUS_PLAYING:I = 0x0

.field public static final FFMPEG_STATUS_SAVESNAPSHOTCOMPLETE:I = 0x2

.field public static final FFMPEG_STATUS_SAVEVIDEOCOMPLETE:I = 0x3

.field public static final FFMPEG_STATUS_STOPPED:I = 0x1

.field public static final LOW_LOADING_TRANSCODE_OPTIONS:Ljava/lang/String; = "qmin=15;qmax=35;b=400000;g=15;bf=0;refs=2;weightp=simple;level=2.2;x264-params=lookahead-threads=3:subme=4:chroma_qp_offset=0"

.field private static final TAG:Ljava/lang/String; = "ffmpegWrapper"

.field private static m_Instance:Lcom/generalplus/ffmpegLib/ffmpegWrapper;

.field private static m_NowViewHandler:Landroid/os/Handler;


# instance fields
.field private frameSeq:J

.field public height:I

.field private mIsResize:Z

.field private mSurfaceViewScale:I

.field private maxOffset:I

.field private viewportOffset:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ffmpegWrapper"

    :try_start_0
    const-string v1, "Trying to load ffmpeg.so ..."

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ffmpeg"

    .line 78
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "Cannot load ffmpeg.so ..."

    .line 80
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    .line 83
    :goto_1
    throw v0
.end method

.method public constructor <init>()V
    .locals 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->width:I

    .line 37
    iput v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->height:I

    .line 96
    iput-boolean v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->mIsResize:Z

    const-wide/16 v1, 0x0

    .line 113
    iput-wide v1, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->frameSeq:J

    const/16 v1, 0x14

    .line 114
    iput v1, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->viewportOffset:I

    const/16 v1, 0x190

    .line 115
    iput v1, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->maxOffset:I

    .line 116
    iput v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->mSurfaceViewScale:I

    .line 88
    sput-object p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->m_Instance:Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    return-void
.end method

.method private changeGLViewport(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",Width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",viewportOffset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->viewportOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mSurfaceViewScale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->mSurfaceViewScale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "changeGLViewport"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->width:I

    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    iget v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->height:I

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    iget-wide v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->frameSeq:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->frameSeq:J

    const-wide/32 v2, 0xf4240

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    .line 129
    iput-wide v4, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->frameSeq:J

    .line 132
    :cond_1
    iget-wide v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->frameSeq:J

    const-wide/16 v2, 0x64

    rem-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 133
    iget v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->width:I

    iget v1, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->height:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    goto :goto_0

    .line 136
    :cond_2
    iget v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->maxOffset:I

    neg-int v1, v0

    iget v2, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->viewportOffset:I

    iget v3, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->mSurfaceViewScale:I

    mul-int v4, v2, v3

    add-int/2addr v1, v4

    neg-int v4, v0

    mul-int v5, v2, v3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->width:I

    mul-int/lit8 v6, v2, 0x2

    mul-int v6, v6, v3

    sub-int/2addr v5, v6

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->height:I

    mul-int/lit8 v2, v2, 0x2

    mul-int v2, v2, v3

    sub-int/2addr v6, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v6, v0

    invoke-interface {p1, v1, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    :goto_0
    return-void

    .line 121
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ErrorWidth:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->width:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",ErrorHeight:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->height:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;
    .locals 1

    .line 93
    sget-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->m_Instance:Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    return-object v0
.end method

.method public static native naDrawFrame()I
.end method

.method public static native naExtractFrame(Ljava/lang/String;Ljava/lang/String;J)I
.end method

.method public static native naGetDecodeFrame()Lcom/generalplus/ffmpegLib/ffDecodeFrame;
.end method

.method public static native naGetDuration()J
.end method

.method public static native naGetFrameCnt()J
.end method

.method public static native naGetPosition()J
.end method

.method public static native naGetRevSizeCnt()J
.end method

.method public static native naGetStreamCodecID()I
.end method

.method public static native naGetVideoRes()[I
.end method

.method public static native naInitAndPlay(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native naInitDrawFrame()I
.end method

.method public static native naPause()I
.end method

.method public static native naPlay()I
.end method

.method public static native naResume()I
.end method

.method public static native naSaveSnapshot(Ljava/lang/String;I)I
.end method

.method public static native naSaveVideo(Ljava/lang/String;I)I
.end method

.method public static native naSeek(J)I
.end method

.method public static native naSetCovertDecodeFrameFormat(I)I
.end method

.method public static native naSetDebugMessage(Z)I
.end method

.method public static native naSetDecodeOptions(Ljava/lang/String;)I
.end method

.method public static native naSetEncodeByLocalTime(Z)I
.end method

.method public static native naSetForceToTranscode(Z)I
.end method

.method public static native naSetRepeat(Z)I
.end method

.method public static native naSetScaleMode(I)I
.end method

.method public static native naSetStreaming(Z)I
.end method

.method public static native naSetTransCodeOptions(Ljava/lang/String;)I
.end method

.method public static native naSetZoomInRatio(F)I
.end method

.method public static native naSetup(II)I
.end method

.method public static native naStatus()I
.end method

.method public static native naStop()I
.end method

.method public static native naStopSaveVideo()I
.end method


# virtual methods
.method public SetViewHandler(Landroid/os/Handler;)V
    .locals 0

    .line 173
    sput-object p1, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->m_NowViewHandler:Landroid/os/Handler;

    return-void
.end method

.method StatusChange(I)V
    .locals 1

    .line 189
    sget-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->m_NowViewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 192
    iput p1, v0, Landroid/os/Message;->what:I

    .line 193
    sget-object p1, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->m_NowViewHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .line 149
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naDrawFrame()I

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const-string p1, "ffmpegWrapper"

    const-string v0, "onSurfaceChanged ... "

    .line 157
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iput p2, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->width:I

    .line 159
    iput p3, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->height:I

    .line 160
    invoke-static {p2, p3}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSetup(II)I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    const-string p1, "ffmpegWrapper"

    const-string p2, "onSurfaceCreated ... "

    .line 142
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naInitDrawFrame()I

    return-void
.end method

.method public setSizeDown()V
    .locals 2

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->mIsResize:Z

    .line 109
    iget v1, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->mSurfaceViewScale:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->mSurfaceViewScale:I

    return-void
.end method

.method public setSizeNormal()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->mIsResize:Z

    .line 104
    iput v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->maxOffset:I

    .line 105
    iput v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->mSurfaceViewScale:I

    return-void
.end method

.method public setSizeUp()V
    .locals 2

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->mIsResize:Z

    .line 100
    iget v1, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->mSurfaceViewScale:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->mSurfaceViewScale:I

    return-void
.end method
