.class public Lcom/jieli/stream/dv/running2/util/WifiHelper;
.super Ljava/lang/Object;
.source "WifiHelper.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/IConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/util/WifiHelper$NetState;,
        Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;
    }
.end annotation


# static fields
.field private static instance:Lcom/jieli/stream/dv/running2/util/WifiHelper; = null

.field private static otherWifiSSID:Ljava/lang/String; = null

.field private static tag:Ljava/lang/String; = "WifiHelper"


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private wifiCallBackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 57
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    .line 59
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->startScan()V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public static bindNetwork(Landroid/content/Context;)V
    .locals 4

    .line 1012
    sget-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK_INT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string v0, "connectivity"

    .line 1014
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1015
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 1016
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0xc

    .line 1017
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    const/4 v1, 0x0

    .line 1018
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1020
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 1022
    new-instance v1, Lcom/jieli/stream/dv/running2/util/WifiHelper$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper$1;-><init>(Landroid/net/ConnectivityManager;)V

    if-eqz p0, :cond_0

    .line 1039
    sget-object v2, Lcom/jieli/stream/dv/running2/util/WifiHelper;->tag:Ljava/lang/String;

    const-string v3, "registerNetworkCallback"

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method private configurationNetWorkIdCheck(I)Z
    .locals 3

    .line 310
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getSavedWifiConfiguration()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 314
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    .line 315
    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private createWifiConfiguration(Ljava/lang/String;Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;)Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .line 545
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 546
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 547
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 548
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 549
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 550
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 553
    sget-object p1, Lcom/jieli/stream/dv/running2/util/WifiHelper$2;->$SwitchMap$com$jieli$stream$dv$running2$util$WifiHelper$WifiCipherType:[I

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->ordinal()I

    move-result p3

    aget p1, p1, p3

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    const/4 v5, 0x4

    if-eq p1, v5, :cond_1

    const/4 v5, 0x5

    if-eq p1, v5, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 590
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 591
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 592
    invoke-virtual {p1, p3}, Ljava/util/BitSet;->set(I)V

    .line 593
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 594
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 595
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 596
    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 597
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 598
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 599
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 600
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 601
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 602
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 603
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 604
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 605
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 571
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 572
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 573
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 574
    invoke-virtual {p1, p3}, Ljava/util/BitSet;->set(I)V

    .line 575
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 576
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 577
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 578
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 579
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 580
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 582
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 583
    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 584
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 585
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 586
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 560
    :cond_2
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 561
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p3

    .line 562
    iput p3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 563
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, p3}, Ljava/util/BitSet;->set(I)V

    .line 564
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, p3}, Ljava/util/BitSet;->set(I)V

    .line 565
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 566
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 567
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 568
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 555
    :cond_3
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, p3}, Ljava/util/BitSet;->set(I)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method private static formatIpAddress(I)Ljava/lang/String;
    .locals 3

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 881
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "\""

    .line 882
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 883
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, " "

    .line 885
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 886
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static getConnectedType(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper$NetState;
    .locals 2

    .line 674
    sget-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$NetState;->NET_NO:Lcom/jieli/stream/dv/running2/util/WifiHelper$NetState;

    const-string v1, "connectivity"

    .line 675
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 676
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 677
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 678
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    if-eq v1, p0, :cond_0

    .line 719
    sget-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$NetState;->NET_UNKNOWN:Lcom/jieli/stream/dv/running2/util/WifiHelper$NetState;

    goto :goto_1

    .line 680
    :cond_0
    sget-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$NetState;->NET_WIFI:Lcom/jieli/stream/dv/running2/util/WifiHelper$NetState;

    goto :goto_1

    .line 683
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 708
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TD-SCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 709
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 710
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CDMA2000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 704
    :pswitch_0
    sget-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$NetState;->NET_4G:Lcom/jieli/stream/dv/running2/util/WifiHelper$NetState;

    goto :goto_1

    .line 701
    :pswitch_1
    sget-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$NetState;->NET_3G:Lcom/jieli/stream/dv/running2/util/WifiHelper$NetState;

    goto :goto_1

    .line 713
    :cond_2
    sget-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$NetState;->NET_UNKNOWN:Lcom/jieli/stream/dv/running2/util/WifiHelper$NetState;

    goto :goto_1

    .line 711
    :cond_3
    :goto_0
    sget-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper$NetState;->NET_3G:Lcom/jieli/stream/dv/running2/util/WifiHelper$NetState;

    :cond_4
    :goto_1
    :pswitch_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;
    .locals 2

    .line 46
    const-class v0, Lcom/jieli/stream/dv/running2/util/WifiHelper;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/jieli/stream/dv/running2/util/WifiHelper;->instance:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/jieli/stream/dv/running2/util/WifiHelper;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/jieli/stream/dv/running2/util/WifiHelper;->instance:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    .line 50
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    sget-object p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->instance:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    return-object p0

    :catchall_0
    move-exception p0

    .line 50
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static getLocalIpAddress()Ljava/lang/String;
    .locals 5

    .line 750
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 751
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 752
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 753
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 754
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 756
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    instance-of v2, v2, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return-object v3

    :catch_0
    move-exception v0

    .line 762
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_2
    const-string v0, "0.0.0.0"

    return-object v0
.end method

.method public static getNetWorkType(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x1

    .line 618
    invoke-static {p0, v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->isNetWorkConnectedType(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, "connectivity"

    .line 622
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 623
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 624
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WIFI"

    .line 626
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    const-string v3, "MOBILE"

    .line 628
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "phone"

    .line 630
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 631
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v2

    :pswitch_1
    return v0

    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    const-string v0, "connectivity"

    .line 112
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWifiIP(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 731
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 732
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 733
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    invoke-static {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatIpAddress(I)Ljava/lang/String;

    move-result-object p0

    .line 734
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "0.0.0.0"

    .line 735
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 736
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getLocalIpAddress()Ljava/lang/String;

    move-result-object p0

    .line 737
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    sget-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->tag:Ljava/lang/String;

    const-string v1, "WIFI IP Error"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public static getWifiIP(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 786
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    .line 787
    invoke-static {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatIpAddress(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static interceptChar0Before(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 184
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v3, p0, v2

    .line 187
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 188
    invoke-virtual {v4}, Ljava/lang/Character;->hashCode()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 191
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isNetWorkConnectedType(Landroid/content/Context;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "connectivity"

    .line 128
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_3

    .line 130
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 132
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 133
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_2

    .line 134
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private isWifiConfigurationSaved(Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;)Landroid/net/wifi/WifiConfiguration;
    .locals 7

    .line 507
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getSavedWifiConfiguration()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 511
    :cond_0
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 512
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    .line 514
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 515
    invoke-static {v3}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 516
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move-object v4, v1

    .line 518
    :goto_0
    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 519
    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 520
    sget-object v5, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 521
    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v4, v4, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 525
    :cond_3
    sget-object v3, Lcom/jieli/stream/dv/running2/util/WifiHelper;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWifiConfigurationSaved  keyMgmt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , wifiCipherType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    sget-object v3, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->WPA:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    if-ne p2, v3, :cond_4

    const-string v3, "WPA_PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    sget-object v3, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->NONE:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    if-ne p2, v3, :cond_1

    const-string v3, "NONE"

    .line 527
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    :cond_5
    sget-object p1, Lcom/jieli/stream/dv/running2/util/WifiHelper;->tag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isWifiConfigurationSaved return object, network id : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_6
    return-object v1
.end method


# virtual methods
.method public acquireWifiLock()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_0

    :cond_0
    const-string v0, "wifiLock"

    .line 347
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->createWifiLock(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_1
    :goto_0
    return-void
.end method

.method public addNetWork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, -0xff

    :goto_0
    return p1
.end method

.method public addNetWorkAndConnect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 384
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->addNetWork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    .line 385
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    const/16 v1, -0xff

    if-eq p1, v1, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 387
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    :cond_0
    return-void
.end method

.method public addNetWorkAndConnect(Ljava/lang/String;Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;)V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 473
    invoke-direct {p0, p1, p3}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->isWifiConfigurationSaved(Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    iget p1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->connectionConfiguration(I)V

    goto :goto_0

    .line 478
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->createWifiConfiguration(Ljava/lang/String;Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 480
    invoke-virtual {p0, p2}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->addNetWork(Landroid/net/wifi/WifiConfiguration;)I

    .line 481
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getSavedWifiConfiguration()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 483
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/WifiConfiguration;

    if-eqz p3, :cond_1

    .line 485
    iget-object v0, p3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 486
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 488
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 490
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget p2, p3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public clearAllOnWifiCallback()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    return-void
.end method

.method public closeWifi()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->isWifiOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method

.method public connectOtherWifi(Ljava/lang/String;)V
    .locals 9

    .line 830
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->startScan()V

    const/4 v0, 0x0

    .line 831
    sput-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->otherWifiSSID:Ljava/lang/String;

    .line 833
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getSavedWifiConfiguration()Ljava/util/List;

    move-result-object v0

    .line 834
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiScanResult()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 840
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 841
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 842
    invoke-static {v3}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 843
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 847
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 848
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 849
    invoke-static {v6}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 850
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    .line 853
    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 854
    sget-object v4, Lcom/jieli/stream/dv/running2/util/WifiHelper;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Save networkName-> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " network_id -> "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " networkName : "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_5

    .line 856
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 857
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v2

    .line 859
    :cond_5
    iget-object v3, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    sput-object v3, Lcom/jieli/stream/dv/running2/util/WifiHelper;->otherWifiSSID:Ljava/lang/String;

    :cond_6
    if-eqz v2, :cond_1

    :cond_7
    return-void

    .line 836
    :cond_8
    :goto_2
    sget-object p1, Lcom/jieli/stream/dv/running2/util/WifiHelper;->tag:Ljava/lang/String;

    const-string v0, "scanResultList or saveWifiList is null"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connectWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 946
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    sget-object p1, Lcom/jieli/stream/dv/running2/util/WifiHelper;->tag:Ljava/lang/String;

    const-string p2, "parameter is empty!"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 951
    :cond_0
    invoke-static {p2}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 952
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 953
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    .line 954
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_1

    return-void

    .line 956
    :cond_1
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 957
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 960
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 961
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz p1, :cond_3

    .line 963
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_3

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0xeef5

    .line 964
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->notifyWifiError(I)V

    goto :goto_0

    .line 966
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 967
    sget-object p1, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->NONE:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    const-string p3, "0"

    invoke-virtual {p0, p2, p3, p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->addNetWorkAndConnect(Ljava/lang/String;Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;)V

    goto :goto_0

    .line 969
    :cond_4
    sget-object p1, Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;->WPA:Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;

    invoke-virtual {p0, p2, p3, p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->addNetWorkAndConnect(Ljava/lang/String;Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/WifiHelper$WifiCipherType;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public connectionConfiguration(I)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 288
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    :cond_0
    return-void
.end method

.method public createWifiLock(Ljava/lang/String;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "wifiLock"

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_1
    return-void
.end method

.method public disconnectionConfiguration(I)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 299
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    :cond_0
    return-void
.end method

.method public getBroadcastAddress(Landroid/content/Context;)Ljava/net/InetAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 921
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "192.168.43.255"

    .line 922
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1

    .line 924
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    const-string v0, "255.255.255.255"

    if-nez p1, :cond_1

    .line 926
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1

    .line 927
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p1

    if-nez p1, :cond_2

    .line 929
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1

    .line 931
    :cond_2
    iget v0, p1, Landroid/net/DhcpInfo;->ipAddress:I

    iget v1, p1, Landroid/net/DhcpInfo;->netmask:I

    and-int/2addr v0, v1

    iget p1, p1, Landroid/net/DhcpInfo;->netmask:I

    not-int p1, p1

    or-int/2addr p1, v0

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    mul-int/lit8 v3, v2, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 934
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 936
    :cond_3
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

.method public getConnectedWifiLevel()I
    .locals 5

    .line 400
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiScanResult()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 406
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    if-eqz v2, :cond_0

    .line 408
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    iget v0, v2, Landroid/net/wifi/ScanResult;->level:I

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentConnectedSsid()Ljava/lang/String;
    .locals 4

    .line 999
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1002
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 1003
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1004
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGateWay(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 772
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 775
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p1

    .line 776
    iget p1, p1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {p1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOtherWifiSSID()Ljava/lang/String;
    .locals 1

    .line 873
    sget-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->otherWifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedWifiConfiguration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecifiedSSIDList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 809
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->startScan()V

    .line 810
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiScanResult()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 812
    sget-object p1, Lcom/jieli/stream/dv/running2/util/WifiHelper;->tag:Ljava/lang/String;

    const-string v0, "scanResultList is null"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 815
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 817
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 818
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 819
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getWifiConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWifiScanResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiState()I
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiState(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 164
    :cond_0
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 166
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_4

    .line 167
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x2

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isOutSideWifi(Ljava/lang/String;)Z
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isWifiApEnabled()Z
    .locals 4

    const/4 v0, 0x0

    .line 907
    :try_start_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isWifiApEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 908
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 909
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 915
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 913
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 911
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public isWifiClosed()Z
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isWifiOpen()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWifiOpened()Z
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public notifyWifiConnect(Landroid/net/wifi/WifiInfo;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;

    .line 84
    invoke-interface {v1, p1}, Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;->onConnected(Landroid/net/wifi/WifiInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyWifiError(I)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;

    .line 92
    invoke-interface {v1, p1}, Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;->onError(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public openWifi()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->isWifiClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method

.method public registerOnWifiCallback(Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 65
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 895
    sput-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->instance:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    .line 896
    sput-object v0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->otherWifiSSID:Ljava/lang/String;

    .line 897
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->releaseWifiLock()V

    .line 898
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public releaseWifiLock()V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_0
    return-void
.end method

.method public removeCurrentNetwork(Landroid/content/Context;)V
    .locals 2

    .line 980
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_0

    .line 982
    sget-object p1, Lcom/jieli/stream/dv/running2/util/WifiHelper;->tag:Ljava/lang/String;

    const-string v0, "WifiManager is null"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 985
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 986
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 990
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 991
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/jieli/stream/dv/running2/util/WifiHelper;->WIFI_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 993
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->removeNetWork(I)V

    .line 994
    sget-object p1, Lcom/jieli/stream/dv/running2/util/WifiHelper;->WIFI_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->connectOtherWifi(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 987
    :cond_3
    :goto_0
    sget-object p1, Lcom/jieli/stream/dv/running2/util/WifiHelper;->tag:Ljava/lang/String;

    const-string v0, "-=-=-=wifiInfo is null or  wifiInfo.getSSID() is null"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeNetWork(I)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    :cond_0
    return-void
.end method

.method public removeSavedNetWork(Ljava/lang/String;)Z
    .locals 5

    .line 425
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    .line 427
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getSavedWifiConfiguration()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 431
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    .line 433
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 434
    invoke-static {v3}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public declared-synchronized startScan()V
    .locals 1

    monitor-enter p0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterOnWifiCallback(Lcom/jieli/stream/dv/running2/interfaces/OnWifiCallBack;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/WifiHelper;->wifiCallBackSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 71
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
