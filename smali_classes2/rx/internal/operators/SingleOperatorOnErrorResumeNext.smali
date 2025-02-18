.class public Lrx/internal/operators/SingleOperatorOnErrorResumeNext;
.super Ljava/lang/Object;
.source "SingleOperatorOnErrorResumeNext.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final originalSingle:Lrx/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final resumeFunctionInCaseOfError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Single<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Single;Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Single<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 38
    iput-object p1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->originalSingle:Lrx/Single;

    .line 39
    iput-object p2, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->resumeFunctionInCaseOfError:Lrx/functions/Func1;

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "resumeFunctionInCaseOfError must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "originalSingle must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lrx/internal/operators/SingleOperatorOnErrorResumeNext;)Lrx/functions/Func1;
    .locals 0

    .line 24
    iget-object p0, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->resumeFunctionInCaseOfError:Lrx/functions/Func1;

    return-object p0
.end method

.method public static withFunction(Lrx/Single;Lrx/functions/Func1;)Lrx/internal/operators/SingleOperatorOnErrorResumeNext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/functions/Func1<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Single<",
            "+TT;>;>;)",
            "Lrx/internal/operators/SingleOperatorOnErrorResumeNext<",
            "TT;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;-><init>(Lrx/Single;Lrx/functions/Func1;)V

    return-object v0
.end method

.method public static withOther(Lrx/Single;Lrx/Single;)Lrx/internal/operators/SingleOperatorOnErrorResumeNext;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single<",
            "+TT;>;",
            "Lrx/Single<",
            "+TT;>;)",
            "Lrx/internal/operators/SingleOperatorOnErrorResumeNext<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 51
    new-instance v0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;

    new-instance v1, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$1;

    invoke-direct {v1, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$1;-><init>(Lrx/Single;)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;-><init>(Lrx/Single;Lrx/functions/Func1;)V

    return-object v0

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "resumeSingleInCaseOfError must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lrx/SingleSubscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 61
    new-instance v0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleOperatorOnErrorResumeNext$2;-><init>(Lrx/internal/operators/SingleOperatorOnErrorResumeNext;Lrx/SingleSubscriber;)V

    .line 77
    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 78
    iget-object p1, p0, Lrx/internal/operators/SingleOperatorOnErrorResumeNext;->originalSingle:Lrx/Single;

    invoke-virtual {p1, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    return-void
.end method
