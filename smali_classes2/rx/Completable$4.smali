.class final Lrx/Completable$4;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->amb(Ljava/lang/Iterable;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sources:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lrx/Completable$4;->val$sources:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 195
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    invoke-virtual {p0, p1}, Lrx/Completable$4;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .locals 8

    .line 198
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 199
    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 201
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 203
    new-instance v2, Lrx/Completable$4$1;

    invoke-direct {v2, p0, v1, v0, p1}, Lrx/Completable$4$1;-><init>(Lrx/Completable$4;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/subscriptions/CompositeSubscription;Lrx/Completable$CompletableSubscriber;)V

    .line 232
    :try_start_0
    iget-object v3, p0, Lrx/Completable$4;->val$sources:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v3, :cond_0

    .line 239
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The iterator returned is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 246
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_4

    .line 253
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v7, :cond_3

    if-eqz v6, :cond_2

    .line 266
    invoke-interface {p1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    :cond_2
    return-void

    .line 273
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 280
    :cond_4
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrx/Completable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_6

    .line 292
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "One of the sources is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 294
    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 295
    invoke-interface {p1, v2}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 297
    :cond_5
    sget-object p1, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {p1, v2}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 302
    :cond_6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    .line 307
    :cond_7
    invoke-virtual {v6, v2}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V

    const/4 v6, 0x0

    goto :goto_0

    :cond_8
    :goto_2
    return-void

    :catchall_0
    move-exception v2

    .line 282
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 283
    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 284
    invoke-interface {p1, v2}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 286
    :cond_9
    sget-object p1, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {p1, v2}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    :cond_a
    :goto_3
    return-void

    :catchall_1
    move-exception v2

    .line 255
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 256
    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 257
    invoke-interface {p1, v2}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 259
    :cond_b
    sget-object p1, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {p1, v2}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    :cond_c
    :goto_4
    return-void

    :catchall_2
    move-exception v0

    .line 234
    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
