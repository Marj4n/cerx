.class public final synthetic Lcom/serenegiant/net/-$$Lambda$ConnectivityHelper$ckFVyOD7_323_SOoyeMXeSDNl6A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/serenegiant/net/ConnectivityHelper;

.field public final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/serenegiant/net/ConnectivityHelper;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/net/-$$Lambda$ConnectivityHelper$ckFVyOD7_323_SOoyeMXeSDNl6A;->f$0:Lcom/serenegiant/net/ConnectivityHelper;

    iput-object p2, p0, Lcom/serenegiant/net/-$$Lambda$ConnectivityHelper$ckFVyOD7_323_SOoyeMXeSDNl6A;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/serenegiant/net/-$$Lambda$ConnectivityHelper$ckFVyOD7_323_SOoyeMXeSDNl6A;->f$0:Lcom/serenegiant/net/ConnectivityHelper;

    iget-object v1, p0, Lcom/serenegiant/net/-$$Lambda$ConnectivityHelper$ckFVyOD7_323_SOoyeMXeSDNl6A;->f$1:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/serenegiant/net/ConnectivityHelper;->lambda$callOnError$1$ConnectivityHelper(Ljava/lang/Throwable;)V

    return-void
.end method
