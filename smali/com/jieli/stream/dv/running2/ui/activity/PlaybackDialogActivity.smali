.class public Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;
.source "PlaybackDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jieli/lib/dv/control/gps/OnGpsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$MyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final MSG_CLEAR_TRACK_POINT:I = 0x101

.field private static final MSG_FPS_COUNT:I = 0x102

.field private static final REFRESH_VIDEO_TIME_INTERVAL:I = 0x1f4

.field private static final TAG_REFRESH_VIDEO_TIME:I = 0x1


# instance fields
.field private fastForwardLevel:I

.field private fastForwardRes:[I

.field private handlerRecord:Ljava/lang/Runnable;

.field private iMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

.field private isDebugOpen:Z

.field private isIJKPlayerOpen:Z

.field private isRecordPrepared:Z

.field private isUseMap:Z

.field private mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

.field private mBufferingProg:Landroid/widget/ProgressBar;

.field private mCancelPlayback:Landroid/widget/ImageView;

.field private mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

.field private mExpandButton:Landroid/widget/ImageView;

.field private mFastForward:Landroid/widget/ImageButton;

.field private mFps:I

.field private mHandler:Landroid/os/Handler;

.field private mHudView:Landroid/widget/TableLayout;

.field private mIDebugListener:Lcom/jieli/stream/dv/running2/task/IDebugListener;

.field private mMovRecordBtn:Landroid/widget/ImageButton;

.field private mOnNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field private mPlayPause:Landroid/widget/ImageButton;

.field private mPlaybackProg:Landroid/widget/ProgressBar;

.field private final mPlayerListener:Lcom/jieli/lib/dv/control/player/OnPlaybackListener;

.field private mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

.field private mServer:Lcom/jieli/stream/dv/running2/task/SDPServer;

.field private mShrinkButton:Landroid/widget/ImageView;

.field private mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

.field private final mTCPPort:I

.field private mTimeTextView:Landroid/widget/TextView;

.field private mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

.field private mapUtil:Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

.field private mapView:Lcom/baidu/mapapi/map/MapView;

.field private final onBufferingListener:Lcom/jieli/lib/dv/control/player/OnBufferingListener;

.field private final onProgressListener:Lcom/jieli/lib/dv/control/player/OnProgressListener;

.field private receiver:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$MyBroadcastReceiver;

.field private stopFastForwardIbtn:Landroid/widget/ImageButton;

.field private tag:Ljava/lang/String;

.field private trackPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private widgetParent:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 76
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;-><init>()V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->tag:Ljava/lang/String;

    const/16 v0, 0x162e

    .line 92
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mTCPPort:I

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isRecordPrepared:Z

    .line 107
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isUseMap:Z

    .line 110
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isDebugOpen:Z

    const/4 v1, 0x7

    new-array v1, v1, [I

    .line 114
    sget v2, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_fast_forward_1:I

    aput v2, v1, v0

    sget v0, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_fast_forward_2:I

    const/4 v2, 0x1

    aput v0, v1, v2

    sget v0, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_fast_forward_4:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sget v0, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_fast_forward_8:I

    const/4 v2, 0x3

    aput v0, v1, v2

    sget v0, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_fast_forward_16:I

    const/4 v2, 0x4

    aput v0, v1, v2

    sget v0, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_fast_forward_32:I

    const/4 v2, 0x5

    aput v0, v1, v2

    sget v0, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_fast_forward_64:I

    const/4 v2, 0x6

    aput v0, v1, v2

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->fastForwardRes:[I

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->trackPoints:Ljava/util/List;

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapUtil:Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    .line 125
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mHandler:Landroid/os/Handler;

    .line 312
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$3;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$3;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mIDebugListener:Lcom/jieli/stream/dv/running2/task/IDebugListener;

    .line 376
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$4;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$4;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->onBufferingListener:Lcom/jieli/lib/dv/control/player/OnBufferingListener;

    .line 388
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$5;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mOnNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    .line 586
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$8;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$8;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->handlerRecord:Ljava/lang/Runnable;

    .line 598
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$9;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->onProgressListener:Lcom/jieli/lib/dv/control/player/OnProgressListener;

    .line 629
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mPlayerListener:Lcom/jieli/lib/dv/control/player/OnPlaybackListener;

    .line 757
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$11;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$11;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->iMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/lib/dv/control/player/PlaybackStream;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    return-object p0
.end method

.method static synthetic access$002(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/PlaybackStream;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/TextView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mTimeTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/lib/dv/control/player/OnPlaybackListener;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mPlayerListener:Lcom/jieli/lib/dv/control/player/OnPlaybackListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->fastForwardLevel:I

    return p0
.end method

.method static synthetic access$1102(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->fastForwardLevel:I

    return p1
.end method

.method static synthetic access$1200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)[I
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->fastForwardRes:[I

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mFastForward:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isRecordPrepared:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isRecordPrepared:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->handleStartRecode()V

    return-void
.end method

.method static synthetic access$1600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->handleStopRecode()V

    return-void
.end method

.method static synthetic access$1700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/stream/dv/running2/data/VideoRecord;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;Lcom/jieli/stream/dv/running2/data/VideoRecord;)Lcom/jieli/stream/dv/running2/data/VideoRecord;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->stopLocalRecording()V

    return-void
.end method

.method static synthetic access$1900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->startLocalRecording()V

    return-void
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/os/Handler;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mPlaybackProg:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isDebugOpen:Z

    return p0
.end method

.method static synthetic access$2208(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)I
    .locals 2

    .line 76
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mFps:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mFps:I

    return v0
.end method

.method static synthetic access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mMovRecordBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->initPlayer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mPlayPause:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->hideWidget()V

    return-void
.end method

.method static synthetic access$2700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->widgetParent:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->showWidget()V

    return-void
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->trackPoints:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapUtil:Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->updateDebugFps()V

    return-void
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;II)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->updateDebug(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mBufferingProg:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private closeDebug()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 285
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mFps:I

    .line 286
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x102

    .line 287
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mIDebugListener:Lcom/jieli/stream/dv/running2/task/IDebugListener;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->unregisterDebugListener(Lcom/jieli/stream/dv/running2/task/IDebugListener;)Z

    .line 290
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->closeDebug()V

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    :cond_1
    return-void
.end method

.method private enableDebugMode()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "debug_settings"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isDebugOpen:Z

    .line 249
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDebugMode isDebugOpen "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isDebugOpen:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isDebugOpen:Z

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mHudView:Landroid/widget/TableLayout;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->tag:Ljava/lang/String;

    const-string v1, "11 "

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mHudView:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->tag:Ljava/lang/String;

    const-string v1, "22 "

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mHudView:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mHudView:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setHudView(Landroid/widget/TableLayout;)V

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->startDebug()V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mHudView:Landroid/widget/TableLayout;

    if-eqz v0, :cond_3

    .line 262
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 263
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/16 v2, 0x102

    .line 264
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mHudView:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setHudView(Landroid/widget/TableLayout;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private fastForward()V
    .locals 3

    .line 571
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->fastForwardLevel:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_0

    .line 573
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-virtual {v2, v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->toggleBuffering(Z)Z

    goto :goto_0

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->toggleBuffering(Z)Z

    .line 576
    :goto_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$7;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$7;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToFastForward(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method private getRtsFormat()I
    .locals 3

    .line 423
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 426
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getFrontFormat()I

    move-result v1

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRearFormat()I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method private handleScreenOff()V
    .locals 3

    const-string v0, "power"

    .line 809
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 811
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 813
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 814
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->finish()V

    goto :goto_0

    .line 818
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 819
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleStartRecode()V
    .locals 3

    .line 711
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mCancelPlayback:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mMovRecordBtn:Landroid/widget/ImageButton;

    sget v2, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_cuting_mov:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 713
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mFastForward:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->stopFastForwardIbtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private handleStopRecode()V
    .locals 3

    .line 719
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mCancelPlayback:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mMovRecordBtn:Landroid/widget/ImageButton;

    sget v2, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_cut_mov:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 721
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mFastForward:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->stopFastForwardIbtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private hideWidget()V
    .locals 10

    .line 732
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x1f4

    .line 733
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 734
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 735
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->widgetParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 736
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->widgetParent:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mPlaybackProg:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapUtil:Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mShrinkButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private initPlayer(Ljava/lang/String;)V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    new-instance v0, Lcom/jieli/stream/dv/running2/task/SDPServer;

    const/16 v1, 0x162e

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->getRtsFormat()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/jieli/stream/dv/running2/task/SDPServer;-><init>(II)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mServer:Lcom/jieli/stream/dv/running2/task/SDPServer;

    .line 437
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->getCurrentMediaInfo()Lcom/jieli/lib/dv/control/model/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mServer:Lcom/jieli/stream/dv/running2/task/SDPServer;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/model/MediaInfo;->getFrameRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/task/SDPServer;->setFrameRate(I)V

    .line 440
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mServer:Lcom/jieli/stream/dv/running2/task/SDPServer;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/model/MediaInfo;->getSampleRate()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/task/SDPServer;->setSampleRate(I)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mServer:Lcom/jieli/stream/dv/running2/task/SDPServer;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/SDPServer;->start()V

    .line 443
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 445
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    const-string v0, "libijkplayer.so"

    .line 446
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 447
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isIJKPlayerOpen:Z

    .line 448
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 449
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->start()V

    goto :goto_0

    .line 451
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->tag:Ljava/lang/String;

    const-string v0, "init player fail"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showWidget()V
    .locals 11

    .line 745
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mPlaybackProg:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 746
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->widgetParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 747
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1f4

    .line 748
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 749
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 750
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->widgetParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 751
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapUtil:Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mShrinkButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private startDebug()V
    .locals 2

    const/4 v0, 0x0

    .line 273
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mFps:I

    .line 274
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x102

    .line 275
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    if-nez v0, :cond_1

    .line 278
    new-instance v0, Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    .line 279
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mIDebugListener:Lcom/jieli/stream/dv/running2/task/IDebugListener;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->registerDebugListener(Lcom/jieli/stream/dv/running2/task/IDebugListener;)Z

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->startDebug()V

    return-void
.end method

.method private startLocalRecording()V
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$6;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->prepare(Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;)V

    return-void
.end method

.method private stopLocalRecording()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 564
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isRecordPrepared:Z

    .line 565
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->close()V

    const/4 v0, 0x0

    .line 566
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    :cond_0
    return-void
.end method

.method private stopMediaPlayer()V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->stopPlayback()V

    .line 458
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->release(Z)V

    .line 459
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isIJKPlayerOpen:Z

    if-eqz v0, :cond_0

    .line 460
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileEnd()V

    :cond_0
    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isIJKPlayerOpen:Z

    return-void
.end method

.method private updateDebug(II)V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getHudView()Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->drop_packet_count:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 299
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->drop_packet_sum:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateDebugFps()V
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getHudView()Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->fps:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mFps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 308
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mFps:I

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 728
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mPlayPause:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 467
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    if-eqz p1, :cond_a

    .line 468
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->isStreamReceiving()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 469
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->pause()V

    .line 470
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->pauseStream()Z

    goto/16 :goto_0

    .line 471
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->isStreamPausing()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 472
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->playStream()Z

    .line 473
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->start()V

    goto/16 :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mCancelPlayback:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 478
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mFastForward:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    .line 480
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isUseMap:Z

    if-eqz p1, :cond_3

    sget p1, Lcom/jieli/stream/dv/running2/R$string;->stop_trajectory_tracking:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 481
    :cond_3
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->fastForward()V

    goto/16 :goto_0

    .line 482
    :cond_4
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->stopFastForwardIbtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_5

    const/4 p1, -0x1

    .line 483
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->fastForwardLevel:I

    .line 485
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->fastForward()V

    goto :goto_0

    .line 486
    :cond_5
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mMovRecordBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_7

    const/16 p1, 0x7d0

    .line 487
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 488
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->handlerRecord:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 490
    :cond_6
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->wait_a_moment:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_7
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mShrinkButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_8

    .line 494
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {p1, v1}, Lcom/baidu/mapapi/map/MapView;->setVisibility(I)V

    .line 495
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mShrinkButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapUtil:Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    if-eqz p1, :cond_a

    .line 499
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->onPause()V

    .line 500
    iput-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isUseMap:Z

    goto :goto_0

    .line 502
    :cond_8
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mExpandButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_a

    .line 503
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->fastForwardLevel:I

    if-lez p1, :cond_9

    .line 504
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->resume_normal_playback_speed:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    return-void

    .line 507
    :cond_9
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {p1, v2}, Lcom/baidu/mapapi/map/MapView;->setVisibility(I)V

    .line 508
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mShrinkButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 510
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapUtil:Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    if-eqz p1, :cond_a

    .line 512
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->onResume()V

    const/4 p1, 0x1

    .line 513
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isUseMap:Z

    :cond_a
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 173
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    sget p1, Lcom/jieli/stream/dv/running2/R$layout;->activity_playback_dialog:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->setContentView(I)V

    .line 175
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->video_view:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    .line 176
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->play_pause:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mPlayPause:Landroid/widget/ImageButton;

    .line 177
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->cancel_playback:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mCancelPlayback:Landroid/widget/ImageView;

    .line 178
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->fast_forward:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mFastForward:Landroid/widget/ImageButton;

    .line 179
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->mov_record_btn:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mMovRecordBtn:Landroid/widget/ImageButton;

    .line 180
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->stop_fast_forward_btn:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->stopFastForwardIbtn:Landroid/widget/ImageButton;

    .line 181
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->play_back_time_tv:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mTimeTextView:Landroid/widget/TextView;

    .line 182
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->playback_widget_parent:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->widgetParent:Landroid/widget/LinearLayout;

    .line 183
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->rts_buffering:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mBufferingProg:Landroid/widget/ProgressBar;

    .line 184
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->playback_progress:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mPlaybackProg:Landroid/widget/ProgressBar;

    .line 185
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->shrink_button:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mShrinkButton:Landroid/widget/ImageView;

    .line 186
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->expand_button:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mExpandButton:Landroid/widget/ImageView;

    .line 187
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->track_query_mapView:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/map/MapView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    .line 188
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->hud_view:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableLayout;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mHudView:Landroid/widget/TableLayout;

    .line 190
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->iMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setMediaController(Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;)V

    .line 191
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setAspectRatio(I)V

    .line 192
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mCancelPlayback:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->stopFastForwardIbtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mFastForward:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mMovRecordBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mShrinkButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/MainApplication;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    const/4 p1, 0x0

    .line 201
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->fastForwardLevel:I

    .line 202
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->receiver:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$MyBroadcastReceiver;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$MyBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$MyBroadcastReceiver;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$1;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->receiver:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$MyBroadcastReceiver;

    .line 205
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->receiver:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$MyBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getSearchMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->tag:Ljava/lang/String;

    const-string v2, "Current mode is STA"

    invoke-static {v0, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    invoke-static {}, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->getInstance()Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapUtil:Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    .line 214
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, v2}, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->init(Lcom/baidu/mapapi/map/MapView;)V

    .line 215
    invoke-static {}, Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;->init()V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mExpandButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    :goto_0
    new-instance v0, Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    .line 221
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mPlayerListener:Lcom/jieli/lib/dv/control/player/OnPlaybackListener;

    invoke-virtual {v0, v2}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->registerPlayerListener(Lcom/jieli/lib/dv/control/player/OnPlaybackListener;)V

    .line 222
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->onProgressListener:Lcom/jieli/lib/dv/control/player/OnProgressListener;

    invoke-virtual {v0, v2}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->setOnProgressListener(Lcom/jieli/lib/dv/control/player/OnProgressListener;)V

    .line 223
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getSearchMode()I

    move-result v0

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-virtual {v0, p0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->setOnGpsListener(Lcom/jieli/lib/dv/control/gps/OnGpsListener;)V

    .line 225
    :cond_2
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mOnNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 226
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "video_path"

    .line 228
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_offset"

    .line 229
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 230
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    new-instance v3, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$2;

    invoke-direct {v3, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$2;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V

    invoke-virtual {v2, v1, p1, v3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToStartPlayback(Ljava/lang/String;ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 239
    new-instance p1, Ljava/util/Date;

    const-string v1, "video_create_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 240
    sget-object v0, Lcom/jieli/stream/dv/running2/util/TimeFormate;->yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    .line 241
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->onBufferingListener:Lcom/jieli/lib/dv/control/player/OnBufferingListener;

    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->setOnBufferingListener(Lcom/jieli/lib/dv/control/player/OnBufferingListener;)V

    .line 244
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->enableDebugMode()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 368
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onDestroy()V

    .line 369
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->tag:Ljava/lang/String;

    const-string v1, "=======on destroy======="

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->receiver:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$MyBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 371
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->receiver:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$MyBroadcastReceiver;

    :cond_0
    return-void
.end method

.method public onGps(Lcom/jieli/lib/dv/control/model/GpsInfo;)V
    .locals 5

    .line 801
    new-instance v0, Lcom/baidu/trace/model/LatLng;

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/model/GpsInfo;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/model/GpsInfo;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/trace/model/LatLng;-><init>(DD)V

    .line 802
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->convertTrace2Map(Lcom/baidu/trace/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    .line 804
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->trackPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapUtil:Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->trackPoints:Ljava/util/List;

    sget-object v1, Lcom/baidu/trace/model/SortType;->asc:Lcom/baidu/trace/model/SortType;

    invoke-virtual {p1, v0, v1}, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->drawHistoryTrack(Ljava/util/List;Lcom/baidu/trace/model/SortType;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 333
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onPause()V

    .line 334
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapUtil:Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->onPause()V

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->handleScreenOff()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 327
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onResume()V

    .line 328
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapUtil:Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->onResume()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 340
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onStop()V

    .line 341
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->tag:Ljava/lang/String;

    const-string v1, "=======on stop======="

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->stopLocalRecording()V

    .line 343
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isDebugOpen:Z

    if-eqz v0, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->closeDebug()V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    if-eqz v0, :cond_1

    .line 347
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mPlayerListener:Lcom/jieli/lib/dv/control/player/OnPlaybackListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->unregisterPlayerListener(Lcom/jieli/lib/dv/control/player/OnPlaybackListener;)V

    .line 348
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mStreamPlayer:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->release()Z

    .line 350
    :cond_1
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->stopMediaPlayer()V

    .line 351
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mOnNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 352
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mServer:Lcom/jieli/stream/dv/running2/task/SDPServer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 353
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/SDPServer;->stopRunning()V

    .line 354
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mServer:Lcom/jieli/stream/dv/running2/task/SDPServer;

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 357
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->mapUtil:Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    if-eqz v0, :cond_4

    .line 360
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->clear()V

    .line 361
    invoke-static {}, Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;->clear()V

    .line 363
    :cond_4
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->trackPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
