.class final Lrx/internal/operators/BlockingOperatorNext$NextIterator;
.super Ljava/lang/Object;
.source "BlockingOperatorNext.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BlockingOperatorNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NextIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/Throwable;

.field private hasNext:Z

.field private isNextConsumed:Z

.field private final items:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/BlockingOperatorNext$NextObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field private started:Z


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/internal/operators/BlockingOperatorNext$NextObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/internal/operators/BlockingOperatorNext$NextObserver<",
            "TT;>;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->hasNext:Z

    .line 66
    iput-boolean v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->isNextConsumed:Z

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->started:Z

    .line 71
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->items:Lrx/Observable;

    .line 72
    iput-object p2, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    return-void
.end method

.method private moveToNext()Z
    .locals 4

    .line 97
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->started:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 98
    iput-boolean v1, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->started:Z

    .line 100
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    invoke-virtual {v0, v1}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->setWaiting(I)V

    .line 101
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->items:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->materialize()Lrx/Observable;

    move-result-object v0

    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    invoke-virtual {v0, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 104
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    invoke-virtual {v0}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->takeNext()Lrx/Notification;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lrx/Notification;->isOnNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 106
    iput-boolean v3, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->isNextConsumed:Z

    .line 107
    invoke-virtual {v0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->next:Ljava/lang/Object;

    return v1

    .line 112
    :cond_1
    iput-boolean v3, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->hasNext:Z

    .line 113
    invoke-virtual {v0}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    .line 116
    :cond_2
    invoke-virtual {v0}, Lrx/Notification;->isOnError()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    invoke-virtual {v0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    .line 118
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 120
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 122
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    invoke-virtual {v1}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->unsubscribe()V

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 124
    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    .line 125
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 83
    iget-boolean v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->hasNext:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 87
    :cond_0
    iget-boolean v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->isNextConsumed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 91
    :cond_1
    invoke-direct {p0}, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->moveToNext()Z

    move-result v0

    return v0

    .line 79
    :cond_2
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->isNextConsumed:Z

    .line 137
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->next:Ljava/lang/Object;

    return-object v0

    .line 140
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
