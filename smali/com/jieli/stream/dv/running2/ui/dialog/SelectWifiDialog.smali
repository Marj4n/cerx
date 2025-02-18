.class public Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;
.source "SelectWifiDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$OnConnectWifiListener;,
        Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;
    }
.end annotation


# instance fields
.field private isShowPwd:Z

.field private ivShowOrHidePwd:Landroid/widget/ImageView;

.field private listener:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$OnConnectWifiListener;

.field private mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;

.field private mEditPwd:Landroid/widget/EditText;

.field private mLeftBtn:Landroid/widget/TextView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRightBtn:Landroid/widget/TextView;

.field private mSSID:Ljava/lang/String;

.field private mSpinner:Landroid/widget/Spinner;

.field private mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

.field private onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;-><init>()V

    .line 153
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$2;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 173
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mSSID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Landroid/widget/EditText;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mEditPwd:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mLeftBtn:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$OnConnectWifiListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->listener:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$OnConnectWifiListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mRightBtn:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->ivShowOrHidePwd:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->isShowPwd:Z

    return p0
.end method

.method static synthetic access$802(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->isShowPwd:Z

    return p1
.end method

.method private initSpinner()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiScanResult()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 122
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/jieli/stream/dv/running2/util/IConstant;->WIFI_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 128
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$1;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 142
    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    :cond_2
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;Landroid/content/Context;Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$1;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;

    const v2, 0x1090009

    .line 145
    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;->setDropDownViewResource(I)V

    .line 146
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;->addAll(Ljava/util/Collection;)V

    .line 147
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 148
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 92
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x64

    .line 96
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 97
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 98
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 100
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 101
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 103
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 104
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    :goto_0
    const/16 v0, 0x11

    .line 106
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 107
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 109
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->initSpinner()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->setCancelable(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 72
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->dialog_select_wifi:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 73
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 76
    :cond_0
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dialog_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->tvTitle:Landroid/widget/TextView;

    .line 77
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dialog_wifi_ssid_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mSpinner:Landroid/widget/Spinner;

    .line 78
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dialog_edit_wifi_pwd:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mEditPwd:Landroid/widget/EditText;

    .line 79
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dialog_show_or_hide_pwd:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->ivShowOrHidePwd:Landroid/widget/ImageView;

    .line 80
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dialog_left:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mLeftBtn:Landroid/widget/TextView;

    .line 81
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dialog_right:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mRightBtn:Landroid/widget/TextView;

    .line 83
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mSpinner:Landroid/widget/Spinner;

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 84
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mLeftBtn:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mRightBtn:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->ivShowOrHidePwd:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 0

    .line 114
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onDetach()V

    return-void
.end method

.method public setOnConnectWifiListener(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$OnConnectWifiListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->listener:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$OnConnectWifiListener;

    return-void
.end method
