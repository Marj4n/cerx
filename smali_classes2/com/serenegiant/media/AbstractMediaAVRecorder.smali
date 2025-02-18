.class public abstract Lcom/serenegiant/media/AbstractMediaAVRecorder;
.super Lcom/serenegiant/media/Recorder;
.source "AbstractMediaAVRecorder.java"


# instance fields
.field protected mOutputFile:Landroidx/documentfile/provider/DocumentFile;

.field protected mOutputPath:Ljava/lang/String;

.field protected final mSaveTreeId:I

.field protected final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0, p2}, Lcom/serenegiant/media/Recorder;-><init>(Lcom/serenegiant/media/IRecorder$RecorderCallback;)V

    .line 115
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 116
    iput p3, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mSaveTreeId:I

    if-lez p3, :cond_2

    .line 117
    invoke-static {p1, p3}, Lcom/serenegiant/utils/SAFUtils;->hasStorageAccess(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "*/*"

    .line 118
    invoke-static {p1, p3, p4, p2, p5}, Lcom/serenegiant/utils/SAFUtils;->getStorageFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 120
    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/serenegiant/utils/UriHelper;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mOutputPath:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 123
    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p2

    const-string p3, "rw"

    .line 122
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/serenegiant/media/AbstractMediaAVRecorder;->setupMuxer(I)V

    return-void

    .line 130
    :cond_0
    new-instance p2, Ljava/io/IOException;

    const-string p3, "could not create ParcelFileDescriptor"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 136
    :cond_1
    throw p2

    .line 141
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "path not found/can\'t write"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-direct {p0, p2}, Lcom/serenegiant/media/Recorder;-><init>(Lcom/serenegiant/media/IRecorder$RecorderCallback;)V

    .line 156
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mWeakContext:Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    .line 157
    iput p2, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mSaveTreeId:I

    .line 158
    iput-object p3, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mOutputFile:Landroidx/documentfile/provider/DocumentFile;

    .line 159
    invoke-virtual {p3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/serenegiant/utils/UriHelper;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mOutputPath:Ljava/lang/String;

    .line 160
    invoke-virtual {p0, p1, p3}, Lcom/serenegiant/media/AbstractMediaAVRecorder;->setupMuxer(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-direct {p0, p2}, Lcom/serenegiant/media/Recorder;-><init>(Lcom/serenegiant/media/IRecorder$RecorderCallback;)V

    .line 176
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mWeakContext:Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    .line 177
    iput p2, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mSaveTreeId:I

    .line 178
    iput-object p3, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mOutputPath:Ljava/lang/String;

    .line 179
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 181
    :try_start_0
    sget-object p3, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ".mp4"

    invoke-static {p1, p3, v0, v1, p2}, Lcom/serenegiant/utils/FileUtils;->getCaptureFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mOutputPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This app has no permission of writing external storage"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mOutputPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/serenegiant/media/AbstractMediaAVRecorder;->setupMuxer(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 59
    invoke-direct/range {v0 .. v5}, Lcom/serenegiant/media/AbstractMediaAVRecorder;-><init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/serenegiant/media/IRecorder$RecorderCallback;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0, p2}, Lcom/serenegiant/media/Recorder;-><init>(Lcom/serenegiant/media/IRecorder$RecorderCallback;)V

    .line 77
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 78
    iput p5, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mSaveTreeId:I

    .line 80
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p4, ".mp4"

    :cond_0
    if-lez p5, :cond_2

    .line 81
    invoke-static {p1, p5}, Lcom/serenegiant/utils/SAFUtils;->hasStorageAccess(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 82
    sget-object p2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/serenegiant/utils/FileUtils;->getCaptureFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    .line 83
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mOutputPath:Ljava/lang/String;

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-static {}, Lcom/serenegiant/utils/FileUtils;->getDateTimeString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {}, Lcom/serenegiant/utils/FileUtils;->getDateTimeString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "*/*"

    .line 87
    invoke-static {p1, p5, p3, p2}, Lcom/serenegiant/utils/SAFUtils;->createStorageFileFD(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/AbstractMediaAVRecorder;->setupMuxer(I)V

    goto :goto_1

    .line 91
    :cond_2
    :try_start_0
    sget-object p2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    const/4 p5, 0x0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/serenegiant/utils/FileUtils;->getCaptureFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mOutputPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/AbstractMediaAVRecorder;->setupMuxer(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 94
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This app has no permission of writing external storage"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected check()Z
    .locals 9

    .line 208
    iget-object v0, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    .line 209
    iget-object v0, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mOutputFile:Landroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_0

    .line 210
    invoke-static {v1, v0}, Lcom/serenegiant/utils/SAFUtils;->getStorageInfo(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)Lcom/serenegiant/utils/StorageInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_3

    .line 211
    iget-wide v2, v0, Lcom/serenegiant/utils/StorageInfo;->totalBytes:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 212
    iget-wide v1, v0, Lcom/serenegiant/utils/StorageInfo;->freeBytes:J

    long-to-float v1, v1

    iget-wide v2, v0, Lcom/serenegiant/utils/StorageInfo;->totalBytes:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    sget v2, Lcom/serenegiant/utils/FileUtils;->FREE_RATIO:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    iget-wide v0, v0, Lcom/serenegiant/utils/StorageInfo;->freeBytes:J

    long-to-float v0, v0

    sget v1, Lcom/serenegiant/utils/FileUtils;->FREE_SIZE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    :cond_3
    if-eqz v1, :cond_4

    .line 215
    iget-object v0, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mOutputFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_5

    sget-wide v2, Lcom/serenegiant/media/VideoConfig;->maxDuration:J

    iget-wide v4, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mStartTime:J

    iget v6, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mSaveTreeId:I

    .line 217
    invoke-static/range {v1 .. v6}, Lcom/serenegiant/utils/FileUtils;->checkFreeSpace(Landroid/content/Context;JJI)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v7, 0x1

    :cond_5
    return v7
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getOutputFile()Landroidx/documentfile/provider/DocumentFile;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mOutputFile:Landroidx/documentfile/provider/DocumentFile;

    return-object v0
.end method

.method public getOutputPath()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/serenegiant/media/AbstractMediaAVRecorder;->mOutputPath:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract setupMuxer(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract setupMuxer(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract setupMuxer(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
