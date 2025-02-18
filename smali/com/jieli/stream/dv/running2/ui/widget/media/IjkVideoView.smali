.class public Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;
.super Landroid/widget/FrameLayout;
.source "IjkVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field public static final RENDER_NONE:I = 0x0

.field public static final RENDER_SURFACE_VIEW:I = 0x1

.field public static final RENDER_TEXTURE_VIEW:I = 0x2

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final s_allAspectRatio:[I


# instance fields
.field private TAG:Ljava/lang/String;

.field private isRealTime:Z

.field private mAllRenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mCurrentAspectRatio:I

.field private mCurrentBufferPercentage:I

.field private mCurrentRender:I

.field private mCurrentRenderIndex:I

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

.field private mHudViewHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

.field private mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field private mPrepareEndTime:J

.field private mPrepareStartTime:J

.field mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

.field mSHCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;

.field private mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mSeekEndTime:J

.field private mSeekStartTime:J

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

.field private subtitleDisplay:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 944
    fill-array-data v0, :array_0

    sput-object v0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->s_allAspectRatio:[I

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
    .locals 3

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "IjkVideoView"

    .line 63
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentState:I

    .line 83
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mTargetState:I

    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSurfaceHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    .line 87
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCanPause:Z

    .line 102
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCanSeekBack:Z

    .line 103
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCanSeekForward:Z

    .line 104
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isRealTime:Z

    const-wide/16 v1, 0x0

    .line 121
    iput-wide v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 122
    iput-wide v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPrepareEndTime:J

    .line 124
    iput-wide v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 125
    iput-wide v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekEndTime:J

    .line 450
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 468
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 526
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$4;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$4;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 540
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 591
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$6;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$6;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 620
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$7;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$7;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 627
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$8;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$8;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 638
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$9;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$9;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 702
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSHCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;

    .line 951
    sget-object v1, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 967
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 968
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 969
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentRender:I

    .line 1051
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 131
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "IjkVideoView"

    .line 63
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 82
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentState:I

    .line 83
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mTargetState:I

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSurfaceHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    .line 87
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCanPause:Z

    .line 102
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCanSeekBack:Z

    .line 103
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCanSeekForward:Z

    .line 104
    iput-boolean p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isRealTime:Z

    const-wide/16 v0, 0x0

    .line 121
    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 122
    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPrepareEndTime:J

    .line 124
    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 125
    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekEndTime:J

    .line 450
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 468
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 526
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$4;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$4;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 540
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 591
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$6;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$6;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 620
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$7;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$7;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 627
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$8;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$8;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 638
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$9;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$9;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 702
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSHCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;

    .line 951
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget v0, v0, p2

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 967
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 968
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 969
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentRender:I

    .line 1051
    iput-boolean p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 136
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "IjkVideoView"

    .line 63
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 82
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentState:I

    .line 83
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mTargetState:I

    const/4 p3, 0x0

    .line 86
    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSurfaceHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    .line 87
    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 p3, 0x1

    .line 101
    iput-boolean p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCanPause:Z

    .line 102
    iput-boolean p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCanSeekBack:Z

    .line 103
    iput-boolean p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCanSeekForward:Z

    .line 104
    iput-boolean p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isRealTime:Z

    const-wide/16 v0, 0x0

    .line 121
    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 122
    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPrepareEndTime:J

    .line 124
    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 125
    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekEndTime:J

    .line 450
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 468
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 526
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$4;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$4;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 540
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 591
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$6;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$6;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 620
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$7;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$7;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 627
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$8;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$8;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 638
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$9;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$9;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 702
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSHCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;

    .line 951
    sget-object p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget p3, p3, p2

    iput p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 967
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 968
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 969
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentRender:I

    .line 1051
    iput-boolean p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 141
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p2, "IjkVideoView"

    .line 63
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 82
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentState:I

    .line 83
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mTargetState:I

    const/4 p3, 0x0

    .line 86
    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSurfaceHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    .line 87
    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 p3, 0x1

    .line 101
    iput-boolean p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCanPause:Z

    .line 102
    iput-boolean p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCanSeekBack:Z

    .line 103
    iput-boolean p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCanSeekForward:Z

    .line 104
    iput-boolean p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isRealTime:Z

    const-wide/16 p3, 0x0

    .line 121
    iput-wide p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 122
    iput-wide p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPrepareEndTime:J

    .line 124
    iput-wide p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 125
    iput-wide p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekEndTime:J

    .line 450
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$2;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 468
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$3;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 526
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$4;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$4;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 540
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$5;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 591
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$6;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$6;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 620
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$7;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$7;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 627
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$8;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$8;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 638
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$9;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$9;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 702
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$10;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSHCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;

    .line 951
    sget-object p3, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget p3, p3, p2

    iput p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 967
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 968
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 969
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentRender:I

    .line 1051
    iput-boolean p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 147
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$1000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$1100(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method static synthetic access$1400(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSurfaceWidth:I

    return p0
.end method

.method static synthetic access$1402(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1500(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSurfaceHeight:I

    return p0
.end method

.method static synthetic access$1502(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1600(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mTargetState:I

    return p0
.end method

.method static synthetic access$1602(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1700(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mVideoRotationDegree:I

    return p1
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$2000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$2102(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$2200(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekEndTime:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;J)J
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekEndTime:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekStartTime:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Landroid/widget/TextView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSurfaceHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mVideoSarNum:I

    return p0
.end method

.method static synthetic access$302(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mVideoSarNum:I

    return p1
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mVideoSarDen:I

    return p0
.end method

.method static synthetic access$402(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mVideoSarDen:I

    return p1
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPrepareEndTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;J)J
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPrepareEndTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mHudViewHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPrepareStartTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentState:I

    return p1
.end method

.method private attachMediaController()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    if-eqz v0, :cond_1

    .line 442
    invoke-interface {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 443
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 445
    :goto_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-interface {v1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->setAnchorView(Landroid/view/View;)V

    .line 446
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 695
    invoke-interface {p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void

    .line 699
    :cond_1
    invoke-interface {p2, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    return-void
.end method

.method private static formatedDurationMilli(J)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    cmp-long v4, p0, v2

    if-ltz v4, :cond_0

    .line 1076
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    long-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%.2f sec"

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1078
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%d msec"

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatedSize(J)Ljava/lang/String;
    .locals 6

    const/high16 v0, 0x447a0000    # 1000.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/32 v3, 0x186a0

    cmp-long v5, p0, v3

    if-ltz v5, :cond_0

    .line 1103
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float p0, p0

    div-float/2addr p0, v0

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%.2f MB"

    invoke-static {v3, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v3, 0x64

    cmp-long v5, p0, v3

    if-ltz v5, :cond_1

    .line 1105
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float p0, p0

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%.1f KB"

    invoke-static {v3, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1107
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%d B"

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatedSpeed(JJ)Ljava/lang/String;
    .locals 4

    const-string v0, "0 B/s"

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_0

    return-object v0

    :cond_0
    cmp-long v3, p0, v1

    if-gtz v3, :cond_1

    return-object v0

    :cond_1
    long-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float p0, p0, p1

    long-to-float p2, p2

    div-float/2addr p0, p2

    const p2, 0x49742400    # 1000000.0f

    const/4 p3, 0x0

    const/4 v0, 0x1

    cmpl-float p2, p0, p2

    if-ltz p2, :cond_2

    .line 1093
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    div-float/2addr p0, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v0, p3

    const-string p0, "%.2f MB/s"

    invoke-static {p2, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    cmpl-float p2, p0, p1

    if-ltz p2, :cond_3

    .line 1095
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v0, p3

    const-string p0, "%.1f KB/s"

    invoke-static {p2, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1097
    :cond_3
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p2, v0, [Ljava/lang/Object;

    float-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, p3

    const-string p0, "%d B/s"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initBackground()V
    .locals 2

    .line 1054
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/MediaPlayerService;->intentToStart(Landroid/content/Context;)V

    .line 1056
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/service/MediaPlayerService;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 1057
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mHudViewHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    if-eqz v1, :cond_0

    .line 1058
    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method

.method private initRenders()V
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 974
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentRender:I

    .line 977
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setRender(I)V

    return-void
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 3

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    .line 158
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->initBackground()V

    .line 159
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->initRenders()V

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mVideoWidth:I

    .line 162
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mVideoHeight:I

    const/4 v1, 0x1

    .line 165
    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setFocusable(Z)V

    .line 166
    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setFocusableInTouchMode(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->requestFocus()Z

    .line 169
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentState:I

    .line 170
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mTargetState:I

    .line 172
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    const/high16 p1, 0x41c00000    # 24.0f

    .line 173
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 174
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 175
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/16 v2, 0x50

    invoke-direct {p1, v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 179
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .line 905
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentState:I

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
    .locals 9

    const-string v0, "Unable to open content:%s "

    .line 375
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSurfaceHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 381
    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->release(Z)V

    .line 383
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 384
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    const/4 v2, -0x1

    .line 387
    :try_start_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->createPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 390
    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v3, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 391
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v3, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 392
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v3, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 393
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v3, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 394
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v3, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 395
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v3, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 396
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v3, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 397
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-interface {v3, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    .line 398
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentBufferPercentage:I

    .line 399
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v3, v6, :cond_1

    .line 400
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mHeaders:Ljava/util/Map;

    invoke-interface {v3, v6, v7, v8}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0

    .line 402
    :cond_1
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 404
    :goto_0
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSurfaceHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    invoke-direct {p0, v3, v6}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)V

    .line 405
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 406
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v3, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 408
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 409
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mHudViewHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    if-eqz v3, :cond_2

    .line 410
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mHudViewHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {v3, v4}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 415
    :cond_2
    iput v5, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentState:I

    .line 416
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 423
    :try_start_1
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iput v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentState:I

    .line 425
    iput v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mTargetState:I

    .line 426
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v2, v5, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    goto :goto_1

    :catch_1
    move-exception v3

    .line 418
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iput v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentState:I

    .line 420
    iput v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mTargetState:I

    .line 421
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v2, v5, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-void

    .line 429
    :goto_2
    throw v0

    .line 376
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not ready for playback just yet, will try again later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSurfaceHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 336
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    .line 337
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mHeaders:Ljava/util/Map;

    const/4 p1, 0x0

    .line 338
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekWhenPrepared:I

    .line 339
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->openVideo()V

    .line 340
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->requestLayout()V

    .line 341
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->invalidate()V

    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->hide()V

    goto :goto_0

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .line 913
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .line 918
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .line 923
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public clearSurfaceCanvas()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    if-nez v0, :cond_0

    return-void

    .line 367
    :cond_0
    instance-of v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/SurfaceRenderView;

    if-eqz v1, :cond_1

    .line 368
    check-cast v0, Lcom/jieli/stream/dv/running2/ui/widget/media/SurfaceRenderView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 369
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/widget/media/SurfaceRenderView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_1
    return-void
.end method

.method public createPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 11

    .line 984
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 985
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    const/16 v1, 0x8

    .line 986
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    .line 988
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "hard_codec"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "mediacodec"

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    const/4 v8, 0x4

    if-eqz v1, :cond_0

    .line 989
    invoke-virtual {v0, v8, v2, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_0

    .line 991
    :cond_0
    invoke-virtual {v0, v8, v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    :goto_0
    const-string v1, "opensles"

    .line 992
    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "overlay-format"

    const-string v2, "fcc-_es2"

    .line 993
    invoke-virtual {v0, v8, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "http-detect-range-support"

    .line 995
    invoke-virtual {v0, v3, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-wide/16 v1, 0x5

    const-string v9, "min-frames"

    .line 998
    invoke-virtual {v0, v8, v9, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-wide/32 v1, 0x200000

    const-string v9, "max-buffer-size"

    .line 999
    invoke-virtual {v0, v8, v9, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "packet-buffering"

    .line 1000
    invoke-virtual {v0, v8, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-wide/16 v1, 0x10

    const/4 v9, 0x2

    const-string v10, "skip_frame"

    .line 1001
    invoke-virtual {v0, v9, v10, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-wide/16 v1, 0x30

    const-string v10, "skip_loop_filter"

    .line 1002
    invoke-virtual {v0, v9, v10, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-wide/16 v1, 0x3c

    const-string v9, "framedrop"

    .line 1003
    invoke-virtual {v0, v8, v9, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-wide/32 v1, 0x100000

    const-string v9, "probesize"

    .line 1004
    invoke-virtual {v0, v3, v9, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-wide/16 v1, 0x1388

    const-string v9, "analyzeduration"

    .line 1005
    invoke-virtual {v0, v3, v9, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "start-on-prepared"

    .line 1006
    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "flush_packets"

    .line 1007
    invoke-virtual {v0, v3, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "sync"

    const-string v2, "ext"

    .line 1008
    invoke-virtual {v0, v3, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isRealTime:Z

    const-string v2, "find_stream_info"

    if-eqz v1, :cond_1

    const-string v1, "fflags"

    const-string v9, "nobuffer"

    .line 1010
    invoke-virtual {v0, v3, v1, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v0, v8, v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "rtsp_transport"

    const-string v2, "udp"

    .line 1012
    invoke-virtual {v0, v3, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "infbuf"

    .line 1013
    invoke-virtual {v0, v8, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_1

    .line 1015
    :cond_1
    invoke-virtual {v0, v8, v2, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public enterBackground()V
    .locals 1

    .line 1067
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/MediaPlayerService;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 899
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentBufferPercentage:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 874
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

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

    .line 865
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getHudView()Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mHudViewHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    return-object v0
.end method

.method public isBackgroundPlayEnabled()Z
    .locals 1

    .line 1063
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 893
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

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

    .line 803
    :goto_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    if-eqz v1, :cond_9

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_7

    const/16 v1, 0x55

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_3

    .line 815
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 816
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->start()V

    .line 817
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->hide()V

    :cond_2
    return v0

    :cond_3
    const/16 v1, 0x56

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7f

    if-ne p1, v1, :cond_4

    goto :goto_1

    .line 828
    :cond_4
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->toggleMediaControlsVisiblity()V

    goto :goto_4

    .line 822
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 823
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->pause()V

    .line 824
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->show()V

    :cond_6
    return v0

    .line 806
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 807
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->pause()V

    .line 808
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->show()V

    goto :goto_3

    .line 810
    :cond_8
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->start()V

    .line 811
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->hide()V

    :goto_3
    return v0

    .line 832
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 780
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    if-eqz p1, :cond_0

    .line 781
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->toggleMediaControlsVisiblity()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 788
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    if-eqz p1, :cond_0

    .line 789
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->toggleMediaControlsVisiblity()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 2

    .line 854
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    .line 857
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentState:I

    .line 860
    :cond_0
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mTargetState:I

    return-void
.end method

.method public release(Z)V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_2

    .line 763
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    .line 766
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 767
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    .line 769
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentState:I

    if-eqz p1, :cond_1

    .line 771
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mTargetState:I

    .line 773
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 774
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    return-void
.end method

.method public releaseWithoutStop()V
    .locals 2

    .line 754
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 755
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    .line 882
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 884
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    const/4 p1, 0x0

    .line 885
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekWhenPrepared:I

    goto :goto_0

    .line 887
    :cond_0
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSeekWhenPrepared:I

    :goto_0
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    .line 955
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget p1, v0, p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 956
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    if-eqz v0, :cond_0

    .line 957
    invoke-interface {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setAspectRatio(I)V

    :cond_0
    return-void
.end method

.method public setHudView(Landroid/widget/TableLayout;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 247
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;-><init>(Landroid/content/Context;Landroid/widget/TableLayout;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mHudViewHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    :cond_0
    return-void
.end method

.method public setMediaController(Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    if-eqz v0, :cond_0

    .line 434
    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;->hide()V

    .line 436
    :cond_0
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    .line 437
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->attachMediaController()V

    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setRealtime(Z)V
    .locals 0

    .line 362
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isRealTime:Z

    return-void
.end method

.method public setRender(I)V
    .locals 4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "invalid render %d\n"

    invoke-static {v2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_0
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 230
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->getSurfaceHolder()Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 232
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->setVideoSize(II)V

    .line 233
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 234
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->setAspectRatio(I)V

    .line 236
    :cond_1
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setRenderView(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;)V

    goto :goto_0

    .line 222
    :cond_2
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/widget/media/SurfaceRenderView;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/SurfaceRenderView;->setZOrderOnTop(Z)V

    .line 224
    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/SurfaceRenderView;->setZOrderMediaOverlay(Z)V

    .line 225
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setRenderView(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 218
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setRenderView(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;)V

    :goto_0
    return-void
.end method

.method public setRenderView(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;)V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    .line 188
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSHCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->removeRenderCallback(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;)V

    .line 189
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    .line 190
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->removeView(Landroid/view/View;)V

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 196
    :cond_2
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    .line 197
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    invoke-interface {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setAspectRatio(I)V

    .line 198
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mVideoWidth:I

    if-lez v0, :cond_3

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mVideoHeight:I

    if-lez v1, :cond_3

    .line 199
    invoke-interface {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setVideoSize(II)V

    .line 200
    :cond_3
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mVideoSarNum:I

    if-lez v0, :cond_4

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mVideoSarDen:I

    if-lez v1, :cond_4

    .line 201
    invoke-interface {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 203
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object p1

    .line 204
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->addView(Landroid/view/View;)V

    .line 211
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mSHCallback:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;

    invoke-interface {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->addRenderCallback(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;)V

    .line 212
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mVideoRotationDegree:I

    invoke-interface {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;->setVideoRotation(I)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 313
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 322
    invoke-direct {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 845
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 847
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentState:I

    .line 849
    :cond_0
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mTargetState:I

    return-void
.end method

.method public stopBackgroundPlay()V
    .locals 1

    const/4 v0, 0x0

    .line 1071
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/MediaPlayerService;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    return-void
.end method

.method public stopPlayback()V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 348
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    .line 349
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 350
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 351
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mHudViewHolder:Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    if-eqz v2, :cond_0

    .line 352
    invoke-virtual {v2, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 353
    :cond_0
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentState:I

    .line 354
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mTargetState:I

    .line 355
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 356
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 358
    :cond_1
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isRealTime:Z

    return-void
.end method

.method public tryToGetBitmap(II)V
    .locals 3

    .line 251
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mCurrentRender:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    const-string p2, "invalid render "

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->mRenderView:Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView;

    if-nez v0, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    check-cast v0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;

    .line 258
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    const-string v2, "RENDER_TEXTURE_VIEW"

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 260
    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 262
    :cond_2
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$1;

    invoke-direct {v0, p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$1;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;Landroid/graphics/Bitmap;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 290
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 294
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    const-string p2, "RENDER_SURFACE_VIEW"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    const-string p2, " RENDER_NONE"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
