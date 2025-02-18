.class public Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$TimeThread;,
        Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$MyTimerTask;,
        Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$ExceptionHandler;
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

.field public static btnTakeRecorder:Landroid/widget/ImageButton; = null

.field public static imageView:Landroid/widget/ImageView; = null

.field static imgTip:Landroid/widget/ImageView; = null

.field private static isDevicePass:Z = true

.field public static isHave:Z = false

.field static isLeft:Z = true

.field static isOff:Z = true

.field static isR:Z = false

.field public static isT:Z = false

.field public static isT2:Z = false

.field static isTime:Z = false

.field static layout:Landroid/widget/LinearLayout;

.field static linearLayoutR:Landroid/widget/LinearLayout;

.field static numLeft:I

.field static numRight:I

.field static relative:Landroid/widget/RelativeLayout;

.field static relativeLayout:Landroid/widget/RelativeLayout;

.field static relativeLayoutR:Landroid/widget/RelativeLayout;

.field static scrollView:Lcom/generalplus/GoPlusDrone/Activity/MHorizontal;

.field public static text:I


# instance fields
.field SendRet:I

.field a:I

.field private ampButton:Landroid/widget/ImageButton;

.field private autoButton:Landroid/widget/ImageButton;

.field private backButton:Landroid/widget/ImageButton;

.field private btnLeftMenu:Landroid/widget/ImageButton;

.field private btnSnapshot:Landroid/widget/ImageButton;

.field private btnSwitch:Landroid/widget/ImageButton;

.field private btnTip:Landroid/widget/ImageButton;

.field private buttonW:I

