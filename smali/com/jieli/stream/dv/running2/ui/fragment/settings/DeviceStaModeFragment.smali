.class public Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "DeviceStaModeFragment.java"


# instance fields
.field private btnSwitch:Landroid/widget/Button;

.field private editWifiPwd:Landroid/widget/EditText;

.field private editWifiSSID:Landroid/widget/EditText;

.field private isSaveMsg:Z

.field private isShowPwd:Z

.field private ivShowOrHidePwd:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSaveSTAMsgCheckbox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->sendRouterInformation()V

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->isShowPwd:Z

    return p0
.end method

.method static synthetic access$102(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->isShowPwd:Z

    return p1
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->handlerPwdUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->saveApMsg()V

    return-void
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private handlerPwdUI()V
    .locals 2

    .line 140
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->isShowPwd:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->editWifiPwd:Landroid/widget/EditText;

    .line 142
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 143
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->ivShowOrHidePwd:Landroid/widget/ImageView;

    sget v1, Lcom/jieli/stream/dv/running2/R$drawable;->dbg_show_pwd_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->editWifiPwd:Landroid/widget/EditText;

    .line 146
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 147
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->editWifiPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 148
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->ivShowOrHidePwd:Landroid/widget/ImageView;

    sget v1, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_hide_pwd:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private saveApMsg()V
    .locals 5

    .line 153
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "current_wifi_ssid"

    const/4 v2, 0x0

    .line 154
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 157
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v2

    invoke-static {v2, v3, v1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendRouterInformation()V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->editWifiSSID:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->editWifiPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->mSaveSTAMsgCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->isSaveMsg:Z

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->wifi_ssid_empty_tip:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    .line 108
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->pwd_lenth_limits:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 114
    :cond_2
    :goto_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    iget-boolean v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->isSaveMsg:Z

    new-instance v4, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSetSTAAccount(Ljava/lang/String;Ljava/lang/String;ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->mSaveSTAMsgCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->isSaveMsg:Z

    .line 68
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->ivShowOrHidePwd:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->btnSwitch:Landroid/widget/Button;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 55
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_device_sta_mode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->edit_wifi_ssid:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->editWifiSSID:Landroid/widget/EditText;

    .line 57
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->edit_wifi_pwd:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->editWifiPwd:Landroid/widget/EditText;

    .line 58
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->show_or_hide_pwd:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->ivShowOrHidePwd:Landroid/widget/ImageView;

    .line 59
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->save_sta_msg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->mSaveSTAMsgCheckbox:Landroid/widget/CheckBox;

    .line 60
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->switch_sta_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->btnSwitch:Landroid/widget/Button;

    return-object p1
.end method

.method public onDetach()V
    .locals 0

    .line 79
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDetach()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onResume()V

    return-void
.end method
