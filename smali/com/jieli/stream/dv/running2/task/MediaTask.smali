.class public Lcom/jieli/stream/dv/running2/task/MediaTask;
.super Landroid/os/HandlerThread;
.source "MediaTask.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/IConstant;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_ADD_TASK:I = 0x52

.field private static final MSG_START_TASK:I = 0x50

.field private static final MSG_STOP_TASK:I = 0x51

.field private static final TAG:Ljava/lang/String; = "MediaTask"


# instance fields
.field private isCancelTask:Z

.field private mCall:Lokhttp3/Call;

.field private mContext:Landroid/content/Context;

.field private mUIHandler:Landroid/os/Handler;

.field private mWorkHandler:Landroid/os/Handler;

.field private scanFilesHelper:Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/16 v0, -0x13

    .line 60
    invoke-direct {p0, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/jieli/stream/dv/running2/task/MediaTask;Lokhttp3/Call;)Lokhttp3/Call;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mCall:Lokhttp3/Call;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/task/MediaTask;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->isCancelTask:Z

    return p0
.end method

.method static synthetic access$202(Lcom/jieli/stream/dv/running2/task/MediaTask;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->isCancelTask:Z

    return p1
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/task/MediaTask;)Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->scanFilesHelper:Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    return-object p0
.end method

.method static synthetic access$302(Lcom/jieli/stream/dv/running2/task/MediaTask;Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;)Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->scanFilesHelper:Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    return-object p1
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private handlerTask(Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;->getInfo()Lcom/jieli/stream/dv/running2/bean/FileInfo;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;->getOp()I

    move-result p1

    if-eqz v0, :cond_2

    const/16 v1, 0xa3

    if-eq p1, v1, :cond_1

    const/16 v1, 0xa4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->tryToDelete(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->tryToDownload(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private tryToDelete(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 352
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 353
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x0

    const/16 v4, 0x54

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 357
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 358
    iput v4, v0, Landroid/os/Message;->what:I

    .line 359
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 360
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 362
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 363
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->scanFilesHelper:Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    if-nez v0, :cond_1

    .line 364
    new-instance v0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->scanFilesHelper:Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->scanFilesHelper:Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->updateToDeleteFile(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 369
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 370
    iput v4, v0, Landroid/os/Message;->what:I

    .line 371
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 372
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 373
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 378
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 379
    iput v4, v0, Landroid/os/Message;->what:I

    .line 380
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 381
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 382
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 386
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    new-instance v2, Lcom/jieli/stream/dv/running2/task/MediaTask$3;

    invoke-direct {v2, p0, p1}, Lcom/jieli/stream/dv/running2/task/MediaTask$3;-><init>(Lcom/jieli/stream/dv/running2/task/MediaTask;Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    invoke-virtual {v1, v0, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToDeleteFile(Ljava/util/List;Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private tryToDownload(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getSource()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 129
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->getConnectedIP()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f90

    .line 131
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->formatUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getDownloadFilename(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v1

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkCameraDir(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Download"

    .line 133
    invoke-static {v3, v4, v6, v7}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isVideo()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v6, 0x53

    if-eqz v1, :cond_4

    .line 136
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getSize()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-ltz v0, :cond_1

    .line 139
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    if-eqz p1, :cond_8

    .line 140
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 141
    iput v6, p1, Landroid/os/Message;->what:I

    .line 142
    iput v3, p1, Landroid/os/Message;->arg1:I

    .line 143
    iput-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 147
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->tryToDownload(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    goto/16 :goto_0

    .line 150
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    if-eqz p1, :cond_8

    .line 151
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 152
    iput v6, p1, Landroid/os/Message;->what:I

    .line 153
    iput v2, p1, Landroid/os/Message;->arg1:I

    .line 154
    iput-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 160
    :cond_3
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 161
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 162
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const-wide/16 v2, 0x32

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 163
    invoke-virtual {v1, v2, v3, v6}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mCall:Lokhttp3/Call;

    .line 165
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getSize()J

    move-result-wide v6

    .line 166
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mCall:Lokhttp3/Call;

    new-instance v0, Lcom/jieli/stream/dv/running2/task/MediaTask$1;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/jieli/stream/dv/running2/task/MediaTask$1;-><init>(Lcom/jieli/stream/dv/running2/task/MediaTask;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_0

    .line 279
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 281
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getSize()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-ltz v0, :cond_5

    .line 282
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    if-eqz p1, :cond_8

    .line 283
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 284
    iput v6, p1, Landroid/os/Message;->what:I

    .line 285
    iput v3, p1, Landroid/os/Message;->arg1:I

    .line 286
    iput-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 290
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->tryToDownload(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    goto :goto_0

    .line 293
    :cond_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    if-eqz p1, :cond_8

    .line 294
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 295
    iput v6, p1, Landroid/os/Message;->what:I

    .line 296
    iput v2, p1, Landroid/os/Message;->arg1:I

    .line 297
    iput-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 303
    :cond_7
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object p1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/jieli/stream/dv/running2/task/MediaTask$2;

    invoke-direct {v2, p0, v4, v5}, Lcom/jieli/stream/dv/running2/task/MediaTask$2;-><init>(Lcom/jieli/stream/dv/running2/task/MediaTask;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0, v4, v2}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->downloadWebImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;)V

    :cond_8
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    if-eqz p1, :cond_3

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x50

    if-eq v0, v1, :cond_2

    const/16 p1, 0x51

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mCall:Lokhttp3/Call;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lokhttp3/Call;->isExecuted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mCall:Lokhttp3/Call;

    invoke-interface {p1}, Lokhttp3/Call;->cancel()V

    :cond_1
    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->isCancelTask:Z

    .line 97
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 98
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "media_task"

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;

    if-eqz p1, :cond_3

    .line 84
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->handlerTask(Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onLooperPrepared()V
    .locals 2

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    .line 67
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 435
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mContext:Landroid/content/Context;

    .line 436
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 440
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 442
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public tryToStartTask(Lcom/jieli/stream/dv/running2/bean/MediaTaskInfo;)V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "media_task"

    .line 420
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 421
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v1, 0x50

    .line 422
    iput v1, p1, Landroid/os/Message;->what:I

    .line 423
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 424
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public tryToStopTask()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x51

    .line 430
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
