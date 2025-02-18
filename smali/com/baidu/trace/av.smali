.class public Lcom/baidu/trace/av;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/trace/av$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/baidu/trace/av;

.field private static e:Lcom/baidu/trace/av$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/baidu/trace/av;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/baidu/trace/av;->c:Ljava/util/Set;

    sget-object v0, Lcom/baidu/trace/av$a;->a:Lcom/baidu/trace/av$a;

    sput-object v0, Lcom/baidu/trace/av;->e:Lcom/baidu/trace/av$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/baidu/trace/av;
    .locals 3

    const-class v0, Lcom/baidu/trace/av;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/trace/av;->d:Lcom/baidu/trace/av;

    if-nez v1, :cond_6

    new-instance v1, Lcom/baidu/trace/av;

    invoke-direct {v1}, Lcom/baidu/trace/av;-><init>()V

    sput-object v1, Lcom/baidu/trace/av;->d:Lcom/baidu/trace/av;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    :goto_0
    if-nez v1, :cond_1

    sget-object v1, Lcom/baidu/trace/av$a;->a:Lcom/baidu/trace/av$a;

    goto :goto_3

    :cond_1
    const-string v2, "arm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "v7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/baidu/trace/av$a;->b:Lcom/baidu/trace/av$a;

    sput-object v2, Lcom/baidu/trace/av;->e:Lcom/baidu/trace/av$a;

    :cond_2
    const-string v2, "arm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/baidu/trace/av$a;->c:Lcom/baidu/trace/av$a;

    sput-object v2, Lcom/baidu/trace/av;->e:Lcom/baidu/trace/av$a;

    :cond_3
    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/baidu/trace/av$a;->e:Lcom/baidu/trace/av$a;

    :goto_1
    sput-object v1, Lcom/baidu/trace/av;->e:Lcom/baidu/trace/av$a;

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/baidu/trace/av$a;->d:Lcom/baidu/trace/av$a;

    goto :goto_1

    :cond_5
    :goto_2
    sget-object v1, Lcom/baidu/trace/av;->e:Lcom/baidu/trace/av$a;

    :goto_3
    sput-object v1, Lcom/baidu/trace/av;->e:Lcom/baidu/trace/av$a;

    :cond_6
    sget-object v1, Lcom/baidu/trace/av;->d:Lcom/baidu/trace/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/baidu/trace/av;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Lcom/baidu/trace/av;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    throw v0

    :catch_1
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 4

    const-class v0, Lcom/baidu/trace/av;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loadException"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/baidu/trace/av;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Failed to load."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/trace/av$a;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/baidu/trace/av$a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    const/16 v3, 0x8

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v4, :cond_0

    sget-object v3, Lcom/baidu/trace/av;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/baidu/trace/av;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0

    :cond_1
    :try_start_3
    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, p2}, Lcom/baidu/trace/av;->a(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 p1, 0x1

    return p1

    :catch_1
    return v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    :goto_1
    :try_start_5
    const-class p2, Lcom/baidu/trace/av;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v2, "copyError"

    invoke-static {p2, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    nop

    :catch_4
    :cond_2
    return v0

    :goto_2
    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    :catch_5
    return v0

    :cond_3
    :goto_3
    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/baidu/trace/av$a;->b:Lcom/baidu/trace/av$a;

    invoke-direct {p0, p2, v0}, Lcom/baidu/trace/av;->a(Ljava/lang/String;Lcom/baidu/trace/av$a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/baidu/trace/av;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/baidu/trace/av;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/trace/av;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "libs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/baidu/trace/av$a;->a:Lcom/baidu/trace/av$a;

    invoke-direct {p0, p2, v0}, Lcom/baidu/trace/av;->a(Ljava/lang/String;Lcom/baidu/trace/av$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/baidu/trace/av;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/baidu/trace/av$a;->d:Lcom/baidu/trace/av$a;

    invoke-direct {p0, p2, v0}, Lcom/baidu/trace/av;->a(Ljava/lang/String;Lcom/baidu/trace/av$a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/baidu/trace/av;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/baidu/trace/av;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/baidu/trace/av;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/trace/av;->b:Ljava/util/Set;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/baidu/trace/av;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    sget-object v0, Lcom/baidu/trace/av;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/baidu/trace/av;->c:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {p1}, Lcom/baidu/trace/av;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/baidu/trace/av;->b:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v2, Lcom/baidu/trace/av;->b:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v0

    :cond_0
    :try_start_2
    monitor-exit v1

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/trace/av;->b:Ljava/util/Set;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget-object v2, Lcom/baidu/trace/av;->b:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :try_start_5
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/baidu/trace/av$1;->a:[I

    sget-object v4, Lcom/baidu/trace/av;->e:Lcom/baidu/trace/av$a;

    invoke-virtual {v4}, Lcom/baidu/trace/av$a;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v0, :cond_6

    const/4 v0, 0x2

    if-eq v3, v0, :cond_5

    const/4 v0, 0x3

    if-eq v3, v0, :cond_4

    const/4 v0, 0x4

    if-eq v3, v0, :cond_2

    const/4 v0, 0x5

    if-eq v3, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/baidu/trace/av;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/baidu/trace/av$a;->e:Lcom/baidu/trace/av$a;

    invoke-direct {p0, v1, v0}, Lcom/baidu/trace/av;->a(Ljava/lang/String;Lcom/baidu/trace/av$a;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/baidu/trace/av;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/baidu/trace/av;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    :goto_0
    move v2, p1

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/baidu/trace/av;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/baidu/trace/av;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/baidu/trace/av$a;->c:Lcom/baidu/trace/av$a;

    invoke-direct {p0, v1, v0}, Lcom/baidu/trace/av;->a(Ljava/lang/String;Lcom/baidu/trace/av$a;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/baidu/trace/av;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    :goto_1
    monitor-exit p0

    return v2

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method
