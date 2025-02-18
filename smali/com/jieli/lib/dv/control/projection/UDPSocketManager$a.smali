.class Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/dv/control/projection/UDPSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

.field private final b:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcom/jieli/lib/dv/control/projection/beans/StreamData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 195
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 p1, 0x0

    .line 196
    iput-boolean p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;Lcom/jieli/lib/dv/control/projection/UDPSocketManager$1;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;-><init>(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;)V

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V

    return-void
.end method

.method private a(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remainingCapacity()I

    move-result v0

    if-gtz v0, :cond_0

    .line 200
    iget-object p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 203
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->c:Z

    return p0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->c:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;I)I

    .line 219
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->b(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;I)I

    .line 220
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->c(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;I)I

    .line 221
    iput-boolean v1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->c:Z

    .line 222
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 227
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->c:Z

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;

    if-eqz v0, :cond_0

    .line 230
    invoke-static {v0}, Lcom/jieli/lib/dv/control/projection/tools/Utils;->mergeDataPacket(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    invoke-static {v1, v0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;[B)I

    move-result v0

    if-gez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a()V

    :cond_1
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 213
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 214
    iget-object v0, p0, Lcom/jieli/lib/dv/control/projection/UDPSocketManager$a;->a:Lcom/jieli/lib/dv/control/projection/UDPSocketManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/projection/UDPSocketManager;->a(Lcom/jieli/lib/dv/control/projection/UDPSocketManager;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
