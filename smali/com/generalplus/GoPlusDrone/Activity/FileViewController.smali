.class public Lcom/generalplus/GoPlusDrone/Activity/FileViewController;
.super Landroid/app/Activity;
.source "FileViewController.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final SURFACE_16_9:I = 0x4

.field private static final SURFACE_4_3:I = 0x5

.field private static final SURFACE_BEST_FIT:I = 0x0

.field private static final SURFACE_FILL:I = 0x3

.field private static final SURFACE_FIT_HORIZONTAL:I = 0x1

.field private static final SURFACE_FIT_VERTICAL:I = 0x2

.field private static final SURFACE_ORIGINAL:I = 0x6

.field private static TAG:Ljava/lang/String; = "FileViewController"

.field private static final VideoSizeChanged:I = -0x1

.field private static _bIsPause:Z = false

.field private static _bRunVLC:Z = false

.field private static mSarDen:I

.field private static mSarNum:I

.field private static mVideoHeight:I

.field private static mVideoVisibleHeight:I

.field private static mVideoVisibleWidth:I

.field private static mVideoWidth:I


# instance fields
.field private _FileFlag:I

.field private _FileIndex:I

.field private _urlToStream:Ljava/lang/String;

.field private handlerOverlay:Landroid/os/Handler;

.field private imgbtn_playpause:Landroid/widget/ImageButton;

.field private mCurrentSize:I

.field private mLastClickTime:J

.field private mSurfaceView:Landroid/opengl/GLSurfaceView;

.field private m_Context:Landroid/content/Context;

.field private runnableOverlay:Ljava/lang/Runnable;

.field private final timeToDisappear:J

.field private vlcContainer:Landroid/widget/LinearLayout;

.field private vlcOverlay:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->mCurrentSize:I

    const-wide/16 v0, 0x2710

    .line 59
    iput-wide v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->timeToDisappear:J

    return-void
.end method

.method private Finish()V
    .locals 2

    .line 272
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->TAG:Ljava/lang/String;

    const-string v1, "Finish ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStop()I

    return-void
.end method

.method static synthetic access$000(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)Landroid/widget/FrameLayout;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->vlcOverlay:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->runnableOverlay:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->handlerOverlay:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->stopStreaming()V

    return-void
.end method

.method static synthetic access$400(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->_FileIndex:I

    return p0
.end method

.method private playLocalFile()V
    .locals 2

    .line 127
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSetStreaming(Z)I

    .line 128
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->_urlToStream:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naInitAndPlay(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private playPictureStreaming()V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$5;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$5;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private playVideoStreaming()V
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$4;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$4;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setupControls()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->vlcContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->handlerOverlay:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$1;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->runnableOverlay:Ljava/lang/Runnable;

    .line 99
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->handlerOverlay:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->vlcOverlay:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 101
    invoke-direct {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->toggleFullscreen(Z)V

    .line 102
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->vlcContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$2;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$2;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->imgbtn_playpause:Landroid/widget/ImageButton;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$3;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController$3;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FileViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private stopStreaming()V
    .locals 2

    .line 171
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->_FileFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->_urlToStream:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStatus()I

    move-result v0

    sget-object v1, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    invoke-virtual {v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 175
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendPausePlayback()I

    goto :goto_1

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->playVideoStreaming()V

    goto :goto_1

    .line 182
    :cond_1
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->_FileFlag:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->_urlToStream:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 184
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->_bIsPause:Z

    if-nez v0, :cond_2

    .line 186
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naPause()I

    goto :goto_0

    .line 190
    :cond_2
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naResume()I

    .line 193
    :goto_0
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->_bIsPause:Z

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->_bIsPause:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private toggleFullscreen(Z)V
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 202
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 212
    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 214
    :goto_0
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public initStreaming()V
    .locals 2

    .line 287
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStatus()I

    move-result v0

    sget-object v1, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    invoke-virtual {v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 267
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->Finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 219
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget p1, Lcom/generalplus/GoPlusDrone/R$layout;->activity_files_vlc_player:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 71
    iput-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->m_Context:Landroid/content/Context;

    .line 73
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->vlc_container:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->vlcContainer:Landroid/widget/LinearLayout;

    .line 74
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->vlc_surface:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/opengl/GLSurfaceView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 76
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->vlc_overlay:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->vlcOverlay:Landroid/widget/FrameLayout;

    .line 77
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->imgbtn_playpause:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->imgbtn_playpause:Landroid/widget/ImageButton;

    .line 79
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 80
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 81
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setKeepScreenOn(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 258
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->TAG:Ljava/lang/String;

    const-string v1, "onPause ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 260
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 228
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "FileURL"

    const/4 v2, 0x0

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->_urlToStream:Ljava/lang/String;

    const-string v1, "FileFlag"

    const/4 v2, 0x0

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->_FileFlag:I

    const-string v1, "FileIndex"

    .line 231
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->_FileIndex:I

    .line 232
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->setupControls()V

    .line 233
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->initStreaming()V

    .line 235
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->imgbtn_playpause:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->_urlToStream:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSetStreaming(Z)I

    .line 241
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->_FileFlag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->playPictureStreaming()V

    .line 244
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->imgbtn_playpause:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->playVideoStreaming()V

    goto :goto_0

    .line 251
    :cond_1
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->playLocalFile()V

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
