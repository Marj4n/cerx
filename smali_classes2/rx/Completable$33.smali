.class Lrx/Completable$33;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->unsubscribeOn(Lrx/Scheduler;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/Scheduler;)V
    .locals 0

    .line 2298
    iput-object p1, p0, Lrx/Completable$33;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$33;->val$scheduler:Lrx/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 2298
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    invoke-virtual {p0, p1}, Lrx/Completable$33;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .locals 2

    .line 2301
    iget-object v0, p0, Lrx/Completable$33;->this$0:Lrx/Completable;

    new-instance v1, Lrx/Completable$33$1;

    invoke-direct {v1, p0, p1}, Lrx/Completable$33$1;-><init>(Lrx/Completable$33;Lrx/Completable$CompletableSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method
