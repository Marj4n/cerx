.class public Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;
.source "PlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jieli/stream/dv/running2/audio/AudioRecordManager$RecorderListener;
.implements Lcom/jieli/lib/dv/control/projection/OnSendStateListener;


# static fields
.field private static final DELAY_TIME:J = 0x64L

.field private static final MODE_BROWSE:I = 0x102

.field private static final MODE_PREVIEW:I = 0x101

.field private static final MSG_CYC_SAVE_VIDEO:I = 0xa04

.field private static final MSG_FPS_COUNT:I = 0xa05

.field private static final MSG_PROJECTION_CONTROL:I = 0xa02

.field private static final MSG_RT_VOICE_CONTROL:I = 0xa03

.field private static final MSG_TAKE_PHOTO:I = 0xa01

.field private static final MSG_TAKE_VIDEO:I = 0xa00

.field private static final OP_DELETE_FILE:I = 0x0

.field private static final OP_LOCK_FILE:I = 0x1

.field private static final yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;


# instance fields
.field private autoPlayRunnable:Ljava/lang/Runnable;

.field private centerControlBar:Landroid/widget/LinearLayout;

.field private deleteFileRunnable:Ljava/lang/Runnable;

.field private fps:I

.field private iMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

.field private intercomManager:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

.field private isAdjustResolution:Z

.field private isCapturePrepared:Z

.field private isChecked:Z

.field private isDeleteAll:Z

.field private isIJKPlayerOpen:Z

.field private isOnPause:Z

.field private isProjection:Z

.field private isRecordPrepared:Z

.field private isRtVoiceOpen:Z

.field private isRtspEnable:Z

.field private isStartDebug:Z

.field private isSwitchCamera:Z

.field private layoutBrowse:Landroid/widget/RelativeLayout;

.field private layoutPreview:Landroid/widget/RelativeLayout;

.field private leftControlBar:Landroid/widget/LinearLayout;

.field private mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

.field private mAdjustResolutionBtn:Landroid/widget/ImageView;

.field private mAdjustingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

.field private mAudioManager:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

.field private mBrowseGallery:Landroid/widget/ImageView;

.field private mCameraType:I

.field private mCancel:Landroid/widget/ImageView;

.field private mCoverFlowCarousel:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

.field private mCycSaveVideo:Landroid/widget/ImageView;

.field private mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

.field private mDeleteFileBtn:Landroid/widget/ImageView;

.field private mDeleteFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private mErrorDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private mFileInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

.field private mHandler:Landroid/os/Handler;

.field private mHudView:Landroid/widget/TableLayout;

.field private mIDebugListener:Lcom/jieli/stream/dv/running2/task/IDebugListener;

.field private mLoadingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private mLoadingView:Landroid/widget/ProgressBar;

.field private mLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private mLockFileBtn:Landroid/widget/ImageView;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private final mOnFrameCodecListener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

.field private mOnPopItemClickListener:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$OnPopItemClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPhotoBtn:Landroid/widget/ImageView;

.field private mPositionTime:Landroid/widget/TextView;

.field private mProjectionBtn:Landroid/widget/ImageView;

.field private mProjectionFlag:Landroid/widget/ImageView;

.field private mRTSPlayButton:Landroid/widget/ImageButton;

.field private mReady2DeleteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordFlag:Landroid/widget/ImageView;

.field private mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

.field private mReturn:Landroid/widget/ImageView;

.field private mStopLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

.field private mSwitchCameraBtn:Landroid/widget/ImageView;

.field private mVideoBtn:Landroid/widget/ImageView;

.field private mVideoCapture:Lcom/jieli/stream/dv/running2/data/VideoCapture;

.field private mVideoThumbnail:Lcom/jieli/lib/dv/control/player/VideoThumbnail;

.field private mVoiceBtn:Landroid/widget/ImageView;

.field private mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

.field private final onCheckedChangeListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnCheckedChangeListener;

.field private final onCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private final onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field private final onPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private onStatechangeListener:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;

.field private operationFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private playbackMode:I

.field private playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

.field private popupMenu:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

.field private realtimePlayerListener:Lcom/jieli/lib/dv/control/player/OnRealTimeListener;

.field private recordStatus:I

.field private switchCameraRunnable:Ljava/lang/Runnable;

.field private tag:Ljava/lang/String;

.field private threshold:I

.field private thumbnailRequestQueue:Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;

.field private topBar:Landroid/widget/RelativeLayout;

.field private tvAutoPlayTip:Landroid/widget/TextView;

.field private tvTop:Landroid/widget/TextView;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 805
    sget-object v0, Lcom/jieli/stream/dv/running2/util/TimeFormate;->yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    sput-object v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;-><init>()V

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mReady2DeleteList:Ljava/util/List;

    const/4 v0, 0x1

    .line 172
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCameraType:I

    const/4 v0, -0x1

    .line 173
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->recordStatus:I

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRecordPrepared:Z

    .line 179
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isCapturePrepared:Z

    .line 183
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isChecked:Z

    .line 184
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isDeleteAll:Z

    .line 185
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isOnPause:Z

    .line 192
    new-instance v0, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->thumbnailRequestQueue:Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;

    .line 204
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    .line 345
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$2;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 608
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$8;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$8;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    .line 631
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$9;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$9;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->onStatechangeListener:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;

    .line 701
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$10;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mOnFrameCodecListener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    .line 936
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$15;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$15;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->deleteFileRunnable:Ljava/lang/Runnable;

    .line 955
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$16;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$16;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->switchCameraRunnable:Ljava/lang/Runnable;

    .line 983
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    .line 1718
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$23;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$23;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mOnPopItemClickListener:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$OnPopItemClickListener;

    .line 2414
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$37;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$37;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->iMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    .line 2459
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$38;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$38;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 2489
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$39;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$39;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 2506
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$40;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$40;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->onPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 2516
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$41;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$41;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->onCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 2523
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$42;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->realtimePlayerListener:Lcom/jieli/lib/dv/control/player/OnRealTimeListener;

    .line 2788
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$49;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$49;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->onCheckedChangeListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnCheckedChangeListener;

    .line 2909
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$53;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$53;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mIDebugListener:Lcom/jieli/stream/dv/running2/task/IDebugListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->recordStatus:I

    return p0
.end method

