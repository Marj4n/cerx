.class public Lcom/generalplus/GoPlusDrone/Activity/StartActivity;
.super Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;
.source "StartActivity.java"


# static fields
.field private static final Language_KEY:Ljava/lang/String; = "Language_KEY"

.field private static final SharedPreferences_KEY:Ljava/lang/String; = "SharedPreferences_KEY"


# instance fields
.field private m_SharedPreferences:Landroid/content/SharedPreferences;

.field private m_bIsCard:Z

.field private m_bnStart:Landroid/widget/Button;

.field private m_iLocale:I

.field private m_locale:[Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 26
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_SharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_iLocale:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/util/Locale;

    .line 31
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v3, v2, v1

    sget-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_locale:[Ljava/util/Locale;

    .line 32
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_bnStart:Landroid/widget/Button;

    .line 33
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_bIsCard:Z

    return-void
.end method

.method private Start()V
    .locals 4

    .line 114
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_bIsCard:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 115
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_connectGPWifiDeviceThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_Dialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_Dialog:Landroid/app/ProgressDialog;

    .line 119
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_Dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 120
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_Dialog:Landroid/app/ProgressDialog;

    const-string v1, "Please wait ..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_Dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 124
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;-><init>(Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_connectGPWifiDeviceThread:Ljava/lang/Thread;

    .line 125
    sget-object v0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_connectGPWifiDeviceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "IsCard"

    .line 131
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 133
    const-class v1, Lcom/generalplus/GoPlusDrone/Activity/MainOldActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/generalplus/GoPlusDrone/Activity/StartActivity;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_iLocale:I

    return p0
.end method

.method static synthetic access$002(Lcom/generalplus/GoPlusDrone/Activity/StartActivity;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_iLocale:I

    return p1
.end method

.method static synthetic access$100(Lcom/generalplus/GoPlusDrone/Activity/StartActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->updateLanguage()V

    return-void
.end method

.method static synthetic access$200(Lcom/generalplus/GoPlusDrone/Activity/StartActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_SharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private shouldAskPermission()Z
    .locals 2

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showLanDialog()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 91
    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->item_Language1:I

    invoke-virtual {p0, v1}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->item_Language2:I

    .line 92
    invoke-virtual {p0, v1}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->item_Language3:I

    invoke-virtual {p0, v1}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->item_Language0:I

    invoke-virtual {p0, v1}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 94
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/StartActivity$1;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/StartActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateLanguage()V
    .locals 5

    .line 81
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 83
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 84
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_locale:[Ljava/util/Locale;

    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_iLocale:I

    aget-object v3, v3, v4

    iput-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 87
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_bnStart:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/generalplus/GoPlusDrone/R$string;->start_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget p1, Lcom/generalplus/GoPlusDrone/R$layout;->activity_start:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->setContentView(I)V

    .line 39
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->bnStart:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_bnStart:Landroid/widget/Button;

    const-string p1, "SharedPreferences_KEY"

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->m_SharedPreferences:Landroid/content/SharedPreferences;

    .line 43
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->tvName:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->main_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 55
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 61
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->shouldAskPermission()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 62
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xc8

    .line 70
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0xc8

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 154
    aget p3, p3, p2

    if-nez p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-nez p2, :cond_2

    .line 156
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->shouldAskPermission()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 157
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 159
    invoke-static {p0, p2, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 76
    invoke-super {p0}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;->onResume()V

    return-void
.end method

.method public pressLanguage(Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->showLanDialog()V

    return-void
.end method

.method public pressLowDelayStart(Landroid/view/View;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->Start()V

    return-void
.end method

.method public pressRTPStart(Landroid/view/View;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->Start()V

    return-void
.end method

.method public pressStart(Landroid/view/View;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/StartActivity;->Start()V

    return-void
.end method
