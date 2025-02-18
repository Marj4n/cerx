.class public Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "VideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jieli/lib/dv/control/player/OnFrameListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/jieli/stream/dv/running2/audio/AudioRecordManager$RecorderListener;
.implements Lcom/jieli/lib/dv/control/projection/OnSendStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$TurnFrontViewAnim;,
        Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$TurnRearViewAnim;,
        Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;,
        Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;,
        Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x64

.field private static final MSG_CAMERA_SWITCH:I = 0xa08

.field private static final MSG_CYC_SAVE_VIDEO:I = 0xa05

.field private static final MSG_FPS_COUNT:I = 0xa06

.field private static final MSG_LOAD_DEV_THUMBS:I = 0xa02

.field private static final MSG_PROJECTION_CONTROL:I = 0xa03

.field private static final MSG_REQUEST_THUMB:I = 0xa07

.field private static final MSG_RT_VOICE_CONTROL:I = 0xa04

.field private static final MSG_TAKE_PHOTO:I = 0xa01

.field private static final MSG_TAKE_VIDEO:I = 0xa00


# instance fields
.field aviJpegName:Ljava/lang/String;

.field private collections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;",
            ">;"
        }
    .end annotation
.end field

.field private countList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dismissDialogRunnable:Ljava/lang/Runnable;

