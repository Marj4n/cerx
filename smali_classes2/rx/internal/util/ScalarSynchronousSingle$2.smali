.class Lrx/internal/util/ScalarSynchronousSingle$2;
.super Ljava/lang/Object;
.source "ScalarSynchronousSingle.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousSingle;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/util/ScalarSynchronousSingle;

.field final synthetic val$func:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousSingle;Lrx/functions/Func1;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousSingle$2;->this$0:Lrx/internal/util/ScalarSynchronousSingle;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousSingle$2;->val$func:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p1, Lrx/SingleSubscriber;

    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousSingle$2;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousSingle$2;->val$func:Lrx/functions/Func1;

    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousSingle$2;->this$0:Lrx/internal/util/ScalarSynchronousSingle;

    iget-object v1, v1, Lrx/internal/util/ScalarSynchronousSingle;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Single;

    .line 133
    instance-of v1, v0, Lrx/internal/util/ScalarSynchronousSingle;

    if-eqz v1, :cond_0

    .line 134
    check-cast v0, Lrx/internal/util/ScalarSynchronousSingle;

    iget-object v0, v0, Lrx/internal/util/ScalarSynchronousSingle;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :cond_0
    new-instance v1, Lrx/internal/util/ScalarSynchronousSingle$2$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/util/ScalarSynchronousSingle$2$1;-><init>(Lrx/internal/util/ScalarSynchronousSingle$2;Lrx/SingleSubscriber;)V

    .line 151
    invoke-virtual {p1, v1}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 152
    invoke-virtual {v0, v1}, Lrx/Single;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    :goto_0
    return-void
.end method
