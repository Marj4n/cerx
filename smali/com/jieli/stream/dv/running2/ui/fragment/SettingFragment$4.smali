.class Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 167
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    .line 168
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getType()I

    move-result p4

    if-nez p4, :cond_8

    .line 170
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->item_setting_one_tv2:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 171
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    sget p4, Lcom/jieli/stream/dv/running2/R$string;->device_setting:I

    invoke-virtual {p3, p4}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 172
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->start(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    sget p2, Lcom/jieli/stream/dv/running2/R$string;->please_connect_device_to_use:I

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :cond_1
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    sget p4, Lcom/jieli/stream/dv/running2/R$string;->language:I

    invoke-virtual {p3, p4}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 178
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 179
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->start(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 181
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    sget p2, Lcom/jieli/stream/dv/running2/R$string;->please_connect_device_to_use:I

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :cond_3
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    sget p4, Lcom/jieli/stream/dv/running2/R$string;->app_advanced_settings:I

    invoke-virtual {p3, p4}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 184
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 185
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->start(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 187
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    sget p2, Lcom/jieli/stream/dv/running2/R$string;->please_connect_device_to_use:I

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_5
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    sget p4, Lcom/jieli/stream/dv/running2/R$string;->about_app:I

    invoke-virtual {p3, p4}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 189
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;)V

    goto :goto_0

    .line 190
    :cond_6
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    sget p4, Lcom/jieli/stream/dv/running2/R$string;->help:I

    invoke-virtual {p3, p4}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_0

    .line 191
    :cond_7
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    sget p3, Lcom/jieli/stream/dv/running2/R$string;->app_storage_manager:I

    invoke-virtual {p2, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 192
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 195
    :cond_8
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->access$300()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "item.getType() "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getType()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", position "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method
