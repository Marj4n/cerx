.class Lcom/jieli/lib/dv/control/mssdp/Discovery$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/dv/control/mssdp/Discovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jieli/lib/dv/control/mssdp/Discovery;

.field private b:Z

.field private c:Ljava/net/DatagramSocket;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/mssdp/Discovery;Ljava/net/DatagramSocket;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 333
    iput-object p2, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->c:Ljava/net/DatagramSocket;

    return-void
.end method

.method private a()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/mssdp/Discovery$a;)Z
    .locals 0

    .line 326
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a()Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->b:Z

    .line 342
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->interrupt()V

    return-void
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/mssdp/Discovery$a;)V
    .locals 0

    .line 326
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->b()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 354
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 355
    invoke-static {}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReceiverThread start..."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const/16 v0, 0x5000

    :try_start_0
    new-array v3, v0, [B

    .line 359
    new-instance v4, Ljava/net/DatagramPacket;

    invoke-direct {v4, v3, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 360
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->c:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 363
    :cond_1
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 364
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 365
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-static {v3}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(Lcom/jieli/lib/dv/control/mssdp/Discovery;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 369
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const/4 v5, 0x2

    .line 370
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 372
    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 373
    aget-object v0, v0, v5

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 375
    :goto_1
    iget-object v4, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-static {v4}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->b(Lcom/jieli/lib/dv/control/mssdp/Discovery;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 376
    iget-object v4, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->d:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 377
    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->e:Ljava/lang/String;

    .line 378
    iget-object v4, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-static {v4, v3, v0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(Lcom/jieli/lib/dv/control/mssdp/Discovery;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 380
    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->e:Ljava/lang/String;

    .line 381
    iget-object v4, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-static {v4, v3, v0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(Lcom/jieli/lib/dv/control/mssdp/Discovery;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 383
    :cond_4
    invoke-static {}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Maybe data is repeat"

    invoke-static {v0, v3}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 386
    :cond_5
    iget-object v4, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-static {v4, v3, v0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(Lcom/jieli/lib/dv/control/mssdp/Discovery;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 393
    iput-boolean v2, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->b:Z

    .line 394
    iget-object v3, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(Lcom/jieli/lib/dv/control/mssdp/Discovery;ILjava/lang/String;)V

    .line 398
    :cond_6
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 399
    iput-boolean v2, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->b:Z

    .line 400
    invoke-static {}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ReceiverThread stop..."

    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(Lcom/jieli/lib/dv/control/mssdp/Discovery;Lcom/jieli/lib/dv/control/mssdp/Discovery$a;)Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 347
    :try_start_0
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->b:Z

    .line 348
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->d:Ljava/util/Set;

    .line 349
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
