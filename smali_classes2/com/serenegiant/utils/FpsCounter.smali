.class public Lcom/serenegiant/utils/FpsCounter;
.super Ljava/lang/Object;
.source "FpsCounter.java"


# instance fields
.field private cnt:I

.field private fps:F

.field private prevCnt:I

.field private prevTime:J

.field private startTime:J

.field private totalFps:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/serenegiant/utils/FpsCounter;->reset()Lcom/serenegiant/utils/FpsCounter;

    return-void
.end method


# virtual methods
.method public declared-synchronized count()V
    .locals 1

    monitor-enter p0

    .line 39
    :try_start_0
    iget v0, p0, Lcom/serenegiant/utils/FpsCounter;->cnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/serenegiant/utils/FpsCounter;->cnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFps()F
    .locals 1

    monitor-enter p0

    .line 56
    :try_start_0
    iget v0, p0, Lcom/serenegiant/utils/FpsCounter;->fps:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalFps()F
    .locals 1

    monitor-enter p0

    .line 60
    :try_start_0
    iget v0, p0, Lcom/serenegiant/utils/FpsCounter;->totalFps:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()Lcom/serenegiant/utils/FpsCounter;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 30
    :try_start_0
    iput v0, p0, Lcom/serenegiant/utils/FpsCounter;->prevCnt:I

    iput v0, p0, Lcom/serenegiant/utils/FpsCounter;->cnt:I

    .line 31
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/serenegiant/utils/FpsCounter;->prevTime:J

    iput-wide v0, p0, Lcom/serenegiant/utils/FpsCounter;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update()Lcom/serenegiant/utils/FpsCounter;
    .locals 6

    monitor-enter p0

    .line 47
    :try_start_0
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v0

    .line 48
    iget v2, p0, Lcom/serenegiant/utils/FpsCounter;->cnt:I

    iget v3, p0, Lcom/serenegiant/utils/FpsCounter;->prevCnt:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x4e6e6b28    # 1.0E9f

    mul-float v2, v2, v3

    iget-wide v4, p0, Lcom/serenegiant/utils/FpsCounter;->prevTime:J

    sub-long v4, v0, v4

    long-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, p0, Lcom/serenegiant/utils/FpsCounter;->fps:F

    .line 49
    iget v2, p0, Lcom/serenegiant/utils/FpsCounter;->cnt:I

    iput v2, p0, Lcom/serenegiant/utils/FpsCounter;->prevCnt:I

    .line 50
    iput-wide v0, p0, Lcom/serenegiant/utils/FpsCounter;->prevTime:J

    .line 51
    iget v2, p0, Lcom/serenegiant/utils/FpsCounter;->cnt:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    iget-wide v3, p0, Lcom/serenegiant/utils/FpsCounter;->startTime:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    div-float/2addr v2, v0

    iput v2, p0, Lcom/serenegiant/utils/FpsCounter;->totalFps:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
