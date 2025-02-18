.class public Lcom/serenegiant/utils/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field private static final EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 33
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x4

    const/16 v2, 0x20

    const-wide/16 v3, 0xa

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lcom/serenegiant/utils/ThreadPool;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x1

    .line 38
    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static preStartAllCoreThreads()V
    .locals 1

    .line 44
    sget-object v0, Lcom/serenegiant/utils/ThreadPool;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    return-void
.end method

.method public static queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 48
    sget-object v0, Lcom/serenegiant/utils/ThreadPool;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeEvent(Ljava/lang/Runnable;)Z
    .locals 1

    .line 52
    sget-object v0, Lcom/serenegiant/utils/ThreadPool;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method
