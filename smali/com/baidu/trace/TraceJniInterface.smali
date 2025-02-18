.class public final Lcom/baidu/trace/TraceJniInterface;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/baidu/trace/TraceJniInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/baidu/trace/TraceJniInterface;

    invoke-direct {v0}, Lcom/baidu/trace/TraceJniInterface;-><init>()V

    sput-object v0, Lcom/baidu/trace/TraceJniInterface;->a:Lcom/baidu/trace/TraceJniInterface;

    invoke-static {}, Lcom/baidu/trace/av;->a()Lcom/baidu/trace/av;

    move-result-object v0

    const-string v1, "BaiduTraceSDK_v3_0_7"

    invoke-virtual {v0, v1}, Lcom/baidu/trace/av;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a()Lcom/baidu/trace/TraceJniInterface;
    .locals 1

    sget-object v0, Lcom/baidu/trace/TraceJniInterface;->a:Lcom/baidu/trace/TraceJniInterface;

    return-object v0
.end method

.method public static native clearTrackData()V
.end method

.method public static native gcjToBaidu(DD)[D
.end method

.method public static native processTrackPoint(DDDJI)[D
.end method

.method public static native wgsToBaidu(DD)[D
.end method


# virtual methods
.method protected final native addAttributeData([B[B)V
.end method

.method protected final native addCustomData([B[B)V
.end method

.method protected final native addNearbyCell(II)V
.end method

.method protected final native addWifiData([BB[BB)V
.end method

.method protected final native buildHeartbeatData()[B
.end method

.method protected final native buildLocationData(I)[B
.end method

.method protected final native buildRequestProtocolData(SI)[B
.end method

.method protected final native clearAttributeData()V
.end method

.method protected final native clearBluetoothData()V
.end method

.method protected final native clearCustomData()V
.end method

.method protected final native clearNearbyCells()V
.end method

.method protected final native clearWifiData()V
.end method

.method protected final native parseResponseProtocolData([B)[B
.end method

.method protected final native setAppInfo([B[BJ[B[B)V
.end method

.method protected final native setCellData(BBSSII)V
.end method

.method protected final native setDeviceInfo([B[B[B[B[B[B[B[B)V
.end method

.method protected final native setGPSData(BSBSSII)V
.end method

.method protected final native setPackData(B[B)V
.end method

.method protected final native setPushResult(IB)V
.end method

.method protected final native socketDisconnection()V
.end method
