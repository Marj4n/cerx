.class Lrx/internal/operators/OperatorToMap$1;
.super Lrx/Subscriber;
.source "OperatorToMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorToMap;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorToMap;

.field final synthetic val$fLocalMap:Ljava/util/Map;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorToMap;Lrx/Subscriber;Ljava/util/Map;Lrx/Subscriber;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lrx/internal/operators/OperatorToMap$1;->this$0:Lrx/internal/operators/OperatorToMap;

    iput-object p3, p0, Lrx/internal/operators/OperatorToMap$1;->val$fLocalMap:Ljava/util/Map;

    iput-object p4, p0, Lrx/internal/operators/OperatorToMap$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 106
    iget-object p1, p0, Lrx/internal/operators/OperatorToMap$1;->val$fLocalMap:Ljava/util/Map;

    iput-object p1, p0, Lrx/internal/operators/OperatorToMap$1;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 137
    iget-object v0, p0, Lrx/internal/operators/OperatorToMap$1;->map:Ljava/util/Map;

    const/4 v1, 0x0

    .line 138
    iput-object v1, p0, Lrx/internal/operators/OperatorToMap$1;->map:Ljava/util/Map;

    .line 139
    iget-object v1, p0, Lrx/internal/operators/OperatorToMap$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lrx/internal/operators/OperatorToMap$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lrx/internal/operators/OperatorToMap$1;->map:Ljava/util/Map;

    .line 132
    iget-object v0, p0, Lrx/internal/operators/OperatorToMap$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 119
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorToMap$1;->this$0:Lrx/internal/operators/OperatorToMap;

    iget-object v0, v0, Lrx/internal/operators/OperatorToMap;->keySelector:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lrx/internal/operators/OperatorToMap$1;->this$0:Lrx/internal/operators/OperatorToMap;

    iget-object v1, v1, Lrx/internal/operators/OperatorToMap;->valueSelector:Lrx/functions/Func1;

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v1, p0, Lrx/internal/operators/OperatorToMap$1;->map:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 122
    iget-object v0, p0, Lrx/internal/operators/OperatorToMap$1;->val$subscriber:Lrx/Subscriber;

    invoke-static {p1, v0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 110
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorToMap$1;->request(J)V

    return-void
.end method
