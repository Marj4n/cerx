.class Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;Landroid/os/Looper;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 72
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 110
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 111
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "service_command"

    .line 112
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "connect_ip"

    .line 114
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1, v2}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$102(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;I)I

    .line 77
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1, v2}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$202(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;Z)Z

    .line 78
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$300(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)V

    .line 79
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->switchWifi()V

    goto/16 :goto_0

    .line 83
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reconnecting reConnectNum="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->isWifiOpen()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 85
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$108(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)I

    .line 86
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)I

    move-result p1

    if-ge p1, v1, :cond_6

    .line 87
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "current_wifi_ssid"

    const/4 v1, 0x0

    .line 88
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 90
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {v4, v3}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$202(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;Z)Z

    .line 91
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "reconnect_type"

    .line 92
    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 94
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 96
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1, v2, v0, v1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->connectWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_5
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 102
    :cond_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    const-string v0, "stop reconnect "

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    :goto_0
    return-void
.end method
