.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;
.super Ljava/lang/Object;
.source "DeviceStaModeFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->sendRouterInformation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

.field final synthetic val$mPwd:Ljava/lang/String;

.field final synthetic val$mSSID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;->val$mSSID:Ljava/lang/String;

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;->val$mPwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 3

    .line 117
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->TAG:Ljava/lang/String;

    const-string v0, "send set sta cmd ok"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/DeviceClient;->disconnect()V

    .line 120
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;)V

    .line 121
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$2;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
