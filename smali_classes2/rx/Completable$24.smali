.class Lrx/Completable$24;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->onErrorResumeNext(Lrx/functions/Func1;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$errorMapper:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Func1;)V
    .locals 0

    .line 1697
    iput-object p1, p0, Lrx/Completable$24;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$24;->val$errorMapper:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1697
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    invoke-virtual {p0, p1}, Lrx/Completable$24;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .locals 3

    .line 1700
    new-instance v0, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 1701
    iget-object v1, p0, Lrx/Completable$24;->this$0:Lrx/Completable;

    new-instance v2, Lrx/Completable$24$1;

    invoke-direct {v2, p0, p1, v0}, Lrx/Completable$24$1;-><init>(Lrx/Completable$24;Lrx/Completable$CompletableSubscriber;Lrx/subscriptions/SerialSubscription;)V

    invoke-virtual {v1, v2}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method
