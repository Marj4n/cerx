.class public Lcom/jieli/stream/dv/running2/util/VideoManager;
.super Ljava/lang/Object;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/util/VideoManager$MyTimeTask;
    }
.end annotation


# static fields
.field public static final ERROR_CLOSE_RECORD:I = 0xe4

.field public static final ERROR_PARAMS:I = 0xe3

.field private static isDownloading:Z

.field private static tag:Ljava/lang/String;


# instance fields
.field private duration:I

.field private listener:Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

.field private volatile mLastTime:J

.field private mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

.field private volatile mTimer:I

.field private mTimerThread:Ljava/util/Timer;

.field private movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

.field private final onPlaybackListener:Lcom/jieli/lib/dv/control/player/OnPlaybackListener;

.field private outPath:Ljava/lang/String;

.field private playbackStream:Lcom/jieli/lib/dv/control/player/PlaybackStream;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/stream/dv/running2/util/VideoManager;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->mTimer:I

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->mLastTime:J

    .line 293
    new-instance v0, Lcom/jieli/stream/dv/running2/util/VideoManager$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/util/VideoManager$2;-><init>(Lcom/jieli/stream/dv/running2/util/VideoManager;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->onPlaybackListener:Lcom/jieli/lib/dv/control/player/OnPlaybackListener;

    .line 332
    new-instance v0, Lcom/jieli/stream/dv/running2/util/VideoManager$3;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/util/VideoManager$3;-><init>(Lcom/jieli/stream/dv/running2/util/VideoManager;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

    .line 47
    new-instance v0, Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/player/MovWrapper;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    .line 48
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setOnRecordListener(Lcom/jieli/lib/dv/control/player/OnRecordListener;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/jieli/stream/dv/running2/util/VideoManager;->isDownloading:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 27
    sput-boolean p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->isDownloading:Z

    return p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/util/VideoManager;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->outPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/lib/dv/control/player/PlaybackStream;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->playbackStream:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/jieli/stream/dv/running2/util/VideoManager;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->startTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/lib/dv/control/player/MovWrapper;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->listener:Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/util/VideoManager;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->mTimer:I

    return p0
.end method

.method static synthetic access$402(Lcom/jieli/stream/dv/running2/util/VideoManager;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->mTimer:I

    return p1
.end method

.method static synthetic access$408(Lcom/jieli/stream/dv/running2/util/VideoManager;)I
    .locals 2

    .line 27
    iget v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->mTimer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->mTimer:I

    return v0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/util/VideoManager;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/jieli/stream/dv/running2/util/VideoManager;J)J
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/jieli/stream/dv/running2/util/VideoManager;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/util/VideoManager;)Ljava/util/Timer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->mTimerThread:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$702(Lcom/jieli/stream/dv/running2/util/VideoManager;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->mTimerThread:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/util/VideoManager;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->duration:I

    return p0
.end method

.method static synthetic access$902(Lcom/jieli/stream/dv/running2/util/VideoManager;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->duration:I

    return p1
.end method

.method public static getDownloadFileInfo(JJ)Lcom/jieli/stream/dv/running2/bean/FileInfo;
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-lez v3, :cond_3

    cmp-long v3, p2, v1

    if-lez v3, :cond_3

    cmp-long v3, p0, p2

    if-ltz v3, :cond_0

    goto/16 :goto_0

    .line 140
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 141
    sget-object v4, Lcom/jieli/stream/dv/running2/util/VideoManager;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", end:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {p0, p1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->getSelectedMedia(J)Lcom/jieli/stream/dv/running2/bean/FileInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 144
    sget-object p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->tag:Ljava/lang/String;

    const-string p1, "Start VideoInfo not found."

    invoke-static {p0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 148
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/util/VideoManager;->getDownloadVideoDuration(JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    .line 149
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    long-to-int p3, p0

    .line 150
    invoke-virtual {p2, p3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setDuration(I)V

    .line 151
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getOffset()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setOffset(I)V

    .line 152
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setPath(Ljava/lang/String;)V

    .line 153
    sget-object p3, Lcom/jieli/stream/dv/running2/util/VideoManager;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p3, p0, v1

    if-gez p3, :cond_2

    .line 155
    sget-object p2, Lcom/jieli/stream/dv/running2/util/VideoManager;->tag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total time error:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object p2

    .line 137
    :cond_3
    :goto_0
    sget-object v1, Lcom/jieli/stream/dv/running2/util/VideoManager;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument exception. start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", end="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getDownloadVideoDuration(JJ)J
    .locals 7

    cmp-long v0, p2, p0

    if-lez v0, :cond_8

    .line 251
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInstance()Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getVideoInfoList()Ljava/util/List;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_6

    .line 254
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 256
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, p0, v4

    if-lez v6, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, p2, v4

    if-gez v6, :cond_2

    goto :goto_0

    .line 264
    :cond_2
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, p0, v4

    if-ltz v6, :cond_3

    .line 265
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, p0, v4

    if-gtz v6, :cond_3

    .line 266
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, p2, v4

    if-lez v6, :cond_3

    .line 267
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v3, p0

    :goto_1
    add-long/2addr v1, v3

    goto :goto_0

    .line 271
    :cond_3
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, p0, v4

    if-ltz v6, :cond_4

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, p2, v4

    if-gtz v6, :cond_4

    sub-long/2addr p2, p0

    return-wide p2

    .line 276
    :cond_4
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, v4, p0

    if-lez v6, :cond_5

    .line 277
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, v4, p2

    if-gtz v6, :cond_5

    .line 278
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getDuration()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    goto :goto_1

    .line 282
    :cond_5
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, v4, p0

    if-lez v6, :cond_0

    .line 283
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, v4, p2

    if-ltz v6, :cond_0

    .line 284
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long v3, p2, v3

    goto :goto_1

    .line 288
    :cond_6
    sget-object p2, Lcom/jieli/stream/dv/running2/util/VideoManager;->tag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not find out thumbnail at "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-wide v1

    .line 248
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Start time >= end time."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static declared-synchronized getSelectedMedia(J)Lcom/jieli/stream/dv/running2/bean/FileInfo;
    .locals 7

    const-class v0, Lcom/jieli/stream/dv/running2/util/VideoManager;

    monitor-enter v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    cmp-long v4, p0, v1

    if-gtz v4, :cond_0

    .line 222
    :try_start_0
    sget-object v1, Lcom/jieli/stream/dv/running2/util/VideoManager;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "milliseconds <= 0: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit v0

    return-object v3

    .line 225
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getInstance()Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->getVideoInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 227
    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->descSortWay(Ljava/util/List;)V

    .line 228
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 229
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, p0, v4

    if-ltz v6, :cond_1

    .line 230
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getEndTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, p0, v4

    if-gtz v6, :cond_1

    .line 231
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr p0, v3

    long-to-int p1, p0

    .line 232
    invoke-virtual {v2, p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setOffset(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    monitor-exit v0

    return-object v2

    .line 236
    :cond_2
    :try_start_2
    sget-object v1, Lcom/jieli/stream/dv/running2/util/VideoManager;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find out milliseconds="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    :cond_3
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isDownloading()Z
    .locals 1

    .line 72
    sget-boolean v0, Lcom/jieli/stream/dv/running2/util/VideoManager;->isDownloading:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized getMovWrapper()Lcom/jieli/lib/dv/control/player/MovWrapper;
    .locals 1

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOutPath()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->outPath:Ljava/lang/String;

    return-object v0
.end method

.method public release()V
    .locals 3

    .line 372
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->tryToStopDownload()V

    const/4 v0, 0x0

    .line 373
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->mOnRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

    .line 374
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->listener:Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

    .line 375
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    .line 376
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->playbackStream:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    if-eqz v1, :cond_0

    .line 377
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->onPlaybackListener:Lcom/jieli/lib/dv/control/player/OnPlaybackListener;

    invoke-virtual {v1, v2}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->unregisterPlayerListener(Lcom/jieli/lib/dv/control/player/OnPlaybackListener;)V

    .line 378
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->playbackStream:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    :cond_0
    return-void
.end method

.method public setOnDownloadListener(Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->listener:Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

    return-void
.end method

.method public setPlaybackStream(Lcom/jieli/lib/dv/control/player/PlaybackStream;)V
    .locals 1

    .line 64
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->playbackStream:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    .line 65
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->onPlaybackListener:Lcom/jieli/lib/dv/control/player/OnPlaybackListener;

    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->registerPlayerListener(Lcom/jieli/lib/dv/control/player/OnPlaybackListener;)V

    return-void
.end method

.method public setRecordTimerType(I)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setTimeMaster(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public startDownload(Ljava/lang/String;)V
    .locals 2

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->outPath:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v0, p1}, Lcom/jieli/lib/dv/control/player/MovWrapper;->create(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->listener:Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

    if-eqz p1, :cond_0

    const/16 v0, 0xe3

    const-string v1, "create output path failed."

    .line 109
    invoke-interface {p1, v0, v1}, Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;->onError(ILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 111
    sput-boolean p1, Lcom/jieli/stream/dv/running2/util/VideoManager;->isDownloading:Z

    :cond_1
    return-void
.end method

.method public tryToDownload(JJLjava/lang/String;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_4

    .line 169
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 170
    iput-object p5, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->outPath:Ljava/lang/String;

    .line 171
    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/VideoManager;->getSelectedMedia(J)Lcom/jieli/stream/dv/running2/bean/FileInfo;

    move-result-object p5

    if-eqz p5, :cond_4

    .line 173
    iput-wide p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->startTime:J

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    cmp-long v1, p3, p1

    if-lez v1, :cond_0

    .line 175
    invoke-static {p1, p2, p3, p4}, Lcom/jieli/stream/dv/running2/util/VideoManager;->getDownloadVideoDuration(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    long-to-int p2, p1

    iput p2, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->duration:I

    .line 176
    sget-object p1, Lcom/jieli/stream/dv/running2/util/VideoManager;->tag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "-tryToDownload- duration : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->duration:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->duration:I

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/player/MovWrapper;->getVideoDuration()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    if-le p1, p2, :cond_0

    .line 179
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    iget p2, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->duration:I

    div-int/lit8 p2, p2, 0x3c

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setVideoDuration(I)Z

    .line 182
    :cond_0
    invoke-virtual {p5}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getOffset()I

    move-result p1

    .line 183
    sget-object p2, Lcom/jieli/stream/dv/running2/util/VideoManager;->tag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "-tryToDownload- offset : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->playbackStream:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-virtual {p2}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->isStreamReceiving()Z

    move-result p2

    if-nez p2, :cond_1

    .line 185
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p2

    invoke-virtual {p5}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/jieli/stream/dv/running2/util/VideoManager$1;

    invoke-direct {p4, p0}, Lcom/jieli/stream/dv/running2/util/VideoManager$1;-><init>(Lcom/jieli/stream/dv/running2/util/VideoManager;)V

    invoke-virtual {p2, p3, p1, p4}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToStartPlayback(Ljava/lang/String;ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->outPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/jieli/lib/dv/control/player/MovWrapper;->create(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 204
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->listener:Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

    if-eqz p1, :cond_2

    const/16 p2, 0xe3

    const-string p3, "create output path failed."

    .line 205
    invoke-interface {p1, p2, p3}, Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;->onError(ILjava/lang/String;)V

    .line 207
    :cond_2
    sput-boolean v0, Lcom/jieli/stream/dv/running2/util/VideoManager;->isDownloading:Z

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method public tryToStopDownload()V
    .locals 3

    .line 120
    sget-boolean v0, Lcom/jieli/stream/dv/running2/util/VideoManager;->isDownloading:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->movWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/MovWrapper;->close()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/VideoManager;->listener:Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

    if-eqz v0, :cond_0

    const/16 v1, 0xe4

    const-string v2, "close recording failed, please try later."

    .line 123
    invoke-interface {v0, v1, v2}, Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
