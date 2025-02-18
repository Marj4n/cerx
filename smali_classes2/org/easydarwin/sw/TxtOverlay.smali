.class public Lorg/easydarwin/sw/TxtOverlay;
.super Ljava/lang/Object;
.source "TxtOverlay.java"


# static fields
.field private static instance:Lorg/easydarwin/sw/TxtOverlay;


# instance fields
.field private final context:Landroid/content/Context;

.field private ctx:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TxtOverlay"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/easydarwin/sw/TxtOverlay;->context:Landroid/content/Context;

    return-void
.end method

.method public static getInstance()Lorg/easydarwin/sw/TxtOverlay;
    .locals 2

    .line 30
    sget-object v0, Lorg/easydarwin/sw/TxtOverlay;->instance:Lorg/easydarwin/sw/TxtOverlay;

    if-eqz v0, :cond_0

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "please call install in your application!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static install(Landroid/content/Context;)V
    .locals 5

    .line 37
    sget-object v0, Lorg/easydarwin/sw/TxtOverlay;->instance:Lorg/easydarwin/sw/TxtOverlay;

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Lorg/easydarwin/sw/TxtOverlay;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easydarwin/sw/TxtOverlay;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/easydarwin/sw/TxtOverlay;->instance:Lorg/easydarwin/sw/TxtOverlay;

    const-string v0, "SIMYOU.ttf"

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_0
    const-string v2, "zk/SIMYOU.ttf"

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    .line 45
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 48
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 49
    invoke-virtual {p0, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 52
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private static native txtOverlay(J[BLjava/lang/String;)V
.end method

.method private static native txtOverlayInit(IILjava/lang/String;)J
.end method

.method private static native txtOverlayRelease(J)V
.end method


# virtual methods
.method public init(II)V
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/easydarwin/sw/TxtOverlay;->context:Landroid/content/Context;

    const-string v1, "SIMYOU.ttf"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/easydarwin/sw/TxtOverlay;->txtOverlayInit(IILjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/easydarwin/sw/TxtOverlay;->ctx:J

    return-void

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the font file must be exists,please call install before!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public overlay([BLjava/lang/String;)V
    .locals 5

    .line 76
    iget-wide v0, p0, Lorg/easydarwin/sw/TxtOverlay;->ctx:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-static {v0, v1, p1, p2}, Lorg/easydarwin/sw/TxtOverlay;->txtOverlay(J[BLjava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 5

    .line 81
    iget-wide v0, p0, Lorg/easydarwin/sw/TxtOverlay;->ctx:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-static {v0, v1}, Lorg/easydarwin/sw/TxtOverlay;->txtOverlayRelease(J)V

    .line 83
    iput-wide v2, p0, Lorg/easydarwin/sw/TxtOverlay;->ctx:J

    return-void
.end method
