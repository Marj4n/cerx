.class Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 101
    :cond_1
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v1

    const/16 v2, 0xf

    const-string v3, "allow_access"

    const-string v4, "com.jieli.dv.running2_dev_access"

    const-string v5, "APP_ACCESS"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_5

    .line 102
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Topic "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", error msg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v10

    invoke-static {v10}, Lcom/jieli/lib/dv/control/utils/Code;->getCodeDescription(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "CLOSE_PULL_RT_STREAM"

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setExistRearView(Z)V

    .line 109
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result p1

    if-ne v2, p1, :cond_4

    .line 110
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result p1

    if-ne p1, v6, :cond_3

    .line 111
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getAutoRearCameraKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v8}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setCameraType(I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const/4 v1, -0x1

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x6

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "PULL_VIDEO_STATUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x28

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "FORMAT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x9

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "KEY_VOICE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x10

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "PHOTO_ISO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x20

    goto/16 :goto_2

    :sswitch_4
    const-string v2, "PHOTO_EXP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x21

    goto/16 :goto_2

    :sswitch_5
    const-string v2, "PHOTO_QUALITY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0xb

    goto/16 :goto_2

    :sswitch_6
    const-string v2, "OPEN_PULL_RT_STREAM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x27

    goto/16 :goto_2

    :sswitch_7
    const-string v2, "BOARD_VOICE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x24

    goto/16 :goto_2

    :sswitch_8
    const-string v2, "KEEP_ALIVE_INTERVAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_2

    :sswitch_9
    const-string v2, "GRA_SEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0xd

    goto/16 :goto_2

    :sswitch_a
    const-string v2, "BURST_SHOT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x1e

    goto/16 :goto_2

    :sswitch_b
    const-string v2, "SELF_TIMER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x1d

    goto/16 :goto_2

    :sswitch_c
    const-string v2, "OPEN_RT_STREAM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x26

    goto/16 :goto_2

    :sswitch_d
    const-string v2, "PULL_VIDEO_PARAM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x2a

    goto/16 :goto_2

    :sswitch_e
    const-string v2, "DOUBLE_VIDEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x16

    goto/16 :goto_2

    :sswitch_f
    const-string v2, "VIDEO_FINISH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x7

    goto/16 :goto_2

    :sswitch_10
    const-string v2, "VIDEO_PARAM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x29

    goto/16 :goto_2

    :sswitch_11
    const-string v2, "MOVE_CHECK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x1a

    goto/16 :goto_2

    :sswitch_12
    const-string v2, "SCREEN_PRO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x14

    goto/16 :goto_2

    :sswitch_13
    const-string v2, "SNAP_STATUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x4

    goto/16 :goto_2

    :sswitch_14
    const-string v2, "PHOTO_RESO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x1c

    goto/16 :goto_2

    :sswitch_15
    const-string v2, "PHOTO_DATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x23

    goto/16 :goto_2

    :sswitch_16
    const-string v2, "UUID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x3

    goto/16 :goto_2

    :sswitch_17
    const-string v2, "VIDEO_PAR_CAR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0xe

    goto/16 :goto_2

    :sswitch_18
    const-string v2, "VIDEO_WDR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x18

    goto/16 :goto_2

    :sswitch_19
    const-string v2, "VIDEO_MIC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0xa

    goto/16 :goto_2

    :sswitch_1a
    const-string v2, "VIDEO_INV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x1b

    goto/16 :goto_2

    :sswitch_1b
    const-string v2, "VIDEO_EXP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x19

    goto/16 :goto_2

    :sswitch_1c
    const-string v2, "TV_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x15

    goto/16 :goto_2

    :sswitch_1d
    const-string v2, "BAT_STATUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x11

    goto/16 :goto_2

    :sswitch_1e
    const-string v2, "RT_TALK_CTL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x25

    goto/16 :goto_2

    :sswitch_1f
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x2

    goto/16 :goto_2

    :sswitch_20
    const-string v2, "SD_STATUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    goto/16 :goto_2

    :sswitch_21
    const-string v2, "LIGHT_FRE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x12

    goto :goto_2

    :sswitch_22
    const-string v2, "LANGUAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0xc

    goto :goto_2

    :sswitch_23
    const-string v2, "VIDEO_LOOP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x17

    goto :goto_2

    :sswitch_24
    const-string v5, "VIDEO_DATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :sswitch_25
    const-string v2, "VIDEO_CTRL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_26
    const-string v2, "CTP_KEEP_ALIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_27
    const-string v2, "ANTI_TREMOR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x22

    goto :goto_2

    :sswitch_28
    const-string v2, "PHOTO_SHARPNESS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x1f

    goto :goto_2

    :sswitch_29
    const-string v2, "TF_CAP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x8

    goto :goto_2

    :sswitch_2a
    const-string v2, "AUTO_SHUTDOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x13

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, -0x1

    :goto_2
    const-string v0, "exp"

    const-string v1, "dat"

    const-string v5, "status"

    const-string v9, "1"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    .line 396
    :pswitch_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$600(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    goto/16 :goto_8

    .line 387
    :pswitch_1
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 388
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " >>>> data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 390
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setExistRearView(Z)V

    goto/16 :goto_8

    .line 383
    :pswitch_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setCameraType(I)V

    .line 384
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$500(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    goto/16 :goto_8

    .line 379
    :pswitch_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setCameraType(I)V

    .line 380
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$500(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    goto/16 :goto_8

    .line 373
    :pswitch_4
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 374
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 375
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setRTVoice(Z)V

    goto/16 :goto_8

    .line 370
    :pswitch_5
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v1, "bvo"

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setOpenBootSound(Z)V

    goto/16 :goto_8

    .line 367
    :pswitch_6
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setPhotoDate(Z)V

    goto/16 :goto_8

    .line 364
    :pswitch_7
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v1, "sok"

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setAntiTremor(Z)V

    goto/16 :goto_8

    .line 359
    :pswitch_8
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 361
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setPhotoExp(I)V

    goto/16 :goto_8

    .line 354
    :pswitch_9
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "iso"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 355
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 356
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setPhotoIso(I)V

    goto/16 :goto_8

    .line 349
    :pswitch_a
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "acu"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 351
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setPhotoSharpness(I)V

    goto/16 :goto_8

    .line 346
    :pswitch_b
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v1, "cyt"

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setBurstShot(Z)V

    goto/16 :goto_8

    .line 341
    :pswitch_c
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "phm"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 343
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setSelfTime(I)V

    goto/16 :goto_8

    .line 336
    :pswitch_d
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "res"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 338
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setPhotoReso(I)V

    goto/16 :goto_8

    .line 331
    :pswitch_e
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "gap"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 333
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setVideoInv(I)V

    goto/16 :goto_8

    .line 328
    :pswitch_f
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v1, "mot"

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setMoveCheck(Z)V

    goto/16 :goto_8

    .line 323
    :pswitch_10
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 324
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 325
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setVideoExp(I)V

    goto/16 :goto_8

    .line 320
    :pswitch_11
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v1, "wdr"

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setVideoWdr(Z)V

    goto/16 :goto_8

    .line 315
    :pswitch_12
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "cyc"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 317
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setVideoLoop(I)V

    goto/16 :goto_8

    .line 312
    :pswitch_13
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v1, "two"

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setDoubleVideo(Z)V

    goto/16 :goto_8

    .line 307
    :pswitch_14
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "tvm"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 309
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setTvMode(I)V

    goto/16 :goto_8

    .line 302
    :pswitch_15
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "pro"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 304
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setScreenOn(I)V

    goto/16 :goto_8

    .line 297
    :pswitch_16
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "aff"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 299
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setAutoShutdown(I)V

    goto/16 :goto_8

    .line 292
    :pswitch_17
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "fre"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 294
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setLightFrequece(I)V

    goto/16 :goto_8

    .line 287
    :pswitch_18
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "level"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 289
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setBatStatus(I)V

    goto/16 :goto_8

    .line 284
    :pswitch_19
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v1, "kvo"

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setKeyVoice(Z)V

    goto/16 :goto_8

    .line 281
    :pswitch_1a
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setVideoDate(Z)V

    goto/16 :goto_8

    .line 278
    :pswitch_1b
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v1, "par"

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setVideoParCar(Z)V

    goto/16 :goto_8

    .line 273
    :pswitch_1c
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "gra"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 275
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setGravitySensor(I)V

    goto/16 :goto_8

    .line 261
    :pswitch_1d
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "lag"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "lan="

    if-nez v0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 263
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "language_code"

    const-string v3, "-1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 266
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->changeAppLanguage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    .line 267
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.jieli.dv.running2_language_change"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, p1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 269
    :cond_7
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", preIndex="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 270
    :cond_8
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 256
    :pswitch_1e
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "qua"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 258
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setPhotoQualityIndex(I)V

    goto/16 :goto_8

    .line 253
    :pswitch_1f
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v1, "mic"

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setVideoMic(Z)V

    goto/16 :goto_8

    .line 250
    :pswitch_20
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dv.running2_format_sdcard"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 234
    :pswitch_21
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 235
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v0

    const-string v1, "left"

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v1, "total"

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 240
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    const/4 v0, 0x0

    .line 243
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    :goto_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setLeftStorage(I)V

    .line 246
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setTotalStorage(I)V

    goto/16 :goto_8

    .line 203
    :pswitch_22
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 205
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 207
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setRecordState(I)V

    goto :goto_5

    .line 209
    :cond_9
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setRecordState(I)V

    .line 212
    :cond_a
    :goto_5
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "desc"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "\\\\"

    const-string v1, ""

    .line 214
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-VIDEO_FINISH- desc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->parseFileInfo(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/FileInfo;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 218
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInstance()Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    :cond_b
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCameraType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    const/4 v6, 0x1

    .line 226
    :goto_6
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v1

    if-ne v6, v1, :cond_13

    .line 227
    invoke-interface {v0, v7, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 228
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->convertJson(Ljava/util/List;)Ljava/lang/String;

    goto/16 :goto_8

    .line 231
    :cond_d
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CMD:VIDEO_FINISH:desc is null"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 192
    :pswitch_23
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 194
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 196
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setRecordState(I)V

    goto/16 :goto_8

    .line 198
    :cond_e
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$100(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setRecordState(I)V

    goto/16 :goto_8

    .line 187
    :pswitch_24
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$200(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 188
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$200(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->resetTimeoutCount()V

    goto/16 :goto_8

    .line 177
    :pswitch_25
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "snap_status"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 178
    invoke-static {p1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TAG"

    if-eqz v0, :cond_f

    const-string p1, "\u76d1\u542c\u5904\u7406 "

    .line 180
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_f
    const-string v0, "0"

    .line 181
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "\u76d1\u542c\u5904\u74061"

    .line 183
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 170
    :pswitch_26
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "uuid"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 172
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device uuid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->setUUID(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 140
    :pswitch_27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->formatYMD_HMS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1$1;-><init>(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSyncDevDate(Ljava/lang/String;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 149
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 152
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$300(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/task/ClearThumbTask;

    move-result-object p1

    if-nez p1, :cond_10

    .line 153
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    new-instance v0, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;-><init>()V

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$302(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;Lcom/jieli/stream/dv/running2/task/ClearThumbTask;)Lcom/jieli/stream/dv/running2/task/ClearThumbTask;

    .line 154
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$300(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/task/ClearThumbTask;

    move-result-object p1

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1$2;-><init>(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;)V

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;->setOnClearThumbTaskListener(Lcom/jieli/stream/dv/running2/task/ClearThumbTask$OnClearThumbTaskListener;)V

    .line 160
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$300(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/task/ClearThumbTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;->start()V

    .line 162
    :cond_10
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isUpgrading()Z

    move-result p1

    if-nez p1, :cond_13

    .line 163
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$400(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    move-result-object p1

    if-nez p1, :cond_13

    .line 164
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    new-instance v0, Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-direct {v0, v1}, Lcom/jieli/stream/dv/running2/task/DeviceDescription;-><init>(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)V

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$402(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;Lcom/jieli/stream/dv/running2/task/DeviceDescription;)Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    .line 165
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$400(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->start()V

    goto/16 :goto_8

    .line 131
    :pswitch_28
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TF Card state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v2

    const-string v3, "online"

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 133
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->setSdcardExist(Z)V

    goto :goto_7

    .line 135
    :cond_11
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->setSdcardExist(Z)V

    .line 137
    :goto_7
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dv.running2_tf_status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8

    .line 120
    :pswitch_29
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "timeout"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 122
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$200(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

    move-result-object v0

    if-nez v0, :cond_12

    .line 123
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    new-instance v1, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-direct {v1, v2}, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$202(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;Lcom/jieli/stream/dv/running2/task/HeartbeatTask;)Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

    .line 124
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$200(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->start()V

    .line 126
    :cond_12
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$200(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

    move-result-object v0

    div-int/2addr p1, v10

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, v10}, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->setPeriodAndTimeout(JI)V

    :cond_13
    :goto_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b17b91a -> :sswitch_2a
        -0x6ca24b9b -> :sswitch_29
        -0x620dc8cc -> :sswitch_28
        -0x4878cc7a -> :sswitch_27
        -0x4226664d -> :sswitch_26
        -0x41c92831 -> :sswitch_25
        -0x41c8faee -> :sswitch_24
        -0x41c523f8 -> :sswitch_23
        -0x31877ca8 -> :sswitch_22
        -0x30f5edd0 -> :sswitch_21
        -0x222f5660 -> :sswitch_20
        -0x196eea9e -> :sswitch_1f
        -0x16eb42bb -> :sswitch_1e
        -0x15fd2c84 -> :sswitch_1d
        -0xc54dec0 -> :sswitch_1c
        -0xa614be7 -> :sswitch_1b
        -0xa613e13 -> :sswitch_1a
        -0xa612fbd -> :sswitch_19
        -0xa610abf -> :sswitch_18
        -0x8d88ee -> :sswitch_17
        0x27ebbb -> :sswitch_16
        0x6455bb -> :sswitch_15
        0x6ac1dc -> :sswitch_14
        0x4156207 -> :sswitch_13
        0x41d043a -> :sswitch_12
        0x8d6a2fa -> :sswitch_11
        0x952af89 -> :sswitch_10
        0x1061d4f7 -> :sswitch_f
        0x13ac0e6d -> :sswitch_e
        0x146c748f -> :sswitch_d
        0x1bdacc68 -> :sswitch_c
        0x1eed9072 -> :sswitch_b
        0x37263ad9 -> :sswitch_a
        0x3b883933 -> :sswitch_9
        0x5c900811 -> :sswitch_8
        0x65459659 -> :sswitch_7
        0x682b8938 -> :sswitch_6
        0x6cdf07b2 -> :sswitch_5
        0x73a02a50 -> :sswitch_4
        0x73a038b8 -> :sswitch_3
        0x7ac58312 -> :sswitch_2
        0x7bf2ebf7 -> :sswitch_1
        0x7f44f410 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method
