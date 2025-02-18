.class Lrx/internal/operators/OperatorDoOnEach$1;
.super Lrx/Subscriber;
.source "OperatorDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDoOnEach;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorDoOnEach;

.field final synthetic val$observer:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDoOnEach;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    iput-object p3, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 43
    iget-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    iget-object v0, v0, Lrx/internal/operators/OperatorDoOnEach;->doOnEachObserver:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    .line 54
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void

    :catchall_0
    move-exception v0

    .line 49
    invoke-static {v0, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    .line 60
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 61
    iget-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    .line 66
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    iget-object v1, v1, Lrx/internal/operators/OperatorDoOnEach;->doOnEachObserver:Lrx/Observer;

    invoke-interface {v1, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 68
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 69
    iget-object v2, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    new-instance v3, Lrx/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, p1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    iget-boolean v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->this$0:Lrx/internal/operators/OperatorDoOnEach;

    iget-object v0, v0, Lrx/internal/operators/OperatorDoOnEach;->doOnEachObserver:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 83
    invoke-static {v0, p0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    return-void
.end method
