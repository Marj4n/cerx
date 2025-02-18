.class final Lcom/baidu/trace/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/baidu/trace/LBSTraceClient;


# direct methods
.method constructor <init>(Lcom/baidu/trace/LBSTraceClient;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/ap;->a:Lcom/baidu/trace/LBSTraceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    iget-object p1, p0, Lcom/baidu/trace/ap;->a:Lcom/baidu/trace/LBSTraceClient;

    invoke-static {p2}, Lcom/baidu/trace/IService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/trace/IService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/baidu/trace/LBSTraceClient;->a(Lcom/baidu/trace/LBSTraceClient;Lcom/baidu/trace/IService;)Lcom/baidu/trace/IService;

    const-string p1, "\u6210\u529f"

    const/4 p2, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/trace/ap;->a:Lcom/baidu/trace/LBSTraceClient;

    invoke-static {v1}, Lcom/baidu/trace/LBSTraceClient;->b(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/IService;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/trace/ap;->a:Lcom/baidu/trace/LBSTraceClient;

    invoke-static {v2}, Lcom/baidu/trace/LBSTraceClient;->a(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/LBSTraceClient$ClientListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/trace/IService;->registerListener(Lcom/baidu/trace/IListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/baidu/trace/ap;->a:Lcom/baidu/trace/LBSTraceClient;

    invoke-static {p2}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/baidu/trace/ap;->a:Lcom/baidu/trace/LBSTraceClient;

    invoke-static {p2}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lcom/baidu/trace/model/OnTraceListener;->onBindServiceCallback(ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v1, "BaiduTraceSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "register client listener failed, Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "\u5931\u8d25"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/baidu/trace/ap;->a:Lcom/baidu/trace/LBSTraceClient;

    invoke-static {v0}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/ap;->a:Lcom/baidu/trace/LBSTraceClient;

    invoke-static {v0}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/baidu/trace/model/OnTraceListener;->onBindServiceCallback(ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_1
    move-exception v0

    move-object p2, v0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/baidu/trace/ap;->a:Lcom/baidu/trace/LBSTraceClient;

    invoke-static {v1}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/trace/ap;->a:Lcom/baidu/trace/LBSTraceClient;

    invoke-static {v1}, Lcom/baidu/trace/LBSTraceClient;->c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/baidu/trace/model/OnTraceListener;->onBindServiceCallback(ILjava/lang/String;)V

    :cond_1
    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/baidu/trace/ap;->a:Lcom/baidu/trace/LBSTraceClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/trace/LBSTraceClient;->a(Lcom/baidu/trace/LBSTraceClient;Lcom/baidu/trace/IService;)Lcom/baidu/trace/IService;

    return-void
.end method
