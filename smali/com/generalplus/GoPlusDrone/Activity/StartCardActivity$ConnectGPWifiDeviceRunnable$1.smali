.class Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable$1;
.super Ljava/lang/Object;
.source "StartCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->access$100(Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;

    iget-object v1, v1, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;

    const-class v2, Lcom/generalplus/GoPlusDrone/Activity/MainOldActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "IsCard"

    .line 133
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;

    iget-object v1, v1, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;

    invoke-virtual {v1, v0}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable$1;->this$1:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;

    const/4 v1, 0x0

    const-string v2, "Please connect to GoPlus Drone or retry to reset GoPlus Drone first."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
