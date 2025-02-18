.class public Lcom/jieli/stream/dv/running2/baidu/utils/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field public static final DISTANCE:D = 1.0E-4

.field private static df:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "######0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/CommonUtil;->df:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatDouble(D)Ljava/lang/String;
    .locals 1

    .line 121
    sget-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/CommonUtil;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSecond(I)Ljava/lang/String;
    .locals 4

    .line 113
    div-int/lit16 v0, p0, 0xe10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 114
    div-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    sub-int/2addr p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    sub-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    const-string p0, "%1$,02d:%2$,02d:%3$,02d"

    .line 117
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 104
    :try_start_0
    new-instance v1, Ljava/sql/Timestamp;

    invoke-direct {v1, p0, p1}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAngle(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D
    .locals 9

    .line 155
    invoke-static {p0, p1}, Lcom/jieli/stream/dv/running2/baidu/utils/CommonUtil;->getSlope(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    const-wide/16 v4, 0x0

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v8, v0, v6

    if-nez v8, :cond_1

    .line 157
    iget-wide v0, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide p0, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v6, v0, p0

    if-lez v6, :cond_0

    return-wide v4

    :cond_0
    return-wide v2

    :cond_1
    const/4 v6, 0x0

    .line 164
    iget-wide v7, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide p0, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v7, p0

    mul-double v7, v7, v0

    cmpg-double p0, v7, v4

    if-gez p0, :cond_2

    const/high16 v6, 0x43340000    # 180.0f

    .line 167
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    mul-double p0, p0, v2

    float-to-double v0, v6

    add-double/2addr p0, v0

    const-wide v0, 0x4056800000000000L    # 90.0

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method public static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 22
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 23
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 24
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 25
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    .line 26
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getCurrentTime()J
    .locals 4

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getHMS(J)Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 87
    :try_start_0
    new-instance v1, Ljava/sql/Timestamp;

    invoke-direct {v1, p0, p1}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInterception(DLcom/baidu/mapapi/model/LatLng;)D
    .locals 4

    .line 138
    iget-wide v0, p2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v2, p2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    mul-double p0, p0, v2

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public static getSlope(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D
    .locals 5

    .line 145
    iget-wide v0, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v2, p0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const-wide p0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide p0

    .line 148
    :cond_0
    iget-wide v0, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v2, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide p0, p0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getXMoveDistance(D)D
    .locals 5

    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v4, p0, v2

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    mul-double v0, v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double p0, p0, p0

    add-double/2addr p0, v2

    .line 131
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static isEqualToZero(D)Z
    .locals 3

    const-wide/16 v0, 0x0

    sub-double/2addr p0, v0

    .line 49
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isZeroPoint(DD)Z
    .locals 0

    .line 58
    invoke-static {p0, p1}, Lcom/jieli/stream/dv/running2/baidu/utils/CommonUtil;->isEqualToZero(D)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2, p3}, Lcom/jieli/stream/dv/running2/baidu/utils/CommonUtil;->isEqualToZero(D)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toTimeStamp(Ljava/lang/String;)J
    .locals 4

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 69
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method
