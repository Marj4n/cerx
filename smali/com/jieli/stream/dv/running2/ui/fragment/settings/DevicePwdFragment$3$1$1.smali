.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1$1;
.super Ljava/lang/Thread;
.source "DevicePwdFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;->onResponse(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 123
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->switchWifi()V

    const-wide/16 v0, 0x2710

    .line 127
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 128
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->removeSavedNetWork(Ljava/lang/String;)Z

    .line 129
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1$1$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1$1$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1$1;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
