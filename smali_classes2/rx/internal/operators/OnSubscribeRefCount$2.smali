.class Lrx/internal/operators/OnSubscribeRefCount$2;
.super Lrx/Subscriber;
.source "OnSubscribeRefCount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRefCount;->doSubscribe(Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRefCount;

.field final synthetic val$currentBase:Lrx/subscriptions/CompositeSubscription;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRefCount;Lrx/Subscriber;Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$subscriber:Lrx/Subscriber;

    iput-object p4, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$currentBase:Lrx/subscriptions/CompositeSubscription;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .line 134
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 136
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$currentBase:Lrx/subscriptions/CompositeSubscription;

    if-ne v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 138
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v1, v0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 139
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onCompleted()V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRefCount$2;->cleanup()V

    .line 129
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRefCount$2;->cleanup()V

    .line 120
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method
