.class Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;

.field final synthetic val$tabHost:Landroidx/fragment/app/FragmentTabHost;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;Landroidx/fragment/app/FragmentTabHost;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity$1;->val$tabHost:Landroidx/fragment/app/FragmentTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 46
    sget-boolean p1, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->m_bEdit:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity$1;->val$tabHost:Landroidx/fragment/app/FragmentTabHost;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTabHost;->getCurrentTab()I

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;

    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/generalplus/GoPlusDrone/R$string;->tab_DoneTip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity$1;->val$tabHost:Landroidx/fragment/app/FragmentTabHost;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTabHost;->setCurrentTab(I)V

    return-void
.end method
