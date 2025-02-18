.class public Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "DeviceNameFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$CustomNameFilter;
    }
.end annotation


# static fields
.field private static final NAME_MAX_LEN:I = 0x1f


# instance fields
.field private isModified:Z

.field private mCurrentPwd:Ljava/lang/String;

.field private mCurrentSsid:Ljava/lang/String;

.field private mInputCount:I

.field private nameEditText:Landroid/widget/EditText;

.field private notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private final onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field private final prefixLen:I

.field private saveBtn:Landroid/widget/Button;

.field private tag:Ljava/lang/String;

.field private tipString:Ljava/lang/String;

.field private tipTv:Landroid/widget/TextView;

.field private waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->tag:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/jieli/stream/dv/running2/util/IConstant;->WIFI_PREFIX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->prefixLen:I

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->mInputCount:I

    .line 58
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->isModified:Z

    .line 326
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$7;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->mInputCount:I

    return p0
.end method

.method static synthetic access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->mCurrentSsid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->mCurrentSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->mInputCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->changeName(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->mCurrentPwd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->nameEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Ljava/lang/CharSequence;)I
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->getCurLength(Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->prefixLen:I

    return p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Landroid/widget/TextView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->tipTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->tipString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->tipString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->showChoseDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->sub(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->isModified:Z

    return p0
.end method

.method static synthetic access$902(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->isModified:Z

    return p1
.end method

.method private changeName(Z)V
    .locals 4

    .line 251
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->WIFI_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->nameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->mCurrentPwd:Ljava/lang/String;

    new-instance v3, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;

    invoke-direct {v3, p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Z)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSetApAccount(Ljava/lang/String;Ljava/lang/String;ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method

.method private getCurLength(Ljava/lang/CharSequence;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 236
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 237
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private showChoseDialog()V
    .locals 7

    .line 292
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez v0, :cond_0

    .line 293
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->immediate_effect:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_no:I

    sget v4, Lcom/jieli/stream/dv/running2/R$string;->dialog_yes:I

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$5;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$5;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)V

    new-instance v6, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$6;

    invoke-direct {v6, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$6;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "change_name_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private sub(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 218
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 219
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    if-gt p2, v2, :cond_1

    .line 225
    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 65
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_device_setting_name:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 66
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->device_setting_name_save_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->saveBtn:Landroid/widget/Button;

    .line 67
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->device_setting_name_et:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->nameEditText:Landroid/widget/EditText;

    .line 68
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->tip_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->tipTv:Landroid/widget/TextView;

    .line 69
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->wifi_ssid_prefix_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 70
    sget-object p3, Lcom/jieli/stream/dv/running2/util/IConstant;->WIFI_PREFIX:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 73
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->nameEditText:Landroid/widget/EditText;

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->prefixLen:I

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p2

    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$1;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)V

    invoke-virtual {p2, p3}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRequestApInfo(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 85
    :try_start_0
    sget p2, Lcom/jieli/stream/dv/running2/R$string;->device_name_input_limit:I

    invoke-virtual {p0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->prefixLen:I

    rsub-int/lit8 v1, v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->nameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->tipString:Ljava/lang/String;

    .line 86
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->tipTv:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 88
    invoke-virtual {p2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 90
    :goto_0
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->nameEditText:Landroid/widget/EditText;

    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->saveBtn:Landroid/widget/Button;

    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$3;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 317
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDestroy()V

    .line 318
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->notifyDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 323
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->waitingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/WaitingDialog;

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 366
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStart()V

    .line 367
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 372
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    .line 373
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method
