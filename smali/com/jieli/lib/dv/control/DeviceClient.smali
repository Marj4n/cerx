.class public Lcom/jieli/lib/dv/control/DeviceClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jieli/lib/dv/control/IClient;


# static fields
.field public static final CAMERA_FRONT_VIEW:I = 0x1

.field public static final CAMERA_REAR_VIEW:I = 0x2

.field public static final DEV_PB_STOP:I = 0x2

.field public static final PROTOCOL_TCP:I = 0x0

.field public static final PROTOCOL_UDP:I = 0x1

.field public static final RTS_H264:I = 0x1

.field public static final RTS_JPEG:I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/jieli/lib/dv/control/IClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/jieli/lib/dv/control/DeviceClient;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/DeviceClient;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 72
    invoke-static {p1}, Lcom/jieli/lib/dv/control/ClientImpl;->getInstance(Landroid/content/Context;)Lcom/jieli/lib/dv/control/IClient;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/lib/dv/control/DeviceClient;->b:Lcom/jieli/lib/dv/control/IClient;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 74
    invoke-static {p1}, Lcom/jieli/lib/dv/control/UDPClientImpl;->getInstance(Landroid/content/Context;)Lcom/jieli/lib/dv/control/IClient;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/lib/dv/control/DeviceClient;->b:Lcom/jieli/lib/dv/control/IClient;

    :goto_0
    return-void

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown protocol "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/jieli/lib/dv/control/DeviceClient;->b:Lcom/jieli/lib/dv/control/IClient;

    invoke-interface {v0}, Lcom/jieli/lib/dv/control/IClient;->close()V

    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->create(Ljava/lang/String;I)V

    return-void
.end method

