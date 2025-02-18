.class public final Lcom/jieli/stream/dv/running2/task/DeviceDescription;
.super Ljava/lang/Thread;
.source "DeviceDescription.java"


# instance fields
.field private mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->tag:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->mServiceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/task/DeviceDescription;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/task/DeviceDescription;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->mServiceRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 47
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 48
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->getConnectedIP()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1f90

    const-string v2, "mnt/spiflash/res/dev_desc.txt"

    .line 50
    invoke-static {v0, v1, v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->formatUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/DeviceDescription;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/jieli/stream/dv/running2/task/DeviceDescription$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/task/DeviceDescription$1;-><init>(Lcom/jieli/stream/dv/running2/task/DeviceDescription;)V

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/HttpManager;->downloadFile(Ljava/lang/String;Lokhttp3/Callback;)V

    :cond_0
    return-void
.end method
