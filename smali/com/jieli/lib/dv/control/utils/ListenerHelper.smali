.class public Lcom/jieli/lib/dv/control/utils/ListenerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "ListenerHelper"

.field private static b:Lcom/jieli/lib/dv/control/utils/ListenerHelper;


# instance fields
.field private c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->c:Ljava/util/HashSet;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->d:Ljava/util/HashSet;

    return-void
.end method

.method public static getInstance()Lcom/jieli/lib/dv/control/utils/ListenerHelper;
    .locals 2

    .line 28
    sget-object v0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->b:Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->b:Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;-><init>()V

    sput-object v1, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->b:Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    .line 33
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->b:Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    return-object v0
.end method


# virtual methods
.method public addConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dispatchDeviceConnectState(I)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->c:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 73
    sget-object p1, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->a:Ljava/lang/String;

    const-string v0, "OnConnectStateListener is null"

    invoke-static {p1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;

    .line 78
    new-instance v2, Lcom/jieli/lib/dv/control/utils/ListenerHelper$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/jieli/lib/dv/control/utils/ListenerHelper$1;-><init>(Lcom/jieli/lib/dv/control/utils/ListenerHelper;Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;I)V

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    .line 91
    new-instance v2, Lcom/jieli/lib/dv/control/utils/ListenerHelper$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/jieli/lib/dv/control/utils/ListenerHelper$2;-><init>(Lcom/jieli/lib/dv/control/utils/ListenerHelper;Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    invoke-static {v2}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    sput-object v0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->b:Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    .line 103
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->c:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_1
    return-void
.end method

.method public removeConnectStateListener(Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->c:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
