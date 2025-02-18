.class public Lcom/serenegiant/utils/SysFs;
.super Ljava/lang/Object;
.source "SysFs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/utils/SysFs$MyByteArrayOutputStream;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final sSysFs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mReadLock:Ljava/util/concurrent/locks/Lock;

.field private final mWriteLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/serenegiant/utils/SysFs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/utils/SysFs;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/serenegiant/utils/SysFs;->sSysFs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    iput-object p1, p0, Lcom/serenegiant/utils/SysFs;->mPath:Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/utils/SysFs;->mName:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/serenegiant/utils/SysFs;->sSysFs:Ljava/util/Map;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/serenegiant/utils/SysFs;->sSysFs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Lcom/serenegiant/utils/SysFs;->sSysFs:Ljava/util/Map;

    .line 75
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object v2, v1

    :cond_0
    if-nez v2, :cond_1

    .line 79
    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 80
    sget-object v1, Lcom/serenegiant/utils/SysFs;->sSysFs:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iput-object v2, p0, Lcom/serenegiant/utils/SysFs;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 84
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    .line 85
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    return-void

    :catchall_0
    move-exception p1

    .line 82
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 67
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist or can\'t read."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPath(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 445
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 448
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/serenegiant/utils/SysFs;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/serenegiant/utils/SysFs;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, v0}, Lcom/serenegiant/utils/SysFs;->readByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public readByte(Ljava/lang/String;)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 161
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lcom/serenegiant/utils/SysFs;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 168
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    .line 165
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 168
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public readBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v0}, Lcom/serenegiant/utils/SysFs;->readBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/16 v0, 0x200

    :try_start_0
    new-array v0, v0, [B

    .line 133
    new-instance v1, Lcom/serenegiant/utils/SysFs$MyByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Lcom/serenegiant/utils/SysFs$MyByteArrayOutputStream;-><init>(I)V

    .line 134
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lcom/serenegiant/utils/SysFs;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result p1

    :goto_0
    if-lez p1, :cond_1

    .line 138
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v3, 0x0

    .line 140
    invoke-virtual {v1, v0, v3, p1}, Lcom/serenegiant/utils/SysFs$MyByteArrayOutputStream;->write([BII)V

    .line 142
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result p1

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v1}, Lcom/serenegiant/utils/SysFs$MyByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 146
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 149
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p0, v0}, Lcom/serenegiant/utils/SysFs;->readDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDouble(Ljava/lang/String;)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 251
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lcom/serenegiant/utils/SysFs;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 253
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 258
    iget-object p1, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v1

    :catchall_0
    move-exception p1

    .line 255
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 258
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v0}, Lcom/serenegiant/utils/SysFs;->readFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public readFloat(Ljava/lang/String;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 233
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lcom/serenegiant/utils/SysFs;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 235
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    .line 237
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 240
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, v0}, Lcom/serenegiant/utils/SysFs;->readInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public readInt(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 197
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lcom/serenegiant/utils/SysFs;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 204
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    .line 201
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 204
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, v0}, Lcom/serenegiant/utils/SysFs;->readLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLong(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 215
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lcom/serenegiant/utils/SysFs;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 222
    iget-object p1, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v1

    :catchall_0
    move-exception p1

    .line 219
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 222
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, v0}, Lcom/serenegiant/utils/SysFs;->readShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public readShort(Ljava/lang/String;)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 179
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lcom/serenegiant/utils/SysFs;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    .line 183
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 186
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lcom/serenegiant/utils/SysFs;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 112
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {p0, p1}, Lcom/serenegiant/utils/SysFs;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 116
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 119
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 438
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/serenegiant/utils/SysFs;->mPath:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {p0}, Lcom/serenegiant/utils/SysFs;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 440
    :catch_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/serenegiant/utils/SysFs;->mPath:Ljava/lang/String;

    aput-object v3, v1, v0

    const-string v0, "%s=null"

    invoke-static {v2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 356
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/utils/SysFs;->write(Ljava/lang/String;B)V

    return-void
.end method

.method public write(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 432
    invoke-virtual {p0, v0, p1, p2}, Lcom/serenegiant/utils/SysFs;->write(Ljava/lang/String;D)V

    return-void
.end method

.method public write(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 413
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/utils/SysFs;->write(Ljava/lang/String;F)V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/utils/SysFs;->write(Ljava/lang/String;I)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/utils/SysFs;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public write(Ljava/lang/String;B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 343
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Lcom/serenegiant/utils/SysFs;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 345
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 346
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 351
    iget-object p1, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 348
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 351
    iget-object p2, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public write(Ljava/lang/String;D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 419
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Lcom/serenegiant/utils/SysFs;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 421
    :try_start_1
    invoke-virtual {v0, p2, p3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 422
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 427
    iget-object p1, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 424
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 427
    iget-object p2, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public write(Ljava/lang/String;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 400
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Lcom/serenegiant/utils/SysFs;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 402
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 403
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 408
    iget-object p1, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 405
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 408
    iget-object p2, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public write(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 381
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Lcom/serenegiant/utils/SysFs;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 383
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 384
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 389
    iget-object p1, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 386
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 389
    iget-object p2, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 305
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {p0, p1}, Lcom/serenegiant/utils/SysFs;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 307
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 313
    iget-object p1, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 310
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 313
    iget-object p2, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public write(Ljava/lang/String;S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 362
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Lcom/serenegiant/utils/SysFs;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 364
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 365
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 370
    iget-object p1, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 367
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 370
    iget-object p2, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public write(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 324
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Lcom/serenegiant/utils/SysFs;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 326
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 327
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 332
    iget-object p1, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 329
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 332
    iget-object p2, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public write(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/serenegiant/utils/SysFs;->write(Ljava/lang/String;[BII)V

    return-void
.end method

.method public write(Ljava/lang/String;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 282
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Lcom/serenegiant/utils/SysFs;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 284
    :try_start_1
    invoke-virtual {v0, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    .line 285
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 290
    iget-object p1, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 287
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 290
    iget-object p2, p0, Lcom/serenegiant/utils/SysFs;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public write(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 375
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/utils/SysFs;->write(Ljava/lang/String;S)V

    return-void
.end method

.method public write(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 337
    invoke-virtual {p0, v0, p1}, Lcom/serenegiant/utils/SysFs;->write(Ljava/lang/String;Z)V

    return-void
.end method

.method public write([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/serenegiant/utils/SysFs;->write(Ljava/lang/String;[BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/serenegiant/utils/SysFs;->write(Ljava/lang/String;[BII)V

    return-void
.end method
