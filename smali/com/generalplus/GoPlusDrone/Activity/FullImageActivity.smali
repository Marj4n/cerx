.class public Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity;
.super Landroid/app/Activity;
.source "FullImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity$FullImageAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity$FullImageAdapter;

.field private m_ayFilePath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity;->m_ayFilePath:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget p1, Lcom/generalplus/GoPlusDrone/R$layout;->activity_fullscreen_view:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity;->setContentView(I)V

    .line 34
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->pager:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 36
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "FilePath"

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity;->m_ayFilePath:Ljava/util/ArrayList;

    .line 40
    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity$FullImageAdapter;

    invoke-direct {v1, p0, p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity$FullImageAdapter;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity;->adapter:Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity$FullImageAdapter;

    .line 41
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 44
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
