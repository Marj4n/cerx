.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;
.super Ljava/lang/Thread;
.source "DeviceNameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;->onResponse(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 265
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-wide/16 v0, 0x2710

    .line 268
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 269
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->removeSavedNetWork(Ljava/lang/String;)Z

    .line 270
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$4$1;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
