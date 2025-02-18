.class public Lcom/jieli/stream/dv/running2/data/VideoRecord;
.super Ljava/lang/Object;
.source "VideoRecord.java"


# static fields
.field private static final DEFAULT_VIDEO_SIZE:J = 0x3c00000L

.field private static final MIN_STORAGE_LIMIT:J = 0xc800000L


# instance fields
.field private fileType:I

.field private isLoopRecording:Z

.field private mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

.field private mCurrentFilePath:Ljava/lang/String;

.field private mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

.field private mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

.field private final onAviWrapperListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

.field private final onRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

.field private onStreamRecordListener:Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;

.field private outputDirectory:Ljava/lang/String;

.field path:Ljava/lang/String;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    .line 36
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    .line 38
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->onStreamRecordListener:Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;

    const/4 v1, 0x1

    .line 40
    iput v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->fileType:I

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->isLoopRecording:Z

    .line 367
    new-instance v1, Lcom/jieli/stream/dv/running2/data/VideoRecord$5;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/data/VideoRecord$5;-><init>(Lcom/jieli/stream/dv/running2/data/VideoRecord;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->onRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

    .line 403
    new-instance v1, Lcom/jieli/stream/dv/running2/data/VideoRecord$6;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/data/VideoRecord$6;-><init>(Lcom/jieli/stream/dv/running2/data/VideoRecord;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->onAviWrapperListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

    .line 44
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    const-string v0, "MergeCamera"

    const-string v1, "Media"

    const-string v2, "Video"

    const-string v3, ""

    .line 45
    invoke-static {v0, v1, v2, v3}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->outputDirectory:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jieli/lib/dv/control/model/MediaInfo;)V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    .line 36
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    .line 38
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->onStreamRecordListener:Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->fileType:I

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->isLoopRecording:Z

    .line 367
    new-instance v0, Lcom/jieli/stream/dv/running2/data/VideoRecord$5;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/data/VideoRecord$5;-><init>(Lcom/jieli/stream/dv/running2/data/VideoRecord;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->onRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

    .line 403
    new-instance v0, Lcom/jieli/stream/dv/running2/data/VideoRecord$6;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/data/VideoRecord$6;-><init>(Lcom/jieli/stream/dv/running2/data/VideoRecord;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->onAviWrapperListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

    .line 50
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    const-string p1, "MergeCamera"

    const-string v0, "Media"

    const-string v1, "Video"

    const-string v2, ""

    .line 51
    invoke-static {p1, v0, v1, v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->outputDirectory:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/data/VideoRecord;)Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->onStreamRecordListener:Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;

    return-object p0
.end method

.method static synthetic access$002(Lcom/jieli/stream/dv/running2/data/VideoRecord;Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;)Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->onStreamRecordListener:Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/data/VideoRecord;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mCurrentFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/jieli/stream/dv/running2/data/VideoRecord;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mCurrentFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/data/VideoRecord;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/data/VideoRecord;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method private dispatchErrorMessage(Ljava/lang/String;)V
    .locals 1

    .line 56
    new-instance v0, Lcom/jieli/stream/dv/running2/data/VideoRecord$1;

    invoke-direct {v0, p0, p1}, Lcom/jieli/stream/dv/running2/data/VideoRecord$1;-><init>(Lcom/jieli/stream/dv/running2/data/VideoRecord;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getVideoContentValues(Landroid/content/Context;Ljava/io/File;J)Landroid/content/ContentValues;
    .locals 2

    .line 309
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 310
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_display_name"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    const-string v1, "video/mp4"

    .line 312
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 314
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "date_modified"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 315
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "date_added"

    invoke-virtual {p0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 316
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "_data"

    invoke-virtual {p0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "_size"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method private startAviWrapper()Z
    .locals 6

    .line 204
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getAvailableExternalMemorySize()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/32 v3, 0xc800000

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    .line 206
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    const-string v1, "Not enough storage space"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-direct {p0, v1}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    return v2

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/MovWrapper;->close()Z

    .line 212
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/AviWrapper;->stopRecording()Z

    .line 218
    :cond_2
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    .line 220
    :cond_3
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    .line 222
    iget v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->fileType:I

    const/4 v1, 0x2

    .line 227
    iget v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->fileType:I

    const-string v3, ".avi"

    invoke-static {v0, v3}, Lcom/jieli/stream/dv/running2/util/AppUtils;->createFilenameWidthTime(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->path:Ljava/lang/String;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->outputDirectory:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->path:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 234
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    const-string v1, "Output path is incorrect"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0, v1}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    return v2

    .line 238
    :cond_4
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Output path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mCurrentFilePath:Ljava/lang/String;

    .line 240
    new-instance v3, Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-direct {v3}, Lcom/jieli/lib/dv/control/player/AviWrapper;-><init>()V

    iput-object v3, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    .line 241
    iget-boolean v4, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->isLoopRecording:Z

    const-string v5, "Create failed"

    if-eqz v4, :cond_5

    .line 242
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->outputDirectory:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/jieli/lib/dv/control/player/AviWrapper;->create(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 243
    invoke-direct {p0, v5}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    return v2

    .line 247
    :cond_5
    invoke-virtual {v3}, Lcom/jieli/lib/dv/control/player/AviWrapper;->create()Z

    move-result v3

    if-nez v3, :cond_6

    .line 248
    invoke-direct {p0, v5}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    return v2

    .line 251
    :cond_6
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v3, v0}, Lcom/jieli/lib/dv/control/player/AviWrapper;->setPath(Ljava/lang/String;)Z

    .line 253
    :cond_7
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Lcom/jieli/lib/dv/control/player/AviWrapper;->setVideoDuration(J)Z

    .line 254
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->onAviWrapperListener:Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;

    invoke-virtual {v0, v3}, Lcom/jieli/lib/dv/control/player/AviWrapper;->setOnRecordListener(Lcom/jieli/lib/dv/control/player/OnAviWrapperListener;)V

    .line 255
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    const/16 v3, 0x10

    const/4 v4, 0x1

    if-nez v0, :cond_8

    .line 256
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    const/16 v5, 0x1f40

    invoke-virtual {v0, v5, v4, v3}, Lcom/jieli/lib/dv/control/player/AviWrapper;->setAudioTrack(III)Z

    goto :goto_0

    .line 258
    :cond_8
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/model/MediaInfo;->getSampleRate()I

    move-result v0

    invoke-virtual {v5, v0, v4, v3}, Lcom/jieli/lib/dv/control/player/AviWrapper;->setAudioTrack(III)Z

    .line 260
    :goto_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v3

    if-ne v1, v3, :cond_a

    .line 265
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    if-nez v1, :cond_9

    .line 266
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRearRate()I

    move-result v0

    goto :goto_1

    .line 268
    :cond_9
    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/model/MediaInfo;->getFrameRate()I

    move-result v0

    goto :goto_1

    .line 271
    :cond_a
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    if-nez v1, :cond_b

    .line 272
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getFrontRate()I

    move-result v0

    goto :goto_1

    .line 274
    :cond_b
    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/model/MediaInfo;->getFrameRate()I

    move-result v0

    .line 277
    :goto_1
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getStreamResolutionLevel()I

    move-result v1

    .line 278
    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtsResolution(I)[I

    move-result-object v1

    .line 279
    aget v3, v1, v2

    .line 280
    aget v1, v1, v4

    if-lez v0, :cond_c

    if-lez v3, :cond_c

    if-lez v1, :cond_c

    .line 282
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v2, v0, v3, v1}, Lcom/jieli/lib/dv/control/player/AviWrapper;->configureVideo(III)Z

    .line 287
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/AviWrapper;->startRecording()Z

    return v4

    :cond_c
    const-string v0, "params is incorrect"

    .line 284
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    return v2
.end method

.method private startMovWrapper()Z
    .locals 9

    .line 112
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getAvailableExternalMemorySize()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/32 v3, 0xc800000

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    .line 114
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    const-string v1, "Not enough storage space"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, v1}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    return v2

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 119
    invoke-virtual {v3}, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v3}, Lcom/jieli/lib/dv/control/player/AviWrapper;->stopRecording()Z

    .line 122
    :cond_1
    iput-object v4, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    .line 124
    :cond_2
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    if-eqz v3, :cond_3

    .line 125
    invoke-virtual {v3}, Lcom/jieli/lib/dv/control/player/MovWrapper;->close()Z

    .line 126
    iput-object v4, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    :cond_3
    const-wide/32 v3, 0x3c00000

    .line 129
    div-long/2addr v0, v3

    const-wide/16 v3, 0x23

    cmp-long v5, v0, v3

    if-lez v5, :cond_4

    const/16 v0, 0x1e

    goto :goto_0

    :cond_4
    long-to-int v1, v0

    add-int/lit8 v0, v1, -0x5

    .line 135
    :goto_0
    new-instance v1, Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/player/MovWrapper;-><init>()V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    .line 136
    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setVideoDuration(I)Z

    .line 137
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->onRecordListener:Lcom/jieli/lib/dv/control/player/OnRecordListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setOnRecordListener(Lcom/jieli/lib/dv/control/player/OnRecordListener;)V

    .line 138
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v1

    const/4 v3, 0x2

    const-string v4, "Set audio track failed"

    const-string v5, "Set frame rate failed"

    const/16 v6, 0x10

    const/4 v7, 0x1

    if-ne v3, v1, :cond_8

    .line 141
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    if-nez v1, :cond_6

    .line 142
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRearRate()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setFrameRate(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 143
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_5
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRearSampleRate()I

    move-result v0

    invoke-virtual {v1, v0, v7, v6}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setAudioTrack(III)Z

    move-result v0

    if-nez v0, :cond_c

    .line 145
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_6
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/model/MediaInfo;->getFrameRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setFrameRate(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 148
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/model/MediaInfo;->getSampleRate()I

    move-result v1

    invoke-virtual {v0, v1, v7, v6}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setAudioTrack(III)Z

    move-result v0

    if-nez v0, :cond_c

    .line 150
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_8
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    if-nez v1, :cond_a

    .line 155
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getFrontRate()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setFrameRate(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 156
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_9
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getFrontSampleRate()I

    move-result v0

    invoke-virtual {v1, v0, v7, v6}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setAudioTrack(III)Z

    move-result v0

    if-nez v0, :cond_c

    .line 158
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 160
    :cond_a
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/model/MediaInfo;->getFrameRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setFrameRate(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 161
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_b
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/model/MediaInfo;->getSampleRate()I

    move-result v1

    invoke-virtual {v0, v1, v7, v6}, Lcom/jieli/lib/dv/control/player/MovWrapper;->setAudioTrack(III)Z

    move-result v0

    if-nez v0, :cond_c

    .line 163
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_c
    :goto_1
    iget v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->fileType:I

    const-string v0, "MergeCamera"

    const-string v1, "Media"

    const-string v3, "Video"

    const-string v4, ""

    .line 173
    invoke-static {v0, v1, v3, v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->fileType:I

    const-string v3, ".mov"

    .line 176
    invoke-static {v0, v3}, Lcom/jieli/stream/dv/running2/util/AppUtils;->createFilenameWidthTime(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 179
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    const-string v1, "Output path is incorrect"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, v1}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    return v2

    .line 183
    :cond_d
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "output path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mCurrentFilePath:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/player/MovWrapper;->create(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 186
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    const-string v1, "Create MOV wrapper failed"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, v1}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->dispatchErrorMessage(Ljava/lang/String;)V

    return v2

    :cond_e
    return v7
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    const-string v2, "mAviWrapper or mMovWrapper not init."

    invoke-static {v0, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    if-eqz v0, :cond_2

    .line 326
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/AviWrapper;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/AviWrapper;->stopRecording()Z

    .line 329
    :cond_1
    new-instance v0, Lcom/jieli/stream/dv/running2/data/VideoRecord$3;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/data/VideoRecord$3;-><init>(Lcom/jieli/stream/dv/running2/data/VideoRecord;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    .line 346
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/AviWrapper;->destroy()Z

    .line 347
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    goto :goto_1

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/MovWrapper;->close()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    new-instance v0, Lcom/jieli/stream/dv/running2/data/VideoRecord$4;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/data/VideoRecord$4;-><init>(Lcom/jieli/stream/dv/running2/data/VideoRecord;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    const-string v2, "Mov close failed"

    invoke-static {v0, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :goto_0
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    .line 363
    :goto_1
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mCurrentFilePath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 364
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->isLoopRecording:Z

    return-void
.end method

.method public getCurrentFilePath()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mCurrentFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public prepare(Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0, p1}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->prepare(ZLcom/jieli/stream/dv/running2/data/OnRecordStateListener;)V

    return-void
.end method

.method public prepare(ZLcom/jieli/stream/dv/running2/data/OnRecordStateListener;)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->isLoopRecording:Z

    .line 71
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->onStreamRecordListener:Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;

    .line 73
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMediaInfo:Lcom/jieli/lib/dv/control/model/MediaInfo;

    if-eqz p1, :cond_3

    .line 74
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/model/MediaInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 76
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    const-string p2, "Filename is null"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p2, "AVI"

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "avi"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->startMovWrapper()Z

    move-result p1

    goto :goto_1

    .line 80
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->startAviWrapper()Z

    move-result p1

    goto :goto_1

    .line 85
    :cond_3
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getVideoType()I

    move-result p1

    if-nez p1, :cond_4

    .line 86
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->startAviWrapper()Z

    move-result p1

    goto :goto_1

    .line 88
    :cond_4
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->startMovWrapper()Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_5

    .line 92
    new-instance p1, Lcom/jieli/stream/dv/running2/data/VideoRecord$2;

    invoke-direct {p1, p0}, Lcom/jieli/stream/dv/running2/data/VideoRecord$2;-><init>(Lcom/jieli/stream/dv/running2/data/VideoRecord;)V

    invoke-static {p1}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public setFileType(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->fileType:I

    return-void
.end method

.method public thumbPath()Ljava/lang/String;
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->path:Ljava/lang/String;

    const-string v1, "avi"

    const-string v2, "jpg"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized write(I[B)Z
    .locals 1

    monitor-enter p0

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mAviWrapper:Lcom/jieli/lib/dv/control/player/AviWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/player/AviWrapper;->write(I[B)Z

    move-result p1

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->mMovWrapper:Lcom/jieli/lib/dv/control/player/MovWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/player/MovWrapper;->write(I[B)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_2

    .line 302
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord;->tag:Ljava/lang/String;

    const-string v0, "write data failed."

    invoke-static {p2, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_2
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
