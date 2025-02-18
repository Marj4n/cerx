.class public Lcom/gizthon/camera/activity/PreviewPhotoActivity;
.super Landroid/app/Activity;
.source "PreviewPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gizthon/camera/activity/PreviewPhotoActivity$FullImageAdapter;
    }
.end annotation


# static fields
.field public static final PACKAGE_MOBILE_QQ:Ljava/lang/String; = "com.tencent.mobileqq"

.field public static final PACKAGE_WECHAT:Ljava/lang/String; = "com.tencent.mm"


# instance fields
.field private adapter:Lcom/gizthon/camera/activity/PreviewPhotoActivity$FullImageAdapter;

.field private m_ayFilePath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shareView:Landroid/widget/ImageView;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->m_ayFilePath:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/gizthon/camera/activity/PreviewPhotoActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->m_ayFilePath:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static start(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gizthon/camera/activity/PreviewPhotoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "FilePath"

    .line 47
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "position"

    .line 48
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public isInstallApp(Ljava/lang/String;)Z
    .locals 4

    .line 242
    invoke-virtual {p0}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 245
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 246
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 247
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00d9

    .line 54
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->setContentView(I)V

    const p1, 0x7f090260

    .line 55
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const p1, 0x7f0901dd

    .line 56
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->shareView:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {p0}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "FilePath"

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->m_ayFilePath:Ljava/util/ArrayList;

    .line 60
    new-instance v1, Lcom/gizthon/camera/activity/PreviewPhotoActivity$FullImageAdapter;

    invoke-direct {v1, p0, p0, p1}, Lcom/gizthon/camera/activity/PreviewPhotoActivity$FullImageAdapter;-><init>(Lcom/gizthon/camera/activity/PreviewPhotoActivity;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->adapter:Lcom/gizthon/camera/activity/PreviewPhotoActivity$FullImageAdapter;

    .line 61
    iget-object p1, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 62
    iget-object p1, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 63
    iget-object p1, p0, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->shareView:Landroid/widget/ImageView;

    new-instance v1, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/gizthon/camera/activity/PreviewPhotoActivity$1;-><init>(Lcom/gizthon/camera/activity/PreviewPhotoActivity;I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
