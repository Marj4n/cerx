.class public Lcom/jieli/lib/dv/control/udp/UdpClientHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/jieli/lib/dv/control/udp/UdpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/jieli/lib/dv/control/udp/UdpClient;->getInstance()Lcom/jieli/lib/dv/control/udp/UdpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->a:Lcom/jieli/lib/dv/control/udp/UdpClient;

    return-void
.end method

.method public static getUdpClient()Lcom/jieli/lib/dv/control/udp/UdpClient;
    .locals 1

    .line 33
    invoke-static {}, Lcom/jieli/lib/dv/control/udp/UdpClient;->getInstance()Lcom/jieli/lib/dv/control/udp/UdpClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public tryToAccessDevice(Ljava/lang/String;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 4

    .line 152
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "APP_ACCESS"

    .line 153
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 154
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "0"

    const-string v3, "ver"

    .line 155
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToChangePlaybackState(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 410
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "TIME_AXIS_PLAY_CTRL"

    .line 411
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 412
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 413
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToCloseRTStream(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 121
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "CLOSE_PULL_RT_STREAM"

    goto :goto_0

    :cond_0
    const-string p1, "CLOSE_RT_STREAM"

    .line 128
    :goto_0
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string p1, "PUT"

    .line 129
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string p1, "status"

    const-string v1, "1"

    .line 130
    invoke-virtual {v0, p1, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToCollisionVideo(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 640
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_BUMPING"

    .line 641
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 642
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToControlThumbnails(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 355
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "THUMBNAILS_CTRL"

    .line 356
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 357
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 358
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

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

    .line 370
    :cond_0
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    const/4 v1, 0x0

    .line 371
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 372
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

    .line 374
    :cond_1
    new-instance p1, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "FILES_DELETE"

    .line 375
    invoke-virtual {p1, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 376
    invoke-virtual {p1, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToFactoryReset(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 800
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "SYSTEM_DEFAULT"

    .line 801
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 802
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "def"

    const-string v2, "1"

    .line 803
    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToFastForward(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 424
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "TIME_AXIS_FAST_PLAY"

    .line 425
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 426
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 427
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "level"

    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToFileLock(Ljava/lang/String;ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "FILE_LOCK"

    .line 693
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 694
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    const-string v1, "path"

    const-string v2, "status"

    .line 700
    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0, v0, p3}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    :cond_1
    return-void
.end method

.method public tryToFormatTFCard(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 281
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "FORMAT"

    .line 282
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 283
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 1

    .line 43
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->getOperation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GET"

    .line 44
    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setOperation(Ljava/lang/String;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->a:Lcom/jieli/lib/dv/control/udp/UdpClient;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/udp/UdpClient;->send(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToKeepAlive(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 140
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "CTP_KEEP_ALIVE"

    .line 141
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToOpenRTStream(IIIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 98
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "OPEN_PULL_RT_STREAM"

    .line 100
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "OPEN_RT_STREAM"

    .line 102
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    :goto_0
    const-string p1, "PUT"

    .line 104
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 105
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 106
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "format"

    invoke-virtual {p1, v1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "w"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "h"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "fps"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 111
    invoke-virtual {p0, v0, p6}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->getOperation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PUT"

    .line 38
    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->a:Lcom/jieli/lib/dv/control/udp/UdpClient;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/udp/UdpClient;->send(Lcom/jieli/lib/dv/control/json/bean/CmdInfo;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRTIntercom(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 653
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "RT_TALK_CTL"

    .line 654
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 655
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "status"

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 657
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 659
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRecordVideo(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 55
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_CTRL"

    .line 56
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 57
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 58
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "status"

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 60
    invoke-virtual {v1, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 62
    invoke-virtual {v1, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :goto_0
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 65
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestDevDate(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 270
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    const-string v1, "DATE_TIME"

    .line 271
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "GET"

    .line 272
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setOperation(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestDevUUID(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 242
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    const-string v1, "UUID"

    .line 243
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "GET"

    .line 244
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setOperation(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestMediaFiles(IILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    if-gtz p2, :cond_0

    .line 186
    invoke-virtual {p0, p1, p3}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToRequestMediaFiles(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_1

    .line 188
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const-string p1, "BEHIND_MEDIA_FILES_LIST"

    .line 190
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "FORWARD_MEDIA_FILES_LIST"

    .line 192
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    :goto_0
    const-string p1, "PUT"

    .line 194
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 195
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "type"

    const-string v1, "1"

    const-string v2, "num"

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, v0, p3}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    :goto_1
    return-void
.end method

.method public tryToRequestMediaFiles(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 166
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "BEHIND_MEDIA_FILES_LIST"

    .line 168
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "FORWARD_MEDIA_FILES_LIST"

    .line 170
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    :goto_0
    const-string p1, "PUT"

    .line 172
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string p1, "type"

    const-string v1, "1"

    .line 173
    invoke-virtual {v0, p1, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestPictureFiles(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 207
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "BEHIND_MEDIA_FILES_LIST"

    .line 209
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "FORWARD_MEDIA_FILES_LIST"

    .line 211
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    :goto_0
    const-string p1, "PUT"

    .line 213
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string p1, "type"

    const-string v1, "3"

    .line 214
    invoke-virtual {v0, p1, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestRearVideoStatus(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 710
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    const-string v1, "PULL_VIDEO_STATUS"

    .line 711
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "GET"

    .line 712
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setOperation(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestRecordState(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 69
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    const-string v1, "VIDEO_CTRL"

    .line 70
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "GET"

    .line 71
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setOperation(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestTFCardCapacity(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 293
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "TF_CAP"

    .line 294
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "GET"

    .line 295
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToRequestVideoContentThumbnail(Ljava/lang/String;IIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    if-gez p4, :cond_1

    const/4 p4, 0x1

    .line 334
    :cond_1
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 335
    new-instance v1, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v2, "THUMBNAILS"

    .line 336
    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v2, "PUT"

    .line 337
    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v2, "path"

    .line 338
    invoke-virtual {v0, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v0, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "timeinv"

    invoke-virtual {v0, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "num"

    invoke-virtual {v0, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 343
    invoke-virtual {p0, v1, p5}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 329
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

    .line 308
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    const/4 v1, 0x0

    .line 309
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 310
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

    .line 312
    :cond_0
    new-instance p1, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;

    invoke-direct {p1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;-><init>()V

    const-string v1, "MULTI_COVER_FIGURE"

    .line 313
    invoke-virtual {p1, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 314
    invoke-virtual {p1, v1}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setOperation(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/json/bean/RequestCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToGet(Lcom/jieli/lib/dv/control/json/bean/RequestCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 307
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Param list is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tryToRequestVideoFiles(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 225
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "BEHIND_MEDIA_FILES_LIST"

    .line 227
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "FORWARD_MEDIA_FILES_LIST"

    .line 229
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    :goto_0
    const-string p1, "PUT"

    .line 231
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string p1, "type"

    const-string v1, "2"

    .line 232
    invoke-virtual {v0, p1, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToResetDev(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 437
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "RESET"

    .line 438
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 439
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToResetSystem(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 772
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "SYSTEM_DEFAULT"

    .line 773
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 774
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 775
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "def"

    invoke-virtual {v0, v2, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSaveCycVideo(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 761
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_CYC_SAVEFILE"

    .line 762
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 763
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToScreenShotTask(ZIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 527
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "APP_SET_PROJECTION"

    .line 528
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 529
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "status"

    if-eqz p1, :cond_0

    .line 531
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "1"

    .line 532
    invoke-virtual {p1, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "w"

    invoke-virtual {p1, v1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "h"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "fps"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    goto :goto_0

    .line 538
    :cond_0
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string p2, "0"

    .line 539
    invoke-virtual {p1, v1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 542
    :goto_0
    invoke-virtual {p0, v0, p5}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetApAccount(Ljava/lang/String;Ljava/lang/String;ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 486
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "AP_SSID_INFO"

    .line 487
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 488
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 489
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz p3, :cond_0

    const-string p3, "1"

    goto :goto_0

    :cond_0
    const-string p3, "0"

    :goto_0
    const-string v2, "status"

    .line 490
    invoke-virtual {v1, v2, p3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "pwd"

    .line 491
    invoke-virtual {v1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ssid"

    .line 492
    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 494
    invoke-virtual {p0, v0, p4}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetFrontVideoParams(IIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 725
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_PARAM"

    .line 726
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 727
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 728
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 729
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "w"

    invoke-virtual {v1, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "h"

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format"

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "fps"

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 734
    invoke-virtual {p0, v0, p5}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetGravitySenor(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 609
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "GRA_SEN"

    .line 610
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 611
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 612
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "gra"

    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetLanguage(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 451
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "LANGUAGE"

    .line 452
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 453
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 454
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "lag"

    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetPhotoQuality(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 580
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "PHOTO_QUALITY"

    .line 581
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 582
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 583
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "qua"

    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetRearVideoParams(IIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 745
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "PULL_VIDEO_PARAM"

    .line 746
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 747
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 748
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 749
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "w"

    invoke-virtual {v1, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "h"

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format"

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 753
    invoke-virtual {p0, v0, p4}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetRecordParam(IIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 672
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_PARAM"

    .line 673
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 674
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 676
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 677
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "format"

    invoke-virtual {v1, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "w"

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "h"

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 681
    invoke-virtual {p0, v0, p4}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetSTAAccount(Ljava/lang/String;Ljava/lang/String;ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 506
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "STA_SSID_INFO"

    .line 507
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 508
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 509
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz p3, :cond_0

    const-string p3, "1"

    goto :goto_0

    :cond_0
    const-string p3, "0"

    :goto_0
    const-string v2, "status"

    .line 510
    invoke-virtual {v1, v2, p3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "pwd"

    .line 511
    invoke-virtual {v1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ssid"

    .line 512
    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 514
    invoke-virtual {p0, v0, p4}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetTimeWatermark(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 623
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_DATE"

    .line 624
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 625
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "dat"

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 627
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 629
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetVideoMic(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 466
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_MIC"

    .line 467
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 468
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "mic"

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 470
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 472
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSetVideoParkCar(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 595
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "VIDEO_PAR_CAR"

    .line 596
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 597
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 598
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "par"

    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToStartPlayback(Ljava/lang/String;ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 393
    :cond_0
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "TIME_AXIS_PLAY"

    .line 394
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 395
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 396
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "path"

    .line 397
    invoke-virtual {v1, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 400
    invoke-virtual {p0, v0, p3}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void

    .line 390
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "param path is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tryToStreamingPush(ZIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 3

    .line 555
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "NET_SCR"

    .line 556
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 557
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "status"

    if-eqz p1, :cond_0

    .line 559
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "1"

    .line 560
    invoke-virtual {p1, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "w"

    invoke-virtual {p1, v1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "h"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "fps"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    goto :goto_0

    .line 566
    :cond_0
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string p2, "0"

    .line 567
    invoke-virtual {p1, v1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Landroidx/collection/ArrayMap;)V

    .line 570
    :goto_0
    invoke-virtual {p0, v0, p5}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToSyncDevDate(Ljava/lang/String;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "DATE_TIME"

    .line 258
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 259
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "date"

    .line 260
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    :cond_0
    return-void
.end method

.method public tryToTakePhoto(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 81
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "PHOTO_CTRL"

    .line 82
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 83
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method public tryToToggleBootSound(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V
    .locals 2

    .line 784
    new-instance v0, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;-><init>()V

    const-string v1, "BOARD_VOICE"

    .line 785
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setTopic(Ljava/lang/String;)V

    const-string v1, "PUT"

    .line 786
    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setOperation(Ljava/lang/String;)V

    const-string v1, "bvo"

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 788
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 790
    invoke-virtual {v0, v1, p1}, Lcom/jieli/lib/dv/control/json/bean/SettingCmd;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/jieli/lib/dv/control/udp/UdpClientHelper;->tryToPut(Lcom/jieli/lib/dv/control/json/bean/SettingCmd;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method
