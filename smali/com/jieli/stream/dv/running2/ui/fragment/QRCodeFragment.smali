.class public Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "QRCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isShowPwd:Z

.field private mBackToSearchButton:Landroid/widget/Button;

.field private mEditWifiPwd:Landroid/widget/EditText;

.field private mEditWifiSSID:Landroid/widget/EditText;

.field private mGenerateQRCodeButton:Landroid/widget/Button;

.field private mPasswordView:Landroid/widget/ImageView;

.field private mReturnButton:Landroid/widget/Button;

.field private mSaveInfoCheckbox:Landroid/widget/CheckBox;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->tag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->toDeviceListFragment(Landroid/os/Bundle;)V

    return-void
.end method

.method private handlerPwdUI()V
    .locals 2

    .line 81
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->isShowPwd:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mEditWifiPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 83
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mPasswordView:Landroid/widget/ImageView;

    sget v1, Lcom/jieli/stream/dv/running2/R$drawable;->dbg_show_pwd_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mEditWifiPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 86
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mEditWifiPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 87
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mPasswordView:Landroid/widget/ImageView;

    sget v1, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_hide_pwd:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private showQRCodeDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->wifi_ssid_empty_tip:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 98
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->pwd_lenth_limits:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mSaveInfoCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;

    move-result-object p1

    .line 104
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment$1;

    invoke-direct {p2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;)V

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->setOnCompletedListener(Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;)V

    .line 115
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "QRDialog"

    invoke-virtual {p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/QRCodeDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private toDeviceListFragment(Landroid/os/Bundle;)V
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$id;->container:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 122
    instance-of v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    if-nez v1, :cond_0

    .line 123
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/DeviceListFragment;-><init>()V

    .line 124
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    sget v1, Lcom/jieli/stream/dv/running2/R$id;->container:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method private toStaDeviceListFragment()V
    .locals 4

    .line 129
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    .line 130
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;-><init>()V

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    sget v2, Lcom/jieli/stream/dv/running2/R$id;->container:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mGenerateQRCodeButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 66
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mEditWifiSSID:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mEditWifiPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->showQRCodeDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mPasswordView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 68
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->isShowPwd:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->isShowPwd:Z

    .line 69
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->handlerPwdUI()V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mReturnButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->toDeviceListFragment(Landroid/os/Bundle;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mBackToSearchButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 76
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->toStaDeviceListFragment()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 43
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_sta_qr_code:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->edit_hot_spot_wifi:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mEditWifiSSID:Landroid/widget/EditText;

    .line 45
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->edit_hot_spot_pwd:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mEditWifiPwd:Landroid/widget/EditText;

    .line 46
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->generate_qr_code_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mGenerateQRCodeButton:Landroid/widget/Button;

    .line 47
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->show_or_hide_pwd:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mPasswordView:Landroid/widget/ImageView;

    .line 48
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->hot_spot_return_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mReturnButton:Landroid/widget/Button;

    .line 49
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->save_sta_msg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mSaveInfoCheckbox:Landroid/widget/CheckBox;

    .line 50
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->back_to_search_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mBackToSearchButton:Landroid/widget/Button;

    .line 51
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mGenerateQRCodeButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mPasswordView:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mReturnButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->mBackToSearchButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
