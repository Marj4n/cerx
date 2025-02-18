.class public Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "VideoPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final MSG_HIDE_BAR_UI:I = 0xb1

.field private static final MSG_UPDATE_PROGRESS:I = 0xb2

.field private static final MSG_VIDEO_PAUSE:I = 0xb3

.field private static final MSG_VIDEO_RESUME:I = 0xb4

.field public static final OP_DOWN:I = 0xedf2

.field public static final OP_UP:I = 0xedf1

.field private static final TIME_UPDATE:J = 0xc8L


# instance fields
.field private bottomBar:Landroid/widget/RelativeLayout;

.field private brightnessToast:Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;

.field private isClick:Z

.field private isFastPlay:Z

.field private isPausing:Z

.field private isPreparing:Z

.field private ivFullScreen:Landroid/widget/ImageView;

.field private ivPlayOrPause:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private pauseTime:I

.field private playerSupport:Z

.field private sbProgress:Landroid/widget/SeekBar;

.field private screenHeight:I

.field private screenWidth:I

.field private startX:I

.field private startY:I

.field private threshold:I

.field private topBar:Landroid/widget/RelativeLayout;

.field private tvCurrentTime:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private tvTotalTime:Landroid/widget/TextView;

.field private videoPath:Ljava/lang/String;

.field private videoProgressToast:Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;

.field private videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

