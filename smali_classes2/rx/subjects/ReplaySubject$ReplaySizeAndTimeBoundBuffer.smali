.class final Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/subjects/ReplaySubject$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySizeAndTimeBoundBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/subjects/ReplaySubject$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field volatile head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field final limit:I

.field final maxAgeMillis:J

.field final scheduler:Lrx/Scheduler;

.field size:I

.field tail:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJLrx/Scheduler;)V
    .locals 3

    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 967
    iput p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->limit:I

    .line 968
    new-instance p1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p1, v0, v1, v2}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 969
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 970
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 971
    iput-wide p2, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->maxAgeMillis:J

    .line 972
    iput-object p4, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->scheduler:Lrx/Scheduler;

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 1017
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->evictFinal()V

    const/4 v0, 0x1

    .line 1018
    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->done:Z

    return-void
.end method

.method public drain(Lrx/subjects/ReplaySubject$ReplayProducer;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer<",
            "TT;>;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1055
    invoke-virtual/range {p1 .. p1}, Lrx/subjects/ReplaySubject$ReplayProducer;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 1059
    :cond_0
    iget-object v2, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Lrx/Subscriber;

    const/4 v5, 0x1

    .line 1065
    :cond_1
    iget-object v6, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 1069
    iget-object v8, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    check-cast v8, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    const-wide/16 v9, 0x0

    if-nez v8, :cond_2

    .line 1071
    invoke-virtual/range {p0 .. p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    move-result-object v8

    :cond_2
    move-wide v11, v9

    :goto_0
    const/4 v13, 0x0

    cmp-long v14, v11, v6

    if-eqz v14, :cond_8

    .line 1075
    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1076
    iput-object v13, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    return v3

    .line 1080
    :cond_3
    iget-boolean v15, v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->done:Z

    .line 1081
    invoke-virtual {v8}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    if-nez v4, :cond_4

    const/16 v16, 0x1

    goto :goto_1

    :cond_4
    const/16 v16, 0x0

    :goto_1
    if-eqz v15, :cond_6

    if-eqz v16, :cond_6

    .line 1085
    iput-object v13, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 1086
    iget-object v1, v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 1088
    invoke-virtual {v2, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1090
    :cond_5
    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    :goto_2
    return v3

    :cond_6
    if-eqz v16, :cond_7

    goto :goto_3

    .line 1099
    :cond_7
    iget-object v8, v4, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->value:Ljava/lang/Object;

    invoke-virtual {v2, v8}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    move-object v8, v4

    goto :goto_0

    :cond_8
    :goto_3
    if-nez v14, :cond_c

    .line 1106
    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1107
    iput-object v13, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    return v3

    .line 1111
    :cond_9
    iget-boolean v4, v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->done:Z

    .line 1112
    invoke-virtual {v8}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_a

    const/4 v14, 0x1

    goto :goto_4

    :cond_a
    const/4 v14, 0x0

    :goto_4
    if-eqz v4, :cond_c

    if-eqz v14, :cond_c

    .line 1115
    iput-object v13, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 1116
    iget-object v1, v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_b

    .line 1118
    invoke-virtual {v2, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1120
    :cond_b
    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    :goto_5
    return v3

    :cond_c
    const-wide v13, 0x7fffffffffffffffL

    cmp-long v4, v11, v9

    if-eqz v4, :cond_d

    cmp-long v4, v6, v13

    if-eqz v4, :cond_d

    .line 1128
    iget-object v4, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v4, v11, v12}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 1132
    :cond_d
    iput-object v8, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    neg-int v4, v5

    .line 1134
    invoke-virtual {v1, v4}, Lrx/subjects/ReplaySubject$ReplayProducer;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    cmp-long v1, v6, v13

    if-nez v1, :cond_e

    const/4 v3, 0x1

    :cond_e
    return v3
.end method

.method public error()Ljava/lang/Throwable;
    .locals 1

    .line 1162
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 1010
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->evictFinal()V

    .line 1011
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 1012
    iput-boolean p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->done:Z

    return-void
.end method

.method evictFinal()V
    .locals 8

    .line 1022
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->maxAgeMillis:J

    sub-long/2addr v0, v2

    .line 1024
    iget-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    move-object v3, v2

    .line 1028
    :goto_0
    invoke-virtual {v3}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    if-eqz v4, :cond_1

    .line 1029
    iget-wide v5, v4, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->timestamp:J

    cmp-long v7, v5, v0

    if-lez v7, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, v4

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v2, v3, :cond_2

    .line 1036
    iput-object v3, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    :cond_2
    return-void
.end method

.method public isComplete()Z
    .locals 1

    .line 1157
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->done:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1188
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    move-result-object v0

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1167
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    move-result-object v0

    .line 1169
    :goto_0
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 1172
    :cond_0
    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<",
            "TT;>;"
        }
    .end annotation

    .line 1041
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->maxAgeMillis:J

    sub-long/2addr v0, v2

    .line 1042
    iget-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1044
    :goto_0
    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    if-eqz v3, :cond_1

    .line 1045
    iget-wide v4, v3, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->timestamp:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-object v2
.end method

.method public next(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 977
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->now()J

    move-result-wide v0

    .line 979
    new-instance v2, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    invoke-direct {v2, p1, v0, v1}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 980
    iget-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    invoke-virtual {p1, v2}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->set(Ljava/lang/Object;)V

    .line 981
    iput-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 983
    iget-wide v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->maxAgeMillis:J

    sub-long/2addr v0, v2

    .line 985
    iget p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->size:I

    .line 986
    iget-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 989
    iget v3, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->limit:I

    if-ne p1, v3, :cond_0

    .line 990
    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    move-object v3, v2

    .line 995
    :goto_0
    invoke-virtual {v3}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    if-eqz v4, :cond_2

    .line 996
    iget-wide v5, v4, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->timestamp:J

    cmp-long v7, v5, v0

    if-lez v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    move-object v3, v4

    goto :goto_0

    .line 1003
    :cond_2
    :goto_1
    iput p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->size:I

    if-eq v3, v2, :cond_3

    .line 1005
    iput-object v3, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    :cond_3
    return-void
.end method

.method public size()I
    .locals 3

    .line 1178
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    move-result-object v0

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 1180
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1195
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    move-result-object v1

    invoke-virtual {v1}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    :goto_0
    if-eqz v1, :cond_0

    .line 1197
    iget-object v2, v1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->value:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    invoke-virtual {v1}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    goto :goto_0

    .line 1200
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
