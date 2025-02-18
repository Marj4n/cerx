.class final Lcom/serenegiant/media/Recorder$EosHandler;
.super Landroid/os/Handler;
.source "Recorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/media/Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EosHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/media/Recorder$EosHandler$EosThread;
    }
.end annotation


# static fields
.field private static final MSG_CHECK_FREESPACE:I = 0x5

.field private static final MSG_SEND_EOS:I = 0x8

.field private static final MSG_SEND_QUIT:I = 0x9


# instance fields
.field private final mThread:Lcom/serenegiant/media/Recorder$EosHandler$EosThread;


# direct methods
.method private constructor <init>(Lcom/serenegiant/media/Recorder$EosHandler$EosThread;)V
    .locals 0

    .line 479
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 480
    iput-object p1, p0, Lcom/serenegiant/media/Recorder$EosHandler;->mThread:Lcom/serenegiant/media/Recorder$EosHandler$EosThread;

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/media/Recorder$EosHandler$EosThread;Lcom/serenegiant/media/Recorder$1;)V
    .locals 0

    .line 473
    invoke-direct {p0, p1}, Lcom/serenegiant/media/Recorder$EosHandler;-><init>(Lcom/serenegiant/media/Recorder$EosHandler$EosThread;)V

    return-void
.end method

.method public static final createHandler(Lcom/serenegiant/media/Recorder;)Lcom/serenegiant/media/Recorder$EosHandler;
    .locals 1

    .line 490
    new-instance v0, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;

    invoke-direct {v0, p0}, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;-><init>(Lcom/serenegiant/media/Recorder;)V

    .line 491
    invoke-virtual {v0}, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->start()V

    .line 492
    invoke-static {v0}, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->access$000(Lcom/serenegiant/media/Recorder$EosHandler$EosThread;)Lcom/serenegiant/media/Recorder$EosHandler;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 531
    iget-object v0, p0, Lcom/serenegiant/media/Recorder$EosHandler;->mThread:Lcom/serenegiant/media/Recorder$EosHandler$EosThread;

    invoke-static {v0}, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->access$100(Lcom/serenegiant/media/Recorder$EosHandler$EosThread;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/media/Recorder;

    if-nez v0, :cond_0

    .line 535
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 541
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    .line 560
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 554
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 543
    :cond_2
    invoke-virtual {v0}, Lcom/serenegiant/media/Recorder;->stopRecording()V

    goto :goto_0

    .line 546
    :cond_3
    iget-object p1, p0, Lcom/serenegiant/media/Recorder$EosHandler;->mThread:Lcom/serenegiant/media/Recorder$EosHandler$EosThread;

    invoke-static {p1, v0}, Lcom/serenegiant/media/Recorder$EosHandler$EosThread;->access$200(Lcom/serenegiant/media/Recorder$EosHandler$EosThread;Lcom/serenegiant/media/Recorder;)Z

    move-result p1

    if-nez p1, :cond_4

    const-wide/32 v0, 0xafc8

    .line 547
    invoke-virtual {p0, v2, v0, v1}, Lcom/serenegiant/media/Recorder$EosHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 549
    :cond_4
    invoke-virtual {v0}, Lcom/serenegiant/media/Recorder;->stopRecording()V

    :catch_1
    :goto_0
    return-void
.end method

.method public final setDuration(J)V
    .locals 4

    const/16 v0, 0x8

    .line 500
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/Recorder$EosHandler;->removeMessages(I)V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 502
    invoke-virtual {p0, v0, p1, p2}, Lcom/serenegiant/media/Recorder$EosHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public final startCheckFreeSpace()V
    .locals 3

    const/4 v0, 0x5

    .line 512
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/Recorder$EosHandler;->removeMessages(I)V

    const-wide/32 v1, 0xafc8

    .line 514
    invoke-virtual {p0, v0, v1, v2}, Lcom/serenegiant/media/Recorder$EosHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final terminate()V
    .locals 1

    const/16 v0, 0x8

    .line 522
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/Recorder$EosHandler;->removeMessages(I)V

    const/4 v0, 0x5

    .line 523
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/Recorder$EosHandler;->removeMessages(I)V

    const/16 v0, 0x9

    .line 525
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/Recorder$EosHandler;->sendEmptyMessage(I)Z

    return-void
.end method
