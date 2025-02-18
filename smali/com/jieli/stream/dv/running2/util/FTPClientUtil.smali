.class public Lcom/jieli/stream/dv/running2/util/FTPClientUtil;
.super Ljava/lang/Object;
.source "FTPClientUtil.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/IConstant;


# static fields
.field private static failedNum:I

.field private static instance:Lcom/jieli/stream/dv/running2/util/FTPClientUtil;


# instance fields
.field private currentFTPPath:Ljava/lang/String;

.field private mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FTPClientUtil"

    .line 28
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    .line 34
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    return-void
.end method

.method private checkExistPath(Ljava/lang/String;)Z
    .locals 12

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    const-string v0, "/"

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    .line 150
    :goto_0
    array-length v3, v2

    const-string v4, ""

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    .line 151
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 153
    :try_start_0
    iget-object v7, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    if-nez v7, :cond_1

    return v1

    .line 155
    :cond_1
    iget-object v7, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/net/ftp/FTPClient;->listDirectories(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 157
    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 158
    invoke-virtual {v10}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 159
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v4, v6

    goto :goto_3

    .line 162
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :catch_0
    move-exception v6

    .line 169
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 173
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_6
    return v1
.end method

.method public static getInstance()Lcom/jieli/stream/dv/running2/util/FTPClientUtil;
    .locals 2

    .line 45
    sget-object v0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->instance:Lcom/jieli/stream/dv/running2/util/FTPClientUtil;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->instance:Lcom/jieli/stream/dv/running2/util/FTPClientUtil;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;

    invoke-direct {v1}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;-><init>()V

    sput-object v1, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->instance:Lcom/jieli/stream/dv/running2/util/FTPClientUtil;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->instance:Lcom/jieli/stream/dv/running2/util/FTPClientUtil;

    return-object v0
.end method


# virtual methods
.method public changeWorkPath(Ljava/lang/String;)Z
    .locals 2

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v0, "-connectAndLoginFTP- parameter is empty!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->currentFTPPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v0

    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    return v1
.end method

.method public connectAndLoginFTP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 69
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->setDefaultPort(I)V

    .line 71
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    const v0, 0x9c40

    invoke-virtual {p2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->setDataTimeout(I)V

    .line 72
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    const/16 v0, 0x4e20

    invoke-virtual {p2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->setConnectTimeout(I)V

    .line 73
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p2, p1}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 75
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1, p3, p4}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 76
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->setControlEncoding(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 78
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->printWorkingDirectory()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->currentFTPPath:Ljava/lang/String;

    .line 79
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "connect Ftp server success, root Path : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->currentFTPPath:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 81
    invoke-direct {p0, p5}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->checkExistPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->currentFTPPath:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p3, p1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 84
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "connect Ftp server success!  currentFTPPath : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->currentFTPPath:Ljava/lang/String;

    return p2

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The path does not exist in the ftp server, changePath : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 93
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string p3, "connect Ftp server success!"

    invoke-static {p1, p3}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p1

    .line 103
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "connectFTP IOException ===> "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 100
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "connectFTP SocketException ===> "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    return v1

    .line 65
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string p2, "-connectAndLoginFTP- parameter is empty!"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public disconnect()V
    .locals 5

    .line 183
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    .line 186
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :goto_0
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->currentFTPPath:Ljava/lang/String;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 188
    :try_start_1
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect IOException --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    :goto_1
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->currentFTPPath:Ljava/lang/String;

    .line 192
    throw v1

    :cond_0
    :goto_2
    return-void
.end method

.method public downLoadUpdateFile(Ljava/lang/String;IILandroid/os/Handler;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/os/Handler;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    .line 309
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    .line 310
    iget-object v0, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v1, "filename, localPath is null!"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    .line 317
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v2, "cam.jieli.net"

    const/16 v3, 0x15

    const-string v4, "wifi@baidu.com"

    const-string v5, "wifi123456"

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 319
    invoke-virtual/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->connectAndLoginFTP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 320
    iget-object v1, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->listNames()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 321
    array-length v2, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    goto/16 :goto_e

    :cond_1
    const-string v2, "filename --> "

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v8, v4, :cond_4

    .line 327
    :try_start_1
    array-length v0, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_9

    aget-object v6, v1, v4

    .line 328
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    .line 329
    :cond_2
    iget-object v12, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, ".txt"

    .line 330
    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a

    const-string v12, ".TXT"

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_5

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 336
    :cond_4
    array-length v6, v1

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v6, :cond_9

    aget-object v13, v1, v12

    .line 337
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_4

    .line 338
    :cond_5
    iget-object v14, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v4, :cond_6

    const-string v14, ".apk"

    .line 340
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, ".APK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    goto :goto_3

    :cond_6
    if-ne v0, v3, :cond_8

    const-string v14, ".bfu"

    .line 345
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, ".BFU"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_7
    :goto_3
    move-object v6, v13

    goto :goto_5

    :cond_8
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_9
    move-object v6, v10

    .line 352
    :cond_a
    :goto_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_b

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    return-object v10

    .line 355
    :cond_b
    :try_start_2
    iget-object v0, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-downLoadUpdateFile- updateFileName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upgrade"

    invoke-static {v0, v1, v10, v10}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 359
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 361
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 362
    iget-object v0, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v4, "delete exists update file !"

    invoke-static {v0, v4}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 366
    :cond_c
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const v0, 0xfaf0

    :try_start_5
    new-array v0, v0, [B

    .line 374
    iget-object v12, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v12}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 375
    iget-object v12, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v12, v3}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 377
    iget-object v12, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v12}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v12

    if-eqz v12, :cond_14

    .line 379
    iget-object v13, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "-downLoadUpdateFile- remoteFiles size : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    array-length v13, v12

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v13, :cond_e

    aget-object v16, v12, v14

    .line 381
    iget-object v3, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-downLoadUpdateFile- file name : "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 383
    iget-object v3, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-downLoadUpdateFile- download File size : "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v12

    goto :goto_7

    :cond_d
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x2

    goto :goto_6

    :cond_e
    const-wide/16 v12, 0x0

    .line 393
    :goto_7
    iget-object v3, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v3, v6}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_10

    .line 395
    :try_start_6
    iget-object v0, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v1, "-downLoadUpdateFile- inputUpdateFileStream is empty !"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    if-eqz v3, :cond_f

    .line 431
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_9

    .line 434
    :cond_f
    :goto_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_a

    .line 437
    :goto_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_a
    return-object v10

    :catch_1
    move-exception v0

    goto/16 :goto_14

    :cond_10
    const/4 v5, 0x0

    .line 400
    :goto_b
    :try_start_8
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v14, -0x1

    if-eq v6, v14, :cond_12

    const/4 v14, 0x0

    .line 401
    invoke-virtual {v4, v0, v14, v6}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v5, v6

    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-lez v6, :cond_11

    mul-int/lit8 v6, v5, 0x64

    int-to-long v14, v6

    .line 404
    div-long/2addr v14, v12

    long-to-int v6, v14

    .line 405
    rem-int/lit8 v14, v6, 0x2

    if-nez v14, :cond_11

    const/4 v14, 0x2

    if-ne v8, v14, :cond_11

    if-eqz v9, :cond_11

    const/16 v15, 0x5566

    const/4 v14, 0x0

    .line 408
    invoke-virtual {v9, v15, v6, v14}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b

    :cond_11
    const/4 v14, 0x0

    goto :goto_b

    .line 414
    :cond_12
    iget-object v0, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 415
    iget-object v0, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v5, "-downLoadUpdateFile- download File success"

    invoke-static {v0, v5}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v1

    goto :goto_c

    .line 417
    :cond_13
    iget-object v0, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v1, "-downLoadUpdateFile- download File failed"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_c
    move-object v1, v10

    move-object v10, v3

    goto :goto_f

    .line 389
    :cond_14
    :try_start_9
    iget-object v0, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v1, "-downLoadUpdateFile- remoteFile is null!"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    .line 434
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 437
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_d
    return-object v10

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_18

    :catch_3
    move-exception v0

    move-object v3, v10

    goto :goto_14

    :catch_4
    move-exception v0

    .line 368
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    return-object v10

    :catch_5
    move-exception v0

    move-object v3, v10

    goto :goto_13

    .line 322
    :cond_15
    :goto_e
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    return-object v10

    .line 421
    :cond_16
    :try_start_d
    iget-object v0, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v1, "login ftp server failed!"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-object v1, v10

    move-object v2, v1

    move-object v4, v2

    .line 428
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    if-eqz v10, :cond_17

    .line 431
    :try_start_e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto :goto_10

    :catch_6
    move-exception v0

    goto :goto_11

    :cond_17
    :goto_10
    if-eqz v4, :cond_18

    .line 434
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_12

    .line 437
    :goto_11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_18
    :goto_12
    move-object v10, v1

    goto :goto_17

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v4, v10

    goto :goto_18

    :catch_7
    move-exception v0

    move-object v2, v10

    move-object v3, v2

    :goto_13
    move-object v4, v3

    .line 425
    :goto_14
    :try_start_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    if-eqz v3, :cond_19

    .line 431
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_15

    :catch_8
    move-exception v0

    goto :goto_16

    :cond_19
    :goto_15
    if-eqz v4, :cond_1a

    .line 434
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_17

    .line 437
    :goto_16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 441
    :cond_1a
    :goto_17
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 442
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-object v11

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v10, v3

    .line 428
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    if-eqz v10, :cond_1c

    .line 431
    :try_start_11
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto :goto_19

    :catch_9
    move-exception v0

    goto :goto_1a

    :cond_1c
    :goto_19
    if-eqz v4, :cond_1d

    .line 434
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_1b

    .line 437
    :goto_1a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 439
    :cond_1d
    :goto_1b
    throw v1
