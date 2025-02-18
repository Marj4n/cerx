.class public final Lcom/serenegiant/utils/CpuMonitor;
.super Ljava/lang/Object;
.source "CpuMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/utils/CpuMonitor$ProcStat;
    }
.end annotation


# static fields
.field private static final SAMPLE_SAVE_NUMBER:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CpuMonitor"


# instance fields
.field private cpuAvg3:I

.field private cpuAvgAll:I

.field private cpuCurrent:I

.field private cpuFreq:[J

.field private cpusPresent:I

.field private curPath:[Ljava/lang/String;

.field private initialized:Z

.field private lastPercentFreq:D

.field private final lastProcStat:Lcom/serenegiant/utils/CpuMonitor$ProcStat;

.field private final mCpuTemps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTempNum:I

.field private maxPath:[Ljava/lang/String;

.field private percentVec:[I

.field private sum10:I

.field private sum3:I

.field private tempAve:F


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 73
    iput-object v0, p0, Lcom/serenegiant/utils/CpuMonitor;->percentVec:[I

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/serenegiant/utils/CpuMonitor;->sum3:I

    .line 75
    iput v0, p0, Lcom/serenegiant/utils/CpuMonitor;->sum10:I

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 78
    iput-wide v1, p0, Lcom/serenegiant/utils/CpuMonitor;->lastPercentFreq:D

    .line 82
    iput-boolean v0, p0, Lcom/serenegiant/utils/CpuMonitor;->initialized:Z

    .line 85
    new-instance v1, Lcom/serenegiant/utils/CpuMonitor$ProcStat;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/serenegiant/utils/CpuMonitor$ProcStat;-><init>(JJLcom/serenegiant/utils/CpuMonitor$1;)V

    iput-object v1, p0, Lcom/serenegiant/utils/CpuMonitor;->lastProcStat:Lcom/serenegiant/utils/CpuMonitor$ProcStat;

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/utils/CpuMonitor;->mCpuTemps:Ljava/util/Map;

    .line 87
    iput v0, p0, Lcom/serenegiant/utils/CpuMonitor;->mTempNum:I

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/serenegiant/utils/CpuMonitor;->tempAve:F

    return-void
.end method

.method private init()V
    .locals 7

    const-string v0, "CpuMonitor"

    const/4 v1, 0x1

    .line 112
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/devices/system/cpu/present"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 115
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v3}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    const-string v3, "[-\n]"

    invoke-virtual {v4, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    .line 117
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/serenegiant/utils/CpuMonitor;->cpusPresent:I

    .line 118
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Cannot do CPU stats due to /sys/devices/system/cpu/present parsing problem"

    .line 120
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 122
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    const-string v2, "Error closing file"

    .line 127
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    const-string v2, "Cannot do CPU stats since /sys/devices/system/cpu/present is missing"

    .line 125
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_2
    iget v0, p0, Lcom/serenegiant/utils/CpuMonitor;->cpusPresent:I

    new-array v2, v0, [J

    iput-object v2, p0, Lcom/serenegiant/utils/CpuMonitor;->cpuFreq:[J

    .line 131
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/serenegiant/utils/CpuMonitor;->maxPath:[Ljava/lang/String;

    .line 132
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/serenegiant/utils/CpuMonitor;->curPath:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 133
    :goto_3
    iget v3, p0, Lcom/serenegiant/utils/CpuMonitor;->cpusPresent:I

    const-wide/16 v4, 0x0

    if-ge v2, v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/serenegiant/utils/CpuMonitor;->cpuFreq:[J

    aput-wide v4, v3, v2

    .line 135
    iget-object v3, p0, Lcom/serenegiant/utils/CpuMonitor;->maxPath:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 136
    iget-object v3, p0, Lcom/serenegiant/utils/CpuMonitor;->curPath:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/cpufreq/scaling_cur_freq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/serenegiant/utils/CpuMonitor;->lastProcStat:Lcom/serenegiant/utils/CpuMonitor$ProcStat;

    invoke-static {v2, v4, v5, v4, v5}, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->access$100(Lcom/serenegiant/utils/CpuMonitor$ProcStat;JJ)V

    .line 141
    iget-object v2, p0, Lcom/serenegiant/utils/CpuMonitor;->mCpuTemps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 142
    iput v0, p0, Lcom/serenegiant/utils/CpuMonitor;->mTempNum:I

    const/4 v2, 0x0

    :goto_4
    const/16 v3, 0x32

    if-ge v2, v3, :cond_2

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/hwmon/hwmon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 145
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    iget-object v4, p0, Lcom/serenegiant/utils/CpuMonitor;->mCpuTemps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget v3, p0, Lcom/serenegiant/utils/CpuMonitor;->mTempNum:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/serenegiant/utils/CpuMonitor;->mTempNum:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 152
    :cond_2
    iput-boolean v1, p0, Lcom/serenegiant/utils/CpuMonitor;->initialized:Z

    return-void
.end method

.method private readFreqFromFile(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, 0x0

    .line 310
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 313
    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .line 314
    invoke-virtual {v3}, Ljava/util/Scanner;->nextLong()J

    move-result-wide v0

    .line 315
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :catch_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw p1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const-string p1, "CpuMonitor"

    const-string v2, "Error closing file"

    .line 324
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_2
    :goto_0
    return-wide v0
.end method

.method private readIdleAndRunTime()Lcom/serenegiant/utils/CpuMonitor$ProcStat;
    .locals 17

    const-string v1, "CpuMonitor"

    const/4 v2, 0x0

    .line 337
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v0, "/proc/stat"

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 339
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 340
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .line 341
    invoke-virtual {v4}, Ljava/util/Scanner;->next()Ljava/lang/String;

    .line 342
    invoke-virtual {v4}, Ljava/util/Scanner;->nextLong()J

    move-result-wide v5

    .line 343
    invoke-virtual {v4}, Ljava/util/Scanner;->nextLong()J

    move-result-wide v7

    .line 344
    invoke-virtual {v4}, Ljava/util/Scanner;->nextLong()J

    move-result-wide v9

    add-long/2addr v5, v7

    add-long v12, v5, v9

    .line 346
    invoke-virtual {v4}, Ljava/util/Scanner;->nextLong()J

    move-result-wide v14

    .line 347
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 361
    new-instance v0, Lcom/serenegiant/utils/CpuMonitor$ProcStat;

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/serenegiant/utils/CpuMonitor$ProcStat;-><init>(JJLcom/serenegiant/utils/CpuMonitor$1;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_3
    const-string v0, "Problems parsing /proc/stat"

    .line 349
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 352
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    return-object v2

    :goto_0
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    const-string v0, "Problems reading /proc/stat"

    .line 358
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_2
    const-string v0, "Cannot open /proc/stat for reading"

    .line 355
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method


# virtual methods
.method public getCpuAvg3()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/serenegiant/utils/CpuMonitor;->cpuAvg3:I

    return v0
.end method

.method public getCpuAvgAll()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/serenegiant/utils/CpuMonitor;->cpuAvgAll:I

    return v0
.end method

.method public getCpuCurrent()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/serenegiant/utils/CpuMonitor;->cpuCurrent:I

    return v0
.end method

.method public getTemp(I)I
    .locals 2

    if-ltz p1, :cond_0

    .line 290
    iget v0, p0, Lcom/serenegiant/utils/CpuMonitor;->mTempNum:I

    if-ge p1, v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/hwmon/hwmon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 292
    iget-object v0, p0, Lcom/serenegiant/utils/CpuMonitor;->mCpuTemps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/serenegiant/utils/CpuMonitor;->mCpuTemps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getTempAve()F
    .locals 1

    .line 300
    iget v0, p0, Lcom/serenegiant/utils/CpuMonitor;->tempAve:F

    return v0
.end method

.method public getTempNum()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/serenegiant/utils/CpuMonitor;->mTempNum:I

    return v0
.end method

.method public sampleCpuUtilization()Z
    .locals 14

    .line 169
    iget-boolean v0, p0, Lcom/serenegiant/utils/CpuMonitor;->initialized:Z

    if-nez v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/serenegiant/utils/CpuMonitor;->init()V

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    move-wide v6, v4

    move-wide v8, v6

    const/4 v3, 0x0

    .line 173
    :goto_0
    iget v10, p0, Lcom/serenegiant/utils/CpuMonitor;->cpusPresent:I

    if-ge v3, v10, :cond_3

    .line 180
    iget-object v10, p0, Lcom/serenegiant/utils/CpuMonitor;->cpuFreq:[J

    aget-wide v11, v10, v3

    cmp-long v13, v11, v1

    if-nez v13, :cond_1

    .line 182
    iget-object v10, p0, Lcom/serenegiant/utils/CpuMonitor;->maxPath:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v10}, Lcom/serenegiant/utils/CpuMonitor;->readFreqFromFile(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v12, v10, v1

    if-lez v12, :cond_2

    .line 185
    iget-object v8, p0, Lcom/serenegiant/utils/CpuMonitor;->cpuFreq:[J

    aput-wide v10, v8, v3

    .line 186
    iget-object v8, p0, Lcom/serenegiant/utils/CpuMonitor;->maxPath:[Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v9, v8, v3

    move-wide v8, v10

    goto :goto_1

    .line 189
    :cond_1
    aget-wide v8, v10, v3

    .line 192
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/serenegiant/utils/CpuMonitor;->curPath:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-direct {p0, v10}, Lcom/serenegiant/utils/CpuMonitor;->readFreqFromFile(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v6, v10

    add-long/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    cmp-long v3, v4, v1

    if-nez v3, :cond_4

    const-string v1, "CpuMonitor"

    const-string v2, "Could not read max frequency for any CPU"

    .line 205
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    long-to-double v6, v6

    mul-double v6, v6, v8

    long-to-double v3, v4

    div-double/2addr v6, v3

    .line 217
    iget-wide v3, p0, Lcom/serenegiant/utils/CpuMonitor;->lastPercentFreq:D

    const-wide/16 v8, 0x0

    cmpl-double v5, v3, v8

    if-lez v5, :cond_5

    add-double/2addr v3, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v8

    goto :goto_2

    :cond_5
    move-wide v3, v6

    .line 218
    :goto_2
    iput-wide v6, p0, Lcom/serenegiant/utils/CpuMonitor;->lastPercentFreq:D

    .line 220
    invoke-direct {p0}, Lcom/serenegiant/utils/CpuMonitor;->readIdleAndRunTime()Lcom/serenegiant/utils/CpuMonitor$ProcStat;

    move-result-object v5

    if-nez v5, :cond_6

    return v0

    .line 225
    :cond_6
    invoke-static {v5}, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->access$200(Lcom/serenegiant/utils/CpuMonitor$ProcStat;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/serenegiant/utils/CpuMonitor;->lastProcStat:Lcom/serenegiant/utils/CpuMonitor$ProcStat;

    invoke-static {v8}, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->access$200(Lcom/serenegiant/utils/CpuMonitor$ProcStat;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 226
    invoke-static {v5}, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->access$300(Lcom/serenegiant/utils/CpuMonitor$ProcStat;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/serenegiant/utils/CpuMonitor;->lastProcStat:Lcom/serenegiant/utils/CpuMonitor$ProcStat;

    invoke-static {v10}, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->access$300(Lcom/serenegiant/utils/CpuMonitor$ProcStat;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 229
    iget-object v10, p0, Lcom/serenegiant/utils/CpuMonitor;->lastProcStat:Lcom/serenegiant/utils/CpuMonitor$ProcStat;

    invoke-static {v10, v5}, Lcom/serenegiant/utils/CpuMonitor$ProcStat;->access$400(Lcom/serenegiant/utils/CpuMonitor$ProcStat;Lcom/serenegiant/utils/CpuMonitor$ProcStat;)V

    add-long/2addr v8, v6

    cmp-long v5, v8, v1

    if-nez v5, :cond_7

    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    long-to-double v1, v6

    mul-double v3, v3, v1

    long-to-double v1, v8

    div-double/2addr v3, v1

    .line 232
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    :goto_3
    const/16 v1, 0x64

    .line 233
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 236
    iget v2, p0, Lcom/serenegiant/utils/CpuMonitor;->sum3:I

    iget-object v3, p0, Lcom/serenegiant/utils/CpuMonitor;->percentVec:[I

    const/4 v4, 0x2

    aget v4, v3, v4

    sub-int v4, v1, v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/serenegiant/utils/CpuMonitor;->sum3:I

    .line 238
    iget v2, p0, Lcom/serenegiant/utils/CpuMonitor;->sum10:I

    const/16 v4, 0x9

    aget v3, v3, v4

    sub-int v3, v1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/serenegiant/utils/CpuMonitor;->sum10:I

    :goto_4
    if-lez v4, :cond_8

    .line 242
    iget-object v2, p0, Lcom/serenegiant/utils/CpuMonitor;->percentVec:[I

    add-int/lit8 v3, v4, -0x1

    aget v3, v2, v3

    aput v3, v2, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 244
    :cond_8
    iget-object v2, p0, Lcom/serenegiant/utils/CpuMonitor;->percentVec:[I

    aput v1, v2, v0

    .line 246
    iput v1, p0, Lcom/serenegiant/utils/CpuMonitor;->cpuCurrent:I

    .line 247
    iget v0, p0, Lcom/serenegiant/utils/CpuMonitor;->sum3:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/serenegiant/utils/CpuMonitor;->cpuAvg3:I

    .line 248
    iget v0, p0, Lcom/serenegiant/utils/CpuMonitor;->sum10:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/serenegiant/utils/CpuMonitor;->cpuAvgAll:I

    const/4 v0, 0x0

    .line 250
    iput v0, p0, Lcom/serenegiant/utils/CpuMonitor;->tempAve:F

    .line 252
    iget-object v1, p0, Lcom/serenegiant/utils/CpuMonitor;->mCpuTemps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_9
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 253
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 255
    new-instance v5, Ljava/io/File;

    const-string v6, "temp1_input"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 257
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/serenegiant/utils/CpuMonitor;->readFreqFromFile(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v5, v4

    .line 258
    iget-object v4, p0, Lcom/serenegiant/utils/CpuMonitor;->mCpuTemps:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v5, :cond_9

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    .line 261
    iget v3, p0, Lcom/serenegiant/utils/CpuMonitor;->tempAve:F

    const/16 v4, 0x3e8

    if-le v5, v4, :cond_a

    int-to-float v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    goto :goto_6

    :cond_a
    int-to-float v4, v5

    :goto_6
    add-float/2addr v3, v4

    iput v3, p0, Lcom/serenegiant/utils/CpuMonitor;->tempAve:F

    goto :goto_5

    :cond_b
    cmpl-float v0, v2, v0

    if-lez v0, :cond_c

    .line 267
    iget v0, p0, Lcom/serenegiant/utils/CpuMonitor;->tempAve:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/serenegiant/utils/CpuMonitor;->tempAve:F

    :cond_c
    const/4 v0, 0x1

    return v0
.end method
