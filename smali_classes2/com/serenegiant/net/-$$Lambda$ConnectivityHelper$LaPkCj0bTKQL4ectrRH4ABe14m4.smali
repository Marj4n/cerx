.class public final synthetic Lcom/serenegiant/net/-$$Lambda$ConnectivityHelper$LaPkCj0bTKQL4ectrRH4ABe14m4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/serenegiant/net/ConnectivityHelper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/serenegiant/net/ConnectivityHelper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/net/-$$Lambda$ConnectivityHelper$LaPkCj0bTKQL4ectrRH4ABe14m4;->f$0:Lcom/serenegiant/net/ConnectivityHelper;

    iput p2, p0, Lcom/serenegiant/net/-$$Lambda$ConnectivityHelper$LaPkCj0bTKQL4ectrRH4ABe14m4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/serenegiant/net/-$$Lambda$ConnectivityHelper$LaPkCj0bTKQL4ectrRH4ABe14m4;->f$0:Lcom/serenegiant/net/ConnectivityHelper;

    iget v1, p0, Lcom/serenegiant/net/-$$Lambda$ConnectivityHelper$LaPkCj0bTKQL4ectrRH4ABe14m4;->f$1:I

    invoke-virtual {v0, v1}, Lcom/serenegiant/net/ConnectivityHelper;->lambda$callOnNetworkChanged$0$ConnectivityHelper(I)V

    return-void
.end method
