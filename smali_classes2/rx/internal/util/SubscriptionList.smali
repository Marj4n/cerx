.class public final Lrx/internal/util/SubscriptionList;
.super Ljava/lang/Object;
.source "SubscriptionList.java"

# interfaces
.implements Lrx/Subscription;


# instance fields
.field private subscriptions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private volatile unsubscribed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lrx/Subscription;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs constructor <init>([Lrx/Subscription;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    return-void
.end method

.method private static unsubscribeFromAll(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 122
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscription;

    .line 124
    :try_start_0
    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_2
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public add(Lrx/Subscription;)V
    .locals 1

    .line 59
    invoke-interface {p1}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_3

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 68
    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 70
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit p0

    return-void

    .line 73
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 76
    :cond_3
    :goto_0
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 136
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_0

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    const/4 v1, 0x0

    .line 140
    iput-object v1, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 141
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-static {v0}, Lrx/internal/util/SubscriptionList;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 141
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public hasSubscriptions()Z
    .locals 2

    .line 150
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 153
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return v1
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    return v0
.end method

.method public remove(Lrx/Subscription;)V
    .locals 2

    .line 80
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_2

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 84
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 91
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 88
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public unsubscribe()V
    .locals 2

    .line 102
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_1

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-eqz v0, :cond_0

    .line 106
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    .line 109
    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    const/4 v1, 0x0

    .line 110
    iput-object v1, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/LinkedList;

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-static {v0}, Lrx/internal/util/SubscriptionList;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 111
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