.method public create(Ljava/lang/String;I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/jieli/lib/dv/control/DeviceClient;->b:Lcom/jieli/lib/dv/control/IClient;

    invoke-interface {v0, p1, p2}, Lcom/jieli/lib/dv/control/IClient;->create(Ljava/lang/String;I)V

    return-void
.end method

.method public disconnect()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/DeviceClient;->close()V

    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/jieli/lib/dv/control/DeviceClient;->b:Lcom/jieli/lib/dv/control/IClient;

    invoke-interface {v0}, Lcom/jieli/lib/dv/control/IClient;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedIP()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/jieli/lib/dv/control/DeviceClient;->b:Lcom/jieli/lib/dv/control/IClient;

    invoke-interface {v0}, Lcom/jieli/lib/dv/control/IClient;->getState()I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/jieli/lib/dv/control/DeviceClient;->b:Lcom/jieli/lib/dv/control/IClient;

    invoke-interface {v0}, Lcom/jieli/lib/dv/control/IClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public registerConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/jieli/lib/dv/control/DeviceClient;->b:Lcom/jieli/lib/dv/control/IClient;

    invoke-interface {v0, p1}, Lcom/jieli/lib/dv/control/IClient;->registerConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    return-void
.end method

.method public registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/jieli/lib/dv/control/DeviceClient;->b:Lcom/jieli/lib/dv/control/IClient;

    invoke-interface {v0, p1}, Lcom/jieli/lib/dv/control/IClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/jieli/lib/dv/control/DeviceClient;->b:Lcom/jieli/lib/dv/control/IClient;

    invoke-interface {v0}, Lcom/jieli/lib/dv/control/IClient;->release()V

    return-void
.end method

.method public send(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 1

    .line 128
    invoke-static {p2}, Lcom/jieli/lib/dv/control/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/lib/dv/control/connect/response/SendResponse;

    .line 129
    iget-object v0, p0, Lcom/jieli/lib/dv/control/DeviceClient;->b:Lcom/jieli/lib/dv/control/IClient;

    invoke-interface {v0, p1, p2}, Lcom/jieli/lib/dv/control/IClient;->send(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToAccessDevice(Ljava/lang/String;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4

    .line 345
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "APP_ACCESS"

    .line 346
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 347
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "0"

    const-string v3, "ver"

    .line 348
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToChangePlaybackState(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 603
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "TIME_AXIS_PLAY_CTRL"

    .line 604
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 605
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 606
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToCloseRTStream(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 314
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "CLOSE_PULL_RT_STREAM"

    goto :goto_0

    :cond_0
    const-string p1, "CLOSE_RT_STREAM"

    .line 321
    :goto_0
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string p1, "PUT"

    .line 322
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string p1, "status"

    const-string v1, "1"

    .line 323
    invoke-virtual {v0, p1, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToCollisionVideo(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 846
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_BUMPING"

    .line 847
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 848
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToControlThumbnails(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 548
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "THUMBNAILS_CTRL"

    .line 549
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 550
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 551
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToDeleteFile(Ljava/util/List;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/jieli/lib/dv/control/connect/response/SendResponse;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 563
    :cond_0
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    const/4 v1, 0x0

    .line 564
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    :cond_1
    new-instance p1, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "FILES_DELETE"

    .line 568
    invoke-virtual {p1, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 569
    invoke-virtual {p1, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 571
    invoke-virtual {p0, p1, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToFactoryReset(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 1006
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "SYSTEM_DEFAULT"

    .line 1007
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 1008
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "def"

    const-string v2, "1"

    .line 1009
    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToFastForward(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 617
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "TIME_AXIS_FAST_PLAY"

    .line 618
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 619
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 620
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "level"

    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToFileLock(Ljava/lang/String;ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 897
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 898
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "FILE_LOCK"

    .line 899
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 900
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    const-string v1, "path"

    const-string v2, "status"

    .line 906
    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-virtual {p0, v0, p3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    :cond_1
    return-void
.end method

.method public tryToFormatTFCard(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 474
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "FORMAT"

    .line 475
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 476
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 1

    .line 236
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->getOperation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GET"

    .line 237
    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setOperation(Ljava/lang/String;)V

    .line 238
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->send(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToKeepAlive(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 333
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "CTP_KEEP_ALIVE"

    .line 334
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToOpenRTStream(IIIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 291
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "OPEN_PULL_RT_STREAM"

    .line 293
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "OPEN_RT_STREAM"

    .line 295
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    :goto_0
    const-string p1, "PUT"

    .line 297
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 298
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 299
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "format"

    invoke-virtual {p1, v1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "w"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "h"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "fps"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 304
    invoke-virtual {p0, v0, p6}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 1

    .line 224
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->getOperation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PUT"

    .line 225
    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 226
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->send(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRTIntercom(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 859
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "RT_TALK_CTL"

    .line 860
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 861
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "status"

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 863
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 865
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRecordVideo(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 248
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_CTRL"

    .line 249
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 250
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 251
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "status"

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 253
    invoke-virtual {v1, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 255
    invoke-virtual {v1, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :goto_0
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 258
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestApInfo(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 1018
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    const-string v1, "AP_SSID_INFO"

    .line 1019
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "GET"

    .line 1020
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setOperation(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestDevDate(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 463
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    const-string v1, "DATE_TIME"

    .line 464
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "GET"

    .line 465
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setOperation(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestDevUUID(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 435
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    const-string v1, "UUID"

    .line 436
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "GET"

    .line 437
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setOperation(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestMediaFiles(IILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    if-gtz p2, :cond_0

    .line 379
    invoke-virtual {p0, p1, p3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRequestMediaFiles(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_1

    .line 381
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const-string p1, "BEHIND_MEDIA_FILES_LIST"

    .line 383
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "FORWARD_MEDIA_FILES_LIST"

    .line 385
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    :goto_0
    const-string p1, "PUT"

    .line 387
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 388
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "type"

    const-string v1, "1"

    const-string v2, "num"

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0, v0, p3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    :goto_1
    return-void
.end method

.method public tryToRequestMediaFiles(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 359
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "BEHIND_MEDIA_FILES_LIST"

    .line 361
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "FORWARD_MEDIA_FILES_LIST"

    .line 363
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    :goto_0
    const-string p1, "PUT"

    .line 365
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string p1, "type"

    const-string v1, "1"

    .line 366
    invoke-virtual {v0, p1, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestPictureFiles(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 400
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "BEHIND_MEDIA_FILES_LIST"

    .line 402
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "FORWARD_MEDIA_FILES_LIST"

    .line 404
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    :goto_0
    const-string p1, "PUT"

    .line 406
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string p1, "type"

    const-string v1, "3"

    .line 407
    invoke-virtual {v0, p1, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestRearVideoStatus(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 916
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    const-string v1, "PULL_VIDEO_STATUS"

    .line 917
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "GET"

    .line 918
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setOperation(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestRecordState(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 262
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    const-string v1, "VIDEO_CTRL"

    .line 263
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "GET"

    .line 264
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setOperation(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestTFCardCapacity(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 486
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "TF_CAP"

    .line 487
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "GET"

    .line 488
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestVideoContentThumbnail(Ljava/lang/String;IIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 521
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    if-gez p4, :cond_1

    const/4 p4, 0x1

    .line 527
    :cond_1
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 528
    new-instance v1, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v2, "THUMBNAILS"

    .line 529
    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v2, "PUT"

    .line 530
    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v2, "path"

    .line 531
    invoke-virtual {v0, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v0, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "timeinv"

    invoke-virtual {v0, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "num"

    invoke-virtual {v0, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 536
    invoke-virtual {p0, v1, p5}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 522
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Param path is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tryToRequestVideoCover(Ljava/util/List;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/jieli/lib/dv/control/connect/response/SendResponse;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 501
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    const/4 v1, 0x0

    .line 502
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 505
    :cond_0
    new-instance p1, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {p1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    const-string v1, "MULTI_COVER_FIGURE"

    .line 506
    invoke-virtual {p1, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 507
    invoke-virtual {p1, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setOperation(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 509
    invoke-virtual {p0, p1, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 500
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Param list is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tryToRequestVideoFiles(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 418
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "BEHIND_MEDIA_FILES_LIST"

    .line 420
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "FORWARD_MEDIA_FILES_LIST"

    .line 422
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    :goto_0
    const-string p1, "PUT"

    .line 424
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string p1, "type"

    const-string v1, "2"

    .line 425
    invoke-virtual {v0, p1, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToResetDev(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 630
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "RESET"

    .line 631
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 632
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToResetSystem(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 978
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "SYSTEM_DEFAULT"

    .line 979
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 980
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 981
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "def"

    invoke-virtual {v0, v2, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSaveCycVideo(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 967
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_CYC_SAVEFILE"

    .line 968
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 969
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToScreenShotTask(ZIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 733
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "APP_SET_PROJECTION"

    .line 734
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 735
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "status"

    if-eqz p1, :cond_0

    .line 737
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "1"

    .line 738
    invoke-virtual {p1, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "w"

    invoke-virtual {p1, v1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "h"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "fps"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    goto :goto_0

    .line 744
    :cond_0
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string p2, "0"

    .line 745
    invoke-virtual {p1, v1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 748
    :goto_0
    invoke-virtual {p0, v0, p5}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetApAccount(Ljava/lang/String;Ljava/lang/String;ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 688
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    .line 691
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "AP_SSID_INFO"

    .line 692
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 693
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 694
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz p3, :cond_1

    const-string p3, "1"

    goto :goto_0

    :cond_1
    const-string p3, "0"

    :goto_0
    const-string v2, "status"

    .line 695
    invoke-virtual {v1, v2, p3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "pwd"

    .line 696
    invoke-virtual {v1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ssid"

    .line 697
    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 699
    invoke-virtual {p0, v0, p4}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetFrontVideoParams(IIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 931
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_PARAM"

    .line 932
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 933
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 934
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 935
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "w"

    invoke-virtual {v1, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "h"

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format"

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "fps"

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 940
    invoke-virtual {p0, v0, p5}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetGravitySenor(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 815
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "GRA_SEN"

    .line 816
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 817
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 818
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "gra"

    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetLanguage(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 0

    .line 644
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSetLanguage(Ljava/lang/String;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetLanguage(Ljava/lang/String;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 654
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "LANGUAGE"

    .line 655
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 656
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "lag"

    .line 657
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetPhotoQuality(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 786
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "PHOTO_QUALITY"

    .line 787
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 788
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 789
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "qua"

    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetRearVideoParams(IIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 951
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "PULL_VIDEO_PARAM"

    .line 952
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 953
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 954
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 955
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "w"

    invoke-virtual {v1, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "h"

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format"

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 959
    invoke-virtual {p0, v0, p4}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetRecordParam(IIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 878
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_PARAM"

    .line 879
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 880
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 882
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 883
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "format"

    invoke-virtual {v1, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "w"

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "h"

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 887
    invoke-virtual {p0, v0, p4}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetSTAAccount(Ljava/lang/String;Ljava/lang/String;ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 711
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "STA_SSID_INFO"

    .line 712
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 713
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 714
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz p3, :cond_0

    const-string p3, "1"

    goto :goto_0

    :cond_0
    const-string p3, "0"

    :goto_0
    const-string v2, "status"

    .line 715
    invoke-virtual {v1, v2, p3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "pwd"

    .line 716
    invoke-virtual {v1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ssid"

    .line 717
    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 719
    invoke-virtual {p0, v0, p4}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetTimeWatermark(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 829
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_DATE"

    .line 830
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 831
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "dat"

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 833
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 835
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetVideoMic(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 668
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_MIC"

    .line 669
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 670
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "mic"

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 672
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 674
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetVideoParkCar(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 801
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_PAR_CAR"

    .line 802
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 803
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 804
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "par"

    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToStartPlayback(Ljava/lang/String;ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 582
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 586
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "TIME_AXIS_PLAY"

    .line 587
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 588
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 589
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "path"

    .line 590
    invoke-virtual {v1, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 593
    invoke-virtual {p0, v0, p3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 583
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "param path is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tryToStreamingPush(ZIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 761
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "NET_SCR"

    .line 762
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 763
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "status"

    if-eqz p1, :cond_0

    .line 765
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "1"

    .line 766
    invoke-virtual {p1, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "w"

    invoke-virtual {p1, v1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "h"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "fps"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    goto :goto_0

    .line 772
    :cond_0
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string p2, "0"

    .line 773
    invoke-virtual {p1, v1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 776
    :goto_0
    invoke-virtual {p0, v0, p5}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSyncDevDate(Ljava/lang/String;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 449
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "DATE_TIME"

    .line 451
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 452
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "date"

    .line 453
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    :cond_0
    return-void
.end method

.method public tryToTakePhoto(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 274
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "PHOTO_CTRL"

    .line 275
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 276
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToToggleBootSound(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 990
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "BOARD_VOICE"

    .line 991
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 992
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "bvo"

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 994
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 996
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/jieli/lib/dv/control/DeviceClient;->b:Lcom/jieli/lib/dv/control/IClient;

    invoke-interface {v0, p1}, Lcom/jieli/lib/dv/control/IClient;->unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    return-void
.end method

.method public unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/jieli/lib/dv/control/DeviceClient;->b:Lcom/jieli/lib/dv/control/IClient;

    invoke-interface {v0, p1}, Lcom/jieli/lib/dv/control/IClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method
