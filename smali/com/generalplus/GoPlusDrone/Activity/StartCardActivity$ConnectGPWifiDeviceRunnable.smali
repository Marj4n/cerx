.class Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;
.super Ljava/lang/Object;
.source "StartCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectGPWifiDeviceRunnable"
.end annotation


# instance fields
.field private bCheckConnectStatus:Z

.field private bCheckWifiStatus:Z

.field private i32CheckWifiStatusDelayTime:I

.field private i32RetryCheckWifiStatusCount:I

.field private i32RetryCount:I

.field private i32Status:I

.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;)V
    .locals 1

    .line 34
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    const/16 v0, 0x64

    .line 38
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->i32RetryCheckWifiStatusCount:I

    const/16 v0, 0xc8

    .line 39
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->i32CheckWifiStatusDelayTime:I

    .line 42
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z

    const/16 p1, 0x14

    .line 45
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->i32RetryCount:I

    return-void
.end method

.method static synthetic access$100(Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z

    return p0
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 50
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const-wide/16 v2, 0x3e8

    .line 52
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 61
    :try_start_1
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;

    const-string v4, "ping -c 1 192.168.25.1"

    const-wide/16 v5, 0x5dc

    invoke-virtual {v3, v4, v5, v6}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;->executeCommandLine(Ljava/lang/String;J)I

    move-result v0
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v3

    .line 63
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    :goto_1
    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 65
    :goto_2
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 73
    :goto_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 71
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 68
    :goto_5
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 76
    :goto_6
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    if-eqz v0, :cond_8

    .line 78
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    const/16 v3, 0x1f91

    const-string v4, "192.168.25.1"

    invoke-virtual {v0, v4, v3}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamConnectToDevice(Ljava/lang/String;I)I

    .line 79
    :cond_2
    :goto_7
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    if-eqz v0, :cond_8

    const-wide/16 v3, 0x1f4

    .line 81
    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 86
    :goto_8
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamGetStatus()I

    move-result v0

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->i32Status:I

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    goto :goto_7

    .line 113
    :cond_3
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->i32RetryCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->i32RetryCount:I

    if-nez v0, :cond_2

    .line 115
    iput-boolean v2, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z

    .line 116
    iput-boolean v2, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    .line 117
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamDisconnect()V

    goto :goto_7

    .line 104
    :cond_4
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->i32RetryCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->i32RetryCount:I

    if-nez v0, :cond_2

    .line 106
    iput-boolean v2, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z

    .line 107
    iput-boolean v2, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    .line 108
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamDisconnect()V

    goto :goto_7

    .line 97
    :cond_5
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z

    .line 98
    iput-boolean v2, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    .line 99
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;->access$000(Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgeneralplus/com/GPCamLib/CamWrapper;->SetGPCamSetDownloadPath(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    const-string v3, "Menu.xml"

    invoke-virtual {v0, v3}, Lgeneralplus/com/GPCamLib/CamWrapper;->SetGPCamSendGetParameterFile(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamGetStatus()I

    goto :goto_7

    .line 93
    :cond_6
    iput-boolean v2, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z

    .line 94
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    goto :goto_7

    .line 89
    :cond_7
    iput-boolean v2, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z

    .line 90
    iput-boolean v1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    goto :goto_7

    .line 125
    :cond_8
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;->m_Dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 126
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;->this$0:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable$1;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;)V

    invoke-virtual {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 144
    sput-object v0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;->m_connectGPWifiDeviceThread:Ljava/lang/Thread;

    return-void
.end method
