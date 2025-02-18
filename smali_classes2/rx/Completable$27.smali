.class Lrx/Completable$27;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field done:Z

.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

.field final synthetic val$onComplete:Lrx/functions/Action0;

.field final synthetic val$onError:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Action0;Lrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action1;)V
    .locals 0

    .line 1942
    iput-object p1, p0, Lrx/Completable$27;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$27;->val$onComplete:Lrx/functions/Action0;

    iput-object p3, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    iput-object p4, p0, Lrx/Completable$27;->val$onError:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method callOnError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1971
    :try_start_0
    iget-object v0, p0, Lrx/Completable$27;->val$onError:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1977
    :goto_0
    iget-object p1, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {p1}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1973
    :try_start_1
    new-instance v1, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 1974
    sget-object p1, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {p1, v1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 1975
    invoke-static {v1}, Lrx/Completable;->access$000(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 1977
    iget-object v0, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    throw p1
.end method

.method public onCompleted()V
    .locals 1

    .line 1946
    iget-boolean v0, p0, Lrx/Completable$27;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1947
    iput-boolean v0, p0, Lrx/Completable$27;->done:Z

    .line 1949
    :try_start_0
    iget-object v0, p0, Lrx/Completable$27;->val$onComplete:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1954
    iget-object v0, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1951
    invoke-virtual {p0, v0}, Lrx/Completable$27;->callOnError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1960
    iget-boolean v0, p0, Lrx/Completable$27;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1961
    iput-boolean v0, p0, Lrx/Completable$27;->done:Z

    .line 1962
    invoke-virtual {p0, p1}, Lrx/Completable$27;->callOnError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1964
    :cond_0
    sget-object v0, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 1965
    invoke-static {p1}, Lrx/Completable;->access$000(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 1983
    iget-object v0, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    return-void
.end method
