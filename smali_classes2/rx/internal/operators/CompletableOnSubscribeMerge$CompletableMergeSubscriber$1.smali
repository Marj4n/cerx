.class Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMerge.java"

# interfaces
.implements Lrx/Completable$CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->onNext(Lrx/Completable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field d:Lrx/Subscription;

.field innerDone:Z

.field final synthetic this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .line 130
    iget-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->innerDone:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->innerDone:Z

    .line 134
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->set:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->d:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 136
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->terminate()V

    .line 138
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    iget-boolean v0, v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->done:Z

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->access$100(Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;J)V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 112
    iget-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->innerDone:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->innerDone:Z

    .line 117
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->set:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->d:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 119
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->getOrCreateErrors()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 121
    iget-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    invoke-virtual {p1}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->terminate()V

    .line 123
    iget-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    iget-boolean p1, p1, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->delayErrors:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    iget-boolean p1, p1, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->done:Z

    if-nez p1, :cond_1

    .line 124
    iget-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    const-wide/16 v0, 0x1

    invoke-static {p1, v0, v1}, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->access$000(Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;J)V

    :cond_1
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 106
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->d:Lrx/Subscription;

    .line 107
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeMerge$CompletableMergeSubscriber;->set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    return-void
.end method
