.class public Lcom/serenegiant/utils/HandlerThreadHandler;
.super Landroid/os/Handler;
.source "HandlerThreadHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HandlerThreadHandler"


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public static final createHandler()Lcom/serenegiant/utils/HandlerThreadHandler;
    .locals 1

    const-string v0, "HandlerThreadHandler"

    .line 31
    invoke-static {v0}, Lcom/serenegiant/utils/HandlerThreadHandler;->createHandler(Ljava/lang/String;)Lcom/serenegiant/utils/HandlerThreadHandler;

    move-result-object v0

    return-object v0
.end method

.method public static final createHandler(Landroid/os/Handler$Callback;)Lcom/serenegiant/utils/HandlerThreadHandler;
    .locals 1

    const-string v0, "HandlerThreadHandler"

    .line 41
    invoke-static {v0, p0}, Lcom/serenegiant/utils/HandlerThreadHandler;->createHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Lcom/serenegiant/utils/HandlerThreadHandler;

    move-result-object p0

    return-object p0
.end method

.method public static final createHandler(Ljava/lang/String;)Lcom/serenegiant/utils/HandlerThreadHandler;
    .locals 1

    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance p0, Lcom/serenegiant/utils/HandlerThreadHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/serenegiant/utils/HandlerThreadHandler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public static final createHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Lcom/serenegiant/utils/HandlerThreadHandler;
    .locals 1

    .line 45
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 47
    new-instance p0, Lcom/serenegiant/utils/HandlerThreadHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/serenegiant/utils/HandlerThreadHandler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object p0
.end method