.field firstData:[B

.field private fps:I

.field protected handler:Landroid/os/Handler;

.field private intercomManager:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

.field private isAdjustResolution:Z

.field private isCapturePrepared:Z

.field private isFragmentStop:Z

.field private isIJKPlayerOpen:Z

.field private isProjection:Z

.field public isRecordPrepared:Z

.field private isRtVoiceOpen:Z

.field private isRtspEnable:Z

.field private isSentOpenRtsCmd:Z

.field private isStartDebug:Z

.field private isSwitchCamera:Z

.field private ivBroken:Landroid/widget/TextView;

.field private iv_focus_img:Landroid/widget/ImageView;

.field private iv_picture:Landroid/widget/ImageView;

.field private iv_record:Landroid/widget/ImageView;

.field private iv_resolution:Landroid/widget/ImageView;

.field private iv_zoom_focus:Landroid/widget/ImageView;

.field private iv_zoom_in:Landroid/widget/ImageView;

.field private iv_zoom_out:Landroid/widget/ImageView;

.field private ll_content:Landroid/widget/FrameLayout;

.field private ll_resolution:Landroid/widget/LinearLayout;

.field private mAudioManager:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

.field private mCameraType:I

.field private mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

.field private mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIDebugListener:Lcom/jieli/stream/dv/running2/task/IDebugListener;

.field private mLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private final mOnFrameCodecListener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

.field private mOnPopItemClickListener:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$OnPopItemClickListener;

.field private mPresenter:Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

.field private mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

.field private mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyBroadcastReceiver;

.field private mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

.field private mScale:F

.field private mStopLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private mVideoCapture:Lcom/jieli/stream/dv/running2/data/VideoCapture;

.field private mVideoThumbnail:Lcom/jieli/lib/dv/control/player/VideoThumbnail;

.field private mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

.field private mView:Landroid/view/View;

.field private mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

.field private mWidth:I

.field private final onCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private final onNotifyResponse:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field private final onPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field protected openRts:Ljava/lang/Runnable;

.field private rc_resolution:Landroidx/recyclerview/widget/RecyclerView;

.field private realtimePlayerListener:Lcom/jieli/lib/dv/control/player/OnRealTimeListener;

.field private recordStatus:I

.field save:Z

.field selectedHeight:I

.field selectedWidth:I

.field private startTime:J

.field private tag:Ljava/lang/String;

.field private take_photo:Landroid/widget/ImageView;

.field tempCapture:Lcom/jieli/stream/dv/running2/data/VideoCapture;

.field private thumbList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private totalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tv_record_time:Landroid/widget/TextView;

.field private tv_resolution:Landroid/widget/TextView;

.field protected updateTimer:Ljava/lang/Runnable;

.field private updateUIFromDev:Ljava/lang/Runnable;

.field private viewHeight:I

.field private viewWidth:I

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    const/4 v1, 0x1

    .line 169
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mCameraType:I

    const/4 v1, 0x0

    .line 171
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isIJKPlayerOpen:Z

    .line 172
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isFragmentStop:Z

    .line 178
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRecordPrepared:Z

    .line 179
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isCapturePrepared:Z

    .line 181
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isSentOpenRtsCmd:Z

    const/4 v1, -0x1

    .line 194
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWidth:I

    .line 195
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 196
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mScale:F

    const/16 v1, 0x280

    .line 198
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->selectedWidth:I

    const/16 v1, 0x1e0

    .line 199
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->selectedHeight:I

    .line 200
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    .line 824
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$15;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$15;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->onPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 831
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$16;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$16;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->onCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 838
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->onNotifyResponse:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    .line 1271
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$18;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$18;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 1299
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$19;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$19;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->openRts:Ljava/lang/Runnable;

    .line 1487
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$20;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$20;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->dismissDialogRunnable:Ljava/lang/Runnable;

    .line 1592
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$22;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$22;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateUIFromDev:Ljava/lang/Runnable;

    .line 1687
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$24;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$24;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mOnFrameCodecListener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    .line 2195
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->handler:Landroid/os/Handler;

    .line 2232
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$27;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$27;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateTimer:Ljava/lang/Runnable;

    .line 2299
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$28;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$28;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mOnPopItemClickListener:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$OnPopItemClickListener;

    .line 2325
    new-instance v1, Lcom/jieli/stream/dv/running2/data/VideoCapture;

    invoke-direct {v1}, Lcom/jieli/stream/dv/running2/data/VideoCapture;-><init>()V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tempCapture:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    .line 2326
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->firstData:[B

    .line 2327
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->realtimePlayerListener:Lcom/jieli/lib/dv/control/player/OnRealTimeListener;

    const-string v0, ""

    .line 2742
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->aviJpegName:Ljava/lang/String;

    .line 2829
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$37;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$37;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mIDebugListener:Lcom/jieli/stream/dv/running2/task/IDebugListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isPlaying()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRtspEnable:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isProjection:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isProjection:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRtVoiceOpen:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRtVoiceOpen:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I
    .locals 0

    .line 124
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->recordStatus:I

    return p0
.end method

.method static synthetic access$1202(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;I)I
    .locals 0

    .line 124
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->recordStatus:I

    return p1
.end method

.method static synthetic access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I
    .locals 0

    .line 124
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->fps:I

    return p0
.end method

.method static synthetic access$1302(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;I)I
    .locals 0

    .line 124
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->fps:I

    return p1
.end method

.method static synthetic access$1308(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I
    .locals 2

    .line 124
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->fps:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->fps:I

    return v0
.end method

.method static synthetic access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;I)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateDebugFps(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->dismissWaitingDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->showWaitingDialog()V

    return-void
.end method

.method static synthetic access$1800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->closeRTS()V

    return-void
.end method

.method static synthetic access$1900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->openRTS()V

    return-void
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->dismissDialogRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->clearDataAndUpdate()V

    return-void
.end method

.method static synthetic access$2200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateTextView()V

    return-void
.end method

.method static synthetic access$2300(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->ll_content:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->iv_focus_img:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->iv_record:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->ll_resolution:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/widget/TextView;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->ivBroken:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isSentOpenRtsCmd:Z

    return p0
.end method

.method static synthetic access$2902(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isSentOpenRtsCmd:Z

    return p1
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->startLocalRecording()V

    return-void
.end method

.method static synthetic access$3000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;II)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->createStream(II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->rotateDeviceMsgLayout()V

    return-void
.end method

.method static synthetic access$3200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoThumbnail:Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/lib/dv/control/player/VideoThumbnail;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoThumbnail:Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->take_photo:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/RealtimeStream;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Ljava/lang/String;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->initPlayer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;ZII)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateResolutionUI(ZII)V

    return-void
.end method

.method static synthetic access$3700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateDeviceMsg()V

    return-void
.end method

.method static synthetic access$3800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->handlerVideoUI()V

    return-void
.end method

.method static synthetic access$3900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isFragmentStop:Z

    return p0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/data/VideoCapture;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoCapture:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateDeviceFileList()V

    return-void
.end method

.method static synthetic access$402(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/stream/dv/running2/data/VideoCapture;)Lcom/jieli/stream/dv/running2/data/VideoCapture;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoCapture:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->shootSound()V

    return-void
.end method

.method static synthetic access$4200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->totalList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->totalList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Ljava/lang/String;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tryToParseData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->hideVideoUI()V

    return-void
.end method

.method static synthetic access$4500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/FileInfo;
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->findFileInfo(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/FileInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mAudioManager:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    return-object p0
.end method

.method static synthetic access$4602(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;)Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mAudioManager:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/intercom/IntercomManager;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->intercomManager:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    return-object p0
.end method

.method static synthetic access$4702(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/lib/dv/control/intercom/IntercomManager;)Lcom/jieli/lib/dv/control/intercom/IntercomManager;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->intercomManager:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->handlerRTVoiceUI()V

    return-void
.end method

.method static synthetic access$4900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I
    .locals 0

    .line 124
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mCameraType:I

    return p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isCapturePrepared:Z

    return p0
.end method

.method static synthetic access$5000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->syncDeviceState()V

    return-void
.end method

.method static synthetic access$502(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isCapturePrepared:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/camera/CameraPresenter;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mPresenter:Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    return-object p0
.end method

.method static synthetic access$5102(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/stream/dv/running2/camera/CameraPresenter;)Lcom/jieli/stream/dv/running2/camera/CameraPresenter;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mPresenter:Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->handlerProjectionUI()V

    return-void
.end method

.method static synthetic access$5300(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateResolutionIcon()V

    return-void
.end method

.method static synthetic access$5400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/Set;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->collections:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->thumbList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I
    .locals 0

    .line 124
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->viewWidth:I

    return p0
.end method

.method static synthetic access$5800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I
    .locals 0

    .line 124
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->viewHeight:I

    return p0
.end method

.method static synthetic access$5900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->hideLoadDialog(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isAdjustResolution:Z

    return p0
.end method

.method static synthetic access$602(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isAdjustResolution:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->startTime:J

    return-wide v0
.end method

.method static synthetic access$6700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/widget/TextView;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tv_record_time:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;I)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->switchStreamResolution(I)V

    return-void
.end method

.method static synthetic access$6900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isStartDebug:Z

    return p0
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isSwitchCamera:Z

    return p0
.end method

.method static synthetic access$7000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/data/VideoRecord;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    return-object p0
.end method

.method static synthetic access$702(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isSwitchCamera:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->showVideoUI()V

    return-void
.end method

.method static synthetic access$7300(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mStopLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;II)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateDebug(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->cancelSaveThread()V

    return-void
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->requestFileMsgText()V

    return-void
.end method

.method private cancelSaveThread()V
    .locals 2

    .line 2151
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->collections:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 2152
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;

    .line 2153
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->interrupt()V

    goto :goto_0

    .line 2155
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->collections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_1
    return-void
.end method

.method private clearDataAndUpdate()V
    .locals 1

    .line 2465
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->totalList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2466
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private closeDebug()V
    .locals 2

    .line 2798
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2799
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isStartDebug:Z

    .line 2800
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->fps:I

    .line 2801
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0xa06

    .line 2802
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2804
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mIDebugListener:Lcom/jieli/stream/dv/running2/task/IDebugListener;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->unregisterDebugListener(Lcom/jieli/stream/dv/running2/task/IDebugListener;)Z

    .line 2805
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->closeDebug()V

    const/4 v0, 0x0

    .line 2806
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    :cond_1
    return-void
.end method

.method private closeRTS()V
    .locals 4

    .line 750
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string v1, "close rts................"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->deinitPlayer()V

    .line 753
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "debug_settings"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->closeDebug()V

    .line 755
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRtspEnable:Z

    if-nez v0, :cond_3

    .line 756
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isSwitchCamera:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not playing, isSwitchCamera="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isSwitchCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 757
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    .line 758
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cameraType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$14;

    invoke-direct {v2, p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$14;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;I)V

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToCloseRTStream(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_1

    .line 770
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string v1, "Rtsp Enable"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :goto_1
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->stopLocalRecording()V

    .line 773
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoCapture:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 774
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->destroy()V

    .line 775
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoCapture:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    .line 777
    :cond_4
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    if-eqz v0, :cond_5

    .line 778
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->close()Z

    .line 779
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    :cond_5
    return-void
.end method

.method private createStream(II)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1325
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string p2, "Create stream failed!!!"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1309
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    if-nez v1, :cond_2

    .line 1310
    new-instance v1, Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-direct {v1, p1}, Lcom/jieli/lib/dv/control/player/RealtimeStream;-><init>(I)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    .line 1311
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->realtimePlayerListener:Lcom/jieli/lib/dv/control/player/OnRealTimeListener;

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->registerStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V

    .line 1314
    :cond_2
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->isReceiving()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p1, :cond_3

    .line 1316
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->create(ILjava/lang/String;)Z

    goto :goto_1

    .line 1318
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {p1, p2}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->create(I)Z

    .line 1320
    :goto_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    const/16 p2, 0x1388

    invoke-virtual {p1, p2}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->setSoTimeout(I)Z

    .line 1321
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->useDeviceTimestamp(Z)V

    .line 1322
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    const/16 p2, 0x1a0a

    const/16 v0, 0x4d2

    invoke-virtual {p1, p2, v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->configure(II)Z

    goto :goto_2

    .line 1323
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string p2, "stream not receiving"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private deinitPlayer()V
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string v1, "deinit Player"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->stopPlayback()V

    .line 816
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->release(Z)V

    .line 817
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->stopBackgroundPlay()V

    .line 820
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isIJKPlayerOpen:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileEnd()V

    :cond_1
    const/4 v0, 0x0

    .line 821
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isIJKPlayerOpen:Z

    return-void
.end method

.method private dismissWaitingDialog()V
    .locals 2

    .line 2066
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    if-eqz v0, :cond_1

    .line 2067
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2068
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string v1, "mWaitingDialog dismiss"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 2071
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    :cond_1
    return-void
.end method

.method private findFileInfo(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/FileInfo;
    .locals 3

    .line 2477
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->totalList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2478
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 2479
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getCameraLevel(I)I
    .locals 2

    .line 2612
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2615
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRearLevel()I

    move-result p1

    goto :goto_0

    .line 2617
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

    .line 2604
    sget p1, Lcom/jieli/stream/dv/running2/R$drawable;->drawable_resolution_hd:I

    goto :goto_0

    .line 2601
    :cond_0
    sget p1, Lcom/jieli/stream/dv/running2/R$drawable;->drawable_resolution_fhd:I

    goto :goto_0

    .line 2598
    :cond_1
    sget p1, Lcom/jieli/stream/dv/running2/R$drawable;->drawable_resolution_sd:I

    :goto_0
    return p1
.end method

.method private getVideoRate(I)I
    .locals 2

    .line 2625
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2628
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRearRate()I

    move-result p1

    goto :goto_0

    .line 2630
    :cond_0
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getFrontRate()I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 p1, 0x1e

    :goto_0
    return p1
.end method

.method private goToPlayBack(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 3

    .line 2637
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->onNotifyResponse:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 2638
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    const-string v1, "file_info"

    .line 2640
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    const/16 p1, 0x1027

    .line 2642
    invoke-virtual {p0, v0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private handlerProjectionUI()V
    .locals 0

    return-void
.end method

.method private handlerRTVoiceUI()V
    .locals 0

    return-void
.end method

.method private handlerVideoUI()V
    .locals 2

    .line 2187
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->recordStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2188
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->showVideoUI()V

    goto :goto_0

    .line 2190
    :cond_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->hideVideoUI()V

    :goto_0
    return-void
.end method

.method private hideLoadDialog(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 3

    .line 2417
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->countList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2418
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->countList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa07

    if-nez p1, :cond_0

    .line 2419
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->dismissWaitingDialog()V

    .line 2420
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 2423
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2424
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private hideVideoUI()V
    .locals 2

    .line 2219
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2220
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2223
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->iv_record:Landroid/widget/ImageView;

    sget v1, Lcom/jieli/stream/dv/running2/R$mipmap;->icon_record:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2224
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2225
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tv_record_time:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2226
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tv_record_time:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initPlayer(Ljava/lang/String;)V
    .locals 3

    .line 794
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init Player. url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 798
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    const-string v0, "libijkplayer.so"

    .line 799
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 800
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isIJKPlayerOpen:Z

    .line 801
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setRealtime(Z)V

    .line 802
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 803
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->start()V

    goto :goto_0

    .line 808
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string v0, "init player failed"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initProjection()V
    .locals 1

    .line 635
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->handlerProjectionUI()V

    .line 637
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    return-void
.end method

.method private isPlaying()Z
    .locals 3

    .line 788
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRtspEnable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private openRTS()V
    .locals 10

    .line 692
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string v1, "It is playing, please stop it first."

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "debug_settings"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->startDebug()V

    .line 718
    :cond_1
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRtspEnable:Z

    if-eqz v0, :cond_2

    .line 719
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtspUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->initPlayer(Ljava/lang/String;)V

    .line 720
    iput-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isSwitchCamera:Z

    return-void

    .line 724
    :cond_2
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtsFormat()I

    move-result v5

    .line 725
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v4

    .line 726
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getStreamResolutionLevel()I

    move-result v0

    .line 727
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtsResolution(I)[I

    move-result-object v0

    .line 728
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open rts........... front="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", h264 "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v5, v6, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v3

    aget v1, v0, v2

    aget v7, v0, v6

    invoke-direct {p0, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getVideoRate(I)I

    move-result v8

    new-instance v9, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$13;

    invoke-direct {v9, p0, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$13;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;I)V

    move v6, v1

    invoke-virtual/range {v3 .. v9}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToOpenRTStream(IIIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method private registerBroadcast()V
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyBroadcastReceiver;

    if-nez v0, :cond_0

    .line 683
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyBroadcastReceiver;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyBroadcastReceiver;

    .line 685
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.jieli.dv.running2_format_sdcard"

    .line 686
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.jieli.dv.running2_language_change"

    .line 687
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private requestFileMsgText()V
    .locals 0

    .line 1504
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->clearDataAndUpdate()V

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

    .line 1624
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoThumbnail:Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->isReceiving()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    if-eqz p1, :cond_4

    .line 1626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1627
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->thumbList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1628
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->thumbList:Ljava/util/List;

    goto :goto_0

    .line 1630
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1632
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 1633
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1634
    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkCameraDir(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v2

    .line 1635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v4}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v5}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".thumbnail"

    invoke-static {v4, v5, v2, v6}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getVideoThumbName(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1637
    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1638
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1639
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1640
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->thumbList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1645
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 1646
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-requestVideoThumbnail- tryToRequestVideoCover size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$23;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$23;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRequestVideoCover(Ljava/util/List;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    :cond_4
    return-void
.end method

.method private rotateDeviceMsgLayout()V
    .locals 4

    .line 2489
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string v1, "rotateDeviceMsgLayout"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    .line 2491
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mCameraType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 2495
    :cond_1
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mCameraType:I

    .line 2529
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateResolutionIcon()V

    .line 2530
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/16 v1, 0xa02

    .line 2531
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method private shootSound()V
    .locals 4

    .line 2163
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2166
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 2168
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 2169
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volume=:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 2172
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$raw;->camera_click:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 2173
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$26;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$26;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2182
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_2
    return-void
.end method

.method private showLocalRecordDialog()V
    .locals 7

    .line 2683
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez v0, :cond_0

    .line 2684
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->no_card_record_tip:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_cancel:I

    sget v4, Lcom/jieli/stream/dv/running2/R$string;->dialog_confirm:I

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$32;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$32;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    new-instance v6, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$33;

    invoke-direct {v6, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$33;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    const/4 v1, 0x0

    .line 2697
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setCancelable(Z)V

    .line 2699
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2700
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "No_Card_Record"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showPopupMenu(Landroid/view/View;)V
    .locals 8

    .line 2255
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRtspEnable:Z

    if-eqz p1, :cond_0

    .line 2256
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtspResolutionLevel()I

    move-result p1

    .line 2257
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtspResolutions()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2259
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getStreamResolutionLevel()I

    move-result p1

    .line 2260
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getStreamResolutions()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    .line 2262
    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    goto/16 :goto_3

    .line 2267
    :cond_1
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getCameraLevel(I)I

    move-result v1

    .line 2268
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "levels="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", currentRecordLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", currentLevel====== "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2270
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v0, v5

    .line 2271
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2272
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2273
    iget v7, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->recordStatus:I

    if-eq v7, v2, :cond_2

    if-eq v6, p1, :cond_4

    .line 2275
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v6}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getLevelResId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const/4 v7, 0x2

    if-ne v1, v7, :cond_3

    if-ge v6, v7, :cond_3

    if-eq v6, p1, :cond_4

    .line 2280
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v6}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getLevelResId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    if-ge v1, v7, :cond_4

    if-eq v6, p1, :cond_4

    .line 2284
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v6}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getLevelResId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    return-void

    .line 2263
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string v0, "showPopupMenu <=1"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showVideoUI()V
    .locals 4

    .line 2198
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const-wide/32 v1, 0x34bc0

    .line 2199
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2202
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->iv_record:Landroid/widget/ImageView;

    sget v1, Lcom/jieli/stream/dv/running2/R$mipmap;->icon_record_stop:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2203
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tv_record_time:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->startTime:J

    .line 2205
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2206
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateTimer:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showWaitingDialog()V
    .locals 3

    .line 2043
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2044
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    if-nez v0, :cond_0

    .line 2045
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    const/4 v1, 0x0

    .line 2046
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setCancelable(Z)V

    .line 2047
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->loading:I

    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setNotifyContent(Ljava/lang/String;)V

    .line 2048
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$25;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$25;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->setOnWaitingDialog(Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog$OnWaitingDialog;)V

    .line 2058
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2059
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string v1, "mWaitingDialog show"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWaitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "mLoadingDialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private startDebug()V
    .locals 2

    const/4 v0, 0x0

    .line 2785
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->fps:I

    const/4 v0, 0x1

    .line 2786
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isStartDebug:Z

    .line 2787
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0xa06

    .line 2788
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2790
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    if-nez v0, :cond_1

    .line 2791
    new-instance v0, Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    .line 2792
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mIDebugListener:Lcom/jieli/stream/dv/running2/task/IDebugListener;

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->registerDebugListener(Lcom/jieli/stream/dv/running2/task/IDebugListener;)Z

    .line 2794
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mDebugHelper:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->startDebug()V

    return-void
.end method

.method private startLocalRecording()V
    .locals 3

    .line 2705
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    if-nez v0, :cond_0

    .line 2706
    new-instance v0, Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    .line 2708
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    const/4 v1, 0x1

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$34;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$34;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->prepare(ZLcom/jieli/stream/dv/running2/data/OnRecordStateListener;)V

    return-void
.end method

.method private switchStreamResolution(I)V
    .locals 3

    .line 2307
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->closeRTS()V

    .line 2308
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRtspEnable:Z

    if-eqz v0, :cond_0

    .line 2309
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->saveRtspResolutionLevel(I)V

    .line 2310
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$29;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$29;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2318
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isAdjustResolution:Z

    .line 2319
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->saveStreamResolutionLevel(I)V

    .line 2320
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->showWaitingDialog()V

    :goto_0
    return-void
.end method

.method private syncDeviceState()V
    .locals 4

    .line 2432
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string v1, "syncDeviceState "

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2435
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->recordStatus:I

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRecordState()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2436
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRecordState()I

    move-result v1

    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->recordStatus:I

    .line 2437
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->handlerVideoUI()V

    .line 2439
    :cond_0
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isProjection:Z

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isOpenProjection()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 2440
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isOpenProjection()Z

    move-result v1

    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isProjection:Z

    .line 2441
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->handlerProjectionUI()V

    .line 2443
    :cond_1
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRtVoiceOpen:Z

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isRTVoice()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 2444
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isRTVoice()Z

    move-result v1

    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRtVoiceOpen:Z

    .line 2445
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->handlerRTVoiceUI()V

    .line 2452
    :cond_2
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mCameraType:I

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 2453
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mCameraType:I

    .line 2454
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateDeviceMsg()V

    .line 2455
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    const/16 v1, 0xa02

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2456
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2459
    :cond_3
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateResolutionIcon()V

    .line 2460
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->clearDataAndUpdate()V

    :cond_4
    return-void
.end method

.method private toDeviceGallery()V
    .locals 4

    .line 1733
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInstance()Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getVideosDescription()Ljava/lang/String;

    move-result-object v0

    .line 1734
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1735
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "video_list"

    .line 1736
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x6

    const-string v3, "key_fragment_tag"

    .line 1738
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "key_data"

    .line 1739
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x1025

    .line 1740
    invoke-virtual {p0, v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1742
    :cond_0
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->loading:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private tryToParseData(Ljava/lang/String;)V
    .locals 2

    .line 1508
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1509
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string v0, "tryToParseData: desc is empty!!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1512
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInstance()Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$21;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$21;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->parseJSonData(Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;)V

    return-void
.end method

.method private updateDebug(II)V
    .locals 3

    .line 2811
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 2812
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getHudView()Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2814
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->drop_packet_count:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    .line 2815
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

    .line 2821
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    if-eqz v0, :cond_0

    .line 2822
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getHudView()Lcom/jieli/stream/dv/running2/ui/widget/media/InfoHudViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2824
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

.method private updateDeviceFileList()V
    .locals 4

    .line 1529
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->totalList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1530
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->showWaitingDialog()V

    .line 1532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1533
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->totalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 1535
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->totalList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1537
    :cond_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->totalList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1539
    :goto_0
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->requestVideoThumbnail(Ljava/util/List;)V

    .line 1540
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->countList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1541
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->countList:Ljava/util/List;

    goto :goto_1

    .line 1543
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1544
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->TAG:Ljava/lang/String;

    const-string v2, "updateDeviceFileList 222 ========================================================"

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    :cond_2
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->cancelSaveThread()V

    .line 1549
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->countList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1551
    :goto_1
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->countList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    .line 1560
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->TAG:Ljava/lang/String;

    const-string v1, "updateDeviceFileList: total list is null"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->dismissWaitingDialog()V

    :goto_2
    return-void
.end method

.method private updateDeviceMsg()V
    .locals 4

    .line 1569
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getSearchMode()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1570
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1572
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->getConnectWifiDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1574
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1576
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1577
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1580
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1581
    sget-object v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->WIFI_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->front_view:I

    invoke-virtual {p0, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1583
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 1585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->rear_view:I

    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private updateResolutionIcon()V
    .locals 4

    .line 2665
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRtspEnable:Z

    if-eqz v0, :cond_0

    .line 2666
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtspResolutionLevel()I

    move-result v0

    .line 2667
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtspResolutions()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2669
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getStreamResolutionLevel()I

    move-result v0

    .line 2670
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getStreamResolutions()[Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 2672
    array-length v1, v1

    if-gtz v1, :cond_1

    goto :goto_1

    .line 2678
    :cond_1
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateResolutionIcon currentLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2673
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string v1, "resolutions is null"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private updateResolutionUI(ZII)V
    .locals 3

    .line 2646
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isAdjustResolution:Z

    if-eqz v0, :cond_2

    .line 2647
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

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

    .line 2648
    invoke-static {p2, p3}, Lcom/jieli/stream/dv/running2/util/AppUtils;->adjustRtsResolution(II)I

    move-result p2

    .line 2649
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getCameraLevel(I)I

    move-result p3

    if-eq p2, p3, :cond_1

    if-eqz p1, :cond_0

    .line 2651
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setRearLevel(I)V

    goto :goto_0

    .line 2653
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setFrontLevel(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 2656
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isAdjustResolution:Z

    .line 2657
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->dismissWaitingDialog()V

    .line 2659
    :cond_2
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateResolutionIcon()V

    return-void
.end method

.method private updateTextView()V
    .locals 0

    .line 376
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateDeviceMsg()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 610
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 611
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    .line 612
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 613
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 615
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->collections:Ljava/util/Set;

    .line 616
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->viewWidth:I

    mul-int/lit8 p1, p1, 0x9

    .line 617
    div-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->viewHeight:I

    .line 619
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "rtsp_state"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRtspEnable:Z

    .line 623
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$12;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$12;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRequestRecordState(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 631
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateDeviceFileList()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x1025

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x1027

    if-ne p1, p2, :cond_1

    .line 1483
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mCameraType:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 387
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 388
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0xa02

    const/4 v1, 0x0

    .line 389
    invoke-virtual {p1, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 411
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_video:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mView:Landroid/view/View;

    .line 412
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->video_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    const/4 p2, 0x3

    .line 413
    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setAspectRatio(I)V

    .line 443
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->onPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 444
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 445
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->onCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 448
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mView:Landroid/view/View;

    sget p2, Lcom/jieli/stream/dv/running2/R$id;->ll_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->ll_content:Landroid/widget/FrameLayout;

    .line 449
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mView:Landroid/view/View;

    sget p2, Lcom/jieli/stream/dv/running2/R$id;->ivBroken:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->ivBroken:Landroid/widget/TextView;

    .line 452
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mView:Landroid/view/View;

    sget p2, Lcom/jieli/stream/dv/running2/R$id;->iv_zoom_in:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->iv_zoom_in:Landroid/widget/ImageView;

    .line 453
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$2;

    invoke-direct {p2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mView:Landroid/view/View;

    sget p2, Lcom/jieli/stream/dv/running2/R$id;->iv_zoom_out:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->iv_zoom_out:Landroid/widget/ImageView;

    .line 460
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$3;

    invoke-direct {p2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mView:Landroid/view/View;

    sget p2, Lcom/jieli/stream/dv/running2/R$id;->iv_focus_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->iv_focus_img:Landroid/widget/ImageView;

    .line 467
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mView:Landroid/view/View;

    sget p2, Lcom/jieli/stream/dv/running2/R$id;->iv_zoom_focus:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->iv_zoom_focus:Landroid/widget/ImageView;

    .line 468
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$4;

    invoke-direct {p2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$4;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    new-array p1, p1, [Z

    aput-boolean v0, p1, v0

    .line 479
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mView:Landroid/view/View;

    sget p3, Lcom/jieli/stream/dv/running2/R$id;->iv_record:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->iv_record:Landroid/widget/ImageView;

    .line 480
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mView:Landroid/view/View;

    sget p3, Lcom/jieli/stream/dv/running2/R$id;->tv_record_time:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tv_record_time:Landroid/widget/TextView;

    .line 482
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->iv_record:Landroid/widget/ImageView;

    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$5;

    invoke-direct {p3, p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$5;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;[Z)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mView:Landroid/view/View;

    sget p2, Lcom/jieli/stream/dv/running2/R$id;->iv_picture:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->iv_picture:Landroid/widget/ImageView;

    .line 502
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$6;

    invoke-direct {p2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$6;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mView:Landroid/view/View;

    sget p2, Lcom/jieli/stream/dv/running2/R$id;->iv_resolution:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->iv_resolution:Landroid/widget/ImageView;

    .line 512
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$7;

    invoke-direct {p2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$7;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mView:Landroid/view/View;

    sget p2, Lcom/jieli/stream/dv/running2/R$id;->rc_resolution:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->rc_resolution:Landroidx/recyclerview/widget/RecyclerView;

    .line 520
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 521
    new-instance p1, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;-><init>(Landroid/content/Context;)V

    .line 522
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "640*480"

    .line 523
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p3, "1280*720"

    .line 524
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p3, "1920*1080"

    .line 525
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-virtual {p1, p2}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->setData(Ljava/util/List;)V

    .line 527
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$8;

    invoke-direct {p2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$8;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-virtual {p1, p2}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->setOnClickItem(Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$OnClickItem;)V

    .line 536
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->rc_resolution:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 538
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mView:Landroid/view/View;

    sget p2, Lcom/jieli/stream/dv/running2/R$id;->ll_resolution:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->ll_resolution:Landroid/widget/LinearLayout;

    .line 539
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$9;

    invoke-direct {p2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$9;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mView:Landroid/view/View;

    sget p2, Lcom/jieli/stream/dv/running2/R$id;->back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 547
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$10;

    invoke-direct {p2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$10;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mView:Landroid/view/View;

    sget p2, Lcom/jieli/stream/dv/running2/R$id;->take_photo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->take_photo:Landroid/widget/ImageView;

    .line 554
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$11;

    invoke-direct {p2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$11;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1372
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDestroy()V

    .line 1374
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mAudioManager:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1378
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->release()V

    .line 1379
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mAudioManager:Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    .line 1381
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->intercomManager:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    if-eqz v0, :cond_2

    .line 1382
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->closeClient()V

    .line 1383
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->intercomManager:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    .line 1386
    :cond_2
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->closeRTS()V

    .line 1388
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 1389
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1393
    :cond_3
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->dismissWaitingDialog()V

    .line 1398
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onFrame([BLcom/jieli/lib/dv/control/model/PictureInfo;)V
    .locals 4

    .line 1662
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string v1, "-onFrame- start! "

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1664
    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/model/PictureInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1665
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".AVI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".avi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1666
    :cond_0
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;[BLandroid/os/Handler;)V

    .line 1667
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->collections:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1668
    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->start()V

    goto :goto_0

    .line 1670
    :cond_1
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    if-nez v1, :cond_2

    .line 1671
    new-instance v1, Lcom/jieli/media/codec/FrameCodec;

    invoke-direct {v1}, Lcom/jieli/media/codec/FrameCodec;-><init>()V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    .line 1672
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mOnFrameCodecListener:Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    invoke-virtual {v1, v2}, Lcom/jieli/media/codec/FrameCodec;->setOnFrameCodecListener(Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;)V

    .line 1674
    :cond_2
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-convertToJPG- mediaInfo ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/model/PictureInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/model/PictureInfo;->getWidth()I

    move-result v1

    .line 1676
    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/model/PictureInfo;->getHeight()I

    move-result p2

    if-lez v1, :cond_4

    if-lez p2, :cond_4

    .line 1678
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    invoke-virtual {v2, p1, v1, p2, v0}, Lcom/jieli/media/codec/FrameCodec;->convertToJPG([BIILjava/lang/String;)Z

    move-result p1

    .line 1679
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-convertToJPG- ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1683
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string p2, "onFrame: object is null"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1331
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onPause()V

    .line 1334
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->closeRTS()V

    .line 1335
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->realtimePlayerListener:Lcom/jieli/lib/dv/control/player/OnRealTimeListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->unregisterStreamListener(Lcom/jieli/lib/dv/control/player/IPlayerListener;)V

    .line 1337
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->release()Z

    const/4 v0, 0x0

    .line 1338
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRealtimeStream:Lcom/jieli/lib/dv/control/player/RealtimeStream;

    :cond_0
    return-void
.end method

.method public onRecord([BI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2392
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->intercomManager:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    if-eqz p2, :cond_0

    .line 2393
    invoke-virtual {p2, p1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->send([B)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1285
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onResume()V

    .line 1286
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->initProjection()V

    .line 1287
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInstance()Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1288
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->clearDataAndUpdate()V

    .line 1291
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->onNotifyResponse:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 1293
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1294
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->updateUIFromDev:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1295
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->openRts:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 676
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStart()V

    const/4 v0, 0x0

    .line 677
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isFragmentStop:Z

    .line 678
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->registerBroadcast()V

    return-void
.end method

.method public onState(ILjava/lang/String;)V
    .locals 0

    .line 2400
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->intercomManager:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    if-eqz p1, :cond_0

    .line 2401
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->stopSendDataThread()V

    .line 2403
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 2404
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$31;

    invoke-direct {p2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$31;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1347
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    const/4 v0, 0x1

    .line 1348
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isFragmentStop:Z

    .line 1349
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyBroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1350
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyBroadcastReceiver;

    invoke-virtual {v0, v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1351
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mReceiver:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyBroadcastReceiver;

    .line 1353
    :cond_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->cancelSaveThread()V

    .line 1357
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    if-eqz v0, :cond_1

    .line 1358
    invoke-virtual {v0}, Lcom/jieli/media/codec/FrameCodec;->destroy()Z

    .line 1359
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mFrameCodec:Lcom/jieli/media/codec/FrameCodec;

    .line 1362
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoThumbnail:Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->close()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1363
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tag:Ljava/lang/String;

    const-string v1, "Close Video thumbnail failed"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    :cond_2
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->onNotifyResponse:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 1366
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa02

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1367
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->dismissWaitingDialog()V

    return-void
.end method

.method public showStopLocalRecordingDialog(Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;)V
    .locals 6

    .line 2759
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->recording_will_stop:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->dialog_no:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_yes:I

    new-instance v4, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$35;

    invoke-direct {v4, p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$35;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;)V

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$36;

    invoke-direct {v5, p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$36;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/stream/dv/running2/interfaces/OnClickStateListener;)V

    invoke-static/range {v0 .. v5}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mStopLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    const/4 v0, 0x0

    .line 2777
    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setCancelable(Z)V

    .line 2779
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mStopLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2780
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mStopLocalRecordingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "Stop_local_recording"

    invoke-virtual {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stopLocalRecording()V
    .locals 4

    .line 2745
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    if-eqz v0, :cond_1

    .line 2747
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "avi"

    const-string v2, "jpg"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->aviJpegName:Ljava/lang/String;

    .line 2748
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->firstData:[B

    if-eqz v1, :cond_0

    .line 2749
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->tempCapture:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    invoke-virtual {v2, v1, v0}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->capture([BLjava/lang/String;)V

    .line 2751
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2752
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->close()V

    const/4 v0, 0x0

    .line 2753
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mRecordVideo:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    :cond_1
    const/4 v0, 0x0

    .line 2755
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRecordPrepared:Z

    return-void
.end method

.method public zoom(ZLandroid/view/View;)V
    .locals 5

    .line 569
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 570
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 571
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result p2

    .line 573
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 574
    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWidth:I

    const-string v3, "Scale"

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHeight:I

    if-gez v2, :cond_1

    .line 575
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-Down-,mWidthStart:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mHeightStart:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWidth:I

    .line 577
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHeight:I

    .line 579
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-Down-,mWidthOld:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mHeightOld:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mScale:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mScale:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40800000    # 4.0f

    if-eqz p1, :cond_3

    .line 582
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mScale:F

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mScale:F

    cmpl-float v2, p1, v4

    if-lez v2, :cond_2

    .line 584
    iput v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mScale:F

    goto :goto_0

    :cond_2
    cmpg-float p1, p1, v3

    if-gez p1, :cond_5

    .line 586
    iput v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mScale:F

    goto :goto_0

    .line 590
    :cond_3
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mScale:F

    add-float/2addr p1, v2

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mScale:F

    cmpl-float v2, p1, v4

    if-lez v2, :cond_4

    .line 592
    iput v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mScale:F

    goto :goto_0

    :cond_4
    cmpg-float p1, p1, v3

    if-gez p1, :cond_5

    .line 594
    iput v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mScale:F

    .line 597
    :cond_5
    :goto_0
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWidth:I

    int-to-float p1, p1

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mScale:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 598
    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHeight:I

    int-to-float p1, p1

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mScale:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 600
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setPivotX(F)V

    .line 601
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setPivotY(F)V

    .line 603
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mWidth:I

    int-to-float p2, p2

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mScale:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    const/16 v1, 0x11

    invoke-direct {p1, p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 605
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mVideoView:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-virtual {p2, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
