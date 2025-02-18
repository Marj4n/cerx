.class public Lcom/serenegiant/utils/RefCountedAutoCloseable;
.super Ljava/lang/Object;
.source "RefCountedAutoCloseable.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/AutoCloseable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# instance fields
.field private mObject:Ljava/lang/AutoCloseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRefCount:J


# direct methods
.method public constructor <init>(Ljava/lang/AutoCloseable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/serenegiant/utils/RefCountedAutoCloseable;->mRefCount:J

    .line 42
    iput-object p1, p0, Lcom/serenegiant/utils/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 6

    monitor-enter p0

    .line 73
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/utils/RefCountedAutoCloseable;->mRefCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 74
    iget-wide v0, p0, Lcom/serenegiant/utils/RefCountedAutoCloseable;->mRefCount:J

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/serenegiant/utils/RefCountedAutoCloseable;->mRefCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x0

    .line 77
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/utils/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    iput-object v0, p0, Lcom/serenegiant/utils/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 79
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    :goto_0
    :try_start_4
    iput-object v0, p0, Lcom/serenegiant/utils/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/AutoCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/utils/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAndRetain()Ljava/lang/AutoCloseable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 51
    :try_start_0
    iget-wide v0, p0, Lcom/serenegiant/utils/RefCountedAutoCloseable;->mRefCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x0

    .line 52
    monitor-exit p0

    return-object v0

    .line 54
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/serenegiant/utils/RefCountedAutoCloseable;->mRefCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/serenegiant/utils/RefCountedAutoCloseable;->mRefCount:J

    .line 55
    iget-object v0, p0, Lcom/serenegiant/utils/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
