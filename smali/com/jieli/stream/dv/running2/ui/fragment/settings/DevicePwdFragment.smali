.class public Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "DevicePwdFragment.java"


# instance fields
.field private changePwdDialog:Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;

.field private currentPwd:Ljava/lang/String;

.field private currentSsid:Ljava/lang/String;

.field private isChanged:Z

.field private notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private final onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field private pwdConfirmEditText:Landroid/widget/EditText;

.field private pwdEditText:Landroid/widget/EditText;

.field private tag:Ljava/lang/String;

.field private waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->isChanged:Z

    .line 177
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$6;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Landroid/widget/EditText;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->pwdEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Landroid/widget/EditText;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->pwdConfirmEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->currentPwd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->currentPwd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->showChoseDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    return-object p0
.end method

.method static synthetic access$502(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->currentSsid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->currentSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->isChanged:Z

    return p0
.end method

.method static synthetic access$702(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->isChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->showPwdInputDialog(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method private showChoseDialog()V
    .locals 7

    .line 158
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez v0, :cond_0

    .line 159
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->immediate_effect:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_no:I

    sget v4, Lcom/jieli/stream/dv/running2/R$string;->dialog_yes:I

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$4;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$4;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)V

    new-instance v6, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$5;

    invoke-direct {v6, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$5;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "change_name_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showPwdInputDialog(Z)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->changePwdDialog:Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;

    if-nez v0, :cond_0

    .line 97
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->input_old_pwd:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->newInstance(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->changePwdDialog:Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;

    .line 98
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->setOnInputCompletionListener(Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog$OnInputCompletionListener;)V

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->changePwdDialog:Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "changePwdDialog"

    invoke-virtual {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 53
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_device_setting_pwd:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->pwd_setting_save_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 55
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->pwd_setting_et:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->pwdEditText:Landroid/widget/EditText;

    .line 56
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->pwd_setting_comfir_et:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->pwdConfirmEditText:Landroid/widget/EditText;

    .line 57
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p3

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)V

    invoke-virtual {p3, v0}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRequestApInfo(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 65
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$2;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 223
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDestroy()V

    .line 224
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 229
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    .line 230
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->changePwdDialog:Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->changePwdDialog:Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->dismiss()V

    .line 232
    :cond_2
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->changePwdDialog:Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 211
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStart()V

    .line 212
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 217
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    .line 218
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method
