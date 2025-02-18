.class public Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;
.super Landroid/app/Activity;
.source "StartCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;,
        Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$ConnectGPWifiDeviceRunnable;
    }
.end annotation


# static fields
.field protected static m_connectGPWifiDeviceThread:Ljava/lang/Thread;


# instance fields
.field protected m_Dialog:Landroid/app/ProgressDialog;

.field private strSaveDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;->strSaveDirectory:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public executeCommandLine(Ljava/lang/String;J)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 167
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 170
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;-><init>(Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;Ljava/lang/Process;Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$1;)V

    .line 171
    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;->start()V

    .line 173
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;->join(J)V

    .line 174
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;->access$300(Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 175
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;->access$300(Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    return p2

    .line 177
    :cond_0
    :try_start_1
    new-instance p2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 179
    :try_start_2
    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;->interrupt()V

    .line 180
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    .line 181
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 184
    throw p2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GoPlus_Drone"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;->strSaveDirectory:Ljava/lang/String;

    .line 26
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 29
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method
