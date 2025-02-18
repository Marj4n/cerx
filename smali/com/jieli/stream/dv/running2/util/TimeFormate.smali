.class public Lcom/jieli/stream/dv/running2/util/TimeFormate;
.super Ljava/lang/Object;
.source "TimeFormate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/util/TimeFormate$DateType;
    }
.end annotation


# static fields
.field public static final yyyyMMdd:Ljava/text/SimpleDateFormat;

.field public static final yyyyMMddHHmm:Ljava/text/SimpleDateFormat;

.field public static final yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

.field public static final yyyyMMdd_HHmmss:Ljava/text/SimpleDateFormat;

.field public static final yyyyMMdd_format:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jieli/stream/dv/running2/util/TimeFormate;->yyyyMMdd:Ljava/text/SimpleDateFormat;

    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyyMMdd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jieli/stream/dv/running2/util/TimeFormate;->yyyyMMdd_format:Ljava/text/SimpleDateFormat;

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jieli/stream/dv/running2/util/TimeFormate;->yyyyMMddHHmm:Ljava/text/SimpleDateFormat;

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jieli/stream/dv/running2/util/TimeFormate;->yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jieli/stream/dv/running2/util/TimeFormate;->yyyyMMdd_HHmmss:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatToYMD(J)Ljava/lang/String;
    .locals 1

    .line 40
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->formatToYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatToYMD(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->formatToYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatToYMD(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/jieli/stream/dv/running2/util/TimeFormate;->yyyyMMdd_format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMD(J)Ljava/lang/String;
    .locals 1

    .line 28
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->formatYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMD(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->formatYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMD(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/jieli/stream/dv/running2/util/TimeFormate;->yyyyMMdd:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHM(J)Ljava/lang/String;
    .locals 1

    .line 52
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->formatYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHM(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->formatYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHM(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/jieli/stream/dv/running2/util/TimeFormate;->yyyyMMddHHmm:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHMS(J)Ljava/lang/String;
    .locals 1

    .line 64
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->formatYMDHMS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHMS(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->formatYMDHMS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHMS(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/jieli/stream/dv/running2/util/TimeFormate;->yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMD_HMS(J)Ljava/lang/String;
    .locals 1

    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->formatYMD_HMS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMD_HMS(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/jieli/stream/dv/running2/util/TimeFormate;->yyyyMMdd_HHmmss:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateMillTime(Ljava/lang/String;Ljava/text/SimpleDateFormat;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 131
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :cond_1
    :goto_1
    return-wide v0
.end method

.method public static getDateTime(Ljava/lang/String;Ljava/text/SimpleDateFormat;Lcom/jieli/stream/dv/running2/util/TimeFormate$DateType;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 148
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 153
    sget-object p1, Lcom/jieli/stream/dv/running2/util/TimeFormate$1;->$SwitchMap$com$jieli$stream$dv$running2$util$TimeFormate$DateType:[I

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/util/TimeFormate$DateType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 173
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result p2

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->getInt2TwoByte(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->getInt2TwoByte(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Date;->getSeconds()I

    move-result p0

    invoke-static {p0}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->getInt2TwoByte(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 170
    :pswitch_1
    invoke-virtual {p0}, Ljava/util/Date;->getSeconds()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 167
    :pswitch_2
    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 164
    :pswitch_3
    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 161
    :pswitch_4
    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 158
    :pswitch_5
    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 155
    :pswitch_6
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result p0

    add-int/lit16 p0, p0, 0x76c

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFormatedDateString(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xd

    if-gt p0, v1, :cond_0

    const/16 v1, -0xc

    if-ge p0, v1, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    mul-int/lit8 p0, p0, 0x3c

    mul-int/lit8 p0, p0, 0x3c

    mul-int/lit16 p0, p0, 0x3e8

    .line 108
    invoke-static {p0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 109
    array-length v2, v1

    if-nez v2, :cond_2

    .line 111
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    goto :goto_0

    .line 113
    :cond_2
    new-instance v2, Ljava/util/SimpleTimeZone;

    aget-object v0, v1, v0

    invoke-direct {v2, p0, v0}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    move-object p0, v2

    .line 115
    :goto_0
    sget-object v0, Lcom/jieli/stream/dv/running2/util/TimeFormate;->yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    .line 116
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 117
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFormatedDateTime(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getHHMMSSFormatValue(I)Ljava/lang/String;
    .locals 8

    .line 95
    div-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const-wide/16 v2, 0x3c

    .line 96
    div-long v4, v0, v2

    div-long v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, p0, v7

    rem-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, p0, v5

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "{0,number,00}:{1,number,00}:{2,number,00}"

    invoke-static {v0, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getInt2TwoByte(I)Ljava/lang/String;
    .locals 2

    .line 189
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getTimeFormatValue(I)Ljava/lang/String;
    .locals 6

    .line 84
    div-int/lit8 v0, p0, 0x3c

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v1, v1, 0x18

    .line 85
    rem-int/lit8 v0, v0, 0x3c

    .line 86
    rem-int/lit8 p0, p0, 0x3c

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "{0,number,00}:{1,number,00}"

    invoke-static {p0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    const-string p0, "{0,number,00}:{1,number,00}:{2,number,00}"

    invoke-static {p0, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
