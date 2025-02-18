.class public Lcom/jiangdg/usbcamera/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static ROOT_PATH:Ljava/lang/String;

.field private static outputStream:Ljava/io/BufferedOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiangdg/usbcamera/utils/FileUtils;->ROOT_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createfile(Ljava/lang/String;)V
    .locals 2

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 26
    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object p0, Lcom/jiangdg/usbcamera/utils/FileUtils;->outputStream:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static putFileStream([B)V
    .locals 1

    .line 54
    sget-object v0, Lcom/jiangdg/usbcamera/utils/FileUtils;->outputStream:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static putFileStream([BII)V
    .locals 1

    .line 44
    sget-object v0, Lcom/jiangdg/usbcamera/utils/FileUtils;->outputStream:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    invoke-virtual {v0, p0, p1, p2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static releaseFile()V
    .locals 1

    .line 34
    :try_start_0
    sget-object v0, Lcom/jiangdg/usbcamera/utils/FileUtils;->outputStream:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/jiangdg/usbcamera/utils/FileUtils;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 36
    sget-object v0, Lcom/jiangdg/usbcamera/utils/FileUtils;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
