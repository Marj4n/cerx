.class Lrx/internal/operators/OperatorMulticast$2;
.super Ljava/lang/Object;
.source "OperatorMulticast.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMulticast;->connect(Lrx/functions/Action1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorMulticast;

.field final synthetic val$gs:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMulticast;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iput-object p2, p0, Lrx/internal/operators/OperatorMulticast$2;->val$gs:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .line 101
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iget-object v0, v0, Lrx/internal/operators/OperatorMulticast;->guard:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iget-object v1, v1, Lrx/internal/operators/OperatorMulticast;->guardedSubscription:Lrx/Subscription;

    iget-object v2, p0, Lrx/internal/operators/OperatorMulticast$2;->val$gs:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 103
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iget-object v1, v1, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    .line 104
    iget-object v2, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    const/4 v3, 0x0

    iput-object v3, v2, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    .line 105
    iget-object v2, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iput-object v3, v2, Lrx/internal/operators/OperatorMulticast;->guardedSubscription:Lrx/Subscription;

    .line 106
    iget-object v2, p0, Lrx/internal/operators/OperatorMulticast$2;->this$0:Lrx/internal/operators/OperatorMulticast;

    iget-object v2, v2, Lrx/internal/operators/OperatorMulticast;->connectedSubject:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    :cond_0
    return-void

    .line 108
    :cond_1
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 109
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
