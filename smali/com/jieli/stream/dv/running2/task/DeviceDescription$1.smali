.class Lcom/jieli/stream/dv/running2/task/DeviceDescription$1;
.super Ljava/lang/Object;
.source "DeviceDescription.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/task/DeviceDescription;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/task/DeviceDescription;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/task/DeviceDescription;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/DeviceDescription$1;->this$0:Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DeviceDescription$1;->this$0:Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->access$000(Lcom/jieli/stream/dv/running2/task/DeviceDescription;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download failed, reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-interface {p1}, Lokhttp3/Call;->isExecuted()Z

    move-result p2

    if-nez p2, :cond_0

    .line 57
    invoke-interface {p1, p0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/DeviceDescription$1;->this$0:Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->access$000(Lcom/jieli/stream/dv/running2/task/DeviceDescription;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 65
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dev_desc.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 75
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 77
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :goto_1
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/DeviceDescription$1;->this$0:Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->access$100(Lcom/jieli/stream/dv/running2/task/DeviceDescription;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-nez p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/DeviceDescription$1;->this$0:Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->access$000(Lcom/jieli/stream/dv/running2/task/DeviceDescription;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context is null"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/DeviceDescription$1;->this$0:Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->access$100(Lcom/jieli/stream/dv/running2/task/DeviceDescription;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkUpdateFilePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/DeviceDescription$1;->this$0:Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->access$100(Lcom/jieli/stream/dv/running2/task/DeviceDescription;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->latest_version:I

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/DeviceDescription$1;->this$0:Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->access$000(Lcom/jieli/stream/dv/running2/task/DeviceDescription;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdk upgradePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.jieli.dv.running2_upgrade_file"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "update_type"

    .line 93
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "update_path"

    .line 94
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "key_data"

    .line 95
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DeviceDescription$1;->this$0:Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->access$100(Lcom/jieli/stream/dv/running2/task/DeviceDescription;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DeviceDescription$1;->this$0:Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->access$100(Lcom/jieli/stream/dv/running2/task/DeviceDescription;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DeviceDescription$1;->this$0:Lcom/jieli/stream/dv/running2/task/DeviceDescription;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->access$100(Lcom/jieli/stream/dv/running2/task/DeviceDescription;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 79
    :goto_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 80
    throw p1

    .line 103
    :cond_1
    :goto_3
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    return-void
.end method
