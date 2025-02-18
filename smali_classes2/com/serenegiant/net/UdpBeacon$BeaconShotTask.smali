.class final Lcom/serenegiant/net/UdpBeacon$BeaconShotTask;
.super Ljava/lang/Object;
.source "UdpBeacon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/net/UdpBeacon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BeaconShotTask"
.end annotation


# instance fields
.field private final shotNums:I

.field final synthetic this$0:Lcom/serenegiant/net/UdpBeacon;


# direct methods
.method public constructor <init>(Lcom/serenegiant/net/UdpBeacon;I)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/serenegiant/net/UdpBeacon$BeaconShotTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p2, p0, Lcom/serenegiant/net/UdpBeacon$BeaconShotTask;->shotNums:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 462
    :try_start_0
    new-instance v0, Lcom/serenegiant/net/UdpSocket;

    const/16 v1, 0x270f

    invoke-direct {v0, v1}, Lcom/serenegiant/net/UdpSocket;-><init>(I)V

    const/4 v1, 0x1

    .line 463
    invoke-virtual {v0, v1}, Lcom/serenegiant/net/UdpSocket;->setReuseAddress(Z)V

    const/16 v1, 0x7d0

    .line 464
    invoke-virtual {v0, v1}, Lcom/serenegiant/net/UdpSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 466
    :goto_0
    :try_start_1
    iget v2, p0, Lcom/serenegiant/net/UdpBeacon$BeaconShotTask;->shotNums:I

    if-ge v1, v2, :cond_2

    .line 467
    iget-object v2, p0, Lcom/serenegiant/net/UdpBeacon$BeaconShotTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v2}, Lcom/serenegiant/net/UdpBeacon;->access$100(Lcom/serenegiant/net/UdpBeacon;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 468
    :cond_0
    iget-object v2, p0, Lcom/serenegiant/net/UdpBeacon$BeaconShotTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v2, v0}, Lcom/serenegiant/net/UdpBeacon;->access$200(Lcom/serenegiant/net/UdpBeacon;Lcom/serenegiant/net/UdpSocket;)V

    .line 469
    iget-object v2, p0, Lcom/serenegiant/net/UdpBeacon$BeaconShotTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    iget-object v3, p0, Lcom/serenegiant/net/UdpBeacon$BeaconShotTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v3}, Lcom/serenegiant/net/UdpBeacon;->access$300(Lcom/serenegiant/net/UdpBeacon;)J

    move-result-wide v3

    invoke-static {v2, p0, v3, v4}, Lcom/serenegiant/net/UdpBeacon;->access$400(Lcom/serenegiant/net/UdpBeacon;Ljava/lang/Object;J)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lcom/serenegiant/net/UdpSocket;->release()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/serenegiant/net/UdpSocket;->release()V

    throw v1
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 477
    iget-object v1, p0, Lcom/serenegiant/net/UdpBeacon$BeaconShotTask;->this$0:Lcom/serenegiant/net/UdpBeacon;

    invoke-static {v1, v0}, Lcom/serenegiant/net/UdpBeacon;->access$500(Lcom/serenegiant/net/UdpBeacon;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method