.method static synthetic access$002(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->recordStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isAdjustResolution:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isAdjustResolution:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isProjection:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isProjection:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->handlerProjectionUI()V

    return-void
.end method

.method static synthetic access$1300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->openRTS()V

    return-void
.end method

.method static synthetic access$1400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRtVoiceOpen:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRtVoiceOpen:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLoadingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->fps:I

    return p0
.end method

.method static synthetic access$1602(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;I)I
    .locals 0

    .line 117
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->fps:I

    return p1
.end method

.method static synthetic access$1608(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)I
    .locals 2

    .line 117
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->fps:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->fps:I

    return v0
.end method

.method static synthetic access$1700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->updateDebugFps(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/os/Handler;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->dismissWaitingDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isPlaying()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->handleTFOffline()V

    return-void
.end method

.method static synthetic access$2100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tryToStopRecording(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Ljava/lang/String;J)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->showPlaybackDialog(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->showProgressDialog(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCancel:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/util/List;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mFileInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mFileInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->handleSelectedFile(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRtspEnable:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/bean/FileInfo;)I
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findFileInfoIndex(Lcom/jieli/stream/dv/running2/bean/FileInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackMode:I

    return p0
.end method

.method static synthetic access$3200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCoverFlowCarousel:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->handleAutoPlay()V

    return-void
.end method

.method static synthetic access$3400()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 117
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/widget/TextView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mPositionTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVideoThumbnail:Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/lib/dv/control/player/VideoThumbnail;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVideoThumbnail:Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/bean/FileInfo;II)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->requestVideoContentThumbnail(Lcom/jieli/stream/dv/running2/bean/FileInfo;II)V

    return-void
.end method

.method static synthetic access$3800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->enterVideosBrowserMode()V

    return-void
.end method

.method static synthetic access$3900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->updateModeUI(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRecordPrepared:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->thumbnailRequestQueue:Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;

    return-object p0
.end method

.method static synthetic access$402(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRecordPrepared:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->stopThumbnailReceive()V

    return-void
.end method

.method static synthetic access$4200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->updateCoverFlowCarousel()V

    return-void
.end method

.method static synthetic access$4300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;ILcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->showOperationFileDialog(ILcom/jieli/stream/dv/running2/bean/FileInfo;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->showDeleteFileDialog()V

    return-void
.end method

.method static synthetic access$4500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isSwitchCamera:Z

    return p0
.end method

.method static synthetic access$4502(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isSwitchCamera:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->closeRTS()V

    return-void
.end method

.method static synthetic access$4700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->updateResolutionIcon()V

    return-void
.end method

.method static synthetic access$4800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->dismissAdjustingDialog()V

    return-void
.end method

.method static synthetic access$4900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mSwitchCameraBtn:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->stopLocalRecording()V

    return-void
.end method

.method static synthetic access$5000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->syncDeviceState()V

    return-void
.end method

.method static synthetic access$5100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/lib/dv/control/player/RealtimeStream;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;II)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->createStream(II)V

    return-void
.end method

.method static synthetic access$5300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->initPlayer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;ZII)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->updateResolutionUI(ZII)V

    return-void
.end method

.method static synthetic access$5500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->checkCameraType()V

    return-void
.end method

.method static synthetic access$5600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;I)I
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getCameraLevel(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$5700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->switchStreamResolution(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;I)I
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getLevelResId(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$5900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdjustResolutionBtn:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->showLocalRecordDialog()V

    return-void
.end method

.method static synthetic access$6000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->handlerVideoUI()V

    return-void
.end method

.method static synthetic access$6100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Ljava/util/List;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->requestVideoThumbnail(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tryToParseData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;[B)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->saveBitmapAndUpdateUI([B)V

    return-void
.end method

.method static synthetic access$6500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/media/codec/FrameCodec;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    return-object p0
.end method

.method static synthetic access$6502(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/media/codec/FrameCodec;)Lcom/jieli/media/codec/FrameCodec;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mOnFrameCodecListener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/widget/TextView;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tvAutoPlayTip:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->requestFileMsgText()V

    return-void
.end method

.method static synthetic access$6900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->hideVideoUI()V

    return-void
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/data/VideoCapture;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVideoCapture:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/util/List;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mReady2DeleteList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/data/VideoCapture;)Lcom/jieli/stream/dv/running2/data/VideoCapture;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVideoCapture:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isDeleteAll:Z

    return p0
.end method

.method static synthetic access$7102(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isDeleteAll:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->handlerFileLockState(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAudioManager:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    return-object p0
.end method

.method static synthetic access$7302(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;)Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAudioManager:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/lib/dv/control/intercom/IntercomManager;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->intercomManager:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    return-object p0
.end method

.method static synthetic access$7402(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/lib/dv/control/intercom/IntercomManager;)Lcom/jieli/lib/dv/control/intercom/IntercomManager;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->intercomManager:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->handlerRTVoiceUI()V

    return-void
.end method

.method static synthetic access$7600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCameraType:I

    return p0
.end method

.method static synthetic access$7700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->operationFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$7702(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->operationFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p1
.end method

.method static synthetic access$7800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->deleteFile(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->showWaitingDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isCapturePrepared:Z

    return p0
.end method

.method static synthetic access$8000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->dismissErrorDialog()V

    return-void
.end method

.method static synthetic access$802(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isCapturePrepared:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->centerControlBar:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLoadingView:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->threshold:I

    return p0
.end method

.method static synthetic access$8400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->handlerControlBarUI()V

    return-void
.end method

.method static synthetic access$8500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRTSPlayButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isStartDebug:Z

    return p0
.end method

.method static synthetic access$8700(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/data/VideoRecord;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$8900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->startLocalRecording()V

    return-void
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->shootSound()V

    return-void
.end method

.method static synthetic access$9000(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->showVideoUI()V

    return-void
.end method

.method static synthetic access$9100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mDeleteFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$9200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isChecked:Z

    return p0
.end method

.method static synthetic access$9202(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isChecked:Z

    return p1
.end method

.method static synthetic access$9300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->deleteAllFiles()V

    return-void
.end method

.method static synthetic access$9400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStopLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$9402(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStopLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p1
.end method

.method static synthetic access$9500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;II)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->updateDebug(II)V

    return-void
.end method

.method private checkCameraDir(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 1625
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCameraType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    .line 1626
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "RMedia"

    goto :goto_0

    :cond_0
    const-string p1, "FMedia"

    :goto_0
    return-object p1
.end method

.method private checkCameraType()V
    .locals 4

    .line 2393
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    .line 2394
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCameraType:I

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 2398
    :cond_1
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCameraType:I

    .line 2399
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->updateTopTv()V

    .line 2400
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->handleTFOffline()V

    .line 2401
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 2402
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$36;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$36;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private closeDebug()V
    .locals 2

    .line 2878
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2879
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isStartDebug:Z

    .line 2880
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->fps:I

    .line 2881
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0xa05

    .line 2882
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2884
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mIDebugListener:Lcom/jieli/stream/dv/running2/task/IDebugListener;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->unregisterDebugListener(Lcom/jieli/stream/dv/running2/task/IDebugListener;)Z

    .line 2885
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->closeDebug()V

    const/4 v0, 0x0

    .line 2886
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    :cond_1
    return-void
.end method

.method private closeRTS()V
    .locals 4

    .line 2069
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v1, "close rts................"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->deinitPlayer()V

    .line 2072
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "debug_settings"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2073
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->closeDebug()V

    .line 2074
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRtspEnable:Z

    if-nez v0, :cond_2

    .line 2075
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isSwitchCamera:Z

    if-eqz v0, :cond_2

    .line 2076
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    .line 2077
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v3, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$34;

    invoke-direct {v3, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$34;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual {v1, v0, v3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToCloseRTStream(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 2087
    :cond_2
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->stopLocalRecording()V

    .line 2089
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVideoCapture:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2090
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->destroy()V

    .line 2091
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVideoCapture:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    .line 2094
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    if-eqz v0, :cond_4

    .line 2095
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->close()Z

    .line 2096
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    .line 2099
    :cond_4
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLoadingView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    .line 2100
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLoadingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2102
    :cond_5
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackMode:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRTSPlayButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    .line 2103
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRTSPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method private createStream(II)V
    .locals 4

    .line 2671
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createStream==========mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2689
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string p2, "Create stream failed!!!"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2673
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    if-nez v1, :cond_2

    .line 2674
    new-instance v1, Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-direct {v1, p1}, Lcom/jieli/lib/dv/control/player/RealtimeStream;-><init>(I)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    .line 2675
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->realtimePlayerListener:Lcom/jieli/lib/dv/control/player/OnRealTimeListener;

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V

    .line 2677
    :cond_2
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Net mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", is receiving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {v3}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->isReceiving()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->isReceiving()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p1, :cond_3

    .line 2680
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->create(ILjava/lang/String;)Z

    goto :goto_1

    .line 2682
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {p1, p2}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->create(I)Z

    .line 2684
    :goto_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    const/16 p2, 0x1388

    invoke-virtual {p1, p2}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->setSoTimeout(I)Z

    .line 2685
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->useDeviceTimestamp(Z)V

    .line 2686
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    const/16 p2, 0x1a0a

    const/16 v0, 0x4d2

    invoke-virtual {p1, p2, v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->configure(II)Z

    goto :goto_2

    .line 2687
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string p2, "stream not receiving"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private deinitPlayer()V
    .locals 2

    .line 2126
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v1, "deinit player"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 2128
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->stopPlayback()V

    .line 2129
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->release(Z)V

    .line 2130
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->stopBackgroundPlay()V

    .line 2132
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isIJKPlayerOpen:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileEnd()V

    :cond_1
    const/4 v0, 0x0

    .line 2133
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isIJKPlayerOpen:Z

    return-void
.end method

.method private deleteAllFiles()V
    .locals 3

    .line 1849
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mReady2DeleteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1850
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInstance()Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getVideoInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1851
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mReady2DeleteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1852
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mReady2DeleteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1853
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mReady2DeleteList:Ljava/util/List;

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$30;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$30;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToDeleteFile(Ljava/util/List;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_1

    .line 1864
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v1, "delete files failed"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private deleteFile(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mReady2DeleteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1832
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mReady2DeleteList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1833
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mReady2DeleteList:Ljava/util/List;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$29;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$29;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToDeleteFile(Ljava/util/List;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0

    .line 1844
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v0, "delete file failed"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private dismissAdjustingDialog()V
    .locals 1

    .line 1889
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdjustingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    if-eqz v0, :cond_1

    .line 1890
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1891
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdjustingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 1893
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdjustingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    :cond_1
    return-void
.end method

.method private dismissErrorDialog()V
    .locals 1

    .line 1914
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mErrorDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_1

    .line 1915
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mErrorDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 1918
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mErrorDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    :cond_1
    return-void
.end method

.method private dismissPopMenu()V
    .locals 1

    .line 1710
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->popupMenu:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    if-eqz v0, :cond_1

    .line 1711
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->popupMenu:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 1714
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->popupMenu:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    :cond_1
    return-void
.end method

.method private dismissWaitingDialog()V
    .locals 1

    .line 1880
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    if-eqz v0, :cond_1

    .line 1881
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1882
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 1884
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    :cond_1
    return-void
.end method

.method private enterVideosBrowserMode()V
    .locals 5

    .line 685
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCancel:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackMode:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_1

    .line 689
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCoverFlowCarousel:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getSelectedPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItem(I)Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    move-result-object v0

    .line 691
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setFileInfo(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    .line 692
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setFileInfoCount(I)V

    .line 693
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mPositionTime:Landroid/widget/TextView;

    sget-object v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->handleAutoPlay()V

    goto :goto_0

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/16 v0, 0x102

    .line 699
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->updateModeUI(I)V

    return-void
.end method

.method private findFileInfoIndex(Lcom/jieli/stream/dv/running2/bean/FileInfo;)I
    .locals 3

    if-eqz p1, :cond_1

    .line 2157
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mFileInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2158
    :goto_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mFileInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2159
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mFileInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 2160
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 2166
    :goto_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find fileinof index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getCameraLevel(I)I
    .locals 2

    .line 2609
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2612
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRearLevel()I

    move-result p1

    goto :goto_0

    .line 2614
    :cond_0
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getFrontLevel()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private getLevelResId(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2601
    sget p1, Lcom/jieli/stream/dv/running2/R$drawable;->drawable_resolution_hd:I

    goto :goto_0

    .line 2598
    :cond_0
    sget p1, Lcom/jieli/stream/dv/running2/R$drawable;->drawable_resolution_fhd:I

    goto :goto_0

    .line 2595
    :cond_1
    sget p1, Lcom/jieli/stream/dv/running2/R$drawable;->drawable_resolution_sd:I

    :goto_0
    return p1
.end method

.method private getVideoRate(I)I
    .locals 2

    .line 2622
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2625
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRearRate()I

    move-result p1

    goto :goto_0

    .line 2627
    :cond_0
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getFrontRate()I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 p1, 0x1e

    :goto_0
    return p1
.end method

.method private handleAutoPlay()V
    .locals 4

    .line 600
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isOnPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v1, "handleAutoPlay"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tvAutoPlayTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 604
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private handleSelectedFile(I)V
    .locals 4

    .line 452
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->updateCoverFlowCarousel()V

    .line 453
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mFileInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->thumbnailRequestQueue:Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getItemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mFileInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 456
    :goto_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mFileInfoList:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v1, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->requestVideoThumbnail(Ljava/util/List;)V

    .line 458
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCoverFlowCarousel:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getSelectedPos()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItem(I)Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 460
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectedFileInfo--> name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mPositionTime:Landroid/widget/TextView;

    sget-object v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->clearContentThumbnail()V

    .line 464
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setFileInfo(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    .line 465
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->handlerFileLockState(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    .line 467
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->handleAutoPlay()V

    :cond_2
    return-void
.end method

.method private handleTFOffline()V
    .locals 2

    .line 1515
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1516
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mFileInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1517
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->clear()V

    .line 1520
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCoverFlowCarousel:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1521
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setFileInfoCount(I)V

    .line 1522
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->thumbnailRequestQueue:Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->clear()V

    .line 1523
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mPositionTime:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1524
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tvAutoPlayTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1525
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setVisibility(I)V

    goto :goto_0

    .line 1527
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v1, "onBackPressed ...........>"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method private handlerControlBarUI()V
    .locals 4

    .line 2249
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->centerControlBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2251
    :goto_1
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isSdcardExist()Z

    move-result v2

    if-eqz v0, :cond_5

    .line 2254
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->topBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2255
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->topBar:Landroid/widget/RelativeLayout;

    sget v3, Lcom/jieli/stream/dv/running2/R$anim;->slide_in_top:I

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2256
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2258
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->leftControlBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2259
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->leftControlBar:Landroid/widget/LinearLayout;

    sget v3, Lcom/jieli/stream/dv/running2/R$anim;->left_enter:I

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2260
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->leftControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2262
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->centerControlBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 2263
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->centerControlBar:Landroid/widget/LinearLayout;

    sget v3, Lcom/jieli/stream/dv/running2/R$anim;->right_enter:I

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2264
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->centerControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2266
    :cond_4
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    .line 2267
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    sget v2, Lcom/jieli/stream/dv/running2/R$anim;->slide_in_bottom:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2268
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setVisibility(I)V

    goto/16 :goto_2

    :cond_5
    const/4 v0, 0x4

    .line 2272
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isProjection:Z

    if-nez v1, :cond_9

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackMode:I

    const/16 v2, 0x101

    if-ne v1, v2, :cond_9

    .line 2273
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->topBar:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_6

    .line 2274
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->topBar:Landroid/widget/RelativeLayout;

    sget v2, Lcom/jieli/stream/dv/running2/R$anim;->slide_out_top:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2275
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->topBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2277
    :cond_6
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->leftControlBar:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_7

    .line 2278
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->leftControlBar:Landroid/widget/LinearLayout;

    sget v2, Lcom/jieli/stream/dv/running2/R$anim;->left_exit:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2279
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->leftControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2281
    :cond_7
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->centerControlBar:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_8

    .line 2282
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->centerControlBar:Landroid/widget/LinearLayout;

    sget v2, Lcom/jieli/stream/dv/running2/R$anim;->right_exit:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2283
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->centerControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2285
    :cond_8
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_9

    .line 2286
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    sget v2, Lcom/jieli/stream/dv/running2/R$anim;->slide_out_bottom:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2287
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setVisibility(I)V

    :cond_9
    :goto_2
    return-void
.end method

.method private handlerFileLockState(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2337
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLockFileBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2338
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2341
    sget p1, Lcom/jieli/stream/dv/running2/R$drawable;->drawable_unlock:I

    goto :goto_0

    .line 2343
    :cond_0
    sget p1, Lcom/jieli/stream/dv/running2/R$drawable;->drawable_lock:I

    .line 2345
    :goto_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLockFileBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method private handlerProjectionUI()V
    .locals 2

    .line 2195
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackMode:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_0

    return-void

    .line 2196
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mProjectionFlag:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 2197
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isProjection:Z

    if-eqz v1, :cond_1

    .line 2198
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mProjectionBtn:Landroid/widget/ImageView;

    sget v1, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_projection_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2199
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mProjectionFlag:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 2201
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2202
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mProjectionBtn:Landroid/widget/ImageView;

    sget v1, Lcom/jieli/stream/dv/running2/R$drawable;->drawable_projection:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handlerRTVoiceUI()V
    .locals 2

    .line 2208
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackMode:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_0

    return-void

    .line 2209
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRtVoiceOpen:Z

    if-eqz v0, :cond_1

    .line 2210
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVoiceBtn:Landroid/widget/ImageView;

    sget v1, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_hor_voice_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2212
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVoiceBtn:Landroid/widget/ImageView;

    sget v1, Lcom/jieli/stream/dv/running2/R$drawable;->drawable_hor_voice:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private handlerVideoUI()V
    .locals 2

    .line 2217
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackMode:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_0

    return-void

    .line 2218
    :cond_0
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->recordStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2219
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->showVideoUI()V

    goto :goto_0

    .line 2221
    :cond_1
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->hideVideoUI()V

    :goto_0
    return-void
.end method

.method private hideVideoUI()V
    .locals 2

    .line 2240
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2241
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2243
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRecordFlag:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2244
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRecordFlag:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2245
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVideoBtn:Landroid/widget/ImageView;

    sget v1, Lcom/jieli/stream/dv/running2/R$drawable;->drawable_record_control:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private initPlayer(Ljava/lang/String;)V
    .locals 2

    .line 2108
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2109
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 2111
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    const-string v0, "libijkplayer.so"

    .line 2112
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2113
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isIJKPlayerOpen:Z

    .line 2114
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setRealtime(Z)V

    .line 2115
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 2116
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->start()V

    .line 2118
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRTSPlayButton:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2119
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLoadingView:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 2121
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v0, "init player fail"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initUI()V
    .locals 5

    .line 473
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->playback_top_bar:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->topBar:Landroid/widget/RelativeLayout;

    .line 474
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->return_back:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mReturn:Landroid/widget/ImageView;

    .line 475
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->playback_top_tv:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tvTop:Landroid/widget/TextView;

    .line 476
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->cancle_time_select_ibtn:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCancel:Landroid/widget/ImageView;

    .line 479
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->playback_rt_stream_view:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    const/4 v1, 0x3

    .line 480
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setAspectRatio(I)V

    .line 481
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 482
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->iMediaController:Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setMediaController(Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;)V

    .line 483
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 484
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->onCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 485
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->onPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 486
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->playback_rt_stream_loading:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLoadingView:Landroid/widget/ProgressBar;

    .line 489
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->playback_preview_mode:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->layoutPreview:Landroid/widget/RelativeLayout;

    .line 490
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->preview_mode_left_bar:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->leftControlBar:Landroid/widget/LinearLayout;

    .line 491
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->left_bar_adjust_resolution_btn:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdjustResolutionBtn:Landroid/widget/ImageView;

    .line 492
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->left_bar_projection_btn:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mProjectionBtn:Landroid/widget/ImageView;

    .line 493
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->left_bar_browse_photo_btn:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mBrowseGallery:Landroid/widget/ImageView;

    .line 494
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->preview_mode_center_bar:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->centerControlBar:Landroid/widget/LinearLayout;

    .line 495
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->center_bar_photo_btn:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mPhotoBtn:Landroid/widget/ImageView;

    .line 496
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->center_bar_voice_btn:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVoiceBtn:Landroid/widget/ImageView;

    .line 497
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->center_bar_video_btn:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVideoBtn:Landroid/widget/ImageView;

    .line 498
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->status_bar_record_flag:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRecordFlag:Landroid/widget/ImageView;

    .line 499
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->status_bar_projection_flag:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mProjectionFlag:Landroid/widget/ImageView;

    .line 500
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->left_bar_switch_camera_btn:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mSwitchCameraBtn:Landroid/widget/ImageView;

    .line 501
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->left_bar_cyc_save_video:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCycSaveVideo:Landroid/widget/ImageView;

    .line 502
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->rts_play:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRTSPlayButton:Landroid/widget/ImageButton;

    .line 505
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->playback_browse_mode:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->layoutBrowse:Landroid/widget/RelativeLayout;

    .line 506
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->position_of_time:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mPositionTime:Landroid/widget/TextView;

    .line 507
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->auto_play_tip:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tvAutoPlayTip:Landroid/widget/TextView;

    .line 508
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->carousel:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCoverFlowCarousel:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    .line 511
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->time_seekbar:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    .line 514
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->left_bar_lock_btn:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLockFileBtn:Landroid/widget/ImageView;

    .line 515
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->left_bar_delete_file_btn:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mDeleteFileBtn:Landroid/widget/ImageView;

    .line 517
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->hud_view:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHudView:Landroid/widget/TableLayout;

    .line 521
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tvAutoPlayTip:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdjustResolutionBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mProjectionBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mBrowseGallery:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mPhotoBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVoiceBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVideoBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->onStatechangeListener:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setOnStatechangeListener(Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar$OnStatechangeListener;)V

    .line 531
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mSwitchCameraBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLockFileBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mDeleteFileBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCycSaveVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRTSPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->isSupport_projection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mProjectionBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mProjectionBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 546
    :cond_1
    :goto_0
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    .line 547
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCoverFlowCarousel:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 549
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->loading:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_cancel:I

    new-instance v4, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$6;

    invoke-direct {v4, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$6;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IZIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnConfirmClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLoadingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 556
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$7;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$7;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setOnDismissDialogListener(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnDismissDialogListener;)V

    return-void
.end method

.method private isPlaying()Z
    .locals 3

    .line 2755
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRtspEnable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2757
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->isReceiving()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private isSdOnline()Z
    .locals 2

    .line 2150
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isSdcardExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2151
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->sdcard_offline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 2152
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isSdcardExist()Z

    move-result v0

    return v0
.end method

.method private openRTS()V
    .locals 10

    .line 2016
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2017
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v1, "rts is playing, please stop it first."

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2021
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "debug_settings"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2023
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHudView:Landroid/widget/TableLayout;

    if-eqz v0, :cond_1

    .line 2024
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2025
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHudView:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 2026
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHudView:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setHudView(Landroid/widget/TableLayout;)V

    .line 2029
    :cond_1
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->startDebug()V

    goto :goto_0

    .line 2031
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHudView:Landroid/widget/TableLayout;

    if-eqz v0, :cond_4

    .line 2032
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 2033
    iput v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->fps:I

    .line 2034
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    const/16 v3, 0xa05

    .line 2035
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2037
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHudView:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 2038
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setHudView(Landroid/widget/TableLayout;)V

    .line 2043
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRtspEnable:Z

    if-eqz v0, :cond_5

    .line 2044
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtspUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->initPlayer(Ljava/lang/String;)V

    .line 2045
    iput-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isSwitchCamera:Z

    return-void

    .line 2049
    :cond_5
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtsFormat()I

    move-result v5

    .line 2050
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v4

    .line 2051
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getNetMode()I

    move-result v0

    if-nez v0, :cond_6

    const/16 v1, 0x8b5

    .line 2053
    invoke-direct {p0, v0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->createStream(II)V

    .line 2055
    :cond_6
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v1, "open rts..........."

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getStreamResolutionLevel()I

    move-result v0

    .line 2057
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtsResolution(I)[I

    move-result-object v0

    .line 2058
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v3

    aget v6, v0, v2

    const/4 v1, 0x1

    aget v7, v0, v1

    invoke-direct {p0, v4}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getVideoRate(I)I

    move-result v8

    new-instance v9, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$33;

    invoke-direct {v9, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$33;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual/range {v3 .. v9}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToOpenRTStream(IIIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method private registerBroadcast()V
    .locals 3

    .line 594
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.jieli.dv.running2_format_sdcard"

    .line 595
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 596
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private requestFileMsgText()V
    .locals 3

    .line 812
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLoadingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLoadingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "LoadingDialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCameraType:I

    .line 816
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestFileMsgText********************************mCameraType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCameraType:I

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$12;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$12;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRequestMediaFiles(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method private requestVideoContentThumbnail(Lcom/jieli/stream/dv/running2/bean/FileInfo;II)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestVideoContentThumbnail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", num "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    .line 1637
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x3e8

    new-instance v7, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$22;

    invoke-direct {v7, p0, p3, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$22;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;ILcom/jieli/stream/dv/running2/bean/FileInfo;)V

    move v4, p2

    move v6, p3

    .line 1636
    invoke-virtual/range {v2 .. v7}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRequestVideoContentThumbnail(Ljava/lang/String;IIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    :cond_0
    return-void
.end method

.method private requestVideoThumbnail(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1566
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestVideoThumbnail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1568
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 1569
    invoke-direct {p0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->checkCameraDir(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v2

    .line 1570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v4}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v5}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".thumbnail"

    invoke-static {v4, v5, v2, v6}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getVideoThumbName(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1572
    new-instance v3, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    invoke-direct {v3}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;-><init>()V

    .line 1573
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCameraType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->setCameraType(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->setPath(Ljava/lang/String;)V

    .line 1575
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->setName(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1576
    invoke-virtual {v3, v4}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->setVideo(Z)V

    .line 1577
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->setDuration(I)V

    .line 1578
    invoke-virtual {v3, v2}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->setSaveUrl(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->setStartTime(Ljava/util/Calendar;)V

    .line 1580
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->setCreateTime(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->setEndTime(Ljava/util/Calendar;)V

    .line 1582
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->setType(I)V

    .line 1583
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v4, v3}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->addData(Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;)V

    .line 1584
    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1585
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1586
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->thumbnailRequestQueue:Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->put(Lcom/jieli/stream/dv/running2/bean/FileInfo;Z)V

    goto :goto_1

    .line 1588
    :cond_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileInfo has save ->"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->getSaveUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    :goto_1
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$19;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$19;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1598
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1599
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$20;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$20;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRequestVideoCover(Ljava/util/List;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_2

    .line 1609
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v0, "request list =null"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$21;

    invoke-direct {p1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$21;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private saveBitmapAndUpdateUI([B)V
    .locals 5

    .line 758
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->thumbnailRequestQueue:Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->poll()Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 760
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v0, "saveBitmapAndUpdateUI is null"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->stopThumbnailReceive()V

    return-void

    .line 764
    :cond_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->thumbnailRequestQueue:Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->stopThumbnailReceive()V

    .line 767
    :cond_1
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;->isContent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 768
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCoverFlowCarousel:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getSelectedPos()I

    move-result v1

    .line 769
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v2, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItem(I)Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;->getFileInfo()Lcom/jieli/stream/dv/running2/bean/FileInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 770
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x4

    .line 771
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 772
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    .line 773
    array-length v3, p1

    invoke-static {p1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 774
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItem(I)Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 775
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->setContentThumbnailFlag(I)V

    goto :goto_0

    .line 779
    :cond_2
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;->getFileInfo()Lcom/jieli/stream/dv/running2/bean/FileInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCameraType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getMediaDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 780
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".thumbnail"

    invoke-static {v2, v3, v1, v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 781
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/RequestFileInfo;->getFileInfo()Lcom/jieli/stream/dv/running2/bean/FileInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getVideoThumbName(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 783
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File exist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 786
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->bytesToFile([BLjava/lang/String;)Z

    .line 788
    :cond_4
    :goto_0
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$11;

    invoke-direct {p1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$11;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private shootSound()V
    .locals 4

    const-string v0, "audio"

    .line 2174
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2176
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2177
    :goto_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volume=:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 2180
    sget v0, Lcom/jieli/stream/dv/running2/R$raw;->camera_click:I

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 2181
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$35;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$35;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2190
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method

.method private showDeleteFileDialog()V
    .locals 8

    .line 2761
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mDeleteFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez v0, :cond_0

    .line 2762
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->sure_to_delete:I

    const/4 v3, 0x1

    sget v4, Lcom/jieli/stream/dv/running2/R$string;->dialog_cancel:I

    sget v5, Lcom/jieli/stream/dv/running2/R$string;->dialog_confirm:I

    new-instance v6, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$47;

    invoke-direct {v6, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$47;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    new-instance v7, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$48;

    invoke-direct {v7, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$48;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-static/range {v1 .. v7}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIZIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mDeleteFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 2780
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->onCheckedChangeListener:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setOnCheckedChangeListener(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnCheckedChangeListener;)V

    .line 2783
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mDeleteFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2784
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mDeleteFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "Delete_File_Dialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 3

    .line 1898
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1899
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialog_ok:I

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$31;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$31;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-static {v0, p1, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;ILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnConfirmClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mErrorDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 1907
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1908
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mErrorDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ViewDialog"

    invoke-virtual {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showLocalRecordDialog()V
    .locals 7

    .line 2694
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez v0, :cond_0

    .line 2695
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->no_card_record_tip:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_cancel:I

    sget v4, Lcom/jieli/stream/dv/running2/R$string;->dialog_confirm:I

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$44;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$44;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    new-instance v6, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$45;

    invoke-direct {v6, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$45;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-static/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    const/4 v1, 0x0

    .line 2708
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setCancelable(Z)V

    .line 2710
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2711
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "No_Card_Record"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showOperationFileDialog(ILcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 6

    if-eqz p2, :cond_5

    .line 1747
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->operationFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->operationFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    const/4 v0, 0x0

    .line 1749
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->operationFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_2

    .line 1778
    :cond_1
    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 1781
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->unlock_file_tip:I

    goto :goto_1

    .line 1783
    :cond_3
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->lock_file_tip:I

    :goto_1
    move v1, p1

    .line 1785
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->dialog_cancel:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_confirm:I

    new-instance v4, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$27;

    invoke-direct {v4, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$27;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$28;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$28;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-static/range {v0 .. v5}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->operationFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    goto :goto_2

    .line 1753
    :cond_4
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->dialog_warning:I

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->delete_emergency_video_tip:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->dialog_cancel:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_confirm:I

    new-instance v4, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$25;

    invoke-direct {v4, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$25;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$26;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$26;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-static/range {v0 .. v5}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->operationFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 1818
    :goto_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->operationFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz p1, :cond_5

    .line 1819
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "file_info"

    .line 1820
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1821
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->operationFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p2, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setBundle(Landroid/os/Bundle;)V

    .line 1822
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->operationFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1823
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->operationFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "operation_dialog"

    invoke-virtual {p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private showPlaybackDialog(Ljava/lang/String;J)V
    .locals 2

    .line 1654
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1655
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "video_path"

    .line 1656
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "video_create_time"

    .line 1657
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1658
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->getOffset()I

    move-result p1

    const-string p2, "video_offset"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1659
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1660
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1661
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 1662
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tvAutoPlayTip:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showPopupMenu(Landroid/view/View;)V
    .locals 9

    .line 1668
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRtspEnable:Z

    if-eqz v0, :cond_0

    .line 1669
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtspResolutionLevel()I

    move-result v0

    .line 1670
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtspResolutions()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1672
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getStreamResolutionLevel()I

    move-result v0

    .line 1673
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getStreamResolutions()[Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    .line 1675
    array-length v2, v1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    goto/16 :goto_3

    .line 1680
    :cond_1
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getCameraLevel(I)I

    move-result v2

    .line 1681
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "levels="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", currentRecordLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", currentLevel====== "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1683
    array-length v5, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_5

    aget-object v7, v1, v6

    .line 1684
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1685
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1686
    iget v8, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->recordStatus:I

    if-eq v8, v3, :cond_2

    if-eq v7, v0, :cond_4

    .line 1688
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getLevelResId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const/4 v8, 0x2

    if-ne v2, v8, :cond_3

    if-ge v7, v8, :cond_3

    if-eq v7, v0, :cond_4

    .line 1693
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getLevelResId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    if-ge v2, v8, :cond_4

    if-eq v7, v0, :cond_4

    .line 1697
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getLevelResId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1703
    :cond_5
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->dismissPopMenu()V

    .line 1704
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-direct {v0, v1, v4}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->popupMenu:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    .line 1705
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mOnPopItemClickListener:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$OnPopItemClickListener;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->setOnPopItemClickListener(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$OnPopItemClickListener;)V

    .line 1706
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->popupMenu:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->showAsRight(Landroid/view/View;)V

    return-void

    .line 1676
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v0, "showPopupMenu <=1"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showProgressDialog(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2805
    :cond_0
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->newInstance(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    move-result-object p1

    .line 2806
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "DownloadDialog"

    invoke-virtual {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showStopRecordingDialog(Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;)V
    .locals 6

    .line 2810
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->recording_will_stop:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->dialog_no:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_yes:I

    new-instance v4, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$50;

    invoke-direct {v4, p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$50;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;)V

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$51;

    invoke-direct {v5, p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$51;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;)V

    invoke-static/range {v0 .. v5}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStopLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    const/4 v0, 0x0

    .line 2830
    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setCancelable(Z)V

    .line 2832
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStopLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2833
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStopLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "Stop_local_recording"

    invoke-virtual {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showVideoUI()V
    .locals 3

    .line 2226
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const-wide/32 v1, 0x34bc0

    .line 2227
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2229
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRecordFlag:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2230
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVideoBtn:Landroid/widget/ImageView;

    sget v1, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_record_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2231
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    .line 2232
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2233
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, -0x1

    .line 2234
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v1, 0x2

    .line 2235
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 2236
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRecordFlag:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private showWaitingDialog()V
    .locals 3

    .line 1868
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1869
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    if-nez v0, :cond_0

    .line 1870
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    .line 1871
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->deleting_tip:I

    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setNotifyContent(Ljava/lang/String;)V

    .line 1873
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1874
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "waiting_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private startDebug()V
    .locals 2

    const/4 v0, 0x0

    .line 2865
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->fps:I

    const/4 v0, 0x1

    .line 2866
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isStartDebug:Z

    .line 2867
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0xa05

    .line 2868
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2870
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    if-nez v0, :cond_1

    .line 2871
    new-instance v0, Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    .line 2872
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mIDebugListener:Lcom/jieli/stream/dv/running2/task/IDebugListener;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->registerDebugListener(Lcom/jieli/stream/dv/running2/task/IDebugListener;)Z

    .line 2874
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->startDebug()V

    return-void
.end method

.method private startLocalRecording()V
    .locals 3

    .line 2716
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    if-nez v0, :cond_0

    .line 2717
    new-instance v0, Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    .line 2719
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    const/4 v1, 0x1

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$46;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$46;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->prepare(ZLcom/jieli/stream/dv/running2/data/OnRecordStateListener;)V

    return-void
.end method

.method private stopLocalRecording()V
    .locals 1

    .line 2747
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    if-eqz v0, :cond_0

    .line 2748
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->close()V

    const/4 v0, 0x0

    .line 2749
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    :cond_0
    const/4 v0, 0x0

    .line 2751
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRecordPrepared:Z

    return-void
.end method

.method private stopThumbnailReceive()V
    .locals 2

    .line 1503
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v1, "--------------------------------------stopThumbnailReceive--------------------------"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVideoThumbnail:Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    if-eqz v0, :cond_0

    .line 1505
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->close()Z

    .line 1508
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->thumbnailRequestQueue:Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/ThumbnailRequestQueue;->getFileInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1509
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1510
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->requestVideoThumbnail(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private switchStreamResolution(I)V
    .locals 3

    .line 1726
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->closeRTS()V

    .line 1730
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRtspEnable:Z

    if-eqz v0, :cond_1

    .line 1731
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->saveRtspResolutionLevel(I)V

    .line 1732
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$24;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$24;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1739
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isAdjustResolution:Z

    .line 1740
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->saveStreamResolutionLevel(I)V

    .line 1741
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->showWaitingDialog()V

    :goto_0
    return-void
.end method

.method private syncDeviceState()V
    .locals 3

    .line 2353
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackMode:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_0

    return-void

    .line 2354
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2356
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->recordStatus:I

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRecordState()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 2357
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRecordState()I

    move-result v1

    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->recordStatus:I

    .line 2358
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->handlerVideoUI()V

    .line 2360
    :cond_1
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isProjection:Z

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isOpenProjection()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 2361
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isOpenProjection()Z

    move-result v1

    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isProjection:Z

    .line 2362
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->handlerProjectionUI()V

    .line 2364
    :cond_2
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRtVoiceOpen:Z

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isRTVoice()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 2365
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isRTVoice()Z

    move-result v1

    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRtVoiceOpen:Z

    .line 2366
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->handlerRTVoiceUI()V

    .line 2368
    :cond_3
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->updateResolutionIcon()V

    .line 2369
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isExistRearView()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2370
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mSwitchCameraBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2372
    :cond_4
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mSwitchCameraBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private tryToParseData(Ljava/lang/String;)V
    .locals 2

    .line 1533
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1534
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v0, "tryToParseData: desc is empty!!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1537
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInstance()Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$18;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$18;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->parseJSonData(Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;)V

    return-void
.end method

.method private tryToStopRecording(I)V
    .locals 1

    .line 2838
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItem(I)Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    move-result-object p1

    .line 2839
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;

    invoke-direct {v0, p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$52;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->showStopRecordingDialog(Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;)V

    return-void
.end method

.method private updateCoverFlowCarousel()V
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCoverFlowCarousel:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCoverFlowCarousel:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private updateDebug(II)V
    .locals 3

    .line 2891
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 2892
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getHudView()Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2894
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->drop_packet_count:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 2895
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

.method private updateDebugFps(I)V
    .locals 3

    .line 2901
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 2902
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getHudView()Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2904
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->fps:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateModeUI(I)V
    .locals 3

    .line 2294
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackMode:I

    if-eq v0, p1, :cond_0

    .line 2295
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackMode:I

    .line 2297
    :cond_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->updateTopTv()V

    const/16 v0, 0x101

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0x102

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 2320
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v0, "updateModeUI"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->closeRTS()V

    .line 2322
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 2323
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setVisibility(I)V

    .line 2325
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->layoutPreview:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_3

    .line 2326
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->layoutPreview:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2328
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->layoutBrowse:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_9

    .line 2329
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->layoutBrowse:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 2300
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->layoutBrowse:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_5

    .line 2301
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->layoutBrowse:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2303
    :cond_5
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    .line 2304
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setVisibility(I)V

    .line 2306
    :cond_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->layoutPreview:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_7

    .line 2307
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->layoutPreview:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2309
    :cond_7
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->syncDeviceState()V

    .line 2310
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_9

    .line 2311
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isProjection:Z

    if-eqz p1, :cond_8

    .line 2312
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->handlerControlBarUI()V

    goto :goto_0

    .line 2314
    :cond_8
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->openRTS()V

    :cond_9
    :goto_0
    return-void
.end method

.method private updateResolutionIcon()V
    .locals 4

    .line 2653
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRtspEnable:Z

    if-eqz v0, :cond_0

    .line 2654
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtspResolutionLevel()I

    move-result v0

    .line 2655
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtspResolutions()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2657
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getStreamResolutionLevel()I

    move-result v0

    .line 2658
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getStreamResolutions()[Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 2660
    array-length v1, v1

    if-gtz v1, :cond_1

    goto :goto_1

    .line 2664
    :cond_1
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdjustResolutionBtn:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2665
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdjustResolutionBtn:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getLevelResId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2666
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateResolutionIcon currentLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2661
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v1, "resolutions is null"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdjustResolutionBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private updateResolutionUI(ZII)V
    .locals 3

    .line 2634
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isAdjustResolution:Z

    if-eqz v0, :cond_2

    .line 2635
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjust resolution step 006. isRear "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", w "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    invoke-static {p2, p3}, Lcom/jieli/stream/dv/running2/util/AppUtils;->adjustRtsResolution(II)I

    move-result p2

    .line 2637
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getCameraLevel(I)I

    move-result p3

    if-eq p2, p3, :cond_1

    if-eqz p1, :cond_0

    .line 2639
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setRearLevel(I)V

    goto :goto_0

    .line 2641
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setFrontLevel(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 2644
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isAdjustResolution:Z

    .line 2645
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->dismissAdjustingDialog()V

    .line 2647
    :cond_2
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->updateResolutionIcon()V

    return-void
.end method

.method private updateTopTv()V
    .locals 6

    .line 2379
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackMode:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_0

    .line 2380
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->live_preview:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2382
    :cond_0
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->playback:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2384
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->front_view:I

    invoke-virtual {p0, v3}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2385
    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCameraType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 2386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->rear_view:I

    invoke-virtual {p0, v2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2388
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2389
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tvTop:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/16 v0, 0x1049

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 1926
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x280

    const/16 v4, 0x1e0

    const/16 v5, 0x1e

    new-instance v6, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$32;

    invoke-direct {v6, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$32;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual/range {v1 .. v6}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToStreamingPush(ZIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 1936
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 978
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    const/4 v0, -0x1

    .line 979
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->setResult(I)V

    .line 980
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 832
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mReturn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 833
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRecordPrepared:Z

    if-eqz p1, :cond_0

    .line 834
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$13;

    invoke-direct {p1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$13;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->showStopRecordingDialog(Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;)V

    goto/16 :goto_1

    .line 851
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->onBackPressed()V

    goto/16 :goto_1

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCancel:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 854
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCoverFlowCarousel:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->stopScroll()V

    .line 855
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setMode(I)V

    .line 856
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$14;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$14;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 864
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdjustResolutionBtn:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    .line 865
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mStreamView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 872
    :cond_3
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->open_rts_tip:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 866
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getDevice_type()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->recordStatus:I

    if-ne v0, v1, :cond_5

    .line 867
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->stop_recording_first:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 869
    :cond_5
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->showPopupMenu(Landroid/view/View;)V

    goto/16 :goto_1

    .line 874
    :cond_6
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mProjectionBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    .line 875
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_11

    const/16 v0, 0xa02

    .line 876
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 877
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 879
    :cond_7
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mBrowseGallery:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_8

    .line 880
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInstance()Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getVideosDescription()Ljava/lang/String;

    move-result-object p1

    .line 881
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isSdOnline()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 882
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "video_list"

    .line 883
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x6

    const-string v2, "key_fragment_tag"

    .line 885
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "key_data"

    .line 886
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x1025

    .line 887
    invoke-virtual {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 889
    :cond_8
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mPhotoBtn:Landroid/widget/ImageView;

    const-wide/16 v2, 0x64

    if-ne p1, v0, :cond_9

    .line 890
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_11

    const/16 v0, 0xa01

    .line 891
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 892
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 894
    :cond_9
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVoiceBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_a

    .line 895
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_11

    const/16 v0, 0xa03

    .line 896
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 897
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 899
    :cond_a
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVideoBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_b

    .line 900
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_11

    const/16 v0, 0xa00

    .line 901
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 902
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 904
    :cond_b
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mSwitchCameraBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_c

    .line 906
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_11

    .line 907
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->switchCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 908
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->switchCameraRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 910
    :cond_c
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mLockFileBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_e

    .line 911
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_d

    .line 912
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 914
    :cond_d
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    if-eqz p1, :cond_11

    .line 915
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCoverFlowCarousel:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->getSelectedPos()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->getItem(I)Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 917
    invoke-direct {p0, v1, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->showOperationFileDialog(ILcom/jieli/stream/dv/running2/bean/FileInfo;)V

    goto :goto_1

    .line 920
    :cond_e
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mDeleteFileBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_f

    .line 921
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_11

    .line 922
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 923
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->deleteFileRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 924
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->deleteFileRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 926
    :cond_f
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCycSaveVideo:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_10

    .line 927
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isSdOnline()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_11

    const/16 v0, 0xa04

    .line 928
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 929
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 931
    :cond_10
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRTSPlayButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_11

    .line 932
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->openRTS()V

    :cond_11
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 367
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 368
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    const-string v0, "==================CREATE==============="

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    .line 370
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->requestWindowFeature(I)Z

    const/16 v0, 0x400

    .line 371
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 372
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 373
    sget p1, Lcom/jieli/stream/dv/running2/R$layout;->activity_playback:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->setContentView(I)V

    .line 374
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "rtsp_state"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRtspEnable:Z

    const-string p1, "power"

    .line 375
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    .line 376
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const/16 p1, 0x14

    .line 378
    invoke-static {p0, p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->dp2px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->threshold:I

    .line 379
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->initUI()V

    .line 380
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v0, "file_info"

    .line 383
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    :cond_1
    if-eqz v0, :cond_2

    const/16 p1, 0x102

    .line 386
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackMode:I

    .line 387
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setModeNotCallback(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x101

    .line 389
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackMode:I

    .line 390
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setModeNotCallback(I)V

    .line 392
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isSdcardExist()Z

    move-result p1

    if-nez p1, :cond_3

    .line 393
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackSeekbar:Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/PlaybackSeekbar;->setVisibility(I)V

    .line 395
    :cond_3
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 396
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->requestFileMsgText()V

    .line 397
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$3;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$3;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->setOnItemClickListener(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$OnItemClickListener;)V

    .line 421
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCoverFlowCarousel:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$4;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$4;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 434
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mCoverFlowCarousel:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$5;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$5;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/RecyclerCoverFlow;->setOnItemSelectedListener(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$OnSelected;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v0, 0x0

    .line 1976
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isOnPause:Z

    .line 1977
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->dismissPopMenu()V

    .line 1978
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->operationFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1979
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1980
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->operationFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 1982
    :cond_0
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->operationFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 1985
    :cond_1
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->closeRTS()V

    .line 1987
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->dismissErrorDialog()V

    .line 1988
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->dismissWaitingDialog()V

    .line 1989
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->dismissAdjustingDialog()V

    .line 1990
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onDestroy()V

    .line 1992
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1993
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1996
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVideoThumbnail:Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    if-eqz v0, :cond_3

    .line 1997
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->close()Z

    .line 1999
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    if-eqz v0, :cond_4

    .line 2000
    invoke-virtual {v0, v1}, Lcom/jieli/media/codec/FrameCodec;->setOnFrameCodecListener(Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;)V

    .line 2001
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    invoke-virtual {v0}, Lcom/jieli/media/codec/FrameCodec;->destroy()Z

    .line 2002
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    .line 2004
    :cond_4
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 2005
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 2006
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2007
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    .line 2009
    :cond_5
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAudioManager:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    if-eqz v0, :cond_6

    .line 2010
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->release()V

    .line 2011
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mAudioManager:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    :cond_6
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1954
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onPause()V

    const/4 v0, 0x1

    .line 1955
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isOnPause:Z

    .line 1956
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->closeRTS()V

    .line 1957
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    if-eqz v0, :cond_0

    .line 1958
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->realtimePlayerListener:Lcom/jieli/lib/dv/control/player/OnRealTimeListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V

    .line 1959
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->release()Z

    const/4 v0, 0x0

    .line 1960
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    .line 1962
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isRtVoiceOpen:Z

    if-eqz v0, :cond_1

    .line 1963
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mVoiceBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 1965
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRecord([BI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2569
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->intercomManager:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    if-eqz p2, :cond_0

    .line 2570
    invoke-virtual {p2, p1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->send([B)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1941
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onResume()V

    const/4 v0, 0x0

    .line 1942
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isOnPause:Z

    .line 1943
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->playbackMode:I

    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->updateModeUI(I)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 589
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onStart()V

    .line 590
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->registerBroadcast()V

    return-void
.end method

.method public onState(ILjava/lang/String;)V
    .locals 0

    .line 2577
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->intercomManager:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    if-eqz p1, :cond_0

    .line 2578
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->stopSendDataThread()V

    .line 2580
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 2581
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$43;

    invoke-direct {p2, p0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$43;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1970
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onStop()V

    .line 1971
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public requestCapturePermission()V
    .locals 2

    .line 2137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 2139
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->projection_not_support:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2141
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->isProjection:Z

    .line 2142
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setOpenProjection(Z)V

    const-string v0, "media_projection"

    .line 2143
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    if-eqz v0, :cond_1

    .line 2145
    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1049

    invoke-virtual {p0, v0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method
