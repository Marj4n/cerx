.class Lrx/Completable$24$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$24;->call(Lrx/Completable$CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$24;

.field final synthetic val$s:Lrx/Completable$CompletableSubscriber;

.field final synthetic val$sd:Lrx/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lrx/Completable$24;Lrx/Completable$CompletableSubscriber;Lrx/subscriptions/SerialSubscription;)V
    .locals 0

    .line 1701
    iput-object p1, p0, Lrx/Completable$24$1;->this$1:Lrx/Completable$24;

    iput-object p2, p0, Lrx/Completable$24$1;->val$s:Lrx/Completable$CompletableSubscriber;

    iput-object p3, p0, Lrx/Completable$24$1;->val$sd:Lrx/subscriptions/SerialSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1705
    iget-object v0, p0, Lrx/Completable$24$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {v0}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1713
    :try_start_0
    iget-object v3, p0, Lrx/Completable$24$1;->this$1:Lrx/Completable$24;

    iget-object v3, v3, Lrx/Completable$24;->val$errorMapper:Lrx/functions/Func1;

    invoke-interface {v3, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Completable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 1721
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The completable returned is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1722
    new-instance v4, Lrx/exceptions/CompositeException;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v4, p1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 1723
    iget-object p1, p0, Lrx/Completable$24$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {p1, v4}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 1727
    :cond_0
    new-instance p1, Lrx/Completable$24$1$1;

    invoke-direct {p1, p0}, Lrx/Completable$24$1$1;-><init>(Lrx/Completable$24$1;)V

    invoke-virtual {v3, p1}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V

    return-void

    :catchall_0
    move-exception v3

    .line 1715
    new-instance v4, Lrx/exceptions/CompositeException;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v4, p1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 1716
    iget-object p1, p0, Lrx/Completable$24$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-interface {p1, v4}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 1749
    iget-object v0, p0, Lrx/Completable$24$1;->val$sd:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    return-void
.end method
