.class Lrx/Single$21;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->takeUntil(Lrx/Observable;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Single;

.field final synthetic val$other:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Single;Lrx/Observable;)V
    .locals 0

    .line 2055
    iput-object p1, p0, Lrx/Single$21;->this$0:Lrx/Single;

    iput-object p2, p0, Lrx/Single$21;->val$other:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2055
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/Single$21;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object p1

    return-object p1
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 2058
    new-instance v0, Lrx/observers/SerializedSubscriber;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;Z)V

    .line 2060
    new-instance v2, Lrx/Single$21$1;

    invoke-direct {v2, p0, v0, v1, v0}, Lrx/Single$21$1;-><init>(Lrx/Single$21;Lrx/Subscriber;ZLrx/Subscriber;)V

    .line 2083
    new-instance v1, Lrx/Single$21$2;

    invoke-direct {v1, p0, v2}, Lrx/Single$21$2;-><init>(Lrx/Single$21;Lrx/Subscriber;)V

    .line 2101
    invoke-virtual {v0, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 2102
    invoke-virtual {v0, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 2104
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 2106
    iget-object p1, p0, Lrx/Single$21;->val$other:Lrx/Observable;

    invoke-virtual {p1, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-object v2
.end method
