.class public final Lcom/baidu/trace/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/trace/ak$a;
    }
.end annotation


# static fields
.field protected static a:I = -0x1


# instance fields
.field private b:Landroid/location/LocationManager;

.field private c:Landroid/location/Location;

.field private d:Z

.field private e:I

.field private f:I

.field private g:J

.field private h:Landroid/content/Context;

.field private i:Lcom/baidu/trace/ak$a;

.field private final j:Landroid/location/GpsStatus$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "gps"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/trace/ak;->e:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/baidu/trace/ak;->f:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/trace/ak;->g:J

    new-instance v1, Lcom/baidu/trace/al;

    invoke-direct {v1, p0}, Lcom/baidu/trace/al;-><init>(Lcom/baidu/trace/ak;)V

    iput-object v1, p0, Lcom/baidu/trace/ak;->j:Landroid/location/GpsStatus$Listener;

    iput-object p1, p0, Lcom/baidu/trace/ak;->h:Landroid/content/Context;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/baidu/trace/ak;->b:Landroid/location/LocationManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/trace/ak;->b:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/baidu/trace/ak;->b:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/baidu/trace/ak;->j:Landroid/location/GpsStatus$Listener;

    invoke-virtual {p1, v2}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    iget-object p1, p0, Lcom/baidu/trace/ak;->b:Landroid/location/LocationManager;

    const-string v2, "force_xtra_injection"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/baidu/trace/ak;->b:Landroid/location/LocationManager;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iput-object v1, p0, Lcom/baidu/trace/ak;->b:Landroid/location/LocationManager;

    :catch_1
    :goto_1
    new-instance p1, Lcom/baidu/trace/ak$a;

    invoke-direct {p1, p0}, Lcom/baidu/trace/ak$a;-><init>(Lcom/baidu/trace/ak;)V

    iput-object p1, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    return-void
.end method

