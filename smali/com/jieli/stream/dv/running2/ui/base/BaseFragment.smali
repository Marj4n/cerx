.class public Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/IConstant;
.implements Lcom/jieli/stream/dv/running2/util/IActions;


# instance fields
.field public TAG:Ljava/lang/String;

.field private bundle:Landroid/os/Bundle;

.field public mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

.field public mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    .line 29
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->bundle:Landroid/os/Bundle;

    return-void
.end method
