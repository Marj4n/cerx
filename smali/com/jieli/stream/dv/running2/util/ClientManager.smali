.class public Lcom/jieli/stream/dv/running2/util/ClientManager;
.super Ljava/lang/Object;
.source "ClientManager.java"


# static fields
.field private static instance:Lcom/jieli/lib/dv/control/DeviceClient;


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/ClientManager;->tag:Ljava/lang/String;

    return-void
.end method

.method public static getClient()Lcom/jieli/lib/dv/control/DeviceClient;
    .locals 4

    .line 12
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ClientManager;->instance:Lcom/jieli/lib/dv/control/DeviceClient;

    if-nez v0, :cond_1

    .line 13
    const-class v0, Lcom/jieli/stream/dv/running2/util/ClientManager;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/jieli/stream/dv/running2/util/ClientManager;->instance:Lcom/jieli/lib/dv/control/DeviceClient;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/jieli/lib/dv/control/DeviceClient;

    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/jieli/lib/dv/control/DeviceClient;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/jieli/stream/dv/running2/util/ClientManager;->instance:Lcom/jieli/lib/dv/control/DeviceClient;

    .line 18
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 20
    :cond_1
    :goto_0
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ClientManager;->instance:Lcom/jieli/lib/dv/control/DeviceClient;

    return-object v0
.end method

.method public static release()V
    .locals 1

    .line 24
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ClientManager;->instance:Lcom/jieli/lib/dv/control/DeviceClient;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->release()V

    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/jieli/stream/dv/running2/util/ClientManager;->instance:Lcom/jieli/lib/dv/control/DeviceClient;

    :cond_0
    return-void
.end method
