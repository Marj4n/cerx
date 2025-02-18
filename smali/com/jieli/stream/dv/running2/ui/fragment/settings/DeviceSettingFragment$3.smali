.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;
.super Ljava/lang/Object;
.source "DeviceSettingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 144
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    .line 145
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getType()I

    move-result p3

    if-nez p3, :cond_12

    .line 147
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->item_setting_one_tv2:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 148
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;

    .line 149
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    sget p5, Lcom/jieli/stream/dv/running2/R$string;->device_name:I

    invoke-virtual {p4, p5}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 150
    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->toDeviceNameFragment()V

    goto/16 :goto_0

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    sget p5, Lcom/jieli/stream/dv/running2/R$string;->device_password:I

    invoke-virtual {p4, p5}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 152
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 154
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    sget p2, Lcom/jieli/stream/dv/running2/R$string;->name_empty_error:I

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_1
    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->toDevicePwdFragment()V

    goto/16 :goto_0

    .line 158
    :cond_2
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    sget p5, Lcom/jieli/stream/dv/running2/R$string;->volume_adjustment:I

    invoke-virtual {p4, p5}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 159
    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->toDeviceVolumeFragment()V

    goto/16 :goto_0

    .line 160
    :cond_3
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    sget p5, Lcom/jieli/stream/dv/running2/R$string;->photo_quality:I

    invoke-virtual {p4, p5}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 161
    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->toDevicePictureQualityFragment()V

    goto/16 :goto_0

    .line 162
    :cond_4
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    sget p5, Lcom/jieli/stream/dv/running2/R$string;->setting_record_quality:I

    invoke-virtual {p4, p5}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_9

    .line 163
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 164
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getRecordFrontSupport()[Ljava/lang/String;

    move-result-object p1

    .line 165
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    iget-object p3, p3, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getRecordRearSupport()[Ljava/lang/String;

    move-result-object p3

    if-eqz p1, :cond_5

    .line 166
    array-length p1, p1

    if-gtz p1, :cond_7

    :cond_5
    if-eqz p3, :cond_6

    array-length p1, p3

    if-lez p1, :cond_7

    .line 167
    :cond_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    sget p2, Lcom/jieli/stream/dv/running2/R$string;->curr_dev_not_support:I

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    return-void

    .line 172
    :cond_7
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRecordState()I

    move-result p1

    if-ne p4, p1, :cond_8

    .line 173
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    const/4 p3, 0x2

    invoke-static {p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;I)V

    goto/16 :goto_0

    .line 175
    :cond_8
    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->toDeviceRecordQualityFragment()V

    goto/16 :goto_0

    .line 177
    :cond_9
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->camera_model:I

    invoke-virtual {p5, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 178
    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->toDeviceCameraModeFragment()V

    goto/16 :goto_0

    .line 179
    :cond_a
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->advanced_settings:I

    invoke-virtual {p5, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 180
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRecordState()I

    move-result p1

    if-ne p4, p1, :cond_b

    .line 181
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;I)V

    goto/16 :goto_0

    .line 183
    :cond_b
    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->toDeviceAdvancedSettingFragment()V

    goto/16 :goto_0

    .line 185
    :cond_c
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->device_storage_manage:I

    invoke-virtual {p5, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 186
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->isSdcardExist()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 187
    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->toDeviceStorageManageFragment()V

    goto :goto_0

    .line 189
    :cond_d
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    sget p2, Lcom/jieli/stream/dv/running2/R$string;->sdcard_offline:I

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_e
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->switch_sta_mode:I

    invoke-virtual {p5, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 192
    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->toDeviceStaModeFragment()V

    goto :goto_0

    .line 193
    :cond_f
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->switch_ap_mode:I

    invoke-virtual {p5, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 194
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    goto :goto_0

    .line 195
    :cond_10
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    sget p5, Lcom/jieli/stream/dv/running2/R$string;->factory_reset:I

    invoke-virtual {p3, p5}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 196
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRecordState()I

    move-result p1

    if-ne p4, p1, :cond_11

    .line 197
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1, p2, p4}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;I)V

    goto :goto_0

    .line 199
    :cond_11
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    :cond_12
    :goto_0
    return-void
.end method
