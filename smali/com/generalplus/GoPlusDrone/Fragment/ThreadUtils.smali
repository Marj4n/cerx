.class public Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Deliver;,
        Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;,
        Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;,
        Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$SimpleTask;
    }
.end annotation


# static fields
.field private static final CPU_COUNT:I

.field private static final TASK_SCHEDULED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_CACHED:B = -0x2t

.field private static final TYPE_CPU:B = -0x8t

.field private static final TYPE_IO:B = -0x4t

.field private static final TYPE_PRIORITY_POOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TYPE_SINGLE:B = -0x1t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->TYPE_PRIORITY_POOLS:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->TASK_SCHEDULED:Ljava/util/Map;

    .line 65
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->CPU_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->removeScheduleByTask(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    return-void
.end method

.method public static cancel(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V
    .locals 0

    .line 869
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;->cancel()V

    return-void
.end method

.method private static createPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;
    .locals 19

    move/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, -0x8

    const/16 v3, 0x80

    if-eq v0, v2, :cond_3

    const/4 v2, -0x4

    if-eq v0, v2, :cond_2

    const/4 v2, -0x2

    if-eq v0, v2, :cond_1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 976
    new-instance v2, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixed("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    .line 954
    :cond_0
    new-instance v0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;

    const-string v2, "single"

    invoke-direct {v0, v2, v1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    .line 958
    :cond_1
    new-instance v0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;

    const-string v2, "cached"

    invoke-direct {v0, v2, v1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    .line 962
    :cond_2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->CPU_COUNT:I

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v5, v2, 0x1

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v10, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;

    const-string v2, "io"

    invoke-direct {v10, v2, v1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    move-object v1, v0

    move v2, v4

    move v3, v5

    move-wide v4, v6

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0

    .line 969
    :cond_3
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->CPU_COUNT:I

    add-int/lit8 v12, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v13, v2, 0x1

    const-wide/16 v14, 0x1e

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v3, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;

    const-string v4, "cpu"

    invoke-direct {v3, v4, v1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    move-object v11, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v11 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method private static execute(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;)V"
        }
    .end annotation

    .line 873
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 902
    invoke-static {p1, v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;->access$002(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;Z)Z

    .line 903
    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getScheduledByTask(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$3;

    invoke-direct {v2, p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$3;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static executeByCached(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x2

    .line 455
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    return-void
.end method

.method public static executeByCached(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v0, -0x2

    .line 467
    invoke-static {v0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    return-void
.end method

.method public static executeByCachedAtFixRate(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x2

    .line 543
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByCachedAtFixRate(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x2

    .line 562
    invoke-static {v0, p6}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    .line 561
    invoke-static/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByCachedAtFixRate(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x2

    .line 511
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByCachedAtFixRate(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x2

    .line 527
    invoke-static {v0, p4}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByCachedWithDelay(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x2

    .line 481
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByCachedWithDelay(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x2

    .line 497
    invoke-static {v0, p4}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    invoke-static {p4, p0, p1, p2, p3}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByCpu(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x8

    .line 691
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    return-void
.end method

.method public static executeByCpu(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v0, -0x8

    .line 703
    invoke-static {v0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    return-void
.end method

.method public static executeByCpuAtFixRate(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x8

    .line 779
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByCpuAtFixRate(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x8

    .line 798
    invoke-static {v0, p6}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    .line 797
    invoke-static/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByCpuAtFixRate(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x8

    .line 747
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByCpuAtFixRate(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x8

    .line 763
    invoke-static {v0, p4}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByCpuWithDelay(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x8

    .line 717
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByCpuWithDelay(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x8

    .line 733
    invoke-static {v0, p4}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    invoke-static {p4, p0, p1, p2, p3}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByCustom(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;)V"
        }
    .end annotation

    .line 810
    invoke-static {p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    return-void
.end method

.method public static executeByCustomAtFixRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 860
    invoke-static/range {p0 .. p6}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByCustomAtFixRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object v6, p4

    .line 842
    invoke-static/range {v0 .. v6}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByCustomWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 826
    invoke-static {p0, p1, p2, p3, p4}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByFixed(ILcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;)V"
        }
    .end annotation

    .line 207
    invoke-static {p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    return-void
.end method

.method public static executeByFixed(ILcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;I)V"
        }
    .end annotation

    .line 221
    invoke-static {p0, p2}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    return-void
.end method

.method public static executeByFixedAtFixRate(ILcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 307
    invoke-static {p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByFixedAtFixRate(ILcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    .line 327
    invoke-static {p0, p7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByFixedAtFixRate(ILcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 271
    invoke-static {p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByFixedAtFixRate(ILcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    .line 289
    invoke-static {p0, p5}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByFixedWithDelay(ILcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 237
    invoke-static {p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByFixedWithDelay(ILcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    .line 255
    invoke-static {p0, p5}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByIo(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x4

    .line 573
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    return-void
.end method

.method public static executeByIo(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v0, -0x4

    .line 585
    invoke-static {v0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    return-void
.end method

.method public static executeByIoAtFixRate(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x4

    .line 661
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByIoAtFixRate(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x4

    .line 680
    invoke-static {v0, p6}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    .line 679
    invoke-static/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByIoAtFixRate(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x4

    .line 629
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByIoAtFixRate(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x4

    .line 645
    invoke-static {v0, p4}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByIoWithDelay(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x4

    .line 599
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeByIoWithDelay(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x4

    .line 615
    invoke-static {v0, p4}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    invoke-static {p4, p0, p1, p2, p3}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeBySingle(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 337
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    return-void
.end method

.method public static executeBySingle(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 349
    invoke-static {v0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->execute(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    return-void
.end method

.method public static executeBySingleAtFixRate(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 425
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeBySingleAtFixRate(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 444
    invoke-static {v0, p6}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    .line 443
    invoke-static/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeBySingleAtFixRate(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 393
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeBySingleAtFixRate(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 409
    invoke-static {v0, p4}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeAtFixedRate(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeBySingleWithDelay(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 363
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static executeBySingleWithDelay(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 379
    invoke-static {v0, p4}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    invoke-static {p4, p0, p1, p2, p3}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static executeWithDelay(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 881
    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getScheduledByTask(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    new-instance p3, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$1;

    invoke-direct {p3, p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$1;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 888
    :cond_0
    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getScheduledByTask(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$2;

    invoke-direct {v1, p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$2;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_0
    return-void
.end method

.method public static getCachedPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, -0x2

    .line 137
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedPool(I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, -0x2

    .line 149
    invoke-static {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static getCpuPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, -0x8

    .line 183
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuPool(I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, -0x8

    .line 195
    invoke-static {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static getFixedPool(I)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 87
    invoke-static {p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static getFixedPool(II)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 101
    invoke-static {p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static getIoPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, -0x2

    .line 160
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getIoPool(I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, -0x2

    .line 171
    invoke-static {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, 0x5

    .line 930
    invoke-static {p0, v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 935
    sget-object v0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->TYPE_PRIORITY_POOLS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 937
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 938
    invoke-static {p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->createPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 939
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    sget-object p1, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->TYPE_PRIORITY_POOLS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 942
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    .line 944
    invoke-static {p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->createPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 945
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static getScheduledByTask(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 912
    sget-object v0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->TASK_SCHEDULED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 914
    new-instance v0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;

    const/16 v1, 0xa

    const-string v2, "scheduled"

    invoke-direct {v0, v2, v1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 915
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 916
    sget-object v1, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->TASK_SCHEDULED:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getSinglePool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, -0x1

    .line 113
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getSinglePool(I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, -0x1

    .line 125
    invoke-static {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static isMainThread()Z
    .locals 2

    .line 74
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static removeScheduleByTask(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V
    .locals 2

    .line 922
    sget-object v0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->TASK_SCHEDULED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 924
    sget-object v1, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->TASK_SCHEDULED:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    :cond_0
    return-void
.end method

.method private static shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 984
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 986
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 987
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 988
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 989
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Pool did not terminate"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 993
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 994
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 995
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
