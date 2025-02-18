.class public final Lcom/baidu/trace/y;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/net/wifi/WifiManager;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/baidu/trace/y;->a:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/trace/a/j;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/y;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    iget-object v0, p0, Lcom/baidu/trace/y;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v3, 0x1

    :goto_0
    if-lez v0, :cond_4

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    iget-object v5, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget v5, v5, Landroid/net/wifi/ScanResult;->level:I

    iget-object v6, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    if-ge v5, v6, :cond_2

    iget-object v3, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v5, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    invoke-interface {v5, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :cond_2
    move v4, v7

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/baidu/trace/y;->c:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/baidu/trace/c/e;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/baidu/trace/c/e;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/baidu/trace/y;->d:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_6

    const-wide/16 v6, 0x3c

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v3, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    :cond_8
    iget-object v0, p0, Lcom/baidu/trace/y;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    goto :goto_6

    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/baidu/trace/y;->c:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v3, p0, Lcom/baidu/trace/y;->c:Ljava/util/List;

    :cond_a
    iget-object v0, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/baidu/trace/y;->c:Ljava/util/List;

    invoke-static {}, Lcom/baidu/trace/c/e;->b()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/trace/y;->d:J

    :goto_6
    iget-object v0, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0xf

    if-le v0, v3, :cond_c

    goto :goto_7

    :cond_c
    iget-object v0, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_7
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v3, :cond_f

    new-instance v4, Lcom/baidu/trace/a/j;

    invoke-direct {v4}, Lcom/baidu/trace/a/j;-><init>()V

    iget-object v5, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/baidu/trace/c/d;->b(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/trace/a/j;->a:[B

    iget-object v5, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget v5, v5, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    iput-byte v5, v4, Lcom/baidu/trace/a/j;->b:B

    iget-object v5, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/baidu/trace/c/d;->a(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/trace/a/j;->c:[B

    iget-object v5, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "WPA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "wpa"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "WEP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "wep"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_9

    :cond_d
    iput-byte v1, v4, Lcom/baidu/trace/a/j;->d:B

    goto :goto_a

    :cond_e
    :goto_9
    iput-byte v2, v4, Lcom/baidu/trace/a/j;->d:B

    :goto_a
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_f
    return-void
.end method

.method protected final a()Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/trace/y;->a:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_2

    iget-object v0, p0, Lcom/baidu/trace/y;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method protected final b()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/baidu/trace/y;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/baidu/trace/y;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/baidu/trace/y;->c:Ljava/util/List;

    :cond_1
    return-void
.end method
