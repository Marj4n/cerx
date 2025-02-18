.class public Lcom/jieli/stream/dv/running2/task/ClearThumbTask;
.super Ljava/lang/Thread;
.source "ClearThumbTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/task/ClearThumbTask$OnClearThumbTaskListener;
    }
.end annotation


# instance fields
.field private appRootPath:Ljava/lang/String;

.field private isExitClear:Z

.field private listener:Lcom/jieli/stream/dv/running2/task/ClearThumbTask$OnClearThumbTaskListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;->appRootPath:Ljava/lang/String;

    return-void
.end method

.method private clearOldThumbCache()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;->appRootPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->queryThumbInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 97
    div-int/lit8 v2, v1, 0x3

    if-lez v2, :cond_1

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sub-int v2, v1, v2

    .line 100
    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private deleteFile(Ljava/lang/String;)Z
    .locals 1

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getCache()J
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;->appRootPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->queryThumbDirPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 60
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    :try_start_0
    invoke-static {v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 65
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-wide v1
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 34
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;->getCache()J

    move-result-wide v0

    .line 35
    :goto_0
    iget-boolean v2, p0, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;->isExitClear:Z

    if-nez v2, :cond_0

    const-wide/32 v2, 0xc800000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;->appRootPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;->clearOldThumbCache()V

    .line 37
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;->getCache()J

    move-result-wide v0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;->listener:Lcom/jieli/stream/dv/running2/task/ClearThumbTask$OnClearThumbTaskListener;

    if-eqz v0, :cond_1

    .line 40
    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/task/ClearThumbTask$OnClearThumbTaskListener;->onFinish()V

    :cond_1
    return-void
.end method

.method public setOnClearThumbTaskListener(Lcom/jieli/stream/dv/running2/task/ClearThumbTask$OnClearThumbTaskListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;->listener:Lcom/jieli/stream/dv/running2/task/ClearThumbTask$OnClearThumbTaskListener;

    return-void
.end method

.method public stopClear()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/task/ClearThumbTask;->isExitClear:Z

    return-void
.end method
