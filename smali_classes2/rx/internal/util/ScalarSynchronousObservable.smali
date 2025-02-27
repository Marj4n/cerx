.class public final Lrx/internal/util/ScalarSynchronousObservable;
.super Lrx/Observable;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;,
        Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;,
        Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;,
        Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final STRONG_MODE:Z

.field static hook:Lrx/plugins/RxJavaObservableExecutionHook;


# instance fields
.field final t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getObservableExecutionHook()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v0

    sput-object v0, Lrx/internal/util/ScalarSynchronousObservable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    const-string v0, "rx.just.strong-mode"

    const-string v1, "false"

    .line 52
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lrx/internal/util/ScalarSynchronousObservable;->STRONG_MODE:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 84
    sget-object v0, Lrx/internal/util/ScalarSynchronousObservable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe;

    invoke-direct {v1, p1}, Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lrx/plugins/RxJavaObservableExecutionHook;->onCreate(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 85
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lrx/internal/util/ScalarSynchronousObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/internal/util/ScalarSynchronousObservable<",
            "TT;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-direct {v0, p0}, Lrx/internal/util/ScalarSynchronousObservable;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static createProducer(Lrx/Subscriber;Ljava/lang/Object;)Lrx/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber<",
            "-TT;>;TT;)",
            "Lrx/Producer;"
        }
    .end annotation

    .line 64
    sget-boolean v0, Lrx/internal/util/ScalarSynchronousObservable;->STRONG_MODE:Z

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lrx/internal/producers/SingleProducer;

    invoke-direct {v0, p0, p1}, Lrx/internal/producers/SingleProducer;-><init>(Lrx/Subscriber;Ljava/lang/Object;)V

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$WeakSingleProducer;-><init>(Lrx/Subscriber;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Observable<",
            "+TR;>;>;)",
            "Lrx/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 236
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$3;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$3;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/internal/util/ScalarSynchronousObservable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public scalarScheduleOn(Lrx/Scheduler;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 105
    instance-of v0, p1, Lrx/internal/schedulers/EventLoopsScheduler;

    if-eqz v0, :cond_0

    .line 106
    check-cast p1, Lrx/internal/schedulers/EventLoopsScheduler;

    .line 107
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$1;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/internal/schedulers/EventLoopsScheduler;)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$2;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/Scheduler;)V

    .line 133
    :goto_0
    new-instance p1, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;

    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncOnSubscribe;-><init>(Ljava/lang/Object;Lrx/functions/Func1;)V

    invoke-static {p1}, Lrx/internal/util/ScalarSynchronousObservable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
