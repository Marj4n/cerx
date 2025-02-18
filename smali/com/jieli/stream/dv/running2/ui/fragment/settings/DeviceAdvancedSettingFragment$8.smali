.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$8;
.super Ljava/lang/Object;
.source "DeviceAdvancedSettingFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 14

    .line 239
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BOARD_VOICE"

    const-string v3, "GRA_SEN"

    const-string v4, "VIDEO_PAR_CAR"

    const-string v5, "VIDEO_MIC"

    const-string v6, "VIDEO_DATE"

    const/4 v7, -0x1

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v12

    invoke-static {v12}, Lcom/jieli/lib/dv/control/utils/Code;->getCodeDescription(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_1

    if-eq v1, v11, :cond_1

    if-eq v1, v10, :cond_1

    if-eq v1, v9, :cond_1

    if-eq v1, v8, :cond_1

    goto :goto_2

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->setting_failed:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :goto_2
    return-void

    .line 252
    :cond_2
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/4 v13, 0x5

    sparse-switch v12, :sswitch_data_1

    goto :goto_3

    :sswitch_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    goto :goto_4

    :sswitch_6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    :sswitch_7
    const-string v1, "VIDEO_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    goto :goto_4

    :sswitch_8
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    goto :goto_4

    :sswitch_9
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    goto :goto_4

    :sswitch_a
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v1, -0x1

    :goto_4
    if-eqz v1, :cond_8

    if-eq v1, v11, :cond_7

    if-eq v1, v10, :cond_7

    if-eq v1, v9, :cond_7

    if-eq v1, v8, :cond_7

    if-eq v1, v13, :cond_4

    goto/16 :goto_6

    .line 264
    :cond_4
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    .line 267
    :cond_5
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "desc"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIDEO_FINISH: there is desc ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "\\\\"

    const-string v1, ""

    .line 270
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->parseFileInfo(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/FileInfo;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 274
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCameraType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    const/4 v10, 0x1

    .line 277
    :goto_5
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v0

    if-ne v10, v0, :cond_9

    .line 278
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInstance()Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 280
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->convertJson(Ljava/util/List;)Ljava/lang/String;

    goto :goto_6

    .line 261
    :cond_7
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->setting_successed:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_6

    .line 254
    :cond_8
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v2, "gra"

    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->setting_successed:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_9
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x41c8faee -> :sswitch_4
        -0xa612fbd -> :sswitch_3
        -0x8d88ee -> :sswitch_2
        0x3b883933 -> :sswitch_1
        0x65459659 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x41c8faee -> :sswitch_a
        -0xa612fbd -> :sswitch_9
        -0x8d88ee -> :sswitch_8
        0x1061d4f7 -> :sswitch_7
        0x3b883933 -> :sswitch_6
        0x65459659 -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 236
    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$8;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method
