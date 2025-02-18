.class public final Lcom/jieli/stream/dv/running2/util/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# static fields
.field private static instance:Lcom/jieli/stream/dv/running2/util/ActivityManager;


# instance fields
.field private activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;",
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
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/jieli/stream/dv/running2/util/ActivityManager;
    .locals 2

    .line 14
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ActivityManager;->instance:Lcom/jieli/stream/dv/running2/util/ActivityManager;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Lcom/jieli/stream/dv/running2/util/ClientManager;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/jieli/stream/dv/running2/util/ActivityManager;->instance:Lcom/jieli/stream/dv/running2/util/ActivityManager;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/jieli/stream/dv/running2/util/ActivityManager;

    invoke-direct {v1}, Lcom/jieli/stream/dv/running2/util/ActivityManager;-><init>()V

    sput-object v1, Lcom/jieli/stream/dv/running2/util/ActivityManager;->instance:Lcom/jieli/stream/dv/running2/util/ActivityManager;

    .line 19
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ActivityManager;->instance:Lcom/jieli/stream/dv/running2/util/ActivityManager;

    return-object v0
.end method


# virtual methods
.method public getTopActivity()Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ActivityManager;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;

    return-object v0
.end method

.method public popActivity(Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ActivityManager;->activityStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public popActivityOnlyMain()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ActivityManager;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;

    if-eqz v1, :cond_1

    .line 58
    instance-of v2, v1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    if-nez v2, :cond_1

    .line 59
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->finish()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public popAllActivity()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ActivityManager;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;

    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->finish()V

    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ActivityManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public pushActivity(Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ActivityManager;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/ActivityManager;->activityStack:Ljava/util/Stack;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ActivityManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method
