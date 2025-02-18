.class public Lcom/jieli/lib/dv/control/mssdp/Discovery;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/lib/dv/control/mssdp/Discovery$a;,
        Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;
    }
.end annotation


# static fields
.field public static final BROADCAST_IP:Ljava/lang/String; = "255.255.255.255"

.field public static final BROADCAST_REPLY:Ljava/lang/String; = "MSSDP_NOTIFY"

.field public static final DISCOVERY_MSG:Ljava/lang/String; = "MSSDP_SEARCH "

.field public static final DISCOVERY_PORT:I = 0xf31

.field private static final a:Ljava/lang/String;

.field private static b:Lcom/jieli/lib/dv/control/mssdp/Discovery;


# instance fields
.field private c:Ljava/net/DatagramSocket;

.field private d:Ljava/net/InetAddress;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf31

    .line 33
    iput v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->g:I

    const/16 v0, 0x32

    .line 34
    iput v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->h:I

    const/4 v0, 0x3

    .line 35
    iput v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->i:I

    const-string v0, "MSSDP_SEARCH "

    .line 38
    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->l:Ljava/lang/String;

    const-string v0, "MSSDP_NOTIFY"

    .line 39
    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->m:Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/mssdp/Discovery;Lcom/jieli/lib/dv/control/mssdp/Discovery$a;)Lcom/jieli/lib/dv/control/mssdp/Discovery$a;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->f:Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/mssdp/Discovery;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->m:Ljava/lang/String;

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->e:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 154
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;

    if-eqz v1, :cond_0

    .line 156
    invoke-interface {v1, p1, p2}, Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/mssdp/Discovery;ILjava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/jieli/lib/dv/control/mssdp/Discovery;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->e:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;

    if-eqz v1, :cond_0

    .line 145
    invoke-interface {v1, p1, p2}, Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;->onDiscovery(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized a([B)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 275
    :try_start_0
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, p1

    iget-object v2, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->d:Ljava/net/InetAddress;

    iget v3, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->g:I

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 276
    iget-object p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c:Ljava/net/DatagramSocket;

    if-eqz p1, :cond_0

    .line 277
    iget-object p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c:Ljava/net/DatagramSocket;

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 280
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 281
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    monitor-exit p0

    throw p1

    .line 284
    :cond_0
    :goto_1
    monitor-exit p0

    return-void
.end method

.method private b()V
    .locals 2

    .line 164
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    iget v1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->g:I

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c:Ljava/net/DatagramSocket;

    const/4 v1, 0x1

    .line 165
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 166
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->d:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/jieli/lib/dv/control/mssdp/Discovery;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->j:Z

    return p0
.end method

.method private c()Ljava/net/InetAddress;
    .locals 6

    .line 179
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 182
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 185
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wlan0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 186
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "eth0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ap0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    :cond_2
    sget-object v0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current IP Address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    .line 203
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c()Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 210
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InterfaceAddress;

    if-eqz v2, :cond_1

    .line 214
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 217
    sget-object v2, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "myAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method public static newInstance()Lcom/jieli/lib/dv/control/mssdp/Discovery;
    .locals 2

    .line 48
    sget-object v0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->b:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lcom/jieli/lib/dv/control/mssdp/Discovery;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/jieli/lib/dv/control/mssdp/Discovery;->b:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/jieli/lib/dv/control/mssdp/Discovery;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/mssdp/Discovery;-><init>()V

    sput-object v1, Lcom/jieli/lib/dv/control/mssdp/Discovery;->b:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 55
    :cond_1
    :goto_0
    sget-object v0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->b:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized doDiscovery()V
    .locals 3

    monitor-enter p0

    const/16 v0, 0xf31

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->k:Ljava/lang/String;

    const-string v2, "MSSDP_SEARCH "

    invoke-virtual {p0, v0, v1, v2}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->doDiscovery(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doDiscovery(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    .line 242
    :try_start_0
    iget v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->g:I

    if-eq v0, p1, :cond_0

    .line 243
    iput p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->g:I

    .line 245
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->k:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 246
    iput-object p2, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->k:Ljava/lang/String;

    .line 248
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->l:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 249
    iput-object p3, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->l:Ljava/lang/String;

    .line 251
    :cond_2
    iget-object p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c:Ljava/net/DatagramSocket;

    if-nez p1, :cond_3

    .line 252
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->b()V

    .line 254
    :cond_3
    iget-object p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c:Ljava/net/DatagramSocket;

    if-eqz p1, :cond_5

    .line 255
    iget-object p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->f:Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->f:Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

    invoke-static {p1}, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->a(Lcom/jieli/lib/dv/control/mssdp/Discovery$a;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 256
    :cond_4
    new-instance p1, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

    iget-object p2, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c:Ljava/net/DatagramSocket;

    invoke-direct {p1, p0, p2}, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;-><init>(Lcom/jieli/lib/dv/control/mssdp/Discovery;Ljava/net/DatagramSocket;)V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->f:Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

    .line 257
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->start()V

    .line 260
    :cond_5
    iget-object p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 261
    :goto_0
    iget p2, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->i:I

    if-ge p1, p2, :cond_6

    .line 262
    iget-object p2, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->l:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/jieli/lib/dv/control/mssdp/Discovery;->a([B)V

    .line 263
    iget p2, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->h:I

    int-to-long p2, p2

    invoke-static {p2, p3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 266
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getInterval()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->h:I

    return v0
.end method

.method public getRepeatNumber()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->i:I

    return v0
.end method

.method public isFilter()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->j:Z

    return v0
.end method

.method public registerOnDiscoveryListener(Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;)Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->e:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->e:Ljava/util/Set;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 290
    sput-object v0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->b:Lcom/jieli/lib/dv/control/mssdp/Discovery;

    .line 291
    iget-object v1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 294
    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->c:Ljava/net/DatagramSocket;

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->f:Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

    if-eqz v1, :cond_1

    .line 297
    invoke-static {v1}, Lcom/jieli/lib/dv/control/mssdp/Discovery$a;->b(Lcom/jieli/lib/dv/control/mssdp/Discovery$a;)V

    .line 298
    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->f:Lcom/jieli/lib/dv/control/mssdp/Discovery$a;

    .line 300
    :cond_1
    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->d:Ljava/net/InetAddress;

    .line 301
    iget-object v1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->e:Ljava/util/Set;

    if-eqz v1, :cond_2

    .line 302
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 303
    iput-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->e:Ljava/util/Set;

    :cond_2
    return-void
.end method

.method public setBroadCastFlag(Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iput-object p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->m:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setFilter(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->j:Z

    return-void
.end method

.method public setInterval(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 78
    iput p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->h:I

    :cond_0
    return-void
.end method

.method public setRepeatNumber(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 95
    iput p1, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->i:I

    :cond_0
    return-void
.end method

.method public unregisterOnDiscoveryListener(Lcom/jieli/lib/dv/control/mssdp/Discovery$OnDiscoveryListener;)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/jieli/lib/dv/control/mssdp/Discovery;->e:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
