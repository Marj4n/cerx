.class public Lcom/gizthon/camera/activity/HelpActivity;
.super Lcom/gizthon/camera/activity/CameraBaseActivity;
.source "HelpActivity.java"


# instance fields
.field private binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/gizthon/camera/activity/CameraBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/gizthon/camera/activity/HelpActivity;)Lcom/gizthon/camera/databinding/HelpActivityBinding;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    return-object p0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gizthon/camera/activity/HelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/gizthon/camera/activity/CameraBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c007d

    .line 40
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iput-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    const-string p1, "#09B0F3"

    .line 41
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/jaeger/library/StatusBarUtil;->setColorNoTranslucent(Landroid/app/Activity;I)V

    .line 42
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivR:Landroid/widget/ImageView;

    new-instance v0, Lcom/gizthon/camera/activity/HelpActivity$1;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/activity/HelpActivity$1;-><init>(Lcom/gizthon/camera/activity/HelpActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivL:Landroid/widget/ImageView;

    new-instance v0, Lcom/gizthon/camera/activity/HelpActivity$2;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/activity/HelpActivity$2;-><init>(Lcom/gizthon/camera/activity/HelpActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->back:Landroid/widget/TextView;

    new-instance v0, Lcom/gizthon/camera/activity/HelpActivity$3;

    invoke-direct {v0, p0}, Lcom/gizthon/camera/activity/HelpActivity$3;-><init>(Lcom/gizthon/camera/activity/HelpActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/gizthon/camera/activity/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivHelp1:Landroid/widget/ImageView;

    const v0, 0x7f0e00c4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivHelp2:Landroid/widget/ImageView;

    const v0, 0x7f0e00c5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "de"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivHelp1:Landroid/widget/ImageView;

    const v0, 0x7f0e00cc

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivHelp2:Landroid/widget/ImageView;

    const v0, 0x7f0e00c6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "fr"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivHelp1:Landroid/widget/ImageView;

    const v0, 0x7f0e00cf

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivHelp2:Landroid/widget/ImageView;

    const v0, 0x7f0e00c9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const-string v0, "es"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivHelp1:Landroid/widget/ImageView;

    const v0, 0x7f0e00ce

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivHelp2:Landroid/widget/ImageView;

    const v0, 0x7f0e00c8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const-string v0, "it"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivHelp1:Landroid/widget/ImageView;

    const v0, 0x7f0e00d0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivHelp2:Landroid/widget/ImageView;

    const v0, 0x7f0e00ca

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const-string v0, "ja"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 85
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivHelp1:Landroid/widget/ImageView;

    const v0, 0x7f0e00d1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivHelp2:Landroid/widget/ImageView;

    const v0, 0x7f0e00cb

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 89
    :cond_5
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivHelp1:Landroid/widget/ImageView;

    const v0, 0x7f0e00cd

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object p1, p0, Lcom/gizthon/camera/activity/HelpActivity;->binding:Lcom/gizthon/camera/databinding/HelpActivityBinding;

    iget-object p1, p1, Lcom/gizthon/camera/databinding/HelpActivityBinding;->ivHelp2:Landroid/widget/ImageView;

    const v0, 0x7f0e00c7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
