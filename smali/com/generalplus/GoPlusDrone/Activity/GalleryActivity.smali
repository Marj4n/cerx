.class public Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "GalleryActivity.java"


# static fields
.field public static m_bEdit:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private updateLanguage()V
    .locals 4

    .line 101
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 104
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method


# virtual methods
.method public isCN()Z
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 80
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 27
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget p1, Lcom/generalplus/GoPlusDrone/R$layout;->activity_gallery:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->setContentView(I)V

    const/4 p1, 0x0

    .line 29
    sput-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->m_bEdit:Z

    const v0, 0x1020012

    .line 30
    invoke-virtual {p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTabHost;

    .line 31
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget v2, Lcom/generalplus/GoPlusDrone/R$id;->realtabcontent:I

    invoke-virtual {v0, p0, v1, v2}, Landroidx/fragment/app/FragmentTabHost;->setup(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V

    .line 33
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/generalplus/GoPlusDrone/R$string;->tab_photo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 34
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/generalplus/GoPlusDrone/R$string;->tab_photo:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;

    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/generalplus/GoPlusDrone/R$string;->tab_video:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 39
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/generalplus/GoPlusDrone/R$string;->tab_video:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;

    .line 38
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;Landroidx/fragment/app/FragmentTabHost;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity$2;-><init>(Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;Landroidx/fragment/app/FragmentTabHost;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    const/4 v0, -0x1

    .line 68
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 72
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->tab_back:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->finish()V

    .line 92
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 96
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method
