.class public Lcom/generalplus/GoPlusDrone/Activity/MainOldActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainOldActivity.java"


# instance fields
.field private m_TabFragment:Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;

.field private m_bIsCard:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MainOldActivity;->m_TabFragment:Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MainOldActivity;->m_bIsCard:Z

    return-void
.end method

.method private updateLanguage()V
    .locals 4

    .line 67
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/MainOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 69
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 70
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method


# virtual methods
.method public displayView(I)V
    .locals 2

    .line 100
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->nav_slideshow:I

    if-ne p1, v0, :cond_1

    .line 101
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/MainOldActivity;->m_TabFragment:Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;

    if-nez p1, :cond_0

    .line 102
    new-instance p1, Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;

    invoke-direct {p1}, Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;-><init>()V

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/MainOldActivity;->m_TabFragment:Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/MainOldActivity;->m_TabFragment:Lcom/generalplus/GoPlusDrone/Fragment/TabFragment;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/MainOldActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 109
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->content_frame:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 110
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/MainOldActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 115
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/MainOldActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget p1, Lcom/generalplus/GoPlusDrone/R$layout;->content_main:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/MainOldActivity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/MainOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IsCard"

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/Activity/MainOldActivity;->m_bIsCard:Z

    .line 55
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->nav_camera:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/MainOldActivity;->displayView(I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method
