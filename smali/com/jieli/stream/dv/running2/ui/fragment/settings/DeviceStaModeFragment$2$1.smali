.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2$1;
.super Ljava/lang/Object;
.source "DeviceStaModeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;->onResponse(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->setSearchMode(I)V

    .line 126
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;->val$mSSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;

    iget-object v3, v3, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;->val$mPwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->connectWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method
