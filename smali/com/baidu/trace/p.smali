.class public final Lcom/baidu/trace/p;
.super Landroid/telephony/PhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/trace/p$a;
    }
.end annotation


# static fields
.field public static a:I


# instance fields
.field private b:Landroid/telephony/TelephonyManager;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/baidu/trace/p$a;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/trace/p;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/trace/p;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/trace/p;->e:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/trace/p;->f:Lcom/baidu/trace/p$a;

    iput v0, p0, Lcom/baidu/trace/p;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/trace/p;->i:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/baidu/trace/p;->b:Landroid/telephony/TelephonyManager;

    new-instance p1, Lcom/baidu/trace/p$a;

    invoke-direct {p1, p0}, Lcom/baidu/trace/p$a;-><init>(Lcom/baidu/trace/p;)V

    iput-object p1, p0, Lcom/baidu/trace/p;->f:Lcom/baidu/trace/p$a;

    iget-object v0, p0, Lcom/baidu/trace/p;->b:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    const/16 v1, 0x100

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Lcom/baidu/trace/a/c;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/trace/p;->b:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-boolean v1, p1, Lcom/baidu/trace/a/c;->a:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/trace/p;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/trace/p;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/trace/p;->i:Ljava/lang/String;

    :cond_2
    iget v0, p0, Lcom/baidu/trace/p;->g:I

    const/4 v2, 0x3

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/trace/p;->i:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/trace/p;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/trace/p;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    iput v1, p0, Lcom/baidu/trace/p;->g:I

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/baidu/trace/p;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    instance-of v3, v0, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iget-object v3, p0, Lcom/baidu/trace/p;->i:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x5

    if-lt v3, v5, :cond_5

    :try_start_1
    iget-object v3, p0, Lcom/baidu/trace/p;->i:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/baidu/trace/p;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_5
    iput v1, p0, Lcom/baidu/trace/p;->h:I

    :goto_1
    iput v4, p0, Lcom/baidu/trace/p;->e:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    iput v2, p0, Lcom/baidu/trace/p;->j:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/baidu/trace/p;->k:I

    goto :goto_4

    :cond_6
    instance-of v2, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_9

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    const/4 v2, 0x2

    iput v2, p0, Lcom/baidu/trace/p;->e:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    iput v2, p0, Lcom/baidu/trace/p;->h:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    if-ltz v2, :cond_7

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    iput v2, p0, Lcom/baidu/trace/p;->j:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    if-ltz v2, :cond_8

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    iput v1, p0, Lcom/baidu/trace/p;->e:I

    iput v1, p0, Lcom/baidu/trace/p;->h:I

    iput v1, p0, Lcom/baidu/trace/p;->j:I

    iput v1, p0, Lcom/baidu/trace/p;->k:I

    sput v1, Lcom/baidu/trace/p;->a:I

    :goto_4
    iget-object v0, p0, Lcom/baidu/trace/p;->d:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/trace/p;->d:Ljava/util/List;

    :goto_5
    iget-object v0, p0, Lcom/baidu/trace/p;->c:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_6

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/trace/p;->c:Ljava/util/List;

    :goto_6
    iget-object v0, p0, Lcom/baidu/trace/p;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_8

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_7
    if-ge v3, v2, :cond_e

    const/4 v6, 0x6

    if-ge v5, v6, :cond_e

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v6}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v7}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v7

    if-lez v7, :cond_d

    if-lez v6, :cond_d

    iget-object v8, p0, Lcom/baidu/trace/p;->c:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/baidu/trace/p;->d:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    iget v0, p0, Lcom/baidu/trace/p;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    iput-byte v0, p1, Lcom/baidu/trace/a/c;->b:B

    sget v0, Lcom/baidu/trace/p;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    iput-byte v0, p1, Lcom/baidu/trace/a/c;->c:B

    iget v0, p0, Lcom/baidu/trace/p;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    iput-short v0, p1, Lcom/baidu/trace/a/c;->d:S

    iget v0, p0, Lcom/baidu/trace/p;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    iput-short v0, p1, Lcom/baidu/trace/a/c;->e:S

    iget v0, p0, Lcom/baidu/trace/p;->j:I

    iput v0, p1, Lcom/baidu/trace/a/c;->f:I

    iget v0, p0, Lcom/baidu/trace/p;->k:I

    iput v0, p1, Lcom/baidu/trace/a/c;->g:I

    iget-object v0, p0, Lcom/baidu/trace/p;->c:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v2, p0, Lcom/baidu/trace/p;->d:Ljava/util/List;

    if-nez v2, :cond_f

    goto :goto_b

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/baidu/trace/p;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v0, v2, :cond_10

    iget-object v0, p0, Lcom/baidu/trace/p;->c:Ljava/util/List;

    goto :goto_9

    :cond_10
    iget-object v0, p0, Lcom/baidu/trace/p;->d:Ljava/util/List;

    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    iput-object v2, p1, Lcom/baidu/trace/a/c;->h:[I

    new-array v2, v0, [I

    iput-object v2, p1, Lcom/baidu/trace/a/c;->i:[I

    :goto_a
    if-ge v1, v0, :cond_11

    iget-object v2, p1, Lcom/baidu/trace/a/c;->h:[I

    iget-object v3, p0, Lcom/baidu/trace/p;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p1, Lcom/baidu/trace/a/c;->i:[I

    iget-object v3, p0, Lcom/baidu/trace/p;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_11
    iput-boolean v4, p1, Lcom/baidu/trace/a/c;->a:Z

    :cond_12
    :goto_b
    return-void
.end method

.method protected final a()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/p;->b:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final b()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/trace/p;->c:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/baidu/trace/p;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/baidu/trace/p;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/baidu/trace/p;->d:Ljava/util/List;

    :cond_1
    return-void
.end method
