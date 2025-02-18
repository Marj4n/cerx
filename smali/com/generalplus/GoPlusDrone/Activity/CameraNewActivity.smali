.class public Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;
.super Landroid/app/Activity;
.source "CameraNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$TimeThread;,
        Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$MyTimerTask;,
        Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$ExceptionHandler;
    }
.end annotation


# static fields
.field private static final CAMERA_AMP:I = 0x8

.field private static final CAMERA_AUTO:I = 0x5

.field private static final CAMERA_BACK:I = 0x3

.field private static final CAMERA_FILE:I = 0xa

.field private static final CAMERA_NARROW:I = 0x7

.field private static final CAMERA_PHOTO:I = 0x1

.field private static final CAMERA_SUB:I = 0x4

.field private static final CAMERA_SUM:I = 0x6

.field private static final CAMERA_VEDIO:I = 0x2

.field private static final Msg_btnTip:I = 0x9

.field private static final TAG:Ljava/lang/String; = "ControlFragment"

.field private static bCheckConnectStatus:Z = false

.field private static isDevicePass:Z = true

.field public static isHave:Z = false

.field static isLeft:Z = true

.field static isOff:Z = true

.field static isR:Z = false

.field public static isT:Z = false

.field public static isT2:Z = false

.field static isTime:Z = false

.field static linearLayoutR:Landroid/widget/LinearLayout;

.field static numLeft:I

.field static numRight:I

.field static relativeLayoutR:Landroid/widget/RelativeLayout;

.field static scrollView:Lcom/generalplus/GoPlusDrone/Activity/MHorizontal;

.field public static text:I


# instance fields
.field SendRet:I

.field a:I

.field private buttonW:I

