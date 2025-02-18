.class public final Lcom/baidu/trace/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/trace/c/a$a;,
        Lcom/baidu/trace/c/a$c;,
        Lcom/baidu/trace/c/a$b;,
        Lcom/baidu/trace/c/a$d;
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/ExecutorService;

.field public static b:Lcom/baidu/trace/model/ProtocolType;

.field private static final c:Ljava/util/regex/Pattern;

.field private static d:Lcom/baidu/trace/c/a$a;

.field private static e:Lcom/baidu/trace/c/a$b;

.field private static f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Z

.field private static h:I

.field private static i:I

.field private static j:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "[0-9A-Fa-f]{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/baidu/trace/c/a;->c:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/trace/c/a;->d:Lcom/baidu/trace/c/a$a;

    sput-object v0, Lcom/baidu/trace/c/a;->e:Lcom/baidu/trace/c/a$b;

    sput-object v0, Lcom/baidu/trace/c/a;->f:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/baidu/trace/c/a;->g:Z

    sput-object v0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/baidu/trace/model/ProtocolType;->HTTPS:Lcom/baidu/trace/model/ProtocolType;

    sput-object v0, Lcom/baidu/trace/c/a;->b:Lcom/baidu/trace/model/ProtocolType;

    const/4 v0, 0x5

    sput v0, Lcom/baidu/trace/c/a;->h:I

    const v0, 0x7fffffff

    sput v0, Lcom/baidu/trace/c/a;->i:I

    const-wide/16 v0, 0x3c

    sput-wide v0, Lcom/baidu/trace/c/a;->j:J

    return-void
.end method

.method static synthetic a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/baidu/trace/c/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_2

    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x75

    if-ne v4, v5, :cond_1

    add-int/lit8 v5, v1, -0x5

    if-gt v2, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v2, 0x5

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/baidu/trace/c/a;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v3, 0x10

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a()V
    .locals 3

    const-class v0, Lcom/baidu/trace/c/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/trace/c/a;->f:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/baidu/trace/c/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    sput-object v2, Lcom/baidu/trace/c/a;->f:Ljava/lang/ref/WeakReference;

    :cond_0
    sget-boolean v1, Lcom/baidu/trace/c/a;->g:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_2
    :try_start_2
    sput-object v2, Lcom/baidu/trace/c/a;->d:Lcom/baidu/trace/c/a$a;

    sput-object v2, Lcom/baidu/trace/c/a;->e:Lcom/baidu/trace/c/a$b;

    sput-object v2, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/baidu/trace/c/a;->g:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Lcom/baidu/trace/c/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/trace/c/a;->f:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/baidu/trace/c/a;->f:Ljava/lang/ref/WeakReference;

    :cond_0
    sget-boolean p0, Lcom/baidu/trace/c/a;->g:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    new-instance p0, Lcom/baidu/trace/c/a$a;

    invoke-direct {p0}, Lcom/baidu/trace/c/a$a;-><init>()V

    sput-object p0, Lcom/baidu/trace/c/a;->d:Lcom/baidu/trace/c/a$a;

    new-instance p0, Lcom/baidu/trace/c/a$b;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/baidu/trace/c/a$b;-><init>(B)V

    sput-object p0, Lcom/baidu/trace/c/a;->e:Lcom/baidu/trace/c/a$b;

    const-class p0, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    :goto_0
    sput-object p0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/baidu/trace/c/a;->h:I

    sget v3, Lcom/baidu/trace/c/a;->i:I

    sget-wide v4, Lcom/baidu/trace/c/a;->j:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    goto :goto_0

    :goto_1
    const/4 p0, 0x1

    sput-boolean p0, Lcom/baidu/trace/c/a;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Lcom/baidu/trace/model/BaseRequest;ILjava/lang/String;Lcom/baidu/trace/c/a$c;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/baidu/trace/c/a$d;

    invoke-direct {v0}, Lcom/baidu/trace/c/a$d;-><init>()V

    iput p1, v0, Lcom/baidu/trace/c/a$d;->a:I

    iput p4, v0, Lcom/baidu/trace/c/a$d;->b:I

    iput-object p2, v0, Lcom/baidu/trace/c/a$d;->c:Ljava/lang/String;

    iput-object p3, v0, Lcom/baidu/trace/c/a$d;->d:Lcom/baidu/trace/c/a$c;

    iput-object p5, v0, Lcom/baidu/trace/c/a$d;->e:Ljava/lang/String;

    iput-object p0, v0, Lcom/baidu/trace/c/a$d;->f:Lcom/baidu/trace/model/BaseRequest;

    iput-object p6, v0, Lcom/baidu/trace/c/a$d;->g:Ljava/lang/Object;

    sget-object p0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(IIJ)Z
    .locals 4

    const-class v0, Lcom/baidu/trace/c/a;

    monitor-enter v0

    if-ltz p0, :cond_2

    if-lez p1, :cond_2

    if-lt p1, p0, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gez v3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    sget-object v1, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2, p3, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    :cond_1
    sput p0, Lcom/baidu/trace/c/a;->h:I

    sput p1, Lcom/baidu/trace/c/a;->i:I

    sput-wide p2, Lcom/baidu/trace/c/a;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    :goto_2
    const/4 p0, 0x0

    goto :goto_1
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    throw p0

    :catch_0
    :goto_1
    throw p0

    :catch_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    throw p0

    :catch_2
    :goto_2
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/baidu/trace/c/a;->f:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic c()Lcom/baidu/trace/c/a$a;
    .locals 1

    sget-object v0, Lcom/baidu/trace/c/a;->d:Lcom/baidu/trace/c/a$a;

    return-object v0
.end method

.method static synthetic d()Lcom/baidu/trace/c/a$b;
    .locals 1

    sget-object v0, Lcom/baidu/trace/c/a;->e:Lcom/baidu/trace/c/a$b;

    return-object v0
.end method
