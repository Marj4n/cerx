.class final Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;
.super Lrx/Subscriber;
.source "OperatorBufferWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithStartEndObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BufferingSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final closingSubscriptions:Lrx/subscriptions/CompositeSubscription;

.field done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithStartEndObservable;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorBufferWithStartEndObservable;Lrx/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithStartEndObservable;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 107
    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    .line 108
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->chunks:Ljava/util/List;

    .line 109
    new-instance p1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {p1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->closingSubscriptions:Lrx/subscriptions/CompositeSubscription;

    .line 110
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->add(Lrx/Subscription;)V

    return-void
.end method


# virtual methods
.method endBuffer(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 200
    monitor-exit p0

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 203
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 211
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 213
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 211
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onCompleted()V
    .locals 3

    .line 139
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 141
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->done:Z

    .line 144
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 145
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 146
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 148
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 155
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->unsubscribe()V

    return-void

    :catchall_0
    move-exception v0

    .line 146
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 151
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    invoke-static {v0, v1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 126
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->done:Z

    .line 129
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 132
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->unsubscribe()V

    return-void

    :catchall_0
    move-exception p1

    .line 130
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 117
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method startBuffer(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTOpening;)V"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->done:Z

    if-eqz v1, :cond_0

    .line 161
    monitor-exit p0

    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithStartEndObservable;

    iget-object v1, v1, Lrx/internal/operators/OperatorBufferWithStartEndObservable;->bufferClosing:Lrx/functions/Func1;

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/Observable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    new-instance v1, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;-><init>(Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;Ljava/util/List;)V

    .line 192
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->closingSubscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 194
    invoke-virtual {p1, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void

    :catchall_0
    move-exception p1

    .line 169
    invoke-static {p1, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    return-void

    :catchall_1
    move-exception p1

    .line 164
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