.end method

.method public downloadTxt(Ljava/util/List;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-eqz v8, :cond_13

    .line 203
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_13

    :cond_0
    const/4 v0, 0x1

    const/4 v9, 0x0

    if-eqz p2, :cond_1

    .line 208
    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 209
    sput v9, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->failedNum:I

    goto :goto_0

    .line 211
    :cond_1
    sget v1, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->failedNum:I

    add-int/2addr v1, v0

    sput v1, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->failedNum:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 213
    sput v9, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->failedNum:I

    .line 214
    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 217
    :cond_2
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 218
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    .line 219
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    iget-object v0, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v1, " downloadTxt changePath is empty!"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 223
    :cond_3
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    const/4 v11, 0x0

    invoke-static {v1, v2, v11, v11}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const v1, 0xfaf0

    new-array v13, v1, [B

    .line 229
    :try_start_0
    iget-object v1, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    if-nez v1, :cond_4

    .line 230
    new-instance v1, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    iput-object v1, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    :cond_4
    const-string v2, "cam.jieli.net"

    const/16 v3, 0x15

    const-string v4, "wifi@baidu.com"

    const-string v5, "wifi123456"

    move-object/from16 v1, p0

    move-object v6, v10

    .line 232
    invoke-virtual/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->connectAndLoginFTP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 233
    iget-object v1, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->listNames()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 235
    array-length v2, v1

    if-lez v2, :cond_c

    .line 236
    array-length v2, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :goto_1
    const-string v4, "version.json"

    if-ge v3, v2, :cond_6

    :try_start_1
    aget-object v5, v1, v3

    .line 237
    iget-object v6, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " ftp list name : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_b

    .line 245
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    :try_start_3
    iget-object v0, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    if-nez v11, :cond_8

    .line 255
    iget-object v0, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v2, "downloadTxt inputStream is empty !"

    invoke-static {v0, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    .line 257
    invoke-virtual {v7, v8, v9}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->downloadTxt(Ljava/util/List;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    if-eqz v11, :cond_7

    .line 289
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    .line 292
    :cond_7
    :goto_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 295
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    return-void

    .line 260
    :cond_8
    :goto_6
    :try_start_5
    invoke-virtual {v11, v13}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    .line 261
    invoke-virtual {v1, v13, v9, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_6

    .line 263
    :cond_9
    iget-object v0, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 265
    iget-object v2, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v3, " download VERSION_JSON success"

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 267
    :cond_a
    iget-object v2, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v3, " download VERSION_JSON failed"

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    .line 270
    invoke-virtual {v7, v8, v0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->downloadTxt(Ljava/util/List;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v11

    move-object v11, v1

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    .line 248
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    .line 250
    invoke-virtual {v7, v8, v9}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->downloadTxt(Ljava/util/List;Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    return-void

    .line 272
    :cond_b
    :try_start_7
    invoke-virtual {v7, v8, v9}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->downloadTxt(Ljava/util/List;Z)V

    goto :goto_8

    .line 275
    :cond_c
    iget-object v0, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v1, "filesName == null!"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v7, v8, v9}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->downloadTxt(Ljava/util/List;Z)V

    :goto_8
    move-object v0, v11

    :goto_9
    move-object/from16 v16, v11

    move-object v11, v0

    move-object/from16 v0, v16

    goto :goto_a

    .line 279
    :cond_d
    iget-object v0, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v1, " connectAndLoginFTP failed!"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v7, v8, v9}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->downloadTxt(Ljava/util/List;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v0, v11

    .line 286
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    if-eqz v11, :cond_e

    .line 289
    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_c

    :cond_e
    :goto_b
    if-eqz v0, :cond_12

    .line 292
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_12

    .line 295
    :goto_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v1, v11

    goto :goto_e

    :catch_4
    move-exception v0

    move-object v1, v11

    .line 283
    :goto_d
    :try_start_9
    iget-object v2, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadTxt IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    if-eqz v11, :cond_f

    .line 289
    :try_start_a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    :cond_f
    if-eqz v1, :cond_12

    .line 292
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_12

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 286
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    if-eqz v11, :cond_10

    .line 289
    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto :goto_f

    :catch_5
    move-exception v0

    goto :goto_10

    :cond_10
    :goto_f
    if-eqz v1, :cond_11

    .line 292
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_11

    .line 295
    :goto_10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 297
    :cond_11
    :goto_11
    throw v2

    :cond_12
    :goto_12
    return-void

    .line 204
    :cond_13
    :goto_13
    iget-object v0, v7, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    const-string v1, " downloadTxt parameters is empty!"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentFTPPath()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->currentFTPPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFTPClient()Lorg/apache/commons/net/ftp/FTPClient;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    return-object v0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 12

    .line 460
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "192.168.1.1"

    :cond_0
    move-object v2, v0

    const/16 v3, 0x15

    const/4 v6, 0x0

    const-string v4, "FTPX"

    const-string v5, "12345678"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->connectAndLoginFTP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 467
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 469
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_1
    move-object p2, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto/16 :goto_9

    :catch_1
    move-exception p1

    move-object p2, v0

    goto/16 :goto_7

    :catch_2
    move-exception v4

    move-object p2, v0

    .line 473
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    move-wide v4, v2

    .line 475
    :goto_2
    iget-object v6, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-uploadFile- connect ftp success, localFileSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 477
    iget-object v6, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v6}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 478
    iget-object v6, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 479
    iget-object v6, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    const/high16 v7, 0x500000

    invoke-virtual {v6, v7}, Lorg/apache/commons/net/ftp/FTPClient;->setBufferSize(I)V

    .line 480
    iget-object v6, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->mFTPClient:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v6, p1}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_6

    const p1, 0xfaf0

    new-array p1, p1, [B

    const/4 v6, 0x0

    .line 484
    :cond_2
    :goto_3
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 485
    invoke-virtual {v0, p1, v1, v7}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v6, v7

    cmp-long v7, v4, v2

    if-lez v7, :cond_2

    mul-int/lit8 v7, v6, 0x64

    int-to-long v7, v7

    .line 488
    div-long/2addr v7, v4

    long-to-int v8, v7

    .line 489
    rem-int/lit8 v7, v8, 0x2

    if-nez v7, :cond_2

    .line 490
    iget-object v7, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-uploadFile- progress : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const/16 v7, 0x5567

    .line 492
    invoke-virtual {p3, v7, v8, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p3, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_3
    const-wide/16 v2, 0x7d0

    .line 497
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 498
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    .line 499
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->tag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-uploadFile- size : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,localFileSize = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    int-to-long v2, v6

    cmp-long p1, v2, v4

    if-ltz p1, :cond_6

    const/4 p1, 0x1

    if-eqz p2, :cond_4

    .line 510
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    .line 512
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    if-eqz v0, :cond_5

    .line 517
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception p2

    .line 519
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_5
    return p1

    :cond_6
    if-eqz p2, :cond_7

    .line 510
    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 512
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_6
    if-eqz v0, :cond_b

    .line 517
    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_c

    :catchall_1
    move-exception p1

    move-object v11, v0

    move-object v0, p2

    move-object p2, v11

    goto :goto_9

    :catch_6
    move-exception p1

    move-object v11, v0

    move-object v0, p2

    move-object p2, v11

    .line 506
    :goto_7
    :try_start_7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_8

    .line 510
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    :catch_7
    move-exception p1

    .line 512
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_8
    if-eqz p2, :cond_b

    .line 517
    :try_start_9
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 519
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catchall_2
    move-exception p1

    :goto_9
    if-eqz v0, :cond_9

    .line 510
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_a

    :catch_9
    move-exception p3

    .line 512
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_a
    if-eqz p2, :cond_a

    .line 517
    :try_start_b
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_b

    :catch_a
    move-exception p2

    .line 519
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 522
    :cond_a
    :goto_b
    throw p1

    .line 524
    :cond_b
    :goto_c
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->disconnect()V

    return v1
.end method