.field data:[B

.field private exitTimer:Ljava/util/Timer;

.field private fileButton:Landroid/widget/ImageButton;

.field handler:Landroid/os/Handler;

.field private final isDebug:Z

.field private isDelayStopVideo:Z

.field isImgTipShow:Z

.field isS:Z

.field private isTcpStart:Z

.field public isThtead2:Z

.field linearLayout:Landroid/widget/RelativeLayout;

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

.field private m_ivBroken:Landroid/widget/ImageView;

.field private m_rlControlLayout:Landroid/widget/RelativeLayout;

.field protected m_tvRecordTime:Landroid/widget/TextView;

.field private m_tvSpeed:Landroid/widget/TextView;

.field private modeButton:Landroid/widget/ImageButton;

.field private narrowButton:Landroid/widget/ImageButton;

.field private rig:I

.field rlRightMenu:Landroid/widget/RelativeLayout;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private shizi2ImageView:Landroid/widget/ImageView;

.field protected startTime:Ljava/lang/Long;

.field private strSaveDirectory:Ljava/lang/String;

.field private subButton:Landroid/widget/ImageButton;

.field private sumButton:Landroid/widget/ImageButton;

.field private textMenu12:Landroid/widget/TextView;

.field private textMenu13:Landroid/widget/TextView;

.field private textMenu14:Landroid/widget/TextView;

.field timeThread:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$TimeThread;

.field private timer:Ljava/util/Timer;

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

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->data:[B

    .line 77
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mBtnTest:Landroid/widget/ImageButton;

    .line 78
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_bnHide:Landroid/widget/ImageButton;

    .line 79
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_rlControlLayout:Landroid/widget/RelativeLayout;

    .line 80
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_tvRecordTime:Landroid/widget/TextView;

    .line 81
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_ivBroken:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 83
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSaveVideo:Z

    .line 84
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mIsStart:Z

    .line 88
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_iControlLayout:I

    .line 89
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_bShowControlLayout:Z

    .line 91
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_bPause:Z

    .line 92
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_tvSpeed:Landroid/widget/TextView;

    .line 93
    new-instance v2, Ljava/util/Timer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Z)V

    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->timer:Ljava/util/Timer;

    .line 123
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mTcpStart:Ljava/lang/Thread;

    .line 124
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mTcpRecv:Ljava/lang/Thread;

    .line 125
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSocket:Ljava/net/Socket;

    .line 126
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mInputStream:Ljava/io/InputStream;

    .line 127
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mOutputStream:Ljava/io/OutputStream;

    .line 130
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->rlRightMenu:Landroid/widget/RelativeLayout;

    const-wide/16 v4, 0x0

    .line 137
    iput-wide v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mStartTime:J

    const/4 v2, 0x0

    .line 331
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->x1:F

    .line 332
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->x2:F

    .line 333
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->y1:F

    .line 334
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->y2:F

    .line 374
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isDebug:Z

    .line 376
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isTcpStart:Z

    .line 612
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_iRetry:I

    .line 719
    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$8;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$8;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V

    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_StatusHandler:Landroid/os/Handler;

    .line 773
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isDelayStopVideo:Z

    .line 854
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->SendRet:I

    .line 891
    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$11;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$11;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V

    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->updateTimer:Ljava/lang/Runnable;

    .line 970
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->rig:I

    .line 1072
    iput-boolean v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isThtead2:Z

    const/4 v2, 0x3

    .line 1091
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSaveType:I

    .line 1354
    iput-boolean v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isS:Z

    .line 1355
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->a:I

    const/4 v2, -0x1

    .line 1357
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    .line 1358
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1359
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    .line 1694
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isImgTipShow:Z

    .line 1697
    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$15;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$15;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->handler:Landroid/os/Handler;

    .line 1732
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->timeThread:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$TimeThread;

    return-void
.end method

.method static synthetic access$002(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSaveType:I

    return p1
.end method

.method static synthetic access$1000(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_tvSpeed:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->setPlayStatus(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mIsStart:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isDelayStopVideo:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    return p0
.end method

.method static synthetic access$1500(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    return p0
.end method

.method static synthetic access$1602(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    return p1
.end method

.method static synthetic access$1700(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    return p0
.end method

.method static synthetic access$1702(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    return p1
.end method

.method static synthetic access$1800(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)F
    .locals 0

    .line 57
    iget p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    return p0
.end method

.method static synthetic access$1802(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;F)F
    .locals 0

    .line 57
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    return p1
.end method

.method static synthetic access$1900(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnLeftMenu:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/net/Socket;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSocket:Ljava/net/Socket;

    return-object p0
.end method

.method static synthetic access$202(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$300(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/io/InputStream;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mInputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$302(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mInputStream:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$400(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/io/OutputStream;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mOutputStream:Ljava/io/OutputStream;

    return-object p0
.end method

.method static synthetic access$402(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mOutputStream:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$500(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/lang/Thread;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mTcpRecv:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$502(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mTcpRecv:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isDevicePass:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .line 57
    sput-boolean p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isDevicePass:Z

    return p0
.end method

.method static synthetic access$700(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnSnapshot:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$800(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Ljava/util/Timer;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$802(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;[B)I
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->sendCmd([B)I

    move-result p0

    return p0
.end method

.method public static bytesToHex_HasSpace([BII)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "bytesToHex_HasSpace"

    const-string p1, "Null Bytes!"

    .line 593
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 599
    array-length p2, p0

    sub-int/2addr p2, p1

    :cond_1
    const-string v1, ""

    move v2, p1

    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_3

    .line 602
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 603
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 606
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

    .line 117
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSaveVideo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 118
    invoke-direct {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->stopRecode(Z)I

    .line 119
    iget-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSaveVideo:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSaveVideo:Z

    :cond_0
    return-void
.end method

.method private closeTcp()V
    .locals 2

    const-string v0, "Socket"

    const-string v1, "closeTcp!!!"

    .line 569
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mTcpStart:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 571
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mTcpStart:Ljava/lang/Thread;

    goto :goto_0

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mTcpStart:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 575
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mTcpRecv:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 580
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 582
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 584
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 586
    :goto_1
    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSocket:Ljava/net/Socket;

    :cond_2
    return-void
.end method

.method public static getTick()J
    .locals 2

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getTime()Ljava/lang/String;
    .locals 2

    .line 746
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 747
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initGL2JNIVIEW()V
    .locals 3

    .line 929
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isOff:Z

    if-nez v0, :cond_0

    .line 930
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isS:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 932
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isS:Z

    .line 939
    :cond_0
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isOff:Z

    if-eqz v0, :cond_1

    .line 940
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->camera_video_dot:I

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->imageView:Landroid/widget/ImageView;

    .line 943
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    mul-int/lit8 v1, v1, 0x63

    div-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenHigth:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 944
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    div-int/lit16 v1, v1, 0xc8

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 946
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->relative:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 948
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnSwitch:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnSwitch:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initOff()V
    .locals 3

    const-string v0, "config"

    const/4 v1, 0x0

    .line 1330
    invoke-virtual {p0, v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "isOff"

    const/4 v2, 0x1

    .line 1331
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isOff:Z

    return-void
.end method

.method private initView()V
    .locals 3

    .line 1094
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    div-int/lit8 v0, v0, 0xd

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->buttonW:I

    .line 1095
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->buttonW:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1096
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->backButton:Landroid/widget/ImageButton;

    .line 1097
    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->back_button:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1098
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->backButton:Landroid/widget/ImageButton;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 1099
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1100
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1102
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->buttonW:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1103
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x1e

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1104
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->subButton:Landroid/widget/ImageButton;

    .line 1105
    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->sub_button:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1106
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->subButton:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 1107
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->subButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1108
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->subButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1110
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->buttonW:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1111
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->autoButton:Landroid/widget/ImageButton;

    .line 1112
    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->auto_button:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1113
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->autoButton:Landroid/widget/ImageButton;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 1114
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->autoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1115
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->autoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1117
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->buttonW:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1118
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->sumButton:Landroid/widget/ImageButton;

    .line 1119
    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->sum_button:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1120
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->sumButton:Landroid/widget/ImageButton;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 1121
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->sumButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1122
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->sumButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1124
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->buttonW:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1125
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x1e

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1126
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->narrowButton:Landroid/widget/ImageButton;

    .line 1127
    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->narrow_button:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1128
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->narrowButton:Landroid/widget/ImageButton;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 1129
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->narrowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->narrowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1132
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->buttonW:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1133
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->ampButton:Landroid/widget/ImageButton;

    .line 1134
    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->amp_button:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1135
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->ampButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 1136
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->ampButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1137
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->ampButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1139
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->buttonW:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1140
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x1e

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1141
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnTip:Landroid/widget/ImageButton;

    .line 1142
    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->btntip:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1143
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnTip:Landroid/widget/ImageButton;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 1144
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnTip:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1145
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnTip:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1147
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->buttonW:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1148
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x1e

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1149
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnSnapshot:Landroid/widget/ImageButton;

    .line 1150
    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->photo_button:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1151
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnSnapshot:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 1152
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnSnapshot:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1153
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnSnapshot:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1155
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->buttonW:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1156
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x1e

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1157
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnTakeRecorder:Landroid/widget/ImageButton;

    .line 1158
    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->vedio_button:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1159
    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnTakeRecorder:Landroid/widget/ImageButton;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 1160
    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnTakeRecorder:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1161
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->layout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnTakeRecorder:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1163
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->buttonW:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1164
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x1e

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1165
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->fileButton:Landroid/widget/ImageButton;

    .line 1166
    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->file_button:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1167
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->fileButton:Landroid/widget/ImageButton;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 1168
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->fileButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1169
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->fileButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private rightView()V
    .locals 10

    .line 977
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isLeft:Z

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    .line 978
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->rig:I

    if-ne v0, v3, :cond_0

    .line 979
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->linearLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 980
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 988
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    iget v6, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenHigth:I

    invoke-direct {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 989
    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    div-int/2addr v5, v4

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 992
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->relative:Landroid/widget/RelativeLayout;

    sget-object v5, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 994
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->imageView:Landroid/widget/ImageView;

    .line 995
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    div-int/lit8 v6, v5, 0x1e

    div-int/lit8 v5, v5, 0x1e

    invoke-direct {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 996
    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    mul-int/lit8 v5, v5, 0x10

    div-int/lit8 v5, v5, 0x1e

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 997
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x1e

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 998
    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->imageView:Landroid/widget/ImageView;

    sget v5, Lcom/generalplus/GoPlusDrone/R$drawable;->cicle:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 999
    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1000
    sget-object v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->relative:Landroid/widget/RelativeLayout;

    sget-object v5, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1003
    iput v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->rig:I

    goto :goto_0

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->linearLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 1007
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1010
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenHigth:I

    invoke-direct {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1011
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->linearLayout:Landroid/widget/RelativeLayout;

    .line 1012
    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1013
    sget-object v5, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->relative:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->linearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenHigth:I

    const/4 v6, -0x2

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1016
    new-instance v5, Lcom/generalplus/GoPlusDrone/Activity/MHorizontal;

    invoke-direct {v5, p0}, Lcom/generalplus/GoPlusDrone/Activity/MHorizontal;-><init>(Landroid/content/Context;)V

    .line 1017
    iget-object v7, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->linearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1018
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$13;

    invoke-direct {v7, p0, v5}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$13;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Lcom/generalplus/GoPlusDrone/Activity/MHorizontal;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1025
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    iget v8, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenHigth:I

    invoke-direct {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1026
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1027
    invoke-virtual {v5, v7, v0}, Lcom/generalplus/GoPlusDrone/Activity/MHorizontal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1032
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenHigth:I

    invoke-direct {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xb

    .line 1033
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1034
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1035
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1036
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1037
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->linearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    :cond_3
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    div-int/lit8 v3, v1, 0x4

    div-int/2addr v1, v4

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1043
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1044
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenHigth:I

    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    div-int/2addr v3, v4

    sub-int/2addr v1, v3

    if-gez v1, :cond_4

    rsub-int/lit8 v1, v1, 0x0

    .line 1048
    :cond_4
    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1049
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->shizi2ImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 1050
    iget-boolean v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isS:Z

    if-nez v3, :cond_5

    .line 1051
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    const/4 v1, 0x0

    .line 1053
    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->shizi2ImageView:Landroid/widget/ImageView;

    .line 1055
    :cond_6
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->shizi2ImageView:Landroid/widget/ImageView;

    .line 1056
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1057
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->shizi2ImageView:Landroid/widget/ImageView;

    sget v1, Lcom/generalplus/GoPlusDrone/R$drawable;->shizi:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1058
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->shizi2ImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1059
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isS:Z

    if-nez v0, :cond_7

    .line 1060
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->shizi2ImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1062
    :cond_7
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->shizi2ImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1064
    :goto_1
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->relative:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->shizi2ImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private sendCmd([B)I
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "Socket-sendCmd"

    const-string v0, "\u547d\u4ee4\u4e3a\u7a7a!"

    .line 857
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 860
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->SendRet:I

    .line 862
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$10;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 886
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method private setPlayStatus(Z)V
    .locals 1

    .line 698
    sput-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->bCheckConnectStatus:Z

    if-eqz p1, :cond_0

    .line 702
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_ivBroken:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 704
    iget-boolean p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSaveVideo:Z

    goto :goto_0

    .line 712
    :cond_0
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->checkStopRecode()V

    .line 713
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_ivBroken:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private smode()V
    .locals 0

    return-void
.end method

.method private stopRecode(Z)I
    .locals 3

    .line 776
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->updateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 777
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_tvRecordTime:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_tvRecordTime:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    .line 780
    iget p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSaveType:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 783
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isDelayStopVideo:Z

    .line 784
    new-instance p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$9;

    invoke-direct {p1, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$9;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V

    .line 792
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v1, 0xbb8

    .line 793
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 p1, 0x0

    return p1

    .line 781
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

    .line 739
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mIsStart:Z

    if-eqz v0, :cond_0

    .line 740
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStop()I

    const/4 v0, 0x0

    .line 741
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mIsStart:Z

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 6

    .line 909
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->exitTimer:Ljava/util/Timer;

    .line 910
    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$12;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$12;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x2134

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public littleShow()V
    .locals 6

    const-string v0, "window"

    .line 1384
    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1385
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1386
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1388
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v2}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1389
    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    const-string v4, "Scale"

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    if-gez v3, :cond_1

    .line 1390
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-Up-,mWidthStart:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mHeightStart:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    .line 1392
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    .line 1394
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-Up-,mWidthOld:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mHeightOld:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mScale:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    const v5, 0x3e19999a    # 0.15f

    sub-float/2addr v0, v5

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    .line 1396
    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    float-to-int v0, v5

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1397
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

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setPivotX(F)V

    const-string v0, "onDraw"

    const-string v1, "onDrawonDrawonDraw2222"

    .line 1400
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1402
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v2, v1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "onDrawonDrawonDraw3333"

    .line 1403
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$14;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1440
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13

    .line 1446
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x11

    const-string v2, ",mHeightNew:"

    const/high16 v3, 0x3e800000    # 0.25f

    const-string v4, ",mHeightOld:"

    const-string v5, ",mHeightStart:"

    const-string v6, "window"

    const/16 v7, 0x12

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40800000    # 4.0f

    const-string v10, ",mScale:"

    const/4 v11, 0x0

    const-string v12, "Scale"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1687
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 1651
    :pswitch_1
    iget-boolean p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isImgTipShow:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isImgTipShow:Z

    if-eqz p1, :cond_0

    .line 1653
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->imgTip:Landroid/widget/ImageView;

    sget v0, Lcom/generalplus/GoPlusDrone/R$drawable;->shizi:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 1655
    :cond_0
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->imgTip:Landroid/widget/ImageView;

    invoke-virtual {p1, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 1566
    :pswitch_2
    iget p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->a:I

    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    .line 1567
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->a:I

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 1569
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->a:I

    .line 1571
    :goto_0
    invoke-virtual {p0, v6}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 1572
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 1573
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    .line 1575
    iget-object v6, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v6}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1576
    iget v7, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    if-gez v7, :cond_3

    .line 1577
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-Up-,mWidthStart:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    .line 1579
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    .line 1583
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-Up-,mWidthOld:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    add-float/2addr v4, v3

    iput v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    cmpl-float v3, v4, v9

    if-lez v3, :cond_4

    .line 1586
    iput v9, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    goto :goto_1

    :cond_4
    cmpg-float v3, v4, v8

    if-gez v3, :cond_5

    .line 1588
    iput v8, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    .line 1590
    :cond_5
    :goto_1
    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1591
    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-Up-,mWidthNew:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setPivotX(F)V

    .line 1607
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setPivotY(F)V

    const-string p1, "onDraw"

    const-string v0, "onDrawonDrawonDraw2222"

    .line 1610
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1618
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v1, v0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "onDrawonDrawonDraw3333"

    .line 1619
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1493
    :pswitch_3
    iget p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->a:I

    if-gtz p1, :cond_6

    .line 1494
    iput v11, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->a:I

    goto :goto_2

    :cond_6
    add-int/lit8 p1, p1, -0x1

    .line 1496
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->a:I

    .line 1499
    :goto_2
    invoke-virtual {p0, v6}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 1500
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 1501
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    .line 1503
    iget-object v6, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v6}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1504
    iget v7, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    if-ltz v7, :cond_7

    iget v7, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    if-gez v7, :cond_8

    .line 1505
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-Down-,mWidthStart:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    .line 1507
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    .line 1511
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-Down-,mWidthOld:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    sub-float/2addr v4, v3

    iput v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    cmpl-float v3, v4, v9

    if-lez v3, :cond_9

    .line 1514
    iput v9, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    goto :goto_3

    :cond_9
    cmpg-float v3, v4, v8

    if-gez v3, :cond_a

    .line 1516
    iput v8, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    .line 1518
    :cond_a
    :goto_3
    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1519
    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-Down-,mWidthNew:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setPivotX(F)V

    .line 1535
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setPivotY(F)V

    .line 1537
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScale:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-direct {p1, v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1544
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v0, p1}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :pswitch_4
    new-array p1, v7, [B

    .line 1486
    fill-array-data p1, :array_0

    .line 1487
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isDevicePass:Z

    if-eqz v0, :cond_b

    .line 1488
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->sendCmd([B)I

    goto :goto_4

    :pswitch_5
    new-array p1, v7, [B

    .line 1478
    fill-array-data p1, :array_1

    .line 1479
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isDevicePass:Z

    if-eqz v0, :cond_b

    .line 1480
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->sendCmd([B)I

    goto :goto_4

    :pswitch_6
    new-array p1, v7, [B

    .line 1469
    fill-array-data p1, :array_2

    .line 1471
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isDevicePass:Z

    if-eqz v0, :cond_b

    .line 1472
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->sendCmd([B)I

    goto :goto_4

    .line 1461
    :pswitch_7
    sput-boolean v11, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isT:Z

    .line 1462
    sput-boolean v11, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isT2:Z

    .line 1464
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->finish()V

    goto :goto_4

    .line 1684
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->pressRecord(Landroid/view/View;)V

    goto :goto_4

    .line 1680
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->pressCapture(Landroid/view/View;)V

    :cond_b
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
        0x3t
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
        0x1t
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    sget p1, Lcom/generalplus/GoPlusDrone/R$layout;->camera_activity:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->setContentView(I)V

    .line 144
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->getTick()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mStartTime:J

    .line 146
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 147
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->btnSwitch:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnSwitch:Landroid/widget/ImageButton;

    .line 148
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->btnLeftMenu:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnLeftMenu:Landroid/widget/ImageButton;

    .line 149
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->linearLayout:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    sput-object p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->layout:Landroid/widget/LinearLayout;

    .line 150
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->relativeLayout:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    sput-object p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 153
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->rlRightMenu:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->rlRightMenu:Landroid/widget/RelativeLayout;

    .line 154
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->textMenu12:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->textMenu12:Landroid/widget/TextView;

    .line 155
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->textMenu13:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->textMenu13:Landroid/widget/TextView;

    .line 156
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->textMenu14:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->textMenu14:Landroid/widget/TextView;

    const/16 p1, 0xc

    .line 157
    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->text(I)V

    .line 160
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->textMenu12:Landroid/widget/TextView;

    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->textMenu13:Landroid/widget/TextView;

    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$2;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->textMenu14:Landroid/widget/TextView;

    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$3;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->imgTip:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sput-object p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->imgTip:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 212
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isImgTipShow:Z

    .line 214
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenWidth:I

    .line 215
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mScreenHigth:I

    .line 217
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->container:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    sput-object p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->relative:Landroid/widget/RelativeLayout;

    .line 218
    sput-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isT:Z

    .line 219
    sput-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isT2:Z

    .line 220
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->initView()V

    .line 224
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnLeftMenu:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnSwitch:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnLeftMenu:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 231
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->subButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->autoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->sumButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->narrowButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->ampButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnTip:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnSnapshot:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnTakeRecorder:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->fileButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->data:[B

    if-nez p1, :cond_0

    const p1, 0x384000

    new-array p1, p1, [B

    .line 244
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->data:[B

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->initOff()V

    .line 250
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->initGL2JNIVIEW()V

    .line 251
    sget-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isR:Z

    if-eqz p1, :cond_1

    .line 252
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    sget-object p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->btnTakeRecorder:Landroid/widget/ImageButton;

    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->videobutton_3:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 257
    :cond_1
    sput-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isHave:Z

    .line 258
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->exit()V

    .line 265
    new-instance p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$ExceptionHandler;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$ExceptionHandler;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$1;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 267
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_CamWrapper:Lgeneralplus/com/GPCamLib/CamWrapper;

    if-nez p1, :cond_2

    .line 268
    new-instance p1, Lgeneralplus/com/GPCamLib/CamWrapper;

    invoke-direct {p1}, Lgeneralplus/com/GPCamLib/CamWrapper;-><init>()V

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_CamWrapper:Lgeneralplus/com/GPCamLib/CamWrapper;

    .line 271
    :cond_2
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->tvRecordTime:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_tvRecordTime:Landroid/widget/TextView;

    .line 272
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->surfaceView:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    const/4 v2, 0x2

    .line 273
    invoke-virtual {p1, v2}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setEGLContextClientVersion(I)V

    .line 274
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 276
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setKeepScreenOn(Z)V

    .line 279
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    new-instance v3, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$4;

    invoke-direct {v3, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$4;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V

    invoke-virtual {p1, v3}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/GoPlus_Drone"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->strSaveDirectory:Ljava/lang/String;

    .line 289
    new-instance p1, Ljava/io/File;

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 292
    new-instance p1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Photo/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 295
    new-instance p1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Video/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 298
    new-instance p1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Video/thumbnails/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 301
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {v2}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSetDebugMessage(Z)I

    .line 302
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    move-result-object p1

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_StatusHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->SetViewHandler(Landroid/os/Handler;)V

    .line 305
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    const-string p1, "flags=low_delay"

    invoke-static {p1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSetDecodeOptions(Ljava/lang/String;)I

    .line 311
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {v0}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSetScaleMode(I)I

    .line 319
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->ivBroken:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_ivBroken:Landroid/widget/ImageView;

    .line 320
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->tvSpeed:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_tvSpeed:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 325
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    invoke-direct {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->setPlayStatus(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1344
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1346
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStop()I

    const/4 v0, 0x0

    .line 1349
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isThtead2:Z

    .line 1350
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1781
    sput-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isT:Z

    .line 1782
    sput-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isT2:Z

    .line 1785
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->finish()V

    return p1

    .line 1788
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 5

    .line 1796
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 1799
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isTcpStart:Z

    .line 1800
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->closeTcp()V

    const/4 v1, 0x1

    .line 1802
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_bPause:Z

    .line 1803
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->checkStopRecode()V

    .line 1805
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->timer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 1806
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    const/4 v2, 0x0

    .line 1807
    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->timer:Ljava/util/Timer;

    .line 1809
    :cond_0
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->StreamingOff()V

    .line 1810
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v2}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->onPause()V

    .line 1813
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraActivity onPause() isR ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isR:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1814
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->rig:I

    .line 1815
    sput-boolean v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isLeft:Z

    .line 1816
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1817
    sget-boolean v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isOff:Z

    const-string v2, "isOff"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1818
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1819
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 1267
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1268
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->exit()V

    .line 1269
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->initOff()V

    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 1281
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1284
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSurfaceView:Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;

    invoke-virtual {v0}, Lcom/generalplus/ffmpegLib/ZoomableSurfaceView;->onResume()V

    const/4 v0, 0x0

    .line 1285
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_bPause:Z

    const/4 v0, 0x1

    .line 1287
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isTcpStart:Z

    const-string v1, "\u521b\u5efa\u5f00\u59cb"

    .line 1288
    invoke-virtual {p0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->startTcp(Ljava/lang/String;)V

    .line 1291
    sget-boolean v1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isDevicePass:Z

    if-eqz v1, :cond_0

    .line 1292
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2, v0}, Ljava/util/Timer;-><init>(Z)V

    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->timer:Ljava/util/Timer;

    .line 1293
    new-instance v3, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$MyTimerTask;

    invoke-direct {v3, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$MyTimerTask;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1336
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    .line 1337
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isThtead2:Z

    .line 1338
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->exitTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1339
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1744
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 1745
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->timeThread:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$TimeThread;

    if-eqz p1, :cond_0

    .line 1746
    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$TimeThread;->interrupt()V

    const/4 p1, 0x0

    .line 1747
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->timeThread:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$TimeThread;

    .line 1749
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$16;

    invoke-direct {p2, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$16;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V

    const-wide/16 v0, 0x14

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1755
    new-instance p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$TimeThread;

    invoke-direct {p1, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$TimeThread;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->timeThread:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$TimeThread;

    .line 1756
    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$TimeThread;->start()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->x1:F

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->y1:F

    .line 343
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->x2:F

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->y2:F

    .line 347
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->y1:F

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    neg-float v1, v1

    .line 351
    :cond_1
    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->x1:F

    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->x2:F

    sub-float/2addr v2, v3

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    neg-float v2, v2

    :cond_2
    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 355
    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->y1:F

    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->y2:F

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    goto :goto_0

    :cond_3
    if-lez v1, :cond_4

    .line 357
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->y2:F

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->y1:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    goto :goto_0

    .line 359
    :cond_4
    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->x1:F

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->x2:F

    sub-float v3, v1, v2

    cmpl-float v3, v3, v0

    if-lez v3, :cond_5

    .line 361
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->rlRightMenu:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_5
    sub-float/2addr v2, v1

    const/16 v1, 0x8

    cmpl-float v0, v2, v0

    if-lez v0, :cond_6

    .line 364
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->rlRightMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 367
    :cond_6
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->rlRightMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->rlRightMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    .line 368
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->rlRightMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 372
    :cond_7
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pressCapture(Landroid/view/View;)V
    .locals 2

    const-string p1, "ControlFragment"

    const-string v0, "pressCapture"

    .line 763
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    sget-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->bCheckConnectStatus:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "The camera is not connected"

    .line 765
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 768
    :cond_0
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Photo/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSaveType:I

    invoke-static {p1, v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSaveSnapshot(Ljava/lang/String;I)I

    .line 770
    sget p1, Lcom/generalplus/GoPlusDrone/R$string;->capture_successfully:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public pressHide(Landroid/view/View;)V
    .locals 1

    .line 751
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_rlControlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 752
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_rlControlLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 756
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_rlControlLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 759
    :goto_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_rlControlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_iControlLayout:I

    return-void
.end method

.method public pressRecord(Landroid/view/View;)V
    .locals 7

    const-string p1, "ControlFragment"

    const-string v0, "pressRecord"

    .line 799
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    sget-boolean v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->bCheckConnectStatus:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "The camera is not connected"

    .line 801
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 805
    :cond_0
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_bPause:Z

    if-eqz v0, :cond_1

    return-void

    .line 809
    :cond_1
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSaveVideo:Z

    const/4 v2, 0x1

    const/16 v3, 0x11

    const/16 v4, 0x12

    if-nez v0, :cond_3

    .line 811
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isDelayStopVideo:Z

    if-eqz v0, :cond_2

    .line 812
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isDelayStopVideo:Z

    .line 813
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStopSaveVideo()I

    .line 816
    :cond_2
    sget v0, Lcom/generalplus/GoPlusDrone/R$string;->start_recorder:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 818
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->getTime()Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/Video/thumbnails/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSaveSnapshot(Ljava/lang/String;I)I

    .line 820
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/Video/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSaveType:I

    invoke-static {v0, v5}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSaveVideo(Ljava/lang/String;I)I

    move-result v0

    new-array v4, v4, [B

    .line 823
    fill-array-data v4, :array_0

    int-to-byte v0, v0

    aput-byte v0, v4, v3

    .line 825
    invoke-direct {p0, v4}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->sendCmd([B)I

    .line 828
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_tvRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 829
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->startTime:Ljava/lang/Long;

    .line 830
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->updateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 831
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->updateTimer:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 834
    :cond_3
    sget v0, Lcom/generalplus/GoPlusDrone/R$string;->stop_recorder:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 836
    invoke-direct {p0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->stopRecode(Z)I

    move-result v0

    new-array v1, v4, [B

    .line 839
    fill-array-data v1, :array_1

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 841
    invoke-direct {p0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->sendCmd([B)I

    .line 845
    :goto_0
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSaveVideo:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mSaveVideo:Z

    const-string v0, "End pressRecord"

    .line 852
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 379
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->isTcpStart:Z

    const-string v1, ")"

    const-string v2, "ControlFragment"

    if-nez v0, :cond_0

    .line 380
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

    .line 383
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

    .line 385
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mTcpStart:Ljava/lang/Thread;

    if-eqz p1, :cond_2

    .line 386
    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 387
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mTcpStart:Ljava/lang/Thread;

    goto :goto_0

    .line 389
    :cond_1
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mTcpStart:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 390
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mTcpRecv:Ljava/lang/Thread;

    if-eqz p1, :cond_2

    .line 391
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 396
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$5;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mTcpStart:Ljava/lang/Thread;

    .line 565
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public text(I)V
    .locals 2

    const v0, -0xa9a9aa

    const v1, -0x282018

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1319
    :pswitch_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->textMenu12:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1320
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->textMenu13:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1321
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->textMenu14:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 1313
    :pswitch_1
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->textMenu12:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1314
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->textMenu13:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1315
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->textMenu14:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 1308
    :pswitch_2
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->textMenu12:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1309
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->textMenu13:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1310
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->textMenu14:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public textSave(I)V
    .locals 2

    .line 1299
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "text"

    .line 1300
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public tryPlay()V
    .locals 8

    const-string v0, "."

    :try_start_0
    const-string v1, "ControlFragment"

    const-string v2, "StartPlay-try"

    .line 622
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 624
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 626
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 632
    iget-boolean v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mIsStart:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 633
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 638
    :cond_0
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 639
    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    :cond_1
    int-to-long v6, v1

    .line 641
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 643
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {v5}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSetStreaming(Z)I

    .line 645
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

    .line 653
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->getTick()J

    .line 654
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naInitAndPlay(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iput-boolean v5, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->mIsStart:Z

    .line 658
    :cond_2
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStatus()I

    move-result v0

    sget-object v1, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    invoke-virtual {v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 660
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naPlay()I

    .line 661
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_iRetry:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_iRetry:I

    .line 662
    sget-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    invoke-virtual {v0}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStatus()I

    move-result v1

    if-ne v0, v1, :cond_3

    const/4 v4, 0x1

    .line 667
    :cond_3
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$6;

    invoke-direct {v0, p0, v4, v2}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$6;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;ZLjava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 685
    :cond_4
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$7;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$7;-><init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V

    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
