.class final Lrx/Completable$2;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    invoke-virtual {p0, p1}, Lrx/Completable$2;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .locals 1

    .line 106
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    return-void
.end method
