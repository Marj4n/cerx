.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 843
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v2

    .line 844
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_37

    const-string v3, "CTP_KEEP_ALIVE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_12

    .line 846
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 847
    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result v3

    if-nez v3, :cond_2

    .line 848
    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1202(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;I)I

    .line 850
    :cond_2
    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 851
    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3, v5}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$602(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z

    .line 852
    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 855
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v3

    const/16 v6, 0xa02

    const/4 v7, 0x4

    const-string v8, "FORWARD_MEDIA_FILES_LIST"

    const-string v9, "BEHIND_MEDIA_FILES_LIST"

    const-string v10, "VIDEO_CYC_SAVEFILE"

    const-string v11, "MULTI_COVER_FIGURE"

    const-wide/16 v12, 0x64

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-eqz v3, :cond_9

    packed-switch v3, :pswitch_data_0

    .line 878
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_7

    if-eq v2, v15, :cond_6

    if-eq v2, v4, :cond_6

    if-eq v2, v14, :cond_5

    .line 902
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Topic="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v1

    invoke-static {v1}, Lcom/jieli/lib/dv/control/utils/Code;->getCodeDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 898
    :cond_5
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CYC SAVE VIDEO failed, reason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v1

    invoke-static {v1}, Lcom/jieli/lib/dv/control/utils/Code;->getCodeDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->cyc_save_video_failed:I

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 895
    :cond_6
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    return-void

    .line 880
    :cond_7
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 882
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 883
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mVideoThumbnail close - 000"

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->close()Z

    .line 886
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v1

    if-ne v7, v1, :cond_8

    .line 887
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 888
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6, v5, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    return-void

    .line 875
    :pswitch_0
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    return-void

    .line 862
    :pswitch_1
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->setCameraType(I)V

    .line 863
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "The device does not support rear camera"

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    return-void

    .line 870
    :pswitch_2
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->rear_camera_offline:I

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 872
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    return-void

    .line 907
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_2

    :sswitch_4
    const-string v3, "PULL_VIDEO_STATUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v7, 0xe

    goto/16 :goto_3

    :sswitch_5
    const-string v3, "OPEN_PULL_RT_STREAM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v7, 0x1

    goto/16 :goto_3

    :sswitch_6
    const-string v3, "CLOSE_PULL_RT_STREAM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v7, 0x3

    goto/16 :goto_3

    :sswitch_7
    const-string v3, "CLOSE_RT_STREAM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_3

    :sswitch_8
    const-string v3, "OPEN_RT_STREAM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v7, 0x2

    goto/16 :goto_3

    :sswitch_9
    const-string v3, "VIDEO_FINISH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v7, 0x6

    goto/16 :goto_3

    :sswitch_a
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v7, 0x8

    goto/16 :goto_3

    :sswitch_b
    const-string v3, "SNAP_STATUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v7, 0x0

    goto :goto_3

    :sswitch_c
    const-string v3, "PHOTO_CTRL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v7, 0x7

    goto :goto_3

    :sswitch_d
    const-string v3, "RT_TALK_CTL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v7, 0xd

    goto :goto_3

    :sswitch_e
    const-string v3, "SD_STATUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v7, 0xb

    goto :goto_3

    :sswitch_f
    const-string v3, "FILES_DELETE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v7, 0xc

    goto :goto_3

    :sswitch_10
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v7, 0x9

    goto :goto_3

    :sswitch_11
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v7, 0xf

    goto :goto_3

    :sswitch_12
    const-string v3, "VIDEO_CTRL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v7, 0x5

    goto :goto_3

    :sswitch_13
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v7, 0xa

    goto :goto_3

    :sswitch_14
    const-string v3, "NET_SCR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v7, 0x10

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v7, -0x1

    :goto_3
    const-string v3, ""

    const-string v8, "\\\\"

    const-string v9, "desc"

    const-string v14, "path"

    const-string v10, "0"

    const-string v11, "status"

    const-string v4, "1"

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_12

    .line 1243
    :pswitch_3
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getTopic="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 1245
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1246
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1002(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z

    if-eqz v1, :cond_c

    .line 1248
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    move-result-object v2

    if-nez v2, :cond_b

    .line 1249
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    new-instance v3, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    invoke-direct {v3}, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;-><init>()V

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5102(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/stream/dv/running2/camera/CameraPresenter;)Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    .line 1250
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->open()Z

    .line 1252
    :cond_b
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    move-result-object v2

    new-instance v3, Landroid/graphics/SurfaceTexture;

    const v4, 0x8d65

    invoke-direct {v3, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->startPreview(Landroid/graphics/SurfaceTexture;)V

    goto :goto_4

    .line 1254
    :cond_c
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1255
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->stopPreview()V

    .line 1256
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->close()V

    .line 1257
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5102(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/stream/dv/running2/camera/CameraPresenter;)Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    .line 1258
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2, v5}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1002(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z

    .line 1261
    :cond_d
    :goto_4
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1262
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->setDeviceState(Z)V

    .line 1264
    :cond_e
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    goto/16 :goto_12

    .line 1234
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 1235
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1236
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cyc save video : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_37

    .line 1238
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->cyc_save_video_failed:I

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1200
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 1201
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PULL_VIDEO_STATUS >>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 1203
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;

    invoke-direct {v2, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;)V

    invoke-virtual {v1, v2, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_12

    .line 1169
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 1170
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v2, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1102(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z

    .line 1171
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1172
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    move-result-object v1

    if-nez v1, :cond_f

    .line 1173
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {}, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->getInstance()Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4602(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;)Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    .line 1174
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    move-result-object v1

    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->setRecordListener(Lcom/jieli/stream/dv/running2/audio/AudioRecordManager$RecorderListener;)V

    .line 1176
    :cond_f
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->startRecord()I

    move-result v1

    if-eq v1, v15, :cond_10

    goto :goto_5

    .line 1179
    :cond_10
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->getInstance(Ljava/lang/String;)Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4702(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/lib/dv/control/intercom/IntercomManager;)Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    .line 1180
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->initSendThread()V

    .line 1181
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    move-result-object v1

    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->setOnSendStateListener(Lcom/jieli/lib/dv/control/projection/OnSendStateListener;)V

    goto :goto_5

    .line 1189
    :cond_11
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1190
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/audio/AudioRecordManager;->stopRecord()V

    .line 1192
    :cond_12
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1193
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->stopSendDataThread()V

    .line 1196
    :cond_13
    :goto_5
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    goto/16 :goto_12

    .line 1153
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v2

    if-nez v2, :cond_14

    return-void

    .line 1156
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 1158
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/FileInfo;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 1160
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 1161
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1162
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    goto/16 :goto_12

    .line 1135
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v2

    if-nez v2, :cond_15

    .line 1136
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "No param"

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1139
    :cond_15
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TF state:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    const-string v2, "online"

    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1141
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TF state online "

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->stopLocalRecording()V

    .line 1143
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 1144
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6, v15, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_12

    .line 1147
    :cond_16
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result v1

    if-ne v1, v15, :cond_17

    .line 1148
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 1149
    :cond_17
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$2100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    goto/16 :goto_12

    .line 1121
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v2

    if-nez v2, :cond_18

    return-void

    .line 1124
    :cond_18
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-MULTI_VIDEO_COVER- result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1126
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    move-result-object v1

    if-nez v1, :cond_19

    .line 1127
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbnailManager;->getInstance()Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3202(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/lib/dv/control/player/VideoThumbnail;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    .line 1129
    :cond_19
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-MULTI_VIDEO_COVER- create socket!"

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    move-result-object v1

    const/16 v2, 0x8b2

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->create(ILjava/lang/String;)Z

    .line 1131
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    move-result-object v1

    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->setOnFrameListener(Lcom/jieli/lib/dv/control/player/OnFrameListener;)V

    goto/16 :goto_12

    .line 1076
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v2

    if-nez v2, :cond_1a

    return-void

    .line 1079
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1080
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1081
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->device_no_media_files:I

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 1084
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1085
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 1086
    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getCameraType(Ljava/lang/String;)I

    move-result v2

    .line 1087
    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v3, v3, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v3

    if-ne v2, v3, :cond_1c

    .line 1088
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f90

    .line 1089
    invoke-static {v2, v3, v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->formatUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1090
    iget-object v4, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", ip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", path="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$2;

    invoke-direct {v1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;)V

    invoke-static {v3, v1}, Lcom/jieli/stream/dv/running2/util/HttpManager;->downloadFile(Ljava/lang/String;Lokhttp3/Callback;)V

    goto/16 :goto_12

    .line 1117
    :cond_1c
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cameraType is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1048
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v2

    if-nez v2, :cond_1d

    return-void

    .line 1051
    :cond_1d
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 1053
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1054
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 1055
    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1056
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-PHOTO_CTRL- photoDesc = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->parseFileInfo(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/FileInfo;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 1059
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 1060
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4202(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Ljava/util/List;)Ljava/util/List;

    .line 1063
    :cond_1e
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCameraType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v4, 0x2

    goto :goto_6

    :cond_1f
    const/4 v4, 0x1

    .line 1066
    :goto_6
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v2

    if-ne v4, v2, :cond_37

    .line 1067
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1068
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->convertJson(Ljava/util/List;)Ljava/lang/String;

    .line 1069
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    goto/16 :goto_12

    .line 1015
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v2

    if-nez v2, :cond_20

    return-void

    .line 1018
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1019
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1021
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2, v15}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1202(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;I)I

    goto :goto_7

    .line 1023
    :cond_21
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    const/4 v5, 0x2

    invoke-static {v2, v5}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1202(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;I)I

    .line 1025
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1026
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1027
    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1028
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-VIDEO_FINISH- desc = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->parseFileInfo(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/FileInfo;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 1032
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCameraType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v4, 0x2

    goto :goto_8

    :cond_22
    const/4 v4, 0x1

    .line 1035
    :goto_8
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v1

    if-ne v4, v1, :cond_37

    .line 1036
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$1;

    invoke-direct {v2, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;)V

    invoke-virtual {v1, v2, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_12

    .line 1045
    :cond_23
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMD:VIDEO_FINISH:desc is null"

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 996
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v2

    if-nez v2, :cond_24

    .line 997
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VIDEO_CTRL: param is null"

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1000
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1001
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1002
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1004
    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3, v15}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1202(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;I)I

    goto :goto_9

    .line 1006
    :cond_25
    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1202(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;I)I

    .line 1008
    :goto_9
    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 1009
    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dir="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1011
    :cond_26
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "state is empty"

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 982
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 983
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 984
    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close rt stream result : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isAdjustResolution="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v6}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isSwitchCamera="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v6}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_37

    .line 986
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 987
    :cond_27
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close=ok="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1, v5}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$602(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z

    .line 990
    :cond_28
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 991
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    goto/16 :goto_12

    :pswitch_f
    const/16 v3, 0x8b0

    goto :goto_a

    .line 923
    :pswitch_10
    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v3, v3, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v4, v4, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v4}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getAutoRearCameraKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 925
    iget-object v3, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v3, v3, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    iget-object v4, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v4, v4, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v4}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getAutoRearCameraKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_29
    const/16 v3, 0x8b1

    .line 928
    :goto_a
    iget-object v4, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "port : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Open result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v4, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$2900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 930
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Please don\'t do it again."

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 933
    :cond_2a
    iget-object v4, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "open=ok="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2, v5}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$2902(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z

    .line 935
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v2

    if-eqz v2, :cond_37

    const/16 v2, 0x8b0

    if-ne v3, v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_b

    :cond_2b
    const/4 v2, 0x0

    .line 940
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v4

    const-string v6, "w"

    invoke-virtual {v4, v6}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 941
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v6

    const-string v7, "h"

    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 942
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    const-string v7, "format"

    invoke-virtual {v1, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 943
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2c

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 944
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_c

    :cond_2c
    const/4 v4, 0x0

    .line 946
    :goto_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2d

    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 947
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_d

    :cond_2d
    const/4 v6, 0x0

    .line 949
    :goto_d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2e

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 950
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v16, v1

    goto :goto_e

    :cond_2e
    const/16 v16, -0x1

    .line 952
    :goto_e
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getNetMode()I

    move-result v1

    if-eq v1, v15, :cond_2f

    .line 953
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/RealtimeStream;

    move-result-object v1

    if-nez v1, :cond_30

    .line 954
    :cond_2f
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1, v15, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;II)V

    :cond_30
    if-nez v16, :cond_31

    .line 958
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/RealtimeStream;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->setResolution(II)Z

    :cond_31
    if-eqz v2, :cond_32

    .line 961
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/RealtimeStream;

    move-result-object v1

    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getFrontRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->setFrameRate(I)Z

    .line 962
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/RealtimeStream;

    move-result-object v1

    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getFrontSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->setSampleRate(I)Z

    goto :goto_f

    .line 964
    :cond_32
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/RealtimeStream;

    move-result-object v1

    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRearRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->setFrameRate(I)Z

    .line 965
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/RealtimeStream;

    move-result-object v1

    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRearSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/player/RealtimeStream;->setSampleRate(I)Z

    .line 967
    :goto_f
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    const-string v2, "tcp://127.0.0.1:6789"

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Ljava/lang/String;)V

    .line 968
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    const/16 v2, 0x8b1

    if-ne v3, v2, :cond_33

    goto :goto_10

    :cond_33
    const/4 v15, 0x0

    :goto_10
    invoke-static {v1, v15, v4, v6}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;ZII)V

    .line 970
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isExistRearView()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 971
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3100(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    goto :goto_11

    .line 974
    :cond_34
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 976
    :goto_11
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1, v5}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$702(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z

    .line 977
    :cond_35
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "finish========================="

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 909
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    const-string v2, "snap_status"

    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 910
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 911
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 913
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$2500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_12

    .line 914
    :cond_36
    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 916
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3300(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->performClick()Z

    :cond_37
    :goto_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x59346a0e -> :sswitch_3
        -0x2ed7acb1 -> :sswitch_2
        -0x2d892eba -> :sswitch_1
        0xac45b3b -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x674f69c0 -> :sswitch_14
        -0x59346a0e -> :sswitch_13
        -0x41c92831 -> :sswitch_12
        -0x2ed7acb1 -> :sswitch_11
        -0x2d892eba -> :sswitch_10
        -0x2c8b4b6d -> :sswitch_f
        -0x222f5660 -> :sswitch_e
        -0x16eb42bb -> :sswitch_d
        0x642878 -> :sswitch_c
        0x4156207 -> :sswitch_b
        0xac45b3b -> :sswitch_a
        0x1061d4f7 -> :sswitch_9
        0x1bdacc68 -> :sswitch_8
        0x3bd7fa76 -> :sswitch_7
        0x551ef3ea -> :sswitch_6
        0x682b8938 -> :sswitch_5
        0x7f44f410 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 838
    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method