.field data:[B

.field private exitTimer:Ljava/util/Timer;

.field handler:Landroid/os/Handler;

.field private final isDebug:Z

.field private isDelayStopVideo:Z

.field isImgTipShow:Z

.field isS:Z

.field private isTcpStart:Z

.field public isThtead2:Z

.field private ivBroken:Landroid/widget/TextView;

.field private iv_focus_img:Landroid/widget/ImageView;

.field private iv_picture:Landroid/widget/ImageView;

.field private iv_record:Landroid/widget/ImageView;

.field private iv_resolution:Landroid/widget/ImageView;

.field private iv_zoom_focus:Landroid/widget/ImageView;

.field private iv_zoom_in:Landroid/widget/ImageView;

.field private iv_zoom_out:Landroid/widget/ImageView;

.field linearLayout:Landroid/widget/RelativeLayout;

.field private ll_content:Landroid/widget/LinearLayout;

.field private ll_resolution:Landroid/widget/LinearLayout;

.field protected mBtnTest:Landroid/widget/ImageButton;

.field private mDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mInputStream:Ljava/io/InputStream;

.field private mIsStart:Z

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSaveType:I

.field private mSaveVideo:Z

.field private mScale:F

.field private mScreenHigth:I

.field private mScreenWidth:I

.field private mSocket:Ljava/net/Socket;

.field private mStartTime:J

.field private mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

.field private mTcpRecv:Ljava/lang/Thread;

.field private mTcpStart:Ljava/lang/Thread;

.field private mWidth:I

.field private m_CamWrapper:Lgeneralplus/com/GPCamLib/CamWrapper;

.field private m_StatusHandler:Landroid/os/Handler;

.field private m_bPause:Z

.field private m_bShowControlLayout:Z

.field private m_bnHide:Landroid/widget/ImageButton;

.field private m_iControlLayout:I

.field m_iRetry:I

.field private m_rlControlLayout:Landroid/widget/RelativeLayout;

.field private rc_resolution:Landroidx/recyclerview/widget/RecyclerView;

.field private rig:I

.field selectedHeight:I

.field selectedWidth:I

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private shizi2ImageView:Landroid/widget/ImageView;

.field protected startTime:Ljava/lang/Long;

.field private strSaveDirectory:Ljava/lang/String;

.field private take_photo:Landroid/widget/ImageView;

.field timeThread:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$TimeThread;

.field private timer:Ljava/util/Timer;

.field private tv_record_time:Landroid/widget/TextView;

.field protected updateTimer:Ljava/lang/Runnable;

.field x1:F

.field x2:F

.field y1:F

.field y2:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->data:[B

    .line 74
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mBtnTest:Landroid/widget/ImageButton;

    .line 75
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_bnHide:Landroid/widget/ImageButton;

    .line 76
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_rlControlLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 78
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSaveVideo:Z

    .line 79
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mIsStart:Z

    .line 83
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_iControlLayout:I

    .line 84
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_bShowControlLayout:Z

    .line 86
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_bPause:Z

    .line 87
    new-instance v2, Ljava/util/Timer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Z)V

    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->timer:Ljava/util/Timer;

    .line 101
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->take_photo:Landroid/widget/ImageView;

    .line 133
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mTcpStart:Ljava/lang/Thread;

    .line 134
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mTcpRecv:Ljava/lang/Thread;

    .line 135
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSocket:Ljava/net/Socket;

    .line 136
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mInputStream:Ljava/io/InputStream;

    .line 137
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mOutputStream:Ljava/io/OutputStream;

    const-wide/16 v4, 0x0

    .line 145
    iput-wide v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mStartTime:J

    const/16 v2, 0x280

    .line 437
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->selectedWidth:I

    const/16 v2, 0x1e0

    .line 438
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->selectedHeight:I

    const/4 v2, 0x0

    .line 442
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->x1:F

    .line 443
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->x2:F

    .line 444
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->y1:F

    .line 445
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->y2:F

    .line 487
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isDebug:Z

    .line 489
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isTcpStart:Z

    .line 729
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_iRetry:I

    .line 835
    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$15;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$15;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_StatusHandler:Landroid/os/Handler;

    .line 890
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isDelayStopVideo:Z

    .line 977
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->SendRet:I

    .line 1015
    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$18;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$18;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->updateTimer:Ljava/lang/Runnable;

    .line 1090
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->rig:I

    .line 1098
    iput-boolean v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isThtead2:Z

    .line 1113
    iput v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSaveType:I

    .line 1186
    iput-boolean v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isS:Z

    .line 1187
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->a:I

    const/4 v2, -0x1

    .line 1189
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    .line 1190
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1191
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    .line 1498
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isImgTipShow:Z

    .line 1501
    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$21;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$21;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->handler:Landroid/os/Handler;

    .line 1537
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->timeThread:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$TimeThread;

    return-void
.end method

.method static synthetic access$100(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Ljava/io/OutputStream;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mOutputStream:Ljava/io/OutputStream;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mOutputStream:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Ljava/lang/Thread;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mTcpRecv:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mTcpRecv:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 60
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isDevicePass:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0

    .line 60
    sput-boolean p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isDevicePass:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->take_photo:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->iv_record:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Ljava/util/Timer;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;[B)I
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->sendCmd([B)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->setPlayStatus(Z)V

    return-void
.end method

.method static synthetic access$1802(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mIsStart:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isDelayStopVideo:Z

    return p0
.end method

.method static synthetic access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    return p0
.end method

.method static synthetic access$2000(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->tv_record_time:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    return p1
.end method

.method static synthetic access$300(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    return p0
.end method

.method static synthetic access$302(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)F
    .locals 0

    .line 60
    iget p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    return p0
.end method

.method static synthetic access$402(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;F)F
    .locals 0

    .line 60
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    return p1
.end method

.method static synthetic access$500(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->iv_focus_img:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->ll_resolution:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$702(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSaveType:I

    return p1
.end method

.method static synthetic access$800(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Ljava/net/Socket;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSocket:Ljava/net/Socket;

    return-object p0
.end method

.method static synthetic access$802(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$900(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Ljava/io/InputStream;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mInputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$902(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mInputStream:Ljava/io/InputStream;

    return-object p1
.end method

.method public static bytesToHex_HasSpace([BII)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "bytesToHex_HasSpace"

    const-string p1, "Null Bytes!"

    .line 710
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 716
    array-length p2, p0

    sub-int/2addr p2, p1

    :cond_1
    const-string v1, ""

    move v2, p1

    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_3

    .line 719
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 720
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 723
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private checkStopRecode()V
    .locals 2

    .line 126
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSaveVideo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 127
    invoke-direct {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->stopRecode(Z)I

    .line 128
    iget-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSaveVideo:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSaveVideo:Z

    :cond_0
    return-void
.end method

.method private closeTcp()V
    .locals 2

    const-string v0, "Socket"

    const-string v1, "closeTcp!!!"

    .line 686
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mTcpStart:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 688
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mTcpStart:Ljava/lang/Thread;

    goto :goto_0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mTcpStart:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 692
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mTcpRecv:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 693
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 697
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 699
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 701
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 703
    :goto_1
    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSocket:Ljava/net/Socket;

    :cond_2
    return-void
.end method

.method public static getTick()J
    .locals 2

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getTime()Ljava/lang/String;
    .locals 2

    .line 859
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 860
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 861
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initGL2JNIVIEW()V
    .locals 3

    .line 1050
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isOff:Z

    if-nez v0, :cond_0

    .line 1051
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isS:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1053
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isS:Z

    .line 1060
    :cond_0
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isOff:Z

    if-eqz v0, :cond_1

    .line 1064
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScreenWidth:I

    mul-int/lit8 v1, v1, 0x63

    div-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScreenHigth:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1065
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScreenWidth:I

    div-int/lit16 v1, v1, 0xc8

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_1
    return-void
.end method

.method private initOff()V
    .locals 3

    const-string v0, "config"

    const/4 v1, 0x0

    .line 1162
    invoke-virtual {p0, v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "isOff"

    const/4 v2, 0x1

    .line 1163
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isOff:Z

    return-void
.end method

.method private initView()V
    .locals 1

    .line 1116
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScreenWidth:I

    div-int/lit8 v0, v0, 0xd

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->buttonW:I

    return-void
.end method

.method private sendCmd([B)I
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "Socket-sendCmd"

    const-string v0, "\u547d\u4ee4\u4e3a\u7a7a!"

    .line 981
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 984
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->SendRet:I

    .line 986
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$17;

    invoke-direct {v1, p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$17;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1010
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method private setPlayStatus(Z)V
    .locals 1

    .line 814
    sput-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->bCheckConnectStatus:Z

    if-eqz p1, :cond_0

    .line 819
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->ivBroken:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 821
    iget-boolean p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSaveVideo:Z

    goto :goto_0

    .line 827
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->ivBroken:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 828
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->checkStopRecode()V

    :goto_0
    return-void
.end method

.method private stopRecode(Z)I
    .locals 3

    .line 894
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->updateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 898
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->tv_record_time:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->tv_record_time:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->iv_record:Landroid/widget/ImageView;

    sget v1, Lcom/generalplus/GoPlusDrone/R$mipmap;->icon_record:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-nez p1, :cond_1

    .line 902
    iget p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSaveType:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 905
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isDelayStopVideo:Z

    .line 906
    new-instance p1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$16;

    invoke-direct {p1, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$16;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    .line 914
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v1, 0xbb8

    .line 915
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 p1, 0x0

    return p1

    .line 903
    :cond_1
    :goto_0
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStopSaveVideo()I

    move-result p1

    return p1
.end method


# virtual methods
.method protected StreamingOff()V
    .locals 1

    .line 851
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mIsStart:Z

    if-eqz v0, :cond_0

    .line 852
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStop()I

    const/4 v0, 0x0

    .line 853
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mIsStart:Z

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 6

    .line 1030
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->exitTimer:Ljava/util/Timer;

    .line 1031
    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$19;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$19;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x2134

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public littleShow()V
    .locals 6

    const-string v0, "window"

    .line 1215
    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1216
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1217
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1219
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v2}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1220
    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    const-string v4, "Scale"

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    if-gez v3, :cond_1

    .line 1221
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-Up-,mWidthStart:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mHeightStart:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    .line 1223
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    .line 1225
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-Up-,mWidthOld:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mHeightOld:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mScale:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    const v5, 0x3e19999a    # 0.15f

    sub-float/2addr v0, v5

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    .line 1227
    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    float-to-int v0, v5

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-Up-,mWidthNew:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mHeightNew:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setPivotX(F)V

    const-string v0, "onDraw"

    const-string v1, "onDrawonDrawonDraw2222"

    .line 1231
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1233
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v2, v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "onDrawonDrawonDraw3333"

    .line 1234
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$20;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1271
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1278
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1279
    sget v2, Lcom/generalplus/GoPlusDrone/R$id;->btnLeftMenu:I

    if-ne v1, v2, :cond_0

    goto/16 :goto_4

    .line 1282
    :cond_0
    sget v2, Lcom/generalplus/GoPlusDrone/R$id;->btnSwitch:I

    if-ne v1, v2, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 1290
    sput-boolean v3, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isT:Z

    .line 1291
    sput-boolean v3, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isT2:Z

    .line 1293
    invoke-virtual/range {p0 .. p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->finish()V

    goto/16 :goto_4

    :cond_2
    const/4 v2, 0x4

    const/16 v4, 0x12

    if-ne v1, v2, :cond_3

    new-array v1, v4, [B

    .line 1296
    fill-array-data v1, :array_0

    .line 1298
    sget-boolean v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isDevicePass:Z

    if-eqz v2, :cond_15

    .line 1299
    invoke-direct {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->sendCmd([B)I

    goto/16 :goto_4

    :cond_3
    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    new-array v1, v4, [B

    .line 1303
    fill-array-data v1, :array_1

    .line 1304
    sget-boolean v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isDevicePass:Z

    if-eqz v2, :cond_15

    .line 1305
    invoke-direct {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->sendCmd([B)I

    goto/16 :goto_4

    :cond_4
    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    new-array v1, v4, [B

    .line 1309
    fill-array-data v1, :array_2

    .line 1310
    sget-boolean v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isDevicePass:Z

    if-eqz v2, :cond_15

    .line 1311
    invoke-direct {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->sendCmd([B)I

    goto/16 :goto_4

    :cond_5
    const/4 v2, 0x7

    const/16 v4, 0x11

    const-string v5, ",mHeightNew:"

    const/high16 v6, 0x3e800000    # 0.25f

    const-string v7, ",mHeightOld:"

    const-string v8, ",mHeightStart:"

    const-string v9, "window"

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40800000    # 4.0f

    const-string v12, ",mScale:"

    const/4 v13, 0x1

    const/4 v14, 0x2

    const-string v15, "Scale"

    if-ne v1, v2, :cond_b

    .line 1314
    iget v1, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->a:I

    if-gtz v1, :cond_6

    .line 1315
    iput v3, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->a:I

    goto :goto_0

    :cond_6
    sub-int/2addr v1, v13

    .line 1317
    iput v1, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->a:I

    .line 1320
    :goto_0
    invoke-virtual {v0, v9}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1321
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 1322
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1324
    iget-object v3, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v3}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1325
    iget v9, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    if-ltz v9, :cond_7

    iget v9, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    if-gez v9, :cond_8

    .line 1326
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-Down-,mWidthStart:"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iput v2, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    .line 1328
    iput v1, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    .line 1332
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-Down-,mWidthOld:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget v7, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    sub-float/2addr v7, v6

    iput v7, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    cmpl-float v6, v7, v11

    if-lez v6, :cond_9

    .line 1335
    iput v11, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    goto :goto_1

    :cond_9
    cmpg-float v6, v7, v10

    if-gez v6, :cond_a

    .line 1337
    iput v10, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    .line 1339
    :cond_a
    :goto_1
    iget v6, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    int-to-float v6, v6

    iget v7, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1340
    iget v6, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    int-to-float v6, v6

    iget v7, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1341
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-Down-,mWidthNew:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v3, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    div-int/2addr v2, v14

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setPivotX(F)V

    .line 1355
    iget-object v2, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    div-int/2addr v1, v14

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setPivotY(F)V

    .line 1357
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    int-to-float v2, v2

    iget v3, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v5, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v3, v5

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1364
    iget-object v2, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v2, v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_b
    const/16 v2, 0x8

    const/16 v3, 0xa

    if-ne v1, v2, :cond_11

    .line 1384
    iget v1, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->a:I

    if-lt v1, v3, :cond_c

    .line 1385
    iput v3, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->a:I

    goto :goto_2

    :cond_c
    add-int/2addr v1, v13

    .line 1387
    iput v1, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->a:I

    .line 1389
    :goto_2
    invoke-virtual {v0, v9}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1390
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 1391
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1393
    iget-object v3, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v3}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1394
    iget v9, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    if-ltz v9, :cond_d

    iget v9, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    if-gez v9, :cond_e

    .line 1395
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-Up-,mWidthStart:"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iput v2, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    .line 1397
    iput v1, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    .line 1401
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-Up-,mWidthOld:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget v7, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    add-float/2addr v7, v6

    iput v7, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    cmpl-float v6, v7, v11

    if-lez v6, :cond_f

    .line 1404
    iput v11, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    goto :goto_3

    :cond_f
    cmpg-float v6, v7, v10

    if-gez v6, :cond_10

    .line 1406
    iput v10, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    .line 1408
    :cond_10
    :goto_3
    iget v6, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    int-to-float v6, v6

    iget v7, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1409
    iget v6, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    int-to-float v6, v6

    iget v7, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1410
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-Up-,mWidthNew:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget-object v3, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    div-int/2addr v2, v14

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setPivotX(F)V

    .line 1425
    iget-object v2, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    div-int/2addr v1, v14

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setPivotY(F)V

    const-string v1, "onDraw"

    const-string v2, "onDrawonDrawonDraw2222"

    .line 1428
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mWidth:I

    int-to-float v3, v3

    iget v5, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScale:F

    mul-float v3, v3, v5

    float-to-int v3, v3

    iget v6, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mHeight:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v5, v6

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1436
    iget-object v3, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v3, v2}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "onDrawonDrawonDraw3333"

    .line 1437
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_11
    const/16 v2, 0x9

    if-ne v1, v2, :cond_12

    .line 1467
    iget-boolean v1, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isImgTipShow:Z

    xor-int/2addr v1, v13

    iput-boolean v1, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isImgTipShow:Z

    goto :goto_4

    :cond_12
    if-ne v1, v13, :cond_13

    .line 1490
    invoke-virtual/range {p0 .. p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->pressCapture(Landroid/view/View;)V

    goto :goto_4

    :cond_13
    if-ne v1, v14, :cond_14

    .line 1492
    invoke-virtual/range {p0 .. p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->pressRecord(Landroid/view/View;)V

    goto :goto_4

    :cond_14
    if-ne v1, v3, :cond_15

    .line 1494
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->startActivity(Landroid/content/Intent;)V

    :cond_15
    :goto_4
    return-void

    nop

    :array_0
    .array-data 1
        0x47t
        0x50t
        0x53t
        0x4ft
        0x43t
        0x4bt
        0x45t
        0x54t
        0x10t
        0x0t
        0x4t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x47t
        0x50t
        0x53t
        0x4ft
        0x43t
        0x4bt
        0x45t
        0x54t
        0x10t
        0x0t
        0x4t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x47t
        0x50t
        0x53t
        0x4ft
        0x43t
        0x4bt
        0x45t
        0x54t
        0x10t
        0x0t
        0x4t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    sget p1, Lcom/generalplus/GoPlusDrone/R$layout;->camera_activity_new:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->setContentView(I)V

    .line 153
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->getTick()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mStartTime:J

    .line 155
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isImgTipShow:Z

    .line 163
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScreenWidth:I

    .line 164
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mScreenHigth:I

    .line 167
    sput-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isT:Z

    .line 168
    sput-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isT2:Z

    .line 169
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->initView()V

    .line 174
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->data:[B

    if-nez v0, :cond_0

    const v0, 0x384000

    new-array v0, v0, [B

    .line 175
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->data:[B

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->initOff()V

    .line 181
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->initGL2JNIVIEW()V

    .line 186
    sput-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isHave:Z

    .line 187
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->exit()V

    .line 190
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$ExceptionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$ExceptionHandler;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$1;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 192
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_CamWrapper:Lgeneralplus/com/GPCamLib/CamWrapper;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Lgeneralplus/com/GPCamLib/CamWrapper;

    invoke-direct {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;-><init>()V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_CamWrapper:Lgeneralplus/com/GPCamLib/CamWrapper;

    .line 196
    :cond_1
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->surfaceView:I

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    const/4 v1, 0x2

    .line 197
    invoke-virtual {v0, v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setEGLContextClientVersion(I)V

    .line 198
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 200
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setKeepScreenOn(Z)V

    .line 203
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$1;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    invoke-virtual {v0, v2}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->ivBroken:I

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->ivBroken:Landroid/widget/TextView;

    .line 213
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->iv_zoom_in:I

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->iv_zoom_in:Landroid/widget/ImageView;

    .line 214
    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$2;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$2;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->iv_zoom_out:I

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->iv_zoom_out:Landroid/widget/ImageView;

    .line 252
    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$3;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->iv_focus_img:I

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->iv_focus_img:Landroid/widget/ImageView;

    .line 299
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->iv_zoom_focus:I

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->iv_zoom_focus:Landroid/widget/ImageView;

    .line 300
    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$4;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$4;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->iv_record:I

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->iv_record:Landroid/widget/ImageView;

    .line 311
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->tv_record_time:I

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->tv_record_time:Landroid/widget/TextView;

    .line 312
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->iv_record:Landroid/widget/ImageView;

    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$5;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$5;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->iv_picture:I

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->iv_picture:Landroid/widget/ImageView;

    .line 320
    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$6;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$6;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    sget v2, Lcom/generalplus/GoPlusDrone/R$id;->iv_resolution:I

    invoke-virtual {p0, v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->iv_resolution:Landroid/widget/ImageView;

    .line 332
    new-instance v3, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$7;

    invoke-direct {v3, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$7;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    sget v2, Lcom/generalplus/GoPlusDrone/R$id;->rc_resolution:I

    invoke-virtual {p0, v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->rc_resolution:Landroidx/recyclerview/widget/RecyclerView;

    .line 339
    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;-><init>(Landroid/content/Context;)V

    .line 340
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSaveType:I

    const/16 v3, 0xe

    .line 341
    invoke-virtual {p0, v3}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->textSave(I)V

    .line 342
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->littleShow()V

    const-string v3, "640*480"

    .line 343
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "1280*720"

    .line 344
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "1920*1080"

    .line 345
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {v2, v0}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->setData(Ljava/util/List;)V

    .line 347
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$8;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    invoke-virtual {v2, v0}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->setOnClickItem(Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$OnClickItem;)V

    .line 372
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->rc_resolution:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 373
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->rc_resolution:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 376
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->ll_resolution:I

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->ll_resolution:Landroid/widget/LinearLayout;

    .line 377
    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$9;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$9;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->back:I

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 385
    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$10;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$10;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->take_photo:I

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->take_photo:Landroid/widget/ImageView;

    .line 392
    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$11;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$11;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/MergeCamera/Media"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->strSaveDirectory:Ljava/lang/String;

    .line 401
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 404
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Photo/Screen/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 407
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Video/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 410
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Video/thumbnails/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 413
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSetDebugMessage(Z)I

    .line 414
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_StatusHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->SetViewHandler(Landroid/os/Handler;)V

    .line 417
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    const-string v0, "flags=low_delay"

    invoke-static {v0}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSetDecodeOptions(Ljava/lang/String;)I

    .line 423
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {p1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSetScaleMode(I)I

    .line 433
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->setPlayStatus(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1176
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1178
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStop()I

    const/4 v0, 0x0

    .line 1181
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isThtead2:Z

    .line 1182
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1580
    sput-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isT:Z

    .line 1581
    sput-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isT2:Z

    .line 1584
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->finish()V

    return p1

    .line 1587
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 5

    .line 1595
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 1598
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isTcpStart:Z

    .line 1599
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->closeTcp()V

    const/4 v1, 0x1

    .line 1601
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_bPause:Z

    .line 1602
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->checkStopRecode()V

    .line 1604
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->timer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 1605
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    const/4 v2, 0x0

    .line 1606
    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->timer:Ljava/util/Timer;

    .line 1608
    :cond_0
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->StreamingOff()V

    .line 1609
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v2}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->onPause()V

    .line 1612
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraActivity onPause() isR ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isR:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1613
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->rig:I

    .line 1614
    sput-boolean v1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isLeft:Z

    .line 1615
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1616
    sget-boolean v1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isOff:Z

    const-string v2, "isOff"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1617
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1618
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 1127
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1128
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->exit()V

    .line 1129
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->initOff()V

    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 1136
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1139
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->onResume()V

    const/4 v0, 0x0

    .line 1140
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_bPause:Z

    const/4 v0, 0x1

    .line 1142
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isTcpStart:Z

    const-string v1, "\u521b\u5efa\u5f00\u59cb"

    .line 1143
    invoke-virtual {p0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->startTcp(Ljava/lang/String;)V

    .line 1146
    sget-boolean v1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isDevicePass:Z

    if-eqz v1, :cond_0

    .line 1147
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2, v0}, Ljava/util/Timer;-><init>(Z)V

    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->timer:Ljava/util/Timer;

    .line 1148
    new-instance v3, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$MyTimerTask;

    invoke-direct {v3, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$MyTimerTask;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1168
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    .line 1169
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isThtead2:Z

    .line 1170
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->exitTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1544
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 1545
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->timeThread:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$TimeThread;

    if-eqz p1, :cond_0

    .line 1546
    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$TimeThread;->interrupt()V

    const/4 p1, 0x0

    .line 1547
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->timeThread:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$TimeThread;

    .line 1549
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$22;

    invoke-direct {p2, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$22;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    const-wide/16 v0, 0x14

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1555
    new-instance p1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$TimeThread;

    invoke-direct {p1, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$TimeThread;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->timeThread:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$TimeThread;

    .line 1556
    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$TimeThread;->start()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->x1:F

    .line 453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->y1:F

    .line 455
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->x2:F

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->y2:F

    .line 459
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->y1:F

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    neg-float v1, v1

    .line 463
    :cond_1
    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->x1:F

    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->x2:F

    sub-float/2addr v2, v3

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    neg-float v2, v2

    :cond_2
    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 467
    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->y1:F

    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->y2:F

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    goto :goto_0

    :cond_3
    if-lez v1, :cond_4

    .line 469
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->y2:F

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->y1:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    goto :goto_0

    .line 471
    :cond_4
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->x1:F

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->x2:F

    sub-float/2addr v1, v2

    cmpl-float v0, v1, v0

    .line 484
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pressCapture(Landroid/view/View;)V
    .locals 3

    const-string p1, "ControlFragment"

    const-string v0, "pressCapture"

    .line 876
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    sget-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->bCheckConnectStatus:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "The camera is not connected"

    .line 878
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 881
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Photo/Screen/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 882
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSaveType:I

    invoke-static {p1, v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSaveSnapshot(Ljava/lang/String;I)I

    .line 884
    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->capture_successfully:I

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 886
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public pressHide(Landroid/view/View;)V
    .locals 1

    .line 865
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_rlControlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 866
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_rlControlLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 869
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_rlControlLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 872
    :goto_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_rlControlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_iControlLayout:I

    return-void
.end method

.method public pressRecord(Landroid/view/View;)V
    .locals 10

    const-string p1, "ControlFragment"

    const-string v0, "pressRecord"

    .line 921
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->bCheckConnectStatus:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "The camera is not connected"

    .line 923
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 927
    :cond_0
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_bPause:Z

    if-eqz v0, :cond_1

    return-void

    .line 931
    :cond_1
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSaveVideo:Z

    const/4 v2, 0x1

    const/16 v3, 0x11

    const/16 v4, 0x12

    if-nez v0, :cond_3

    .line 933
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isDelayStopVideo:Z

    if-eqz v0, :cond_2

    .line 934
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isDelayStopVideo:Z

    .line 935
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStopSaveVideo()I

    .line 937
    :cond_2
    sget v0, Lcom/generalplus/GoPlusDrone/R$string;->start_recorder:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 939
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->getTime()Ljava/lang/String;

    move-result-object v0

    .line 940
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/Video/thumbnails/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSaveSnapshot(Ljava/lang/String;I)I

    .line 941
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/Video/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v7, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSaveType:I

    invoke-static {v5, v7}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSaveVideo(Ljava/lang/String;I)I

    move-result v5

    .line 942
    new-instance v7, Landroid/content/Intent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".mp4"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v7, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v7}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->sendBroadcast(Landroid/content/Intent;)V

    new-array v0, v4, [B

    .line 944
    fill-array-data v0, :array_0

    int-to-byte v4, v5

    aput-byte v4, v0, v3

    .line 946
    invoke-direct {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->sendCmd([B)I

    .line 948
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->tv_record_time:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->iv_record:Landroid/widget/ImageView;

    sget v1, Lcom/generalplus/GoPlusDrone/R$mipmap;->icon_record_stop:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 952
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->startTime:Ljava/lang/Long;

    .line 953
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->updateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 954
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->updateTimer:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 956
    :cond_3
    sget v0, Lcom/generalplus/GoPlusDrone/R$string;->stop_recorder:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 958
    invoke-direct {p0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->stopRecode(Z)I

    move-result v0

    new-array v1, v4, [B

    .line 961
    fill-array-data v1, :array_1

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 963
    invoke-direct {p0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->sendCmd([B)I

    .line 967
    :goto_0
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSaveVideo:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mSaveVideo:Z

    const-string v0, "End pressRecord"

    .line 974
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 1
        0x47t
        0x50t
        0x53t
        0x4ft
        0x43t
        0x4bt
        0x45t
        0x54t
        0x10t
        0x0t
        0x4t
        0x1t
        0x3t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x47t
        0x50t
        0x53t
        0x4ft
        0x43t
        0x4bt
        0x45t
        0x54t
        0x10t
        0x0t
        0x4t
        0x1t
        0x3t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public startTcp(Ljava/lang/String;)V
    .locals 4

    .line 493
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->isTcpStart:Z

    const-string v1, ")"

    const-string v2, "ControlFragment"

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartTcp-TcpStoped("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartTcp-SocketThread("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mTcpStart:Ljava/lang/Thread;

    if-eqz p1, :cond_2

    .line 500
    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 501
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mTcpStart:Ljava/lang/Thread;

    goto :goto_0

    .line 503
    :cond_1
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mTcpStart:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 504
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mTcpRecv:Ljava/lang/Thread;

    if-eqz p1, :cond_2

    .line 505
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 510
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$12;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$12;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mTcpStart:Ljava/lang/Thread;

    .line 681
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public textSave(I)V
    .locals 2

    .line 1154
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "text"

    .line 1155
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public tryPlay()V
    .locals 8

    const-string v0, "."

    :try_start_0
    const-string v1, "ControlFragment"

    const-string v2, "StartPlay-try"

    .line 741
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 743
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 745
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 751
    iget-boolean v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mIsStart:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 752
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 757
    :cond_0
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 758
    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    :cond_1
    int-to-long v6, v1

    .line 760
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 762
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {v5}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSetStreaming(Z)I

    .line 764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rtsp://"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".1:8080/?action=camstream"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->getTick()J

    .line 773
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naInitAndPlay(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iput-boolean v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->mIsStart:Z

    .line 777
    :cond_2
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStatus()I

    move-result v0

    sget-object v1, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    invoke-virtual {v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 778
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naPlay()I

    .line 779
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_iRetry:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->m_iRetry:I

    .line 780
    sget-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    invoke-virtual {v0}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStatus()I

    move-result v1

    if-ne v0, v1, :cond_3

    const/4 v4, 0x1

    .line 785
    :cond_3
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$13;

    invoke-direct {v0, p0, v4, v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$13;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;ZLjava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 802
    :cond_4
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$14;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$14;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
