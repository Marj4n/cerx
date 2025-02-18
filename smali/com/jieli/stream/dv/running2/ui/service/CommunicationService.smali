.class public Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;
.super Landroid/app/Service;
.source "CommunicationService.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/IConstant;
.implements Lcom/jieli/stream/dv/running2/util/IActions;


# static fields
.field public static final SNAP_STATUS:Ljava/lang/String; = "SNAP_STATUS"

.field public static final snap_status_key:Ljava/lang/String; = "snap_status"

.field private static final tag:Ljava/lang/String;


# instance fields
.field private clearThumbTask:Lcom/jieli/stream/dv/running2/task/ClearThumbTask;

.field private connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

.field private loadDeviceDesTxt:Lcom/jieli/stream/dv/running2/task/DeviceDescription;

.field private mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

.field private mHeartbeatTask:Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

.field private mLiveServer:Lcom/jieli/stream/dv/running2/task/SDPServer;

.field private final onNotifyResponse:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mHeartbeatTask:Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

    .line 92
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;-><init>(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->onNotifyResponse:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    .line 405
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$2;-><init>(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/task/HeartbeatTask;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mHeartbeatTask:Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

    return-object p0
.end method

.method static synthetic access$202(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;Lcom/jieli/stream/dv/running2/task/HeartbeatTask;)Lcom/jieli/stream/dv/running2/task/HeartbeatTask;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mHeartbeatTask:Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/task/ClearThumbTask;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->clearThumbTask:Lcom/jieli/stream/dv/running2/task/ClearThumbTask;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;Lcom/jieli/stream/dv/running2/task/ClearThumbTask;)Lcom/jieli/stream/dv/running2/task/ClearThumbTask;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->clearThumbTask:Lcom/jieli/stream/dv/running2/task/ClearThumbTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/task/DeviceDescription;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->loadDeviceDesTxt:Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    return-object p0
.end method

.method static synthetic access$402(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;Lcom/jieli/stream/dv/running2/task/DeviceDescription;)Lcom/jieli/stream/dv/running2/task/DeviceDescription;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->loadDeviceDesTxt:Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    return-object p1
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->startSdpServer(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->cachePlaybackVideoParam(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method

.method private cachePlaybackVideoParam(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 7

    .line 501
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 502
    sget-object p1, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->tag:Ljava/lang/String;

    const-string v0, "cachePlaybackVideoParam is null"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 505
    :cond_0
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v0

    const-string v1, "w"

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 506
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    const-string v2, "h"

    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 507
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v2

    const-string v3, "format"

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 508
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v3

    const-string v4, "fps"

    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 509
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v4

    const-string v5, "rate"

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 510
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "VIDEO_PARAM"

    if-nez v5, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 511
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 512
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 513
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 514
    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->adjustRtsResolution(II)I

    move-result v0

    .line 515
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setFrontRecordLevel(I)V

    .line 517
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setFrontLevel(I)V

    goto :goto_0

    .line 519
    :cond_1
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setRearRecordLevel(I)V

    .line 520
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setRearLevel(I)V

    .line 523
    :cond_2
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 526
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 528
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_4

    .line 531
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setFrontFormat(I)V

    goto :goto_2

    .line 534
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setRearFormat(I)V

    goto :goto_2

    .line 537
    :cond_4
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 538
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setFrontFormat(I)V

    goto :goto_2

    .line 540
    :cond_5
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setRearFormat(I)V

    .line 544
    :cond_6
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1e

    .line 547
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 549
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 551
    :goto_3
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 552
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setFrontRate(I)V

    goto :goto_4

    .line 554
    :cond_7
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setRearRate(I)V

    .line 557
    :cond_8
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x1f40

    .line 560
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    .line 562
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 564
    :goto_5
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 565
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setFrontSampleRate(I)V

    goto :goto_6

    .line 567
    :cond_9
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setRearSampleRate(I)V

    :cond_a
    :goto_6
    return-void
.end method

.method private release()V
    .locals 2

    .line 443
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->tag:Ljava/lang/String;

    const-string v1, "======= (( release )) ====="

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->onNotifyResponse:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 445
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    .line 447
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->clearThumbTask:Lcom/jieli/stream/dv/running2/task/ClearThumbTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;->stopClear()V

    .line 449
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->clearThumbTask:Lcom/jieli/stream/dv/running2/task/ClearThumbTask;

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->loadDeviceDesTxt:Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->interrupt()V

    .line 453
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->loadDeviceDesTxt:Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mHeartbeatTask:Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->stopRunning()V

    .line 457
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mHeartbeatTask:Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

    .line 459
    :cond_2
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->stopSdpServer()V

    return-void
.end method

.method private startSdpServer(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 6

    .line 463
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 464
    sget-object p1, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->tag:Ljava/lang/String;

    const-string v0, "cachePlaybackVideoParam is null"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mLiveServer:Lcom/jieli/stream/dv/running2/task/SDPServer;

    if-nez v0, :cond_4

    const/16 v0, 0x1e

    const/16 v1, 0x1f40

    const/4 v2, -0x1

    .line 471
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v3

    const-string v4, "format"

    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 472
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v4

    const-string v5, "fps"

    invoke-virtual {v4, v5}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 473
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v5, "rate"

    invoke-virtual {p1, v5}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 474
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 475
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 477
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 478
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 480
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 481
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 483
    :cond_3
    new-instance p1, Lcom/jieli/stream/dv/running2/task/SDPServer;

    const/16 v3, 0x1a85

    invoke-direct {p1, v3, v2}, Lcom/jieli/stream/dv/running2/task/SDPServer;-><init>(II)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mLiveServer:Lcom/jieli/stream/dv/running2/task/SDPServer;

    .line 484
    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/task/SDPServer;->setFrameRate(I)V

    .line 485
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mLiveServer:Lcom/jieli/stream/dv/running2/task/SDPServer;

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/task/SDPServer;->setSampleRate(I)V

    .line 486
    sget-object p1, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", frameRate="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sampleRate="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mLiveServer:Lcom/jieli/stream/dv/running2/task/SDPServer;

    const/16 v0, 0x1a0a

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/task/SDPServer;->setRtpVideoPort(I)V

    .line 488
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mLiveServer:Lcom/jieli/stream/dv/running2/task/SDPServer;

    const/16 v0, 0x4d2

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/task/SDPServer;->setRtpAudioPort(I)V

    .line 489
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mLiveServer:Lcom/jieli/stream/dv/running2/task/SDPServer;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/task/SDPServer;->start()V

    :cond_4
    return-void
.end method

.method private stopSdpServer()V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mLiveServer:Lcom/jieli/stream/dv/running2/task/SDPServer;

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/SDPServer;->stopRunning()V

    const/4 v0, 0x0

    .line 496
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mLiveServer:Lcom/jieli/stream/dv/running2/task/SDPServer;

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 60
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->onNotifyResponse:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 61
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->connectStateListener:Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)V

    .line 62
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 430
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->release()V

    .line 431
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/4 p3, -0x1

    const-string v0, "service_command"

    .line 71
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    .line 72
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand==========cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p3, p2, :cond_2

    const/4 p1, 0x2

    if-eq p3, p1, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/DeviceClient;->disconnect()V

    goto :goto_0

    :cond_2
    const-string p3, "connect_ip"

    .line 75
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p1, "192.168.1.1"

    .line 79
    :cond_3
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result p3

    if-nez p3, :cond_4

    .line 80
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p3

    const/16 v0, 0xd05

    invoke-virtual {p3, p1, v0}, Lcom/jieli/lib/dv/control/DeviceClient;->create(Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return p2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 437
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->release()V

    .line 438
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->stopSelf()V

    .line 439
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method
