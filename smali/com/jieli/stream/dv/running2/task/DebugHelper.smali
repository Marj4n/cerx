.class public Lcom/jieli/stream/dv/running2/task/DebugHelper;
.super Ljava/lang/Object;
.source "DebugHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;,
        Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;
    }
.end annotation


# static fields
.field private static final DEBUG_PACKET_FLAG:Ljava/lang/String; = "MSSDP_NOTIFY "

.field private static final DEBUG_PORT:I = 0xf31

.field private static final DEBUG_RESULT_FLAG:Ljava/lang/String; = "UX_REPORT"

.field private static final DEBUG_SEND_FLAG:Ljava/lang/String; = "UX_DATA"

.field private static final DEBUG_START_FLAG:Ljava/lang/String; = "UX_SEND_LEN"

.field public static final ERROR_DATA_EXCEPTION:I = 0x3

.field public static final ERROR_NETWORK_EXCEPTION:I = 0x2

.field public static final ERROR_UDP_UNINIT:I = 0x1

.field private static lastTimeStamp:J

.field private static lastTotalRxBytes:J

.field private static mSeq:I

.field private static final tag:Ljava/lang/String;


# instance fields
.field private mBroadCastIP:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIDebugListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/jieli/stream/dv/running2/task/IDebugListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPort:I

.field private mReceiveThread:Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;

.field private mSendThread:Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;

.field private mSocket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-class v0, Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->tag:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 377
    sput-wide v0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->lastTotalRxBytes:J

    .line 378
    sput-wide v0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->lastTimeStamp:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf31

    .line 28
    iput v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mPort:I

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/jieli/stream/dv/running2/task/DebugHelper;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mPort:I

    return p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/task/DebugHelper;)Ljava/util/HashSet;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mIDebugListeners:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/task/DebugHelper;I)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->code2Msg(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/task/DebugHelper;ILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->notifyErrorEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/task/DebugHelper;Ljava/lang/String;II)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->notifyDebugStart(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/task/DebugHelper;II)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->notifyDebugResult(II)V

    return-void
.end method

.method static synthetic access$900()I
    .locals 1

    .line 19
    sget v0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSeq:I

    return v0
.end method

.method static synthetic access$908()I
    .locals 2

    .line 19
    sget v0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSeq:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSeq:I

    return v0
.end method

.method private closeUDPClient()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    :cond_1
    return-void
.end method

.method private code2Msg(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "receive data is error."

    goto :goto_0

    :cond_1
    const-string p1, "network error."

    goto :goto_0

    :cond_2
    const-string p1, "udp socket init failed."

    :goto_0
    return-object p1
.end method

.method private createUDPClient()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    .line 78
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    iget v1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mPort:I

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 80
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    :cond_0
    :goto_0
    return-void
.end method

.method public static getNetSpeed(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 390
    invoke-static {p0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->getTotalRxBytes(Landroid/content/Context;)J

    move-result-wide v0

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 392
    sget-wide v4, Lcom/jieli/stream/dv/running2/task/DebugHelper;->lastTotalRxBytes:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    sget-wide v6, Lcom/jieli/stream/dv/running2/task/DebugHelper;->lastTimeStamp:J

    sub-long v6, v2, v6

    div-long/2addr v4, v6

    .line 393
    sput-wide v2, Lcom/jieli/stream/dv/running2/task/DebugHelper;->lastTimeStamp:J

    .line 394
    sput-wide v0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->lastTotalRxBytes:J

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTotalRxBytes(Landroid/content/Context;)J
    .locals 4

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private notifyDebugResult(II)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 133
    new-instance v1, Lcom/jieli/stream/dv/running2/task/DebugHelper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/jieli/stream/dv/running2/task/DebugHelper$2;-><init>(Lcom/jieli/stream/dv/running2/task/DebugHelper;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyDebugStart(Ljava/lang/String;II)V
    .locals 2

    .line 114
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mBroadCastIP:Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->startSendThread(Ljava/lang/String;II)V

    .line 116
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 117
    new-instance v1, Lcom/jieli/stream/dv/running2/task/DebugHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/task/DebugHelper$1;-><init>(Lcom/jieli/stream/dv/running2/task/DebugHelper;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyErrorEvent(ILjava/lang/String;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 149
    new-instance v1, Lcom/jieli/stream/dv/running2/task/DebugHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/jieli/stream/dv/running2/task/DebugHelper$3;-><init>(Lcom/jieli/stream/dv/running2/task/DebugHelper;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private startRecvThread()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mReceiveThread:Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->access$000(Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    new-instance v0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;-><init>(Lcom/jieli/stream/dv/running2/task/DebugHelper;Ljava/net/DatagramSocket;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mReceiveThread:Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;

    .line 100
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->start()V

    :cond_1
    return-void
.end method

.method private startSendThread(Ljava/lang/String;II)V
    .locals 7

    .line 276
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSendThread:Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->access$800(Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    :cond_0
    new-instance v0, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSocket:Ljava/net/DatagramSocket;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;-><init>(Lcom/jieli/stream/dv/running2/task/DebugHelper;Ljava/net/DatagramSocket;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSendThread:Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;

    .line 278
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->start()V

    :cond_1
    return-void
.end method

.method private stopRecvThread()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mReceiveThread:Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;

    if-eqz v0, :cond_1

    .line 106
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->access$000(Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mReceiveThread:Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->access$100(Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;)V

    :cond_0
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mReceiveThread:Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;

    :cond_1
    return-void
.end method

.method private stopSendThread()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSendThread:Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;

    if-eqz v0, :cond_1

    .line 284
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->access$800(Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSendThread:Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;->stopThread()V

    :cond_0
    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mSendThread:Lcom/jieli/stream/dv/running2/task/DebugHelper$SendThread;

    :cond_1
    return-void
.end method


# virtual methods
.method public closeDebug()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->stopSendThread()V

    .line 56
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->stopRecvThread()V

    .line 57
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->closeUDPClient()V

    .line 58
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mIDebugListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mIDebugListeners:Ljava/util/HashSet;

    :cond_0
    return-void
.end method

.method public registerDebugListener(Lcom/jieli/stream/dv/running2/task/IDebugListener;)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mIDebugListeners:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mIDebugListeners:Ljava/util/HashSet;

    :cond_0
    if-eqz p1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mIDebugListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public startDebug()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->createUDPClient()V

    .line 51
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->startRecvThread()V

    return-void
.end method

.method public unregisterDebugListener(Lcom/jieli/stream/dv/running2/task/IDebugListener;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper;->mIDebugListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
