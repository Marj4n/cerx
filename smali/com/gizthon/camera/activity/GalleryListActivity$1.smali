.class Lcom/gizthon/camera/activity/GalleryListActivity$1;
.super Ljava/lang/Object;
.source "GalleryListActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/activity/GalleryListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/activity/GalleryListActivity;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/activity/GalleryListActivity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/gizthon/camera/activity/GalleryListActivity$1;->this$0:Lcom/gizthon/camera/activity/GalleryListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 51
    iget-object p2, p0, Lcom/gizthon/camera/activity/GalleryListActivity$1;->this$0:Lcom/gizthon/camera/activity/GalleryListActivity;

    invoke-virtual {p2}, Lcom/gizthon/camera/activity/GalleryListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f110179

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 53
    iget-object p2, p0, Lcom/gizthon/camera/activity/GalleryListActivity$1;->this$0:Lcom/gizthon/camera/activity/GalleryListActivity;

    invoke-virtual {p2}, Lcom/gizthon/camera/activity/GalleryListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f11021f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_1
    :goto_0
    return-void
.end method
