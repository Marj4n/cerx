.class public Lcom/gizthon/camera/view/IjkVideoView;
.super Landroid/widget/FrameLayout;
.source "IjkVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static TAG:Ljava/lang/String; = "IjkVideoView"

.field private static final s_allAspectRatio:[I


# instance fields
.field private bufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mCurrentAspectRatio:I

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mEnableBackgroundPlay:Z

.field private mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

.field protected mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

.field mSHCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 52
    fill-array-data v0, :array_0

    sput-object v0, Lcom/gizthon/camera/view/IjkVideoView;->s_allAspectRatio:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mEnableBackgroundPlay:Z

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSurfaceHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    .line 50
    iput-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 60
    sget-object v2, Lcom/gizthon/camera/view/IjkVideoView;->s_allAspectRatio:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentAspectRatio:I

    .line 61
    iput v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSeekWhenPrepared:I

    .line 63
    iput-boolean v3, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCanPause:Z

    .line 64
    iput-boolean v3, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCanSeekBack:Z

    .line 65
    iput-boolean v3, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCanSeekForward:Z

    .line 237
    iput v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentState:I

    .line 238
    iput v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mTargetState:I

    .line 326
    new-instance v0, Lcom/gizthon/camera/view/IjkVideoView$1;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/IjkVideoView$1;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSHCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;

    .line 395
    new-instance v0, Lcom/gizthon/camera/view/IjkVideoView$2;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/IjkVideoView$2;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 413
    new-instance v0, Lcom/gizthon/camera/view/IjkVideoView$3;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/IjkVideoView$3;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 463
    new-instance v0, Lcom/gizthon/camera/view/IjkVideoView$4;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/IjkVideoView$4;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 477
    new-instance v0, Lcom/gizthon/camera/view/IjkVideoView$5;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/IjkVideoView$5;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 528
    new-instance v0, Lcom/gizthon/camera/view/IjkVideoView$6;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/IjkVideoView$6;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 579
    new-instance v0, Lcom/gizthon/camera/view/IjkVideoView$7;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/IjkVideoView$7;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 35
    invoke-direct {p0, p1, v1}, Lcom/gizthon/camera/view/IjkVideoView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mEnableBackgroundPlay:Z

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSurfaceHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    .line 50
    iput-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 60
    sget-object v1, Lcom/gizthon/camera/view/IjkVideoView;->s_allAspectRatio:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentAspectRatio:I

    .line 61
    iput v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSeekWhenPrepared:I

    .line 63
    iput-boolean v2, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCanPause:Z

    .line 64
    iput-boolean v2, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCanSeekBack:Z

    .line 65
    iput-boolean v2, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCanSeekForward:Z

    .line 237
    iput v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentState:I

    .line 238
    iput v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mTargetState:I

    .line 326
    new-instance v0, Lcom/gizthon/camera/view/IjkVideoView$1;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/IjkVideoView$1;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSHCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;

    .line 395
    new-instance v0, Lcom/gizthon/camera/view/IjkVideoView$2;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/IjkVideoView$2;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 413
    new-instance v0, Lcom/gizthon/camera/view/IjkVideoView$3;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/IjkVideoView$3;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 463
    new-instance v0, Lcom/gizthon/camera/view/IjkVideoView$4;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/IjkVideoView$4;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 477
    new-instance v0, Lcom/gizthon/camera/view/IjkVideoView$5;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/IjkVideoView$5;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 528
    new-instance v0, Lcom/gizthon/camera/view/IjkVideoView$6;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/IjkVideoView$6;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 579
    new-instance v0, Lcom/gizthon/camera/view/IjkVideoView$7;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/view/IjkVideoView$7;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/gizthon/camera/view/IjkVideoView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 48
    iput-boolean p3, p0, Lcom/gizthon/camera/view/IjkVideoView;->mEnableBackgroundPlay:Z

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSurfaceHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    .line 50
    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 60
    sget-object v0, Lcom/gizthon/camera/view/IjkVideoView;->s_allAspectRatio:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentAspectRatio:I

    .line 61
    iput p3, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSeekWhenPrepared:I

    .line 63
    iput-boolean v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCanPause:Z

    .line 64
    iput-boolean v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCanSeekBack:Z

    .line 65
    iput-boolean v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCanSeekForward:Z

    .line 237
    iput p3, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentState:I

    .line 238
    iput p3, p0, Lcom/gizthon/camera/view/IjkVideoView;->mTargetState:I

    .line 326
    new-instance p3, Lcom/gizthon/camera/view/IjkVideoView$1;

    invoke-direct {p3, p0}, Lcom/gizthon/camera/view/IjkVideoView$1;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object p3, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSHCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;

    .line 395
    new-instance p3, Lcom/gizthon/camera/view/IjkVideoView$2;

    invoke-direct {p3, p0}, Lcom/gizthon/camera/view/IjkVideoView$2;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object p3, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 413
    new-instance p3, Lcom/gizthon/camera/view/IjkVideoView$3;

    invoke-direct {p3, p0}, Lcom/gizthon/camera/view/IjkVideoView$3;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object p3, p0, Lcom/gizthon/camera/view/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 463
    new-instance p3, Lcom/gizthon/camera/view/IjkVideoView$4;

    invoke-direct {p3, p0}, Lcom/gizthon/camera/view/IjkVideoView$4;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object p3, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 477
    new-instance p3, Lcom/gizthon/camera/view/IjkVideoView$5;

    invoke-direct {p3, p0}, Lcom/gizthon/camera/view/IjkVideoView$5;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object p3, p0, Lcom/gizthon/camera/view/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 528
    new-instance p3, Lcom/gizthon/camera/view/IjkVideoView$6;

    invoke-direct {p3, p0}, Lcom/gizthon/camera/view/IjkVideoView$6;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object p3, p0, Lcom/gizthon/camera/view/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 579
    new-instance p3, Lcom/gizthon/camera/view/IjkVideoView$7;

    invoke-direct {p3, p0}, Lcom/gizthon/camera/view/IjkVideoView$7;-><init>(Lcom/gizthon/camera/view/IjkVideoView;)V

    iput-object p3, p0, Lcom/gizthon/camera/view/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/gizthon/camera/view/IjkVideoView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gizthon/camera/view/IjkVideoView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSurfaceWidth:I

    return p0
.end method

.method static synthetic access$1000(Lcom/gizthon/camera/view/IjkVideoView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mVideoSarDen:I

    return p0
.end method

.method static synthetic access$1002(Lcom/gizthon/camera/view/IjkVideoView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mVideoSarDen:I

    return p1
.end method

.method static synthetic access$102(Lcom/gizthon/camera/view/IjkVideoView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1102(Lcom/gizthon/camera/view/IjkVideoView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/gizthon/camera/view/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/gizthon/camera/view/IjkVideoView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mTargetState:I

    return p0
.end method

.method static synthetic access$1302(Lcom/gizthon/camera/view/IjkVideoView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/gizthon/camera/view/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/gizthon/camera/view/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/gizthon/camera/view/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/gizthon/camera/view/IjkVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/gizthon/camera/view/IjkVideoView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mVideoRotationDegree:I

    return p1
.end method

.method static synthetic access$1900(Lcom/gizthon/camera/view/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gizthon/camera/view/IjkVideoView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSurfaceHeight:I

    return p0
.end method

.method static synthetic access$2002(Lcom/gizthon/camera/view/IjkVideoView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$202(Lcom/gizthon/camera/view/IjkVideoView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$2100(Lcom/gizthon/camera/view/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/gizthon/camera/view/IjkVideoView;->bufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gizthon/camera/view/IjkVideoView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$302(Lcom/gizthon/camera/view/IjkVideoView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/gizthon/camera/view/IjkVideoView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$402(Lcom/gizthon/camera/view/IjkVideoView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/gizthon/camera/view/IjkVideoView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method static synthetic access$602(Lcom/gizthon/camera/view/IjkVideoView;Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSurfaceHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/gizthon/camera/view/IjkVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/gizthon/camera/view/IjkVideoView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)V

    return-void
.end method

.method static synthetic access$800(Lcom/gizthon/camera/view/IjkVideoView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$900(Lcom/gizthon/camera/view/IjkVideoView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mVideoSarNum:I

    return p0
.end method

.method static synthetic access$902(Lcom/gizthon/camera/view/IjkVideoView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mVideoSarNum:I

    return p1
.end method

.method private attachMediaController()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->setAnchorView(Landroid/view/View;)V

    .line 293
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-interface {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 294
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->isInPlaybackState()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 375
    invoke-interface {p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void

    .line 379
    :cond_1
    invoke-interface {p2, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/gizthon/camera/view/IjkVideoView;->createRender()V

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private openVideo()V
    .locals 7

    .line 249
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSurfaceHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, v0}, Lcom/gizthon/camera/view/IjkVideoView;->release(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/gizthon/camera/view/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 255
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v1, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/gizthon/camera/view/IjkVideoView;->createPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 259
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->attachMediaController()V

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v2, p0, Lcom/gizthon/camera/view/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 262
    iget-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v2, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 263
    iget-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v2, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 264
    iget-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v2, p0, Lcom/gizthon/camera/view/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 265
    iget-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v2, p0, Lcom/gizthon/camera/view/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 266
    iget-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v2, p0, Lcom/gizthon/camera/view/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 267
    iput v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentBufferPercentage:I

    .line 268
    iget-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {p0}, Lcom/gizthon/camera/view/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/gizthon/camera/view/IjkVideoView;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/gizthon/camera/view/IjkVideoView;->mHeaders:Ljava/util/Map;

    invoke-interface {v1, v2, v5, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 269
    iget-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v2, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSurfaceHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    invoke-direct {p0, v1, v2}, Lcom/gizthon/camera/view/IjkVideoView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)V

    .line 270
    iget-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 271
    iget-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 272
    iget-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 273
    iput v4, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    .line 275
    iput v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentState:I

    .line 276
    iput v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mTargetState:I

    .line 277
    iget-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v2, v4, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 684
    iput-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mUri:Landroid/net/Uri;

    .line 685
    iput-object p2, p0, Lcom/gizthon/camera/view/IjkVideoView;->mHeaders:Ljava/util/Map;

    const/4 p1, 0x0

    .line 686
    iput p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSeekWhenPrepared:I

    .line 687
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->openVideo()V

    .line 688
    invoke-virtual {p0}, Lcom/gizthon/camera/view/IjkVideoView;->requestLayout()V

    .line 689
    invoke-virtual {p0}, Lcom/gizthon/camera/view/IjkVideoView;->invalidate()V

    return-void
.end method

.method private toggleMediaControlsVisibility()V
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->hide()V

    goto :goto_0

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public changeAspectRaito(I)V
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    if-eqz v0, :cond_0

    .line 694
    sget-object v1, Lcom/gizthon/camera/view/IjkVideoView;->s_allAspectRatio:[I

    aget p1, v1, p1

    invoke-interface {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setAspectRatio(I)V

    :cond_0
    return-void
.end method

.method public createPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 9

    .line 72
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    const/4 v1, 0x3

    .line 73
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    const/4 v1, 0x4

    const-string v2, "mediacodec"

    const-wide/16 v3, 0x1

    .line 74
    invoke-virtual {v0, v1, v2, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v2, "mediacodec-auto-rotate"

    .line 75
    invoke-virtual {v0, v1, v2, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v2, "opensles"

    .line 76
    invoke-virtual {v0, v1, v2, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v2, "overlay-format"

    const-wide/32 v5, 0x32335652

    .line 77
    invoke-virtual {v0, v1, v2, v5, v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v2, "framedrop"

    .line 78
    invoke-virtual {v0, v1, v2, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v2, "start-on-prepared"

    const-wide/16 v3, 0x0

    .line 79
    invoke-virtual {v0, v1, v2, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const/4 v2, 0x1

    const-string v5, "http-detect-range-support"

    .line 80
    invoke-virtual {v0, v2, v5, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const/4 v5, 0x2

    const-string v6, "skip_loop_filter"

    const-wide/16 v7, 0x30

    .line 81
    invoke-virtual {v0, v5, v6, v7, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v5, "packet-buffering"

    .line 82
    invoke-virtual {v0, v1, v5, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "fflags"

    .line 83
    invoke-virtual {v0, v2, v1, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "probsize"

    const-wide/16 v3, 0x1000

    .line 84
    invoke-virtual {v0, v2, v1, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    return-object v0
.end method

.method public createRender()V
    .locals 2

    .line 89
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/SurfaceRenderView;

    invoke-virtual {p0}, Lcom/gizthon/camera/view/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/gizthon/camera/view/IjkVideoView;->setRenderView(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;)V

    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 194
    iget v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentBufferPercentage:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 170
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 161
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method public isBackgroundPlayEnabled()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mEnableBackgroundPlay:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 188
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 615
    :goto_0
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    if-eqz v1, :cond_9

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_7

    const/16 v1, 0x55

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_3

    .line 627
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 628
    invoke-virtual {p0}, Lcom/gizthon/camera/view/IjkVideoView;->start()V

    .line 629
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->hide()V

    :cond_2
    return v0

    :cond_3
    const/16 v1, 0x56

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7f

    if-ne p1, v1, :cond_4

    goto :goto_1

    .line 640
    :cond_4
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->toggleMediaControlsVisibility()V

    goto :goto_4

    .line 634
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 635
    invoke-virtual {p0}, Lcom/gizthon/camera/view/IjkVideoView;->pause()V

    .line 636
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->show()V

    :cond_6
    return v0

    .line 618
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 619
    invoke-virtual {p0}, Lcom/gizthon/camera/view/IjkVideoView;->pause()V

    .line 620
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->show()V

    goto :goto_3

    .line 622
    :cond_8
    invoke-virtual {p0}, Lcom/gizthon/camera/view/IjkVideoView;->start()V

    .line 623
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->hide()V

    :goto_3
    return v0

    .line 644
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 592
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->isInPlaybackState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    if-eqz p1, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->toggleMediaControlsVisibility()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 600
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->isInPlaybackState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    if-eqz p1, :cond_0

    .line 601
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->toggleMediaControlsVisibility()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 2

    .line 142
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    .line 145
    iput v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentState:I

    .line 148
    :cond_0
    iput v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mTargetState:I

    return-void
.end method

.method public release(Z)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 307
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    .line 308
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    .line 311
    iput v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentState:I

    if-eqz p1, :cond_0

    .line 313
    iput v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mTargetState:I

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/gizthon/camera/view/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 316
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    return-void
.end method

.method public releaseWithoutStop()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 322
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->openVideo()V

    return-void
.end method

.method public seekTo(I)V
    .locals 3

    .line 178
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    const/4 p1, 0x0

    .line 180
    iput p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSeekWhenPrepared:I

    goto :goto_0

    .line 182
    :cond_0
    iput p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSeekWhenPrepared:I

    :goto_0
    return-void
.end method

.method public setBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->bufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setMediaController(Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    if-eqz v0, :cond_0

    .line 283
    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->hide()V

    .line 285
    :cond_0
    iput-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    .line 286
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->attachMediaController()V

    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setRenderView(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;)V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    .line 106
    iget-object v2, p0, Lcom/gizthon/camera/view/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    iget-object v3, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSHCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->removeRenderCallback(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;)V

    .line 107
    iput-object v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    .line 108
    invoke-virtual {p0, v0}, Lcom/gizthon/camera/view/IjkVideoView;->removeView(Landroid/view/View;)V

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 112
    :cond_2
    iput-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    .line 113
    iget v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentAspectRatio:I

    invoke-interface {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setAspectRatio(I)V

    .line 114
    iget v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mVideoWidth:I

    if-lez v0, :cond_3

    iget v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mVideoHeight:I

    if-lez v1, :cond_3

    .line 115
    invoke-interface {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setVideoSize(II)V

    .line 117
    :cond_3
    iget v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mVideoSarNum:I

    if-lez v0, :cond_4

    iget v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mVideoSarDen:I

    if-lez v1, :cond_4

    .line 118
    invoke-interface {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 120
    :cond_4
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object p1

    .line 121
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/view/IjkVideoView;->addView(Landroid/view/View;)V

    .line 127
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mSHCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;

    invoke-interface {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->addRenderCallback(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;)V

    .line 128
    iget-object p1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    iget v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mVideoRotationDegree:I

    invoke-interface {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setVideoRotation(I)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 661
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gizthon/camera/view/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 670
    invoke-direct {p0, p1, v0}, Lcom/gizthon/camera/view/IjkVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 133
    invoke-direct {p0}, Lcom/gizthon/camera/view/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 135
    iput v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentState:I

    .line 137
    :cond_0
    iput v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mTargetState:I

    return-void
.end method

.method public stopPlayback()V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 384
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    .line 385
    iget-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lcom/gizthon/camera/view/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    .line 387
    iput v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mCurrentState:I

    .line 388
    iput v1, p0, Lcom/gizthon/camera/view/IjkVideoView;->mTargetState:I

    .line 389
    invoke-virtual {p0}, Lcom/gizthon/camera/view/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 390
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0}, Lcom/gizthon/camera/view/IjkVideoView;->release(Z)V

    return-void
.end method
