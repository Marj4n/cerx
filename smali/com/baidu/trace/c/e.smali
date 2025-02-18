.class public final Lcom/baidu/trace/c/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:I

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/text/SimpleDateFormat;

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Landroid/net/wifi/WifiManager;

.field private static k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^(?!_)[a-zA-Z0-9_\\-]{1,128}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/baidu/trace/c/e;->e:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z0-9_\\-\u4e00-\u9fa5]{1,128}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/baidu/trace/c/e;->f:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/baidu/trace/c/e;->g:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/trace/c/e;->j:Landroid/net/wifi/WifiManager;

    const-string v0, "4G"

    sput-object v0, Lcom/baidu/trace/c/e;->a:Ljava/lang/String;

    const-string v0, "yingyan"

    sput-object v0, Lcom/baidu/trace/c/e;->b:Ljava/lang/String;

    const-string v0, "com.baidu.trace"

    sput-object v0, Lcom/baidu/trace/c/e;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/baidu/trace/c/e;->d:I

    sput-boolean v0, Lcom/baidu/trace/c/e;->k:Z

    return-void
.end method

.method private static a(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p0, p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static a(Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/LatLng;)D
    .locals 8

    iget-wide v0, p0, Lcom/baidu/trace/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Lcom/baidu/trace/c/e;->a(D)D

    move-result-wide v0

    iget-wide v2, p1, Lcom/baidu/trace/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Lcom/baidu/trace/c/e;->a(D)D

    move-result-wide v2

    sub-double v4, v0, v2

    iget-wide v6, p0, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Lcom/baidu/trace/c/e;->a(D)D

    move-result-wide v6

    iget-wide p0, p1, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-static {p0, p1}, Lcom/baidu/trace/c/e;->a(D)D

    move-result-wide p0

    sub-double/2addr v6, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    div-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    div-double/2addr v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    add-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    mul-double v0, v0, p0

    const-wide p0, 0x40b8ea23126e978dL    # 6378.137

    mul-double v0, v0, p0

    const-wide p0, 0x40c3880000000000L    # 10000.0

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    const-wide/16 v0, 0xa

    div-long/2addr p0, v0

    long-to-double p0, p0

    return-wide p0
.end method

.method public static a()I
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static a(IILjava/util/TreeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-lez p0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "page_index"

    invoke-virtual {p2, v0, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-lez p1, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "page_size"

    invoke-virtual {p2, p1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    sget-boolean v0, Lcom/baidu/trace/c/e;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/trace/c/e;->b:Ljava/lang/String;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v1, v2, :cond_3

    const-string v0, "WIFI"

    :goto_0
    sput-object v0, Lcom/baidu/trace/c/e;->a:Ljava/lang/String;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const-string v3, "3G"

    packed-switch v0, :pswitch_data_0

    const-string v0, "TD-SCDMA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "WCDMA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CDMA2000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :pswitch_0
    const-string v0, "4G"

    goto :goto_0

    :cond_4
    :goto_1
    :pswitch_1
    sput-object v3, Lcom/baidu/trace/c/e;->a:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    const-string v0, "2G"

    goto :goto_0

    :cond_5
    sput-object v2, Lcom/baidu/trace/c/e;->a:Ljava/lang/String;

    :cond_6
    :goto_2
    invoke-static {p0}, Lcom/baidu/trace/c/e;->c(Landroid/content/Context;)Ljava/lang/String;

    sput-boolean v1, Lcom/baidu/trace/c/e;->k:Z

    return-void

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

.method public static a(Lcom/baidu/trace/model/TraceLocation;)V
    .locals 4

    invoke-virtual {p0}, Lcom/baidu/trace/model/TraceLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/baidu/trace/model/TraceLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/trace/TraceJniInterface;->wgsToBaidu(DD)[D

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-virtual {p0, v1, v2}, Lcom/baidu/trace/model/TraceLocation;->setLatitude(D)V

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    invoke-virtual {p0, v1, v2}, Lcom/baidu/trace/model/TraceLocation;->setLongitude(D)V

    sget-object v0, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/baidu/trace/model/TraceLocation;->setCoordType(Lcom/baidu/trace/model/CoordType;)V

    return-void

    :cond_0
    sget-object v0, Lcom/baidu/trace/model/CoordType;->wgs84:Lcom/baidu/trace/model/CoordType;

    goto :goto_0
.end method

.method public static a(III)Z
    .locals 0

    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x80

    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public static a(Lcom/baidu/trace/model/LatLng;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-wide v1, 0x4066800000000000L    # 180.0

    iget-wide v3, p0, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    const-wide v1, 0x4056800000000000L    # 90.0

    iget-wide v3, p0, Lcom/baidu/trace/model/LatLng;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double p0, v1, v3

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/baidu/trace/c/e;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int v3, v1, v2

    if-eqz v1, :cond_9

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_4

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    iget-object v8, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    shl-int/lit8 p1, v5, 0x1

    int-to-float v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    float-to-int v4, v4

    const/4 v5, 0x5

    if-le v1, v5, :cond_8

    if-gt v2, v5, :cond_6

    goto :goto_3

    :cond_6
    if-le p1, v4, :cond_7

    return p0

    :cond_7
    return v0

    :cond_8
    :goto_3
    if-ne p1, v3, :cond_9

    return p0

    :cond_9
    :goto_4
    return v0
.end method

.method public static b()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/baidu/trace/c/e;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)J
    .locals 4

    :try_start_0
    sget-object v0, Lcom/baidu/trace/c/e;->g:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/trace/c/e;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p0, Lcom/baidu/trace/c/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/baidu/trace/c/e;->j:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    sput-object p0, Lcom/baidu/trace/c/e;->j:Landroid/net/wifi/WifiManager;

    :cond_0
    sget-object p0, Lcom/baidu/trace/c/e;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    sget-object p0, Lcom/baidu/trace/c/e;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/baidu/trace/c/e;->h:Ljava/util/List;

    sget-object p0, Lcom/baidu/trace/c/e;->i:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/baidu/trace/c/e;->h:Ljava/util/List;

    sget-object v1, Lcom/baidu/trace/c/e;->i:Ljava/util/List;

    invoke-static {p0, v1}, Lcom/baidu/trace/c/e;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    sput-object p0, Lcom/baidu/trace/c/e;->i:Ljava/util/List;

    :cond_3
    :goto_0
    sget-object p0, Lcom/baidu/trace/c/e;->h:Ljava/util/List;

    sput-object p0, Lcom/baidu/trace/c/e;->i:Ljava/util/List;

    return v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v2
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v2
.end method
