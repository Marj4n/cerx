.class public final Lrx/internal/producers/ProducerObserverArbiter;
.super Ljava/lang/Object;
.source "ProducerObserverArbiter.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;",
        "Lrx/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final NULL_PRODUCER:Lrx/Producer;


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field currentProducer:Lrx/Producer;

.field emitting:Z

.field volatile hasError:Z

.field missedProducer:Lrx/Producer;

.field missedRequested:J

.field missedTerminal:Ljava/lang/Object;

.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field requested:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lrx/internal/producers/ProducerObserverArbiter$1;

    invoke-direct {v0}, Lrx/internal/producers/ProducerObserverArbiter$1;-><init>()V

    sput-object v0, Lrx/internal/producers/ProducerObserverArbiter;->NULL_PRODUCER:Lrx/Producer;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    return-void
.end method


# virtual methods
.method emitLoop()V
    .locals 19

    move-object/from16 v1, p0

    .line 190
    iget-object v2, v1, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    move-object v7, v0

    move-wide v5, v3

    .line 202
    :cond_0
    :goto_0
    monitor-enter p0

    .line 203
    :try_start_0
    iget-wide v8, v1, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    .line 204
    iget-object v10, v1, Lrx/internal/producers/ProducerObserverArbiter;->missedProducer:Lrx/Producer;

    .line 205
    iget-object v11, v1, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    .line 206
    iget-object v12, v1, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    const/4 v13, 0x1

    const/4 v14, 0x0

    cmp-long v15, v8, v3

    if-nez v15, :cond_1

    if-nez v10, :cond_1

    if-nez v12, :cond_1

    if-nez v11, :cond_1

    .line 209
    iput-boolean v14, v1, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    const/16 v16, 0x1

    goto :goto_1

    .line 212
    :cond_1
    iput-wide v3, v1, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    .line 213
    iput-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->missedProducer:Lrx/Producer;

    .line 214
    iput-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    .line 215
    iput-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    const/16 v16, 0x0

    .line 217
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v16, :cond_3

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    .line 220
    invoke-interface {v7, v5, v6}, Lrx/Producer;->request(J)V

    :cond_2
    return-void

    :cond_3
    if-eqz v12, :cond_5

    .line 225
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_4

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :cond_5
    :goto_2
    if-eqz v11, :cond_7

    .line 227
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v11, v14, :cond_6

    .line 228
    check-cast v11, Ljava/lang/Throwable;

    invoke-virtual {v2, v11}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    if-eqz v13, :cond_7

    .line 232
    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    return-void

    :cond_7
    if-eqz v12, :cond_b

    .line 238
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 239
    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v14

    if-eqz v14, :cond_8

    return-void

    .line 242
    :cond_8
    iget-boolean v14, v1, Lrx/internal/producers/ProducerObserverArbiter;->hasError:Z

    if-eqz v14, :cond_9

    goto :goto_0

    .line 246
    :cond_9
    :try_start_1
    invoke-virtual {v2, v13}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 248
    invoke-static {v3, v2, v13}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    return-void

    .line 252
    :cond_a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v11, v3

    goto :goto_4

    :cond_b
    move-wide v11, v3

    .line 254
    :goto_4
    iget-wide v13, v1, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    const-wide v16, 0x7fffffffffffffffL

    cmp-long v18, v13, v16

    if-eqz v18, :cond_f

    if-eqz v15, :cond_c

    add-long/2addr v13, v8

    cmp-long v18, v13, v3

    if-gez v18, :cond_c

    move-wide/from16 v13, v16

    :cond_c
    cmp-long v18, v11, v3

    if-eqz v18, :cond_e

    cmp-long v18, v13, v16

    if-eqz v18, :cond_e

    sub-long/2addr v13, v11

    cmp-long v11, v13, v3

    if-ltz v11, :cond_d

    goto :goto_5

    .line 269
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "More produced than requested"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_e
    :goto_5
    iput-wide v13, v1, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    :cond_f
    if-eqz v10, :cond_11

    .line 276
    sget-object v8, Lrx/internal/producers/ProducerObserverArbiter;->NULL_PRODUCER:Lrx/Producer;

    if-ne v10, v8, :cond_10

    .line 277
    iput-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    goto/16 :goto_0

    .line 279
    :cond_10
    iput-object v10, v1, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    cmp-long v8, v13, v3

    if-eqz v8, :cond_0

    .line 281
    invoke-static {v5, v6, v13, v14}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v5

    goto :goto_6

    .line 286
    :cond_11
    iget-object v10, v1, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    if-eqz v10, :cond_0

    if-eqz v15, :cond_0

    .line 288
    invoke-static {v5, v6, v8, v9}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v5

    :goto_6
    move-object v7, v10

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 217
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onCompleted()V
    .locals 2

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 116
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    .line 117
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    iput-boolean v1, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void

    :catchall_0
    move-exception v0

    .line 120
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 98
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_0

    .line 101
    :cond_0
    iput-boolean v1, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    const/4 v0, 0x1

    .line 104
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 108
    :cond_1
    iput-boolean v1, p0, Lrx/internal/producers/ProducerObserverArbiter;->hasError:Z

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 104
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    iput-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    .line 69
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    monitor-exit p0

    return-void

    .line 72
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 75
    :try_start_1
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 77
    iget-wide v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 79
    iput-wide v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 82
    :cond_2
    invoke-virtual {p0}, Lrx/internal/producers/ProducerObserverArbiter;->emitLoop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 86
    monitor-enter p0

    const/4 v0, 0x0

    .line 87
    :try_start_2
    iput-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 88
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 72
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public request(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-nez v2, :cond_0

    return-void

    .line 132
    :cond_0
    monitor-enter p0

    .line 133
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v2, :cond_1

    .line 134
    iget-wide v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    .line 135
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 137
    iput-boolean v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 139
    iget-object v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    .line 142
    :try_start_1
    iget-wide v3, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    add-long/2addr v3, p1

    cmp-long v5, v3, v0

    if-gez v5, :cond_2

    const-wide v3, 0x7fffffffffffffffL

    .line 147
    :cond_2
    iput-wide v3, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 149
    invoke-virtual {p0}, Lrx/internal/producers/ProducerObserverArbiter;->emitLoop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 159
    invoke-interface {v2, p1, p2}, Lrx/Producer;->request(J)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 153
    monitor-enter p0

    const/4 p2, 0x0

    .line 154
    :try_start_2
    iput-boolean p2, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 155
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 138
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 127
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n >= 0 required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 5

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    sget-object p1, Lrx/internal/producers/ProducerObserverArbiter;->NULL_PRODUCER:Lrx/Producer;

    :goto_0
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedProducer:Lrx/Producer;

    .line 167
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 170
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 172
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    .line 173
    iget-wide v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 175
    :try_start_1
    invoke-virtual {p0}, Lrx/internal/producers/ProducerObserverArbiter;->emitLoop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 185
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 179
    monitor-enter p0

    const/4 v0, 0x0

    .line 180
    :try_start_2
    iput-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 181
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 170
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method
