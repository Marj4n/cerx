.class public Lorg/apache/commons/net/ftp/FTPClientConfig;
.super Ljava/lang/Object;
.source "FTPClientConfig.java"


# static fields
.field private static final LANGUAGE_CODE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYST_AS400:Ljava/lang/String; = "AS/400"

.field public static final SYST_L8:Ljava/lang/String; = "TYPE: L8"

.field public static final SYST_MACOS_PETER:Ljava/lang/String; = "MACOS PETER"

.field public static final SYST_MVS:Ljava/lang/String; = "MVS"

.field public static final SYST_NETWARE:Ljava/lang/String; = "NETWARE"

.field public static final SYST_NT:Ljava/lang/String; = "WINDOWS"

.field public static final SYST_OS2:Ljava/lang/String; = "OS/2"

.field public static final SYST_OS400:Ljava/lang/String; = "OS/400"

.field public static final SYST_UNIX:Ljava/lang/String; = "UNIX"

.field public static final SYST_UNIX_TRIM_LEADING:Ljava/lang/String; = "UNIX_LTRIM"

.field public static final SYST_VMS:Ljava/lang/String; = "VMS"


# instance fields
.field private defaultDateFormatStr:Ljava/lang/String;

.field private lenientFutureDates:Z

.field private recentDateFormatStr:Ljava/lang/String;

.field private saveUnparseableEntries:Z

.field private serverLanguageCode:Ljava/lang/String;

.field private final serverSystemKey:Ljava/lang/String;

.field private serverTimeZoneId:Ljava/lang/String;

.field private shortMonthNames:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 334
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    .line 344
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "en"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    const-string v2, "de"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    const-string v2, "it"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "es"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "pt"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "da"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "sv"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "no"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "nl"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "ro"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "sq"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "sh"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "sk"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    new-instance v1, Ljava/util/Locale;

    const-string v2, "sl"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    const-string v1, "fr"

    const-string v2, "jan|f\u00e9v|mar|avr|mai|jun|jui|ao\u00fb|sep|oct|nov|d\u00e9c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UNIX"

    .line 249
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 224
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    const/4 v1, 0x1

    .line 225
    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 226
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 227
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 241
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    .line 276
    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 277
    iput-object p3, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 278
    iput-object p4, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 279
    iput-object p5, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 280
    iput-object p6, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 312
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    .line 313
    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 314
    iput-boolean p7, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 315
    iput-object p3, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 316
    iput-boolean p8, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 317
    iput-object p4, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 318
    iput-object p5, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 319
    iput-object p6, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 2

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 224
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    const/4 v1, 0x1

    .line 225
    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 226
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 227
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 324
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    .line 325
    iget-object p1, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 326
    iget-boolean p1, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 327
    iget-object p1, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 328
    iget-boolean p1, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 329
    iget-object p1, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 330
    iget-object p1, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 331
    iget-object p1, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    return-void
.end method

.method public static getDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;
    .locals 2

    .line 616
    invoke-static {p0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->splitShortMonthString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 617
    new-instance v0, Ljava/text/DateFormatSymbols;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 618
    invoke-virtual {v0, p0}, Ljava/text/DateFormatSymbols;->setShortMonths([Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSupportedLanguageCodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 647
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static lookupDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;
    .locals 1

    .line 595
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 597
    instance-of v0, p0, Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 598
    new-instance v0, Ljava/text/DateFormatSymbols;

    check-cast p0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0

    .line 599
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 600
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object p0

    return-object p0

    .line 603
    :cond_1
    new-instance p0, Ljava/text/DateFormatSymbols;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object p0
.end method

.method private static splitShortMonthString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 623
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "|"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    const/16 v1, 0xc

    if-ne v1, p0, :cond_1

    const/16 p0, 0xd

    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 631
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 632
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 634
    aput-object v0, p0, v1

    return-object p0

    .line 626
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "expecting a pipe-delimited string containing 12 tokens"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDefaultDateFormatStr()Ljava/lang/String;
    .locals 1

    .line 385
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentDateFormatStr()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    return-object v0
.end method

.method public getServerLanguageCode()Ljava/lang/String;
    .locals 1

    .line 423
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServerSystemKey()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTimeZoneId()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getShortMonthNames()Ljava/lang/String;
    .locals 1

    .line 413
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    return-object v0
.end method

.method public getUnparseableEntries()Z
    .locals 1

    .line 670
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    return v0
.end method

.method public isLenientFutureDates()Z
    .locals 1

    .line 434
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    return v0
.end method

.method public setDefaultDateFormatStr(Ljava/lang/String;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    return-void
.end method

.method public setLenientFutureDates(Z)V
    .locals 0

    .line 496
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    return-void
.end method

.method public setRecentDateFormatStr(Ljava/lang/String;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    return-void
.end method

.method public setServerLanguageCode(Ljava/lang/String;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    return-void
.end method

.method public setServerTimeZoneId(Ljava/lang/String;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    return-void
.end method

.method public setShortMonthNames(Ljava/lang/String;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    return-void
.end method

.method public setUnparseableEntries(Z)V
    .locals 0

    .line 659
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    return-void
.end method
