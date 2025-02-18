.class public Lcom/serenegiant/glutils/GLMasterContext;
.super Ljava/lang/Object;
.source "GLMasterContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/glutils/GLMasterContext$MasterTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMasterTask:Lcom/serenegiant/glutils/GLMasterContext$MasterTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lcom/serenegiant/glutils/GLMasterContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/glutils/GLMasterContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/serenegiant/glutils/GLMasterContext$MasterTask;

    invoke-direct {v0, p1, p2}, Lcom/serenegiant/glutils/GLMasterContext$MasterTask;-><init>(II)V

    iput-object v0, p0, Lcom/serenegiant/glutils/GLMasterContext;->mMasterTask:Lcom/serenegiant/glutils/GLMasterContext$MasterTask;

    .line 15
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/serenegiant/glutils/GLMasterContext;->mMasterTask:Lcom/serenegiant/glutils/GLMasterContext$MasterTask;

    sget-object v0, Lcom/serenegiant/glutils/GLMasterContext;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 16
    iget-object p1, p0, Lcom/serenegiant/glutils/GLMasterContext;->mMasterTask:Lcom/serenegiant/glutils/GLMasterContext$MasterTask;

    invoke-virtual {p1}, Lcom/serenegiant/glutils/GLMasterContext$MasterTask;->waitReady()Z

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/glutils/GLMasterContext;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public declared-synchronized getContext()Lcom/serenegiant/glutils/EGLBase$IContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/glutils/GLMasterContext;->mMasterTask:Lcom/serenegiant/glutils/GLMasterContext$MasterTask;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/serenegiant/glutils/GLMasterContext;->mMasterTask:Lcom/serenegiant/glutils/GLMasterContext$MasterTask;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/GLMasterContext$MasterTask;->getContext()Lcom/serenegiant/glutils/EGLBase$IContext;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 40
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/glutils/GLMasterContext;->mMasterTask:Lcom/serenegiant/glutils/GLMasterContext$MasterTask;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/serenegiant/glutils/GLMasterContext;->mMasterTask:Lcom/serenegiant/glutils/GLMasterContext$MasterTask;

    invoke-virtual {v0}, Lcom/serenegiant/glutils/GLMasterContext$MasterTask;->release()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/serenegiant/glutils/GLMasterContext;->mMasterTask:Lcom/serenegiant/glutils/GLMasterContext$MasterTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
