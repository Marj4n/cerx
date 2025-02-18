.class Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/dv/control/intercom/IntercomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

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
.method private constructor <init>(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 177
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/lib/dv/control/intercom/IntercomManager;Lcom/jieli/lib/dv/control/intercom/IntercomManager$1;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;-><init>(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)V

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V

    return-void
.end method

.method private a(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remainingCapacity()I

    move-result v0

    if-gtz v0, :cond_0

    .line 182
    iget-object p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 185
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;)Z
    .locals 0

    .line 176
    iget-boolean p0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->c:Z

    return p0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;Z)Z
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->c:Z

    return p1
.end method

.method private b(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 234
    iget-object v2, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v2}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 235
    iget-object p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {p1, v0, v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;J)J

    goto :goto_0

    .line 237
    :cond_1
    iget-object v2, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v2}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v6, v0, v2

    if-ltz v6, :cond_2

    .line 238
    iget-object p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {p1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frameNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->c(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {p1, v4, v5}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;J)J

    .line 240
    iget-object p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->c(Lcom/jieli/lib/dv/control/intercom/IntercomManager;I)I

    .line 241
    iget-object p1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {p1, v4, v5}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b(Lcom/jieli/lib/dv/control/intercom/IntercomManager;J)J

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->getOffset()I

    move-result v0

    if-nez v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->e(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)I

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->d(Lcom/jieli/lib/dv/control/intercom/IntercomManager;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->getPayloadLen()I

    move-result p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b(Lcom/jieli/lib/dv/control/intercom/IntercomManager;J)J

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;I)I

    .line 201
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->b(Lcom/jieli/lib/dv/control/intercom/IntercomManager;I)I

    .line 202
    iput-boolean v1, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->c:Z

    .line 203
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->c:Z

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/lib/dv/control/projection/beans/StreamData;

    if-eqz v0, :cond_0

    .line 211
    invoke-static {v0}, Lcom/jieli/lib/dv/control/projection/tools/Utils;->mergeDataPacket(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v2, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    invoke-static {v2, v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;[B)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 216
    invoke-direct {p0, v0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->b(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)V

    :cond_1
    if-gez v1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a()V

    :cond_2
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 195
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 196
    iget-object v0, p0, Lcom/jieli/lib/dv/control/intercom/IntercomManager$a;->a:Lcom/jieli/lib/dv/control/intercom/IntercomManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/intercom/IntercomManager;->a(Lcom/jieli/lib/dv/control/intercom/IntercomManager;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
