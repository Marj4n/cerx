.class public Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;
.super Ljava/lang/Object;


# static fields
.field public static final CODE_AUTHENTICATE_SUCC:I = 0x0

.field public static final CODE_AUTHENTICATING:I = 0x25a

.field public static final CODE_INNER_ERROR:I = -0x1

.field public static final CODE_KEY_NOT_EXIST:I = 0x65

.field public static final CODE_NETWORK_FAILED:I = -0xb

.field public static final CODE_NETWORK_INVALID:I = -0xa

.field public static final CODE_UNAUTHENTICATE:I = 0x259

.field public static final VERSION:Ljava/lang/String; = "1.0.21.20161104"

.field private static a:Landroid/content/Context;

.field private static d:Lcom/baidu/lbsapi/auth/tracesdk/l;

.field private static e:I

.field private static f:Ljava/util/Hashtable;

.field private static g:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;


# instance fields
.field private b:Lcom/baidu/lbsapi/auth/tracesdk/c;

.field private c:Lcom/baidu/lbsapi/auth/tracesdk/e;

.field private final h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->f:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->b:Lcom/baidu/lbsapi/auth/tracesdk/c;

    iput-object v0, p0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->c:Lcom/baidu/lbsapi/auth/tracesdk/e;

    new-instance v1, Lcom/baidu/lbsapi/auth/tracesdk/h;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/baidu/lbsapi/auth/tracesdk/h;-><init>(Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->h:Landroid/os/Handler;

    sput-object p1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    sget-object p1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->d:Lcom/baidu/lbsapi/auth/tracesdk/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/lbsapi/auth/tracesdk/l;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    sput-object v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->d:Lcom/baidu/lbsapi/auth/tracesdk/l;

    :cond_0
    const-string p1, "BaiduApiAuth SDK Version:1.0.21.20161104"

    invoke-static {p1}, Lcom/baidu/lbsapi/auth/tracesdk/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 12

    const-string v0, "status"

    const-string v1, "current"

    const/4 v2, -0x1

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x259

    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v4

    long-to-double v8, v8

    const-wide v10, 0x414b774000000000L    # 3600000.0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4038000000000000L    # 24.0

    cmpl-double p1, v8, v10

    if-ltz p1, :cond_1

    :goto_0
    const/16 v2, 0x259

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-direct {p1, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x25a

    if-ne v2, p1, :cond_3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v5, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v3, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    cmpl-double p1, v3, v5

    if-lez p1, :cond_3

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    move v0, v2

    :goto_2
    return v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/proc/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/cmdline"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    nop

    goto :goto_3

    :catch_1
    nop

    goto :goto_5

    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_1

    :catch_2
    move-object v2, v0

    goto :goto_3

    :catch_3
    move-object v2, v0

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    :catch_4
    move-object v1, v0

    goto :goto_2

    :catch_5
    move-object v1, v0

    goto :goto_4

    :catchall_3
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    move-object v0, p1

    move-object p1, v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    :cond_2
    throw v0

    :catch_6
    move-object p1, v0

    move-object v1, p1

    :goto_2
    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_4
    if-eqz p1, :cond_7

    goto :goto_0

    :catch_7
    move-object p1, v0

    move-object v1, p1

    :goto_4
    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_6
    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    :goto_6
    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "\u65e0\u6cd5\u5728AndroidManifest.xml\u4e2d\u83b7\u53d6com.baidu.android.lbs.API_KEY\u7684\u503c"

    const-string v1, ""

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v4, 0x80

    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    sget-object p1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->f:Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManagerListener;

    if-eqz p1, :cond_3

    const-string v2, "AndroidManifest.xml\u7684application\u4e2d\u6ca1\u6709meta-data\u6807\u7b7e"

    invoke-static {v3, v2}, Lcom/baidu/lbsapi/auth/tracesdk/ErrorMessage;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManagerListener;->onAuthResult(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.baidu.lbsapi.API_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManagerListener;

    if-eqz v1, :cond_2

    invoke-static {v3, v0}, Lcom/baidu/lbsapi/auth/tracesdk/ErrorMessage;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManagerListener;->onAuthResult(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    move-object v1, p1

    goto :goto_1

    :catch_0
    move-object v1, p1

    goto :goto_0

    :catch_1
    nop

    :goto_0
    sget-object p1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->f:Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManagerListener;

    if-eqz p1, :cond_3

    invoke-static {v3, v0}, Lcom/baidu/lbsapi/auth/tracesdk/ErrorMessage;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManagerListener;->onAuthResult(ILjava/lang/String;)V

    :cond_3
    :goto_1
    return-object v1
.end method

.method static synthetic a()Ljava/util/Hashtable;
    .locals 1

    sget-object v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->f:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;ZLjava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a(ZLjava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;ZLjava/lang/String;Ljava/util/Hashtable;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a(ZLjava/lang/String;Ljava/util/Hashtable;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->e()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->h:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "status"

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    const-string p1, "current"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "current"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->c(Ljava/lang/String;)V

    const-string p1, "current"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "current"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    const-string p1, "status"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "listenerKey"

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->h:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "listenerKey"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->h:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    sget-object p1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->d:Lcom/baidu/lbsapi/auth/tracesdk/l;

    invoke-virtual {p1}, Lcom/baidu/lbsapi/auth/tracesdk/l;->c()V

    sget p1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->e:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->e:I

    sget-boolean p1, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "httpRequest called mAuthCounter-- = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p2, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    :cond_4
    sget p1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->e:I

    if-nez p1, :cond_5

    sget-object p1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->d:Lcom/baidu/lbsapi/auth/tracesdk/l;

    if-eqz p1, :cond_5

    sget-object p1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->d:Lcom/baidu/lbsapi/auth/tracesdk/l;

    invoke-virtual {p1}, Lcom/baidu/lbsapi/auth/tracesdk/l;->a()V

    const/4 p1, 0x0

    sput-object p1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->d:Lcom/baidu/lbsapi/auth/tracesdk/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(ZLjava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p4}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "url"

    const-string v4, "https://api.map.baidu.com/sdkcs/verify"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "url:https://api.map.baidu.com/sdkcs/verify"

    invoke-static {v3}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    const-string v3, "output"

    const-string v4, "json"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ak"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ak:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/tracesdk/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mcode"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "from"

    const-string v3, "lbs_yunsdk"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :try_start_0
    sget-object p3, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/baidu/a/a/a/a/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object p3, v1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cuid:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "cuid"

    if-nez v0, :cond_3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object p3, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "pcn"

    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "version"

    const-string v0, "1.0.21.20161104"

    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    sget-object p3, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/baidu/lbsapi/auth/tracesdk/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-object p3, v1

    :goto_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "macaddr"

    if-nez v0, :cond_4

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    :try_start_2
    invoke-static {}, Lcom/baidu/lbsapi/auth/tracesdk/b;->a()Ljava/lang/String;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-object p3, v1

    :goto_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "language"

    if-nez v0, :cond_5

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_5
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    if-eqz p1, :cond_7

    if-eqz p1, :cond_6

    const-string p1, "1"

    goto :goto_7

    :cond_6
    const-string p1, "0"

    :goto_7
    const-string p3, "force"

    invoke-virtual {v2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string p1, "from_service"

    if-nez p2, :cond_8

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_8
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    new-instance p1, Lcom/baidu/lbsapi/auth/tracesdk/c;

    sget-object p2, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/baidu/lbsapi/auth/tracesdk/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->b:Lcom/baidu/lbsapi/auth/tracesdk/c;

    new-instance p2, Lcom/baidu/lbsapi/auth/tracesdk/j;

    invoke-direct {p2, p0, p4}, Lcom/baidu/lbsapi/auth/tracesdk/j;-><init>(Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;Ljava/lang/String;)V

    invoke-virtual {p1, v2, p2}, Lcom/baidu/lbsapi/auth/tracesdk/c;->a(Ljava/util/HashMap;Lcom/baidu/lbsapi/auth/tracesdk/c$a;)V

    :cond_9
    :goto_9
    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/util/Hashtable;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p5}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "url"

    const-string v4, "https://api.map.baidu.com/sdkcs/verify"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "output"

    const-string v4, "json"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ak"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "from"

    const-string v3, "lbs_yunsdk"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :try_start_0
    sget-object p3, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/baidu/a/a/a/a/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object p3, v1

    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "cuid"

    if-nez v0, :cond_3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object p3, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "pcn"

    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "version"

    const-string v0, "1.0.21.20161104"

    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    sget-object p3, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/baidu/lbsapi/auth/tracesdk/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-object p3, v1

    :goto_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "macaddr"

    if-nez v0, :cond_4

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    :try_start_2
    invoke-static {}, Lcom/baidu/lbsapi/auth/tracesdk/b;->a()Ljava/lang/String;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-object p3, v1

    :goto_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "language"

    if-nez v0, :cond_5

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_5
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    if-eqz p1, :cond_7

    if-eqz p1, :cond_6

    const-string p1, "1"

    goto :goto_7

    :cond_6
    const-string p1, "0"

    :goto_7
    const-string p3, "force"

    invoke-virtual {v2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string p1, "from_service"

    if-nez p2, :cond_8

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_8
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    new-instance p1, Lcom/baidu/lbsapi/auth/tracesdk/e;

    sget-object p2, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/baidu/lbsapi/auth/tracesdk/e;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->c:Lcom/baidu/lbsapi/auth/tracesdk/e;

    new-instance p2, Lcom/baidu/lbsapi/auth/tracesdk/k;

    invoke-direct {p2, p0, p5}, Lcom/baidu/lbsapi/auth/tracesdk/k;-><init>(Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;Ljava/lang/String;)V

    invoke-virtual {p1, v2, p4, p2}, Lcom/baidu/lbsapi/auth/tracesdk/e;->a(Ljava/util/HashMap;[Ljava/lang/String;Lcom/baidu/lbsapi/auth/tracesdk/e$a;)V

    :cond_9
    :goto_9
    return-void
.end method

.method static synthetic a(Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "ak"

    sget-object v1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, ""

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c()Lcom/baidu/lbsapi/auth/tracesdk/l;
    .locals 1

    sget-object v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->d:Lcom/baidu/lbsapi/auth/tracesdk/l;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "authStatus_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private d()V
    .locals 3

    const-class v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->d:Lcom/baidu/lbsapi/auth/tracesdk/l;

    if-nez v1, :cond_1

    new-instance v1, Lcom/baidu/lbsapi/auth/tracesdk/l;

    const-string v2, "auth"

    invoke-direct {v1, v2}, Lcom/baidu/lbsapi/auth/tracesdk/l;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->d:Lcom/baidu/lbsapi/auth/tracesdk/l;

    invoke-virtual {v1}, Lcom/baidu/lbsapi/auth/tracesdk/l;->start()V

    :goto_0
    sget-object v1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->d:Lcom/baidu/lbsapi/auth/tracesdk/l;

    iget-object v1, v1, Lcom/baidu/lbsapi/auth/tracesdk/l;->a:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    sget-boolean v1, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "wait for create auth thread."

    invoke-static {v1}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private e()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "authStatus_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status"

    const-string v2, "{\"status\":601}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;
    .locals 2

    sget-object v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->g:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->g:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    invoke-direct {v1, p0}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->g:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    if-nez p0, :cond_2

    sget-boolean p0, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz p0, :cond_3

    const-string p0, "input context is null"

    invoke-static {p0}, Lcom/baidu/lbsapi/auth/tracesdk/a;->c(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "here"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :cond_2
    sput-object p0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    :cond_3
    :goto_0
    sget-object p0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->g:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    return-object p0
.end method


# virtual methods
.method public authenticate(ZLjava/lang/String;Ljava/util/Hashtable;Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManagerListener;)I
    .locals 11

    const-class v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz p4, :cond_0

    sget-object v1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v8, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p4, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    invoke-direct {p0, p4, v8}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_8

    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto/16 :goto_2

    :cond_1
    sget p4, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->e:I

    add-int/lit8 p4, p4, 0x1

    sput p4, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->e:I

    sget-boolean p4, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz p4, :cond_2

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, " mAuthCounter  ++ = "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->e:I

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->e()Ljava/lang/String;

    move-result-object p4

    sget-boolean v1, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAuthMessage from cache:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p4}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a(Ljava/lang/String;)I

    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x259

    if-ne p4, v1, :cond_4

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "status"

    const/16 v3, 0x25a

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->d()V

    sget-boolean v1, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mThreadLooper.mHandler = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->d:Lcom/baidu/lbsapi/auth/tracesdk/l;

    iget-object v2, v2, Lcom/baidu/lbsapi/auth/tracesdk/l;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/lbsapi/auth/tracesdk/a;->a(Ljava/lang/String;)V

    :cond_5
    sget-object v1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->d:Lcom/baidu/lbsapi/auth/tracesdk/l;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->d:Lcom/baidu/lbsapi/auth/tracesdk/l;

    iget-object v1, v1, Lcom/baidu/lbsapi/auth/tracesdk/l;->a:Landroid/os/Handler;

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->d:Lcom/baidu/lbsapi/auth/tracesdk/l;

    iget-object v1, v1, Lcom/baidu/lbsapi/auth/tracesdk/l;->a:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/lbsapi/auth/tracesdk/i;

    move-object v4, v2

    move-object v5, p0

    move v6, p4

    move v7, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/baidu/lbsapi/auth/tracesdk/i;-><init>(Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return p4

    :cond_7
    :goto_1
    const/4 p1, -0x1

    monitor-exit v0

    return p1

    :cond_8
    :goto_2
    const/16 p1, 0x65

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public getCUID()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/baidu/a/a/a/a/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/baidu/a/a/a/a/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/baidu/a/a/a/a/b/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/baidu/lbsapi/auth/tracesdk/a;->a:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->getPublicKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v1
.end method

.method public getMCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/baidu/lbsapi/auth/tracesdk/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.baidu.lbsapi.API_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
