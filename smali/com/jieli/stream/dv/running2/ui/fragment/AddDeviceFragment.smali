.class public Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "AddDeviceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;

.field private isAddDev:Z

.field private scanResult:Landroid/net/wifi/ScanResult;

.field private searchWifiListView:Landroid/widget/ListView;

.field private selectWifiSSIDTv:Landroid/widget/TextView;

.field private wifiBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/WifiBean;",
            ">;"
        }
    .end annotation
.end field

.field private wifiPwdEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->isAddDev:Z

    return-void
.end method

.method private getScanResultForList(Lcom/jieli/stream/dv/running2/bean/WifiBean;)Landroid/net/wifi/ScanResult;
    .locals 5

    .line 222
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_3

    .line 224
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/WifiBean;->getSSID()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiScanResult()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    if-eqz v2, :cond_2

    .line 231
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    return-object v1
.end method

.method private refresh()V
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    if-eqz v0, :cond_6

    .line 128
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->startScan()V

    .line 129
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiScanResult()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 131
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->wifiBeanList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->wifiBeanList:Ljava/util/List;

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 136
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    if-eqz v1, :cond_1

    .line 138
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->WIFI_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->wifiBeanList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 141
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->scanResult:Landroid/net/wifi/ScanResult;

    .line 143
    :cond_2
    new-instance v1, Lcom/jieli/stream/dv/running2/bean/WifiBean;

    invoke-direct {v1}, Lcom/jieli/stream/dv/running2/bean/WifiBean;-><init>()V

    .line 144
    invoke-virtual {v1, v3}, Lcom/jieli/stream/dv/running2/bean/WifiBean;->setSSID(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/bean/WifiBean;->setSelect(Z)V

    .line 146
    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/bean/WifiBean;->setState(I)V

    .line 147
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->wifiBeanList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->wifiBeanList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->wifiBeanList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/WifiBean;

    if-eqz v0, :cond_4

    .line 154
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->selectWifiSSIDTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/WifiBean;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 155
    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/bean/WifiBean;->setSelect(Z)V

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->adapter:Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;

    if-eqz v0, :cond_5

    .line 159
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 161
    :cond_5
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->wifiBeanList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->adapter:Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;

    .line 163
    :goto_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->searchWifiListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->adapter:Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->scanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->updateEditView(Landroid/net/wifi/ScanResult;)V

    :cond_6
    return-void
.end method

.method private updateEditView(Landroid/net/wifi/ScanResult;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 171
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "WPA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->wifiPwdEdit:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->wifiPwdEdit:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->wifiPwdEdit:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->refresh()V

    .line 76
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->registerOnWifiCallback(Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 94
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 96
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->add_dev_return_btn:I

    if-ne p1, v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 98
    :cond_1
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->add_dev_refresh_btn:I

    if-ne p1, v0, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->refresh()V

    goto/16 :goto_0

    .line 100
    :cond_2
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->add_dev_btn:I

    if-ne p1, v0, :cond_6

    .line 101
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->selectWifiSSIDTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->wifiPwdEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->isAddDev:Z

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 105
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,pwd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "current_wifi_ssid"

    invoke-static {v1, v2, p1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 108
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    sget-object v1, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->NONE:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    const-string v3, "0"

    invoke-virtual {v0, p1, v3, v1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->addNetWorkAndConnect(Ljava/lang/String;Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;)V

    .line 109
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->isAddDev:Z

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x8

    if-lt v1, v3, :cond_4

    .line 113
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    sget-object v3, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->WPA:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    invoke-virtual {v1, p1, v0, v3}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->addNetWorkAndConnect(Ljava/lang/String;Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;)V

    .line 114
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iput-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->isAddDev:Z

    goto :goto_0

    .line 117
    :cond_4
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->wifi_pwd_length_not_allow:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_5
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->wifi_pwd_not_empty:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onConnected(Landroid/net/wifi/WifiInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "current_wifi_ssid"

    .line 205
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->isAddDev:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 208
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->connected_wifi_tip:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 209
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->isAddDev:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 56
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_add_device:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->add_dev_return_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 58
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->add_dev_refresh_btn:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 59
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->add_dev_wifi_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->selectWifiSSIDTv:Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->add_dev_wifi_pwd_edit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->wifiPwdEdit:Landroid/widget/EditText;

    .line 61
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->add_dev_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->add_dev_list_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->searchWifiListView:Landroid/widget/ListView;

    .line 64
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->searchWifiListView:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 86
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->isAddDev:Z

    .line 88
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->unregisterOnWifiCallback(Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;)V

    return-void
.end method

.method public onError(I)V
    .locals 0

    .line 216
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->isAddDev:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 217
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->isAddDev:Z

    :cond_0
    return-void
.end method

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

    .line 182
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->adapter:Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;

    if-eqz p1, :cond_3

    .line 184
    invoke-virtual {p1, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/WifiBean;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 186
    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/bean/WifiBean;->setSelect(Z)V

    .line 187
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->selectWifiSSIDTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/WifiBean;->getSSID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->adapter:Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment$WifiListAdapter;->notifyDataSetChanged()V

    .line 189
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->getScanResultForList(Lcom/jieli/stream/dv/running2/bean/WifiBean;)Landroid/net/wifi/ScanResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 191
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->scanResult:Landroid/net/wifi/ScanResult;

    .line 193
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->scanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->updateEditView(Landroid/net/wifi/ScanResult;)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AddDeviceFragment;->refresh()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 81
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onResume()V

    return-void
.end method
