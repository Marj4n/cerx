.class public Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;
.super Ljava/lang/Object;
.source "ScanFilesHelper.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;

.field private mMediaScannerConnection:Landroid/media/MediaScannerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mContext:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    :cond_0
    return-void
.end method

.method private scanFile(Ljava/lang/String;)V
    .locals 3

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_3

    .line 32
    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scan file absolutePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanFilesHelper"

    invoke-static {v1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 46
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->scanFile(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->scanFile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 86
    :cond_0
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mFilePath:Ljava/lang/String;

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 92
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mContext:Landroid/content/Context;

    :cond_3
    return-void
.end method

.method public scanFiles(Ljava/lang/String;)V
    .locals 1

    .line 58
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mFilePath:Ljava/lang/String;

    .line 59
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Landroid/media/MediaScannerConnection;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 63
    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    :goto_0
    return-void
.end method

.method public updateToDeleteFile(Ljava/lang/String;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-static {v0, v1, p1, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method
