.class public Lcom/jieli/lib/dv/control/projection/tools/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2File([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 31
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "create dir ok!"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 35
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    :try_start_1
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-direct {p2, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 38
    :try_start_2
    invoke-virtual {p2, p0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p0, 0x1

    .line 46
    :try_start_3
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 48
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return p0

    :catchall_0
    move-exception p0

    move-object v1, p2

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v1, p2

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p1, v1

    goto :goto_5

    :catch_4
    move-exception p0

    move-object p1, v1

    .line 41
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_1

    .line 46
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    if-eqz p1, :cond_2

    .line 53
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    return v0

    :catchall_2
    move-exception p0

    :goto_5
    if-eqz v1, :cond_3

    .line 46
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception p2

    .line 48
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_6
    if-eqz p1, :cond_4

    .line 53
    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 56
    :cond_4
    :goto_7
    throw p0
.end method

.method public static file2Bytes(Ljava/lang/String;)[B
    .locals 5

    .line 66
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    .line 69
    new-array v2, p0, [B

    .line 72
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 73
    :try_start_1
    invoke-virtual {v3, v2, v0, p0}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v3, v1

    .line 75
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    .line 80
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_1

    .line 80
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    :cond_1
    :goto_4
    throw p0

    :cond_2
    return-object v1
.end method

.method public static mergeDataPacket(Lcom/jieli/lib/dv/control/projection/beans/StreamData;)[B
    .locals 11

    if-eqz p0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->getPayload()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->getPayloadLen()I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, 0x14

    .line 103
    new-array v2, v2, [B

    .line 106
    invoke-static {v1}, Lcom/jieli/lib/dv/control/projection/tools/FormatHex;->contructIntTo2B(I)[B

    move-result-object v3

    .line 108
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->getSeq()I

    move-result v4

    invoke-static {v4}, Lcom/jieli/lib/dv/control/projection/tools/FormatHex;->intToByteArray(I)[B

    move-result-object v4

    .line 110
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->getFrameSize()I

    move-result v5

    invoke-static {v5}, Lcom/jieli/lib/dv/control/projection/tools/FormatHex;->intToByteArray(I)[B

    move-result-object v5

    .line 112
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->getOffset()I

    move-result v6

    invoke-static {v6}, Lcom/jieli/lib/dv/control/projection/tools/FormatHex;->intToByteArray(I)[B

    move-result-object v6

    .line 114
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->getType()I

    move-result v7

    invoke-static {v7}, Lcom/jieli/lib/dv/control/projection/tools/FormatHex;->contructIntTo1B(I)[B

    move-result-object v7

    .line 116
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->getSave()I

    move-result v8

    invoke-static {v8}, Lcom/jieli/lib/dv/control/projection/tools/FormatHex;->contructIntTo1B(I)[B

    move-result-object v8

    .line 118
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/projection/beans/StreamData;->getDateFlag()I

    move-result p0

    invoke-static {p0}, Lcom/jieli/lib/dv/control/projection/tools/FormatHex;->intToByteArray(I)[B

    move-result-object p0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 120
    invoke-static {v7, v9, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    invoke-static {v8, v9, v2, v10, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x2

    .line 122
    invoke-static {v3, v9, v2, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x4

    .line 123
    invoke-static {v4, v9, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x8

    .line 124
    invoke-static {v5, v9, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0xc

    .line 125
    invoke-static {v6, v9, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x10

    .line 126
    invoke-static {p0, v9, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0x14

    .line 127
    invoke-static {v0, v9, v2, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