.method static synthetic a(Lcom/baidu/trace/ak;I)I
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/baidu/trace/ak;->e:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/trace/ak;)Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/ak;->b:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/trace/ak;ILandroid/location/GpsStatus;)V
    .locals 2

    if-eqz p2, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result p1

    invoke-virtual {p2}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/trace/ak;->e:I

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    if-gt v0, p1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    invoke-virtual {v1}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/baidu/trace/ak;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/trace/ak;->e:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/ak;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/baidu/trace/ak;->a:I

    return-void
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 2

    sput p1, Lcom/baidu/trace/ak;->a:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.trace.action.GPS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "statusCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "statusMessage"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/baidu/trace/ak;->h:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected final a(Lcom/baidu/trace/a/g;I)V
    .locals 7

    iget-object v0, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/baidu/trace/ak;->g:J

    sub-long/2addr v3, v5

    int-to-long v5, p2

    cmp-long p2, v3, v5

    if-gez p2, :cond_2

    iget p2, p0, Lcom/baidu/trace/ak;->e:I

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->byteValue()B

    move-result p2

    iput-byte p2, p1, Lcom/baidu/trace/a/g;->c:B

    iget-object p2, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    iget p2, p2, Lcom/baidu/trace/ak$a;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->shortValue()S

    move-result p2

    iput-short p2, p1, Lcom/baidu/trace/a/g;->d:S

    iget-object p2, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    iget p2, p2, Lcom/baidu/trace/ak$a;->e:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->shortValue()S

    move-result p2

    iput-short p2, p1, Lcom/baidu/trace/a/g;->g:S

    iget-object p2, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    iget p2, p2, Lcom/baidu/trace/ak$a;->c:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->byteValue()B

    move-result p2

    iput-byte p2, p1, Lcom/baidu/trace/a/g;->e:B

    iget-object p2, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    iget p2, p2, Lcom/baidu/trace/ak$a;->g:I

    iput p2, p1, Lcom/baidu/trace/a/g;->i:I

    iget-object p2, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    iget p2, p2, Lcom/baidu/trace/ak$a;->f:I

    iput p2, p1, Lcom/baidu/trace/a/g;->h:I

    iget-object p2, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    iget p2, p2, Lcom/baidu/trace/ak$a;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->shortValue()S

    move-result p2

    iput-short p2, p1, Lcom/baidu/trace/a/g;->f:S

    iget-byte p2, p1, Lcom/baidu/trace/a/g;->c:B

    if-lez p2, :cond_1

    iget p2, p1, Lcom/baidu/trace/a/g;->i:I

    if-eqz p2, :cond_1

    iget p2, p1, Lcom/baidu/trace/a/g;->h:I

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p1, Lcom/baidu/trace/a/g;->a:Z

    iget-object p2, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    iget-wide v2, p2, Lcom/baidu/trace/ak$a;->a:J

    iput-wide v2, p1, Lcom/baidu/trace/a/g;->b:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "G-GPS local time is: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    iget-wide v2, p2, Lcom/baidu/trace/ak$a;->a:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/trace/a;->a(Ljava/lang/String;)V

    sget p1, Lcom/baidu/trace/ak;->a:I

    if-eqz p1, :cond_3

    const-string p1, "\u5df2\u901a\u8fc7GPS\u5b9a\u4f4d"

    invoke-virtual {p0, v1, p1}, Lcom/baidu/trace/ak;->a(ILjava/lang/String;)V

    return-void

    :cond_2
    iput-boolean v1, p1, Lcom/baidu/trace/a/g;->a:Z

    sget p1, Lcom/baidu/trace/ak;->a:I

    if-eq v2, p1, :cond_3

    const-string p1, "\u6b63\u5728\u641c\u7d22GPS"

    invoke-virtual {p0, v2, p1}, Lcom/baidu/trace/ak;->a(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected final a(I)Z
    .locals 9

    iget-object v0, p0, Lcom/baidu/trace/ak;->b:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/trace/ak;->d:Z

    if-nez v0, :cond_2

    sget p1, Lcom/baidu/trace/ak;->a:I

    const/4 v0, 0x2

    if-eq v0, p1, :cond_1

    const-string p1, "\u5df2\u5173\u95edGPS"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/trace/ak;->a(ILjava/lang/String;)V

    :cond_1
    return v1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/baidu/trace/ak;->c:Landroid/location/Location;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/trace/ak;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/trace/ak;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/baidu/trace/ak;->c:Landroid/location/Location;

    :cond_4
    iget-object v0, p0, Lcom/baidu/trace/ak;->b:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/baidu/trace/ak;->j:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    iget-object v3, p0, Lcom/baidu/trace/ak;->b:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/baidu/trace/ak;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    int-to-long v5, p1

    iget p1, p0, Lcom/baidu/trace/ak;->f:I

    int-to-float v7, p1

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    iget-object p1, p0, Lcom/baidu/trace/ak;->c:Landroid/location/Location;

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    return v0

    :cond_5
    sget p1, Lcom/baidu/trace/ak;->a:I

    if-eq v0, p1, :cond_6

    const-string p1, "\u6b63\u5728\u641c\u7d22GPS"

    invoke-virtual {p0, v0, p1}, Lcom/baidu/trace/ak;->a(ILjava/lang/String;)V

    :cond_6
    return v1
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/trace/ak;->g:J

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/baidu/trace/ak;->c:Landroid/location/Location;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1d4c0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-wide/32 v6, -0x1d4c0

    cmp-long v8, v3, v6

    if-gez v8, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-lez v9, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    if-nez v6, :cond_c

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    if-lez v4, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    if-gez v4, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    const/16 v7, 0xc8

    if-le v4, v7, :cond_7

    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_9

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    :cond_9
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_7
    if-eqz v6, :cond_a

    goto :goto_0

    :cond_a
    if-eqz v3, :cond_b

    if-nez v5, :cond_b

    goto :goto_0

    :cond_b
    if-eqz v3, :cond_c

    if-nez v4, :cond_c

    if-eqz v0, :cond_c

    goto :goto_0

    :cond_c
    :goto_8
    if-eqz v1, :cond_e

    iput-object p1, p0, Lcom/baidu/trace/ak;->c:Landroid/location/Location;

    iget-object p1, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    if-nez p1, :cond_d

    new-instance p1, Lcom/baidu/trace/ak$a;

    invoke-direct {p1, p0}, Lcom/baidu/trace/ak$a;-><init>(Lcom/baidu/trace/ak;)V

    iput-object p1, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    :cond_d
    iget-object p1, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    iget-object v0, p0, Lcom/baidu/trace/ak;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/baidu/trace/ak$a;->a:J

    iget-object p1, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    iget-object v0, p0, Lcom/baidu/trace/ak;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/baidu/trace/ak$a;->b:I

    iget-object p1, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    iget-object v0, p0, Lcom/baidu/trace/ak;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/baidu/trace/ak$a;->c:I

    iget-object p1, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    iget-object v0, p0, Lcom/baidu/trace/ak;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/baidu/trace/ak$a;->d:I

    iget-object p1, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    iget-object v0, p0, Lcom/baidu/trace/ak;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p1, Lcom/baidu/trace/ak$a;->e:I

    iget-object p1, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    iget-object v0, p0, Lcom/baidu/trace/ak;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x41224f8000000000L    # 600000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p1, Lcom/baidu/trace/ak$a;->f:I

    iget-object p1, p0, Lcom/baidu/trace/ak;->i:Lcom/baidu/trace/ak$a;

    iget-object v0, p0, Lcom/baidu/trace/ak;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p1, Lcom/baidu/trace/ak$a;->g:I

    :cond_e
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
