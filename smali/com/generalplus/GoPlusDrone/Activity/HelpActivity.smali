.class public Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"


# instance fields
.field private h_text1:Landroid/widget/TextView;

.field private h_text10:Landroid/widget/TextView;

.field private h_text11:Landroid/widget/TextView;

.field private h_text12:Landroid/widget/TextView;

.field private h_text2:Landroid/widget/TextView;

.field private h_text3:Landroid/widget/TextView;

.field private h_text4:Landroid/widget/TextView;

.field private h_text5:Landroid/widget/TextView;

.field private h_text6:Landroid/widget/TextView;

.field private h_text7:Landroid/widget/TextView;

.field private h_text8:Landroid/widget/TextView;

.field private h_text9:Landroid/widget/TextView;

.field private layout:Landroid/widget/LinearLayout;

.field private layout1:Landroid/widget/LinearLayout;

.field private mScreenWidth:I

.field private mScreenheight:I

.field private version_t:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->finish()V

    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .line 91
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 94
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget p1, Lcom/generalplus/GoPlusDrone/R$layout;->help_activity:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->setContentView(I)V

    .line 28
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->help_layout:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->layout:Landroid/widget/LinearLayout;

    .line 29
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->help_layout1:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->layout1:Landroid/widget/LinearLayout;

    .line 30
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->h_text1:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text1:Landroid/widget/TextView;

    .line 31
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->h_text2:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text2:Landroid/widget/TextView;

    .line 32
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->h_text3:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text3:Landroid/widget/TextView;

    .line 33
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->h_text4:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text4:Landroid/widget/TextView;

    .line 34
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->h_text5:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text5:Landroid/widget/TextView;

    .line 35
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->h_text6:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text6:Landroid/widget/TextView;

    .line 36
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->h_text7:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text7:Landroid/widget/TextView;

    .line 37
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->h_text8:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text8:Landroid/widget/TextView;

    .line 38
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->h_text9:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text9:Landroid/widget/TextView;

    .line 39
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->h_text10:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text10:Landroid/widget/TextView;

    .line 40
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->h_text11:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text11:Landroid/widget/TextView;

    .line 41
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->h_text12:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text12:Landroid/widget/TextView;

    .line 42
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->version:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->version_t:Landroid/widget/TextView;

    .line 43
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->mScreenWidth:I

    .line 44
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->mScreenheight:I

    .line 47
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->mScreenWidth:I

    mul-int/lit8 v1, v0, 0x9

    div-int/lit8 v1, v1, 0xa

    div-int/lit8 v0, v0, 0xf

    invoke-direct {p1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x14

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 49
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    sget v1, Lcom/generalplus/GoPlusDrone/R$drawable;->text_style:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x10

    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x7

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->mScreenWidth:I

    div-int/lit8 v3, v3, 0x19

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 58
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getVersion()Ljava/lang/String;

    move-result-object v4

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/generalplus/GoPlusDrone/R$string;->language3:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/generalplus/GoPlusDrone/R$string;->language4:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->layout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->mScreenWidth:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->layout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->layout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 69
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->language31:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->language32:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->language34:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text4:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->language35:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text5:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->language36:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text6:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->language37:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text7:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->language38:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text8:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->language39:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text9:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->language49:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text10:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->language60:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text11:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->language61:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->h_text12:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/generalplus/GoPlusDrone/R$string;->language62:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->version_t:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/generalplus/GoPlusDrone/R$string;->language295:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/HelpActivity;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
