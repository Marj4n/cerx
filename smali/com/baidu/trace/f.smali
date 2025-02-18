.class public final Lcom/baidu/trace/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/trace/f$a;
    }
.end annotation


# static fields
.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static m:[C


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/telephony/TelephonyManager;

.field private c:Lcom/baidu/trace/a;

.field private h:Landroid/net/wifi/WifiManager;

.field private i:Lcom/baidu/trace/f$a;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_."

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/baidu/trace/f;->m:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/f;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/baidu/trace/f;->b:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/baidu/trace/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/trace/a;-><init>(Lcom/baidu/trace/f;B)V

    iput-object v1, p0, Lcom/baidu/trace/f;->c:Lcom/baidu/trace/a;

    iput-object v0, p0, Lcom/baidu/trace/f;->h:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/trace/f;->i:Lcom/baidu/trace/f$a;

    iput-object v0, p0, Lcom/baidu/trace/f;->j:Ljava/lang/String;

    iput v2, p0, Lcom/baidu/trace/f;->k:I

    iput-object v0, p0, Lcom/baidu/trace/f;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/trace/f;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v1, p0, Lcom/baidu/trace/f;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/baidu/trace/f;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/trace/f;->l:Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/trace/f;->a:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/baidu/trace/f;->h:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private a(Landroid/telephony/CellInfo;)Lcom/baidu/trace/a;
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Lcom/baidu/trace/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/trace/a;-><init>(Lcom/baidu/trace/f;B)V

    instance-of v3, p1, Landroid/telephony/CellInfoGsm;

    const/4 v4, 0x1

    const/16 v5, 0x67

    if-eqz v3, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v3

    invoke-static {v3}, Lcom/baidu/trace/f;->b(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/trace/a;->c:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v3

    invoke-static {v3}, Lcom/baidu/trace/f;->b(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/trace/a;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v3

    invoke-static {v3}, Lcom/baidu/trace/f;->b(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/trace/a;->a:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    :goto_0
    invoke-static {v2}, Lcom/baidu/trace/f;->b(I)I

    move-result v2

    iput v2, v1, Lcom/baidu/trace/a;->b:I

    iput-char v5, v1, Lcom/baidu/trace/a;->e:C

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    instance-of v3, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v3, :cond_2

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v3

    invoke-static {v3}, Lcom/baidu/trace/f;->b(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/trace/a;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v3

    invoke-static {v3}, Lcom/baidu/trace/f;->b(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/trace/a;->a:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v2

    invoke-static {v2}, Lcom/baidu/trace/f;->b(I)I

    move-result v2

    iput v2, v1, Lcom/baidu/trace/a;->b:I

    const/16 v2, 0x77

    iput-char v2, v1, Lcom/baidu/trace/a;->e:C

    goto :goto_1

    :cond_2
    instance-of v3, p1, Landroid/telephony/CellInfoLte;

    if-eqz v3, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v3

    invoke-static {v3}, Lcom/baidu/trace/f;->b(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/trace/a;->c:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v3

    invoke-static {v3}, Lcom/baidu/trace/f;->b(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/trace/a;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v3

    invoke-static {v3}, Lcom/baidu/trace/f;->b(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/trace/a;->a:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    goto :goto_0

    :cond_3
    :goto_2
    const/16 v3, 0x12

    if-lt v0, v3, :cond_4

    if-nez v2, :cond_4

    :try_start_0
    instance-of v0, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v0

    invoke-static {v0}, Lcom/baidu/trace/f;->b(I)I

    move-result v0

    iput v0, v1, Lcom/baidu/trace/a;->c:I

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v0

    invoke-static {v0}, Lcom/baidu/trace/f;->b(I)I

    move-result v0

    iput v0, v1, Lcom/baidu/trace/a;->d:I

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v0

    invoke-static {v0}, Lcom/baidu/trace/f;->b(I)I

    move-result v0

    iput v0, v1, Lcom/baidu/trace/a;->a:I

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p1

    invoke-static {p1}, Lcom/baidu/trace/f;->b(I)I

    move-result p1

    iput p1, v1, Lcom/baidu/trace/a;->b:I

    iput-char v5, v1, Lcom/baidu/trace/a;->e:C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-object v1
.end method

.method private a(I)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/baidu/trace/f;->b()Lcom/baidu/trace/a;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/a;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iput-object v3, v0, Lcom/baidu/trace/f;->c:Lcom/baidu/trace/a;

    goto/16 :goto_4

    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/baidu/trace/f;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v4, v0, Lcom/baidu/trace/f;->b:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_2

    goto/16 :goto_4

    :cond_2
    new-instance v4, Lcom/baidu/trace/a;

    invoke-direct {v4, v0, v2}, Lcom/baidu/trace/a;-><init>(Lcom/baidu/trace/f;B)V

    iget-object v5, v0, Lcom/baidu/trace/f;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-lez v6, :cond_8

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_4

    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_3

    iget-object v6, v0, Lcom/baidu/trace/f;->c:Lcom/baidu/trace/a;

    iget v6, v6, Lcom/baidu/trace/a;->c:I

    :cond_3
    iput v6, v4, Lcom/baidu/trace/a;->c:I

    :cond_4
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_6

    aget-char v8, v6, v7

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :cond_6
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_7

    iget-object v5, v0, Lcom/baidu/trace/f;->c:Lcom/baidu/trace/a;

    iget v5, v5, Lcom/baidu/trace/a;->d:I

    :cond_7
    iput v5, v4, Lcom/baidu/trace/a;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_8
    :try_start_2
    instance-of v5, v3, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v5, :cond_9

    move-object v5, v3

    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v5

    iput v5, v4, Lcom/baidu/trace/a;->a:I

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    iput v3, v4, Lcom/baidu/trace/a;->b:I

    const/16 v3, 0x67

    iput-char v3, v4, Lcom/baidu/trace/a;->e:C

    goto/16 :goto_3

    :cond_9
    instance-of v5, v3, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v5, :cond_c

    const/16 v5, 0x77

    iput-char v5, v4, Lcom/baidu/trace/a;->e:C

    sget-object v5, Lcom/baidu/trace/f;->g:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v5, :cond_a

    :try_start_3
    const-string v5, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/baidu/trace/f;->g:Ljava/lang/Class;

    const-string v6, "getBaseStationId"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/baidu/trace/f;->d:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/baidu/trace/f;->g:Ljava/lang/Class;

    const-string v6, "getNetworkId"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/baidu/trace/f;->e:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/baidu/trace/f;->g:Ljava/lang/Class;

    const-string v6, "getSystemId"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/baidu/trace/f;->f:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    :try_start_4
    sput-object v1, Lcom/baidu/trace/f;->g:Ljava/lang/Class;

    goto :goto_4

    :cond_a
    :goto_2
    sget-object v5, Lcom/baidu/trace/f;->g:Ljava/lang/Class;

    if-eqz v5, :cond_c

    sget-object v5, Lcom/baidu/trace/f;->g:Ljava/lang/Class;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v5, :cond_c

    :try_start_5
    sget-object v5, Lcom/baidu/trace/f;->f:Ljava/lang/reflect/Method;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_b

    iget-object v5, v0, Lcom/baidu/trace/f;->c:Lcom/baidu/trace/a;

    iget v5, v5, Lcom/baidu/trace/a;->d:I

    :cond_b
    iput v5, v4, Lcom/baidu/trace/a;->d:I

    sget-object v5, Lcom/baidu/trace/f;->d:Ljava/lang/reflect/Method;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/baidu/trace/a;->b:I

    sget-object v5, Lcom/baidu/trace/f;->e:Ljava/lang/reflect/Method;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v4, Lcom/baidu/trace/a;->a:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_c
    :goto_3
    :try_start_6
    invoke-static {v4}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/a;)Z

    move-result v3

    if-eqz v3, :cond_d

    iput-object v4, v0, Lcom/baidu/trace/f;->c:Lcom/baidu/trace/a;

    :catch_2
    :cond_d
    :goto_4
    iget-object v3, v0, Lcom/baidu/trace/f;->c:Lcom/baidu/trace/a;

    invoke-virtual {v3}, Lcom/baidu/trace/a;->a()Ljava/lang/String;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-object v3, v1

    :goto_5
    const-string v4, "Z"

    if-nez v3, :cond_e

    move-object v3, v4

    :cond_e
    :try_start_7
    iget-object v5, v0, Lcom/baidu/trace/f;->i:Lcom/baidu/trace/f$a;

    if-eqz v5, :cond_f

    iget-object v5, v0, Lcom/baidu/trace/f;->i:Lcom/baidu/trace/f$a;

    invoke-static {v5}, Lcom/baidu/trace/f$a;->a(Lcom/baidu/trace/f$a;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    new-instance v5, Lcom/baidu/trace/f$a;

    iget-object v6, v0, Lcom/baidu/trace/f;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/baidu/trace/f$a;-><init>(Lcom/baidu/trace/f;Ljava/util/List;)V

    iput-object v5, v0, Lcom/baidu/trace/f;->i:Lcom/baidu/trace/f$a;

    :cond_10
    iget-object v5, v0, Lcom/baidu/trace/f;->i:Lcom/baidu/trace/f$a;

    const/16 v6, 0xa

    invoke-virtual {v5}, Lcom/baidu/trace/f$a;->a()I

    move-result v7

    if-gtz v7, :cond_11

    goto/16 :goto_a

    :cond_11
    iget-object v7, v5, Lcom/baidu/trace/f$a;->b:Lcom/baidu/trace/f;

    invoke-direct {v7}, Lcom/baidu/trace/f;->c()Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v6, 0x9

    const/4 v9, 0x0

    goto :goto_6

    :cond_12
    const/4 v9, 0x1

    :goto_6
    new-instance v10, Ljava/lang/StringBuffer;

    const/16 v11, 0x200

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v11, v5, Lcom/baidu/trace/f$a;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    :goto_7
    const-string v15, "h"

    if-ge v12, v11, :cond_17

    :try_start_8
    iget-object v2, v5, Lcom/baidu/trace/f$a;->a:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    if-eqz v2, :cond_15

    iget-object v2, v5, Lcom/baidu/trace/f$a;->a:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v8, v5, Lcom/baidu/trace/f$a;->a:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    iget v8, v8, Landroid/net/wifi/ScanResult;->level:I

    const-string v1, ":"

    move/from16 v16, v11

    const-string v11, ""

    invoke-virtual {v2, v1, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v5, Lcom/baidu/trace/f$a;->b:Lcom/baidu/trace/f;

    iget-object v2, v2, Lcom/baidu/trace/f;->j:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, v5, Lcom/baidu/trace/f$a;->b:Lcom/baidu/trace/f;

    iget-object v2, v2, Lcom/baidu/trace/f;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v1, v5, Lcom/baidu/trace/f$a;->b:Lcom/baidu/trace/f;

    invoke-static {v8}, Ljava/lang/StrictMath;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/baidu/trace/f;->k:I

    const/4 v9, 0x1

    goto :goto_8

    :cond_13
    if-ge v14, v6, :cond_14

    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "m"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v8}, Ljava/lang/StrictMath;->abs(I)I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    :cond_14
    if-le v14, v6, :cond_16

    if-nez v9, :cond_17

    goto :goto_8

    :cond_15
    move/from16 v16, v11

    :cond_16
    :goto_8
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v16

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_7

    :cond_17
    if-eqz v7, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lcom/baidu/trace/f$a;->b:Lcom/baidu/trace/f;

    iget-object v2, v2, Lcom/baidu/trace/f;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "km"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/baidu/trace/f$a;->b:Lcom/baidu/trace/f;

    iget v2, v2, Lcom/baidu/trace/f;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_18
    const/4 v1, 0x0

    :goto_9
    if-nez v13, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_a

    :catch_4
    const/4 v1, 0x0

    :cond_19
    :goto_a
    if-eqz v1, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1a
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    return-object v1

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/baidu/trace/f;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/trace/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-byte v0, v0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    array-length v2, p0

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-byte v6, p0, v4

    add-int/lit8 v7, v5, 0x1

    xor-int/2addr v6, v0

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_1
    add-int/lit8 p0, v5, 0x1

    aput-byte v0, v2, v5

    aput-byte v1, v2, p0

    invoke-static {v2}, Lcom/baidu/trace/f;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 10

    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_4

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v2, 0x1

    array-length v6, p0

    const/4 v7, 0x1

    if-ge v5, v6, :cond_0

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v2, 0x2

    array-length v8, p0

    if-ge v6, v8, :cond_1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v6, v3, 0x3

    sget-object v8, Lcom/baidu/trace/f;->m:[C

    const/16 v9, 0x40

    if-eqz v7, :cond_2

    and-int/lit8 v7, v4, 0x3f

    rsub-int/lit8 v7, v7, 0x3f

    goto :goto_3

    :cond_2
    const/16 v7, 0x40

    :goto_3
    aget-char v7, v8, v7

    aput-char v7, v0, v6

    shr-int/lit8 v4, v4, 0x6

    add-int/lit8 v6, v3, 0x2

    sget-object v7, Lcom/baidu/trace/f;->m:[C

    if-eqz v5, :cond_3

    and-int/lit8 v5, v4, 0x3f

    rsub-int/lit8 v9, v5, 0x3f

    :cond_3
    aget-char v5, v7, v9

    aput-char v5, v0, v6

    shr-int/lit8 v4, v4, 0x6

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/baidu/trace/f;->m:[C

    and-int/lit8 v7, v4, 0x3f

    rsub-int/lit8 v7, v7, 0x3f

    aget-char v7, v6, v7

    aput-char v7, v0, v5

    shr-int/lit8 v4, v4, 0x6

    and-int/lit8 v4, v4, 0x3f

    rsub-int/lit8 v4, v4, 0x3f

    aget-char v4, v6, v4

    aput-char v4, v0, v3

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static b(I)I
    .locals 1

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method private b()Lcom/baidu/trace/a;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/trace/f;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v1

    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lcom/baidu/trace/f;->a(Landroid/telephony/CellInfo;)Lcom/baidu/trace/a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/a;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    return-object v1

    :catch_0
    :cond_3
    move-object v1, v2

    :catch_1
    :cond_4
    return-object v1
.end method

.method private c()Z
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/f;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/trace/f;->k:I

    iget-object v1, p0, Lcom/baidu/trace/f;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v1, :cond_1

    :try_start_1
    const-string v3, ":"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc

    if-eq v1, v3, :cond_2

    return v0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/trace/f;->j:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    :try_start_0
    invoke-direct {p0, v0}, Lcom/baidu/trace/f;->a(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
