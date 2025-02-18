.class Lcom/baidu/trace/LBSTraceClient$ClientListener;
.super Lcom/baidu/trace/IListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/trace/LBSTraceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClientListener"
.end annotation


# instance fields
.field private traceClient:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/trace/LBSTraceClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/trace/LBSTraceClient;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/trace/IListener$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceClient$ClientListener;->traceClient:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceClient$ClientListener;->traceClient:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private sendMessage(I)V
    .locals 1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient$ClientListener;->traceClient:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/trace/LBSTraceClient;

    invoke-static {p1}, Lcom/baidu/trace/LBSTraceClient;->h(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/LBSTraceClient$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient$ClientListener;->traceClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/trace/LBSTraceClient;

    invoke-static {p1}, Lcom/baidu/trace/LBSTraceClient;->h(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/LBSTraceClient$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/baidu/trace/LBSTraceClient$a;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public extendedOperationCallback(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0xac

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/baidu/trace/LBSTraceClient$ClientListener;->sendMessage(I)V

    return-void

    :cond_0
    const/16 p1, 0xab

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "accessKey"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/baidu/trace/g;->a:Ljava/lang/String;

    const-string p2, "secretKey"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/baidu/trace/g;->c:Ljava/lang/String;

    const-string p2, "token"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/baidu/trace/g;->d:Ljava/lang/String;

    const-string p2, "expireTime"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/baidu/trace/g;->b:J

    invoke-static {}, Lcom/baidu/trace/h;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xab

    :catch_0
    invoke-direct {p0, v0}, Lcom/baidu/trace/LBSTraceClient$ClientListener;->sendMessage(I)V

    return-void
.end method

.method public gatherAttribute(J)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient$ClientListener;->traceClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/trace/LBSTraceClient;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/baidu/trace/LBSTraceClient;->g(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnCustomAttributeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LC-GPS locTime is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/trace/a;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/baidu/trace/LBSTraceClient;->g(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnCustomAttributeListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/baidu/trace/model/OnCustomAttributeListener;->onTrackAttributeCallback(J)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v0}, Lcom/baidu/trace/LBSTraceClient;->g(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnCustomAttributeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/trace/model/OnCustomAttributeListener;->onTrackAttributeCallback()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public pushCallback(BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0xa2

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient$ClientListener;->traceClient:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/trace/LBSTraceClient;

    invoke-static {p1}, Lcom/baidu/trace/LBSTraceClient;->h(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/LBSTraceClient$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient$ClientListener;->traceClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/trace/LBSTraceClient;

    invoke-static {p1}, Lcom/baidu/trace/LBSTraceClient;->h(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/LBSTraceClient$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/baidu/trace/LBSTraceClient$a;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public startGatherCallback(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/baidu/trace/LBSTraceClient$ClientListener;->sendMessage(I)V

    return-void
.end method

.method public startTraceCallback(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/baidu/trace/LBSTraceClient$ClientListener;->sendMessage(I)V

    return-void
.end method

.method public stopGatherCallback(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/baidu/trace/LBSTraceClient$ClientListener;->sendMessage(I)V

    return-void
.end method

.method public stopTraceCallback(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/baidu/trace/LBSTraceClient$ClientListener;->sendMessage(I)V

    return-void
.end method