.field private volumeToast:Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 119
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isClick:Z

    .line 80
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->showOrHideBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->ivPlayOrPause:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/widget/SeekBar;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->sbProgress:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->tvCurrentTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPlaying()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$702(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPausing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->updatePlayingUI()V

    return-void
.end method

.method static synthetic access$902(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPreparing:Z

    return p1
.end method

.method private changeOrientation()V
    .locals 3

    .line 336
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setAspectRatio(I)V

    .line 340
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 341
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->ivFullScreen:Landroid/widget/ImageView;

    sget v1, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_no_fullscreen:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setAspectRatio(I)V

    .line 345
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 346
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->ivFullScreen:Landroid/widget/ImageView;

    sget v1, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_fullscreen:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private formatTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 326
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private initPlayer()V
    .locals 4

    const/4 v0, 0x0

    .line 199
    :try_start_0
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    const-string v0, "libijkplayer.so"

    .line 200
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->playerSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 203
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibraries error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_0
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->playerSupport:Z

    if-nez v0, :cond_0

    .line 206
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->player_not_support_dev:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$2;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 222
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$3;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private isPausing()Z
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPausing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPlaying()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPreparing()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPreparing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onResumeVideo()V
    .locals 4

    .line 285
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->playerSupport:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->pauseTime:I

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->seekTo(I)V

    .line 287
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->start()V

    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPausing:Z

    .line 289
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/16 v2, 0xb4

    .line 290
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 291
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private pauseVideo()V
    .locals 2

    .line 271
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->playerSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->canPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->pause()V

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPausing:Z

    .line 275
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->pauseTime:I

    .line 276
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0xb2

    .line 277
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private playOrPause()V
    .locals 1

    .line 297
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->pauseVideo()V

    goto :goto_0

    .line 300
    :cond_1
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->onResumeVideo()V

    goto :goto_0

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->playVideo(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private playVideo(Ljava/lang/String;)V
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->playerSupport:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setVideoPath(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 252
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPreparing:Z

    .line 253
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$4;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment$4;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;)V

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    :cond_0
    return-void
.end method

.method private showBrightnessToast(IF)V
    .locals 2

    .line 446
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->brightnessToast:Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;

    if-nez v0, :cond_0

    .line 448
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->brightnessToast:Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;

    :cond_0
    const/4 v0, -0x1

    const/high16 v1, 0x40400000    # 3.0f

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 456
    :pswitch_0
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->screenHeight:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->getMaxValue()I

    move-result p1

    int-to-float p1, p1

    mul-float p2, p2, p1

    mul-float p2, p2, v1

    float-to-int p1, p2

    neg-int v0, p1

    goto :goto_0

    .line 453
    :pswitch_1
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->screenHeight:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->getMaxValue()I

    move-result p1

    int-to-float p1, p1

    mul-float p2, p2, p1

    mul-float p2, p2, v1

    float-to-int v0, p2

    .line 459
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->brightnessToast:Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->showBrightnessProgress(I)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0xedf1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showFastBackward(F)V
    .locals 2

    .line 505
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 506
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->screenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 507
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v0

    sub-int/2addr v0, p1

    if-gtz v0, :cond_0

    const/16 v0, 0x3e8

    .line 511
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->canSeekBackward()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 512
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->seekTo(I)V

    .line 513
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPausing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 514
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->pauseTime:I

    .line 516
    :cond_1
    div-int/lit16 v0, v0, 0x3e8

    .line 517
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 518
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->tvCurrentTime:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/16 p1, 0x102b

    .line 520
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->showVideoProgressToast(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method private showFastForwardToast(F)V
    .locals 2

    .line 485
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 486
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->screenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 487
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v0

    add-int/2addr v0, p1

    .line 488
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getDuration()I

    move-result p1

    if-lt v0, p1, :cond_0

    .line 489
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getDuration()I

    move-result p1

    add-int/lit16 v0, p1, -0x3e8

    .line 491
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->canSeekForward()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 492
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->seekTo(I)V

    .line 493
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPausing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 494
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->pauseTime:I

    .line 496
    :cond_1
    div-int/lit16 v0, v0, 0x3e8

    .line 497
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 498
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->tvCurrentTime:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/16 p1, 0x102a

    .line 500
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->showVideoProgressToast(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method private showOrHideBar()V
    .locals 4

    .line 464
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->bottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->bottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->bottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 474
    :goto_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0xb1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->bottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 476
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private showVideoProgressToast(ILjava/lang/String;)V
    .locals 2

    .line 529
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoProgressToast:Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoProgressToast:Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoProgressToast:Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/VideoProgressToast;->show(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showVolumeToastUI(IF)V
    .locals 2

    .line 428
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->volumeToast:Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->volumeToast:Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;

    :cond_0
    const/4 v0, -0x1

    const/high16 v1, 0x40400000    # 3.0f

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 438
    :pswitch_0
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->screenHeight:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->volumeToast:Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->getMaxVol()I

    move-result p1

    int-to-float p1, p1

    mul-float p2, p2, p1

    mul-float p2, p2, v1

    float-to-int p1, p2

    neg-int v0, p1

    goto :goto_0

    .line 435
    :pswitch_1
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->screenHeight:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->volumeToast:Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->getMaxVol()I

    move-result p1

    int-to-float p1, p1

    mul-float p2, p2, p1

    mul-float p2, p2, v1

    float-to-int v0, p2

    .line 441
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->volumeToast:Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->show(I)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0xedf1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePlayingUI()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->ivPlayOrPause:Landroid/widget/ImageView;

    sget v1, Lcom/jieli/stream/dv/running2/R$drawable;->drawable_btn_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->requestFocus()Z

    .line 313
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->sbProgress:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 314
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->sbProgress:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 315
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->formatTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->tvCurrentTime:Landroid/widget/TextView;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->default_time_format:I

    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->tvTotalTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getDuration()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->screenWidth:I

    .line 149
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->screenHeight:I

    .line 150
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->dp2px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->threshold:I

    .line 151
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->initPlayer()V

    .line 153
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->playerSupport:Z

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "path_list"

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoPath:Ljava/lang/String;

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->playVideo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 540
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 541
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->video_player_play_btn:I

    if-ne p1, v0, :cond_0

    .line 542
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->playOrPause()V

    goto :goto_0

    .line 543
    :cond_0
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->video_player_full_screen:I

    if-ne p1, v0, :cond_1

    .line 544
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->changeOrientation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 165
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 166
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->screenWidth:I

    .line 168
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->screenHeight:I

    goto :goto_0

    .line 169
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->screenWidth:I

    .line 171
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->screenHeight:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 127
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_video_player:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 128
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->video_player_media:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    .line 129
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->video_player_top_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->topBar:Landroid/widget/RelativeLayout;

    .line 130
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->video_player_bottom_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->bottomBar:Landroid/widget/RelativeLayout;

    .line 131
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->video_player_top_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->tvTitle:Landroid/widget/TextView;

    .line 132
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->video_player_current_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->tvCurrentTime:Landroid/widget/TextView;

    .line 133
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->video_player_total_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->tvTotalTime:Landroid/widget/TextView;

    .line 134
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->video_player_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->sbProgress:Landroid/widget/SeekBar;

    .line 135
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->video_player_play_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->ivPlayOrPause:Landroid/widget/ImageView;

    .line 136
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->video_player_full_screen:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->ivFullScreen:Landroid/widget/ImageView;

    .line 138
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->ivPlayOrPause:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->ivFullScreen:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->sbProgress:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 191
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDetach()V

    .line 192
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 193
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 185
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onPause()V

    .line 186
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->pauseVideo()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onResume()V

    .line 178
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->onResumeVideo()V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 561
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->sbProgress:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 570
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->tvCurrentTime:Landroid/widget/TextView;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->default_time_format:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 562
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 563
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->videoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->seekTo(I)V

    .line 564
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 565
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->pauseTime:I

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->tvCurrentTime:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 352
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 353
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 354
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_f

    const/4 v3, 0x0

    if-eq p2, v2, :cond_b

    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    goto/16 :goto_3

    .line 363
    :cond_0
    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mLastMotionX:F

    sub-float p2, p1, p2

    .line 364
    iget v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mLastMotionY:F

    sub-float v5, v0, v5

    .line 365
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 366
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 369
    iget v8, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->threshold:I

    int-to-float v9, v8

    cmpl-float v9, v6, v9

    if-lez v9, :cond_1

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_1

    cmpg-float v8, v6, v7

    if-gez v8, :cond_3

    goto :goto_0

    .line 371
    :cond_1
    iget v8, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->threshold:I

    int-to-float v9, v8

    cmpg-float v9, v6, v9

    if-gez v9, :cond_2

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 373
    :cond_2
    iget v8, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->threshold:I

    int-to-float v9, v8

    cmpl-float v9, v6, v9

    if-lez v9, :cond_a

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-gez v8, :cond_a

    :cond_3
    :goto_1
    if-eqz v1, :cond_7

    .line 379
    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->screenWidth:I

    div-int/2addr p2, v4

    int-to-float p2, p2

    const v1, 0xedf1

    const v4, 0xedf2

    cmpg-float p2, p1, p2

    if-gez p2, :cond_5

    cmpl-float p2, v5, v3

    if-lez p2, :cond_4

    .line 381
    invoke-direct {p0, v4, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->showBrightnessToast(IF)V

    goto :goto_2

    :cond_4
    cmpg-float p2, v5, v3

    if-gez p2, :cond_9

    .line 383
    invoke-direct {p0, v1, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->showBrightnessToast(IF)V

    goto :goto_2

    :cond_5
    cmpl-float p2, v5, v3

    if-lez p2, :cond_6

    .line 387
    invoke-direct {p0, v4, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->showVolumeToastUI(IF)V

    goto :goto_2

    :cond_6
    cmpg-float p2, v5, v3

    if-gez p2, :cond_9

    .line 389
    invoke-direct {p0, v1, v7}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->showVolumeToastUI(IF)V

    goto :goto_2

    :cond_7
    cmpl-float v1, p2, v3

    if-lez v1, :cond_8

    .line 393
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->screenWidth:I

    div-int/2addr v1, v4

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_8

    .line 394
    iget-boolean p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isFastPlay:Z

    if-nez p2, :cond_9

    .line 395
    invoke-direct {p0, v6}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->showFastForwardToast(F)V

    .line 396
    iput-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isFastPlay:Z

    goto :goto_2

    :cond_8
    cmpg-float p2, p2, v3

    if-gez p2, :cond_9

    .line 398
    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->screenWidth:I

    div-int/2addr p2, v4

    int-to-float p2, p2

    cmpg-float p2, p1, p2

    if-gez p2, :cond_9

    .line 399
    iget-boolean p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isFastPlay:Z

    if-nez p2, :cond_9

    .line 400
    invoke-direct {p0, v6}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->showFastBackward(F)V

    .line 401
    iput-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isFastPlay:Z

    .line 405
    :cond_9
    :goto_2
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mLastMotionX:F

    .line 406
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mLastMotionY:F

    goto :goto_3

    :cond_a
    return v2

    .line 409
    :cond_b
    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->startX:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->threshold:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_c

    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->startY:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->threshold:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_d

    .line 410
    :cond_c
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isClick:Z

    .line 412
    :cond_d
    iput v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mLastMotionX:F

    .line 413
    iput v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mLastMotionY:F

    .line 414
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->startX:I

    .line 415
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isClick:Z

    if-eqz p1, :cond_e

    .line 416
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->showOrHideBar()V

    .line 418
    :cond_e
    iput-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isClick:Z

    .line 419
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isFastPlay:Z

    goto :goto_3

    .line 356
    :cond_f
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mLastMotionX:F

    .line 357
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->mLastMotionY:F

    float-to-int p1, p1

    .line 358
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->startX:I

    float-to-int p1, v0

    .line 359
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->startY:I

    .line 360
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/VideoPlayerFragment;->isFastPlay:Z

    :goto_3
    return v2
.end method
