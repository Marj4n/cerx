.class public Lcom/jieli/stream/dv/running2/util/HandlerUtil;
.super Ljava/lang/Object;
.source "HandlerUtil.java"


# static fields
.field private static mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 10
    invoke-static {p0, v0, v1}, Lcom/jieli/stream/dv/running2/util/HandlerUtil;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 2

    .line 14
    sget-object v0, Lcom/jieli/stream/dv/running2/util/HandlerUtil;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/jieli/stream/dv/running2/util/HandlerUtil;->mHandler:Landroid/os/Handler;

    .line 17
    :cond_0
    sget-object v0, Lcom/jieli/stream/dv/running2/util/HandlerUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
