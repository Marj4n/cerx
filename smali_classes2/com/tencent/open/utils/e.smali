.class public Lcom/tencent/open/utils/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/open/utils/e;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lorg/json/JSONObject;

.field private f:J

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/utils/e;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/tencent/open/utils/e;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/tencent/open/utils/e;->c:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/tencent/open/utils/e;->d:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/tencent/open/utils/e;->e:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/tencent/open/utils/e;->f:J

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/tencent/open/utils/e;->g:I

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/tencent/open/utils/e;->h:Z

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/open/utils/e;->c:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/tencent/open/utils/e;->d:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/tencent/open/utils/e;->a()V

    .line 80
    invoke-direct {p0}, Lcom/tencent/open/utils/e;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/open/utils/e;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/tencent/open/utils/e;->g:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/open/utils/e;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tencent/open/utils/e;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/e;
    .locals 3

    .line 54
    sget-object v0, Lcom/tencent/open/utils/e;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    const-string v1, "openSDK_LOG.OpenConfig"

    const-string v2, "getInstance begin"

    .line 55
    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 57
    sput-object p1, Lcom/tencent/open/utils/e;->b:Ljava/lang/String;

    :cond_0
    if-nez p1, :cond_2

    .line 60
    sget-object p1, Lcom/tencent/open/utils/e;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 61
    sget-object p1, Lcom/tencent/open/utils/e;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "0"

    .line 66
    :cond_2
    :goto_0
    sget-object v1, Lcom/tencent/open/utils/e;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/open/utils/e;

    if-nez v1, :cond_3

    .line 68
    new-instance v1, Lcom/tencent/open/utils/e;

    invoke-direct {v1, p0, p1}, Lcom/tencent/open/utils/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    sget-object p0, Lcom/tencent/open/utils/e;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p0, "openSDK_LOG.OpenConfig"

    const-string p1, "getInstance end"

    .line 71
    invoke-static {p0, p1}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a()V
    .locals 2

    const-string v0, "com.tencent.open.config.json"

    .line 88
    invoke-direct {p0, v0}, Lcom/tencent/open/utils/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/open/utils/e;->e:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/utils/e;->e:Lorg/json/JSONObject;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/open/utils/e;Lorg/json/JSONObject;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/tencent/open/utils/e;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/utils/e;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/open/utils/e;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/utils/e;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 162
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 163
    invoke-virtual {v0, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 165
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "cgi back, do update"

    .line 220
    invoke-direct {p0, v0}, Lcom/tencent/open/utils/e;->d(Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/tencent/open/utils/e;->e:Lorg/json/JSONObject;

    .line 222
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.tencent.open.config.json"

    invoke-direct {p0, v0, p1}, Lcom/tencent/open/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/open/utils/e;->f:J

    return-void
.end method

.method private b()V
    .locals 3

    .line 175
    iget v0, p0, Lcom/tencent/open/utils/e;->g:I

    if-eqz v0, :cond_0

    const-string v0, "update thread is running, return"

    .line 177
    invoke-direct {p0, v0}, Lcom/tencent/open/utils/e;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 180
    iput v0, p0, Lcom/tencent/open/utils/e;->g:I

    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/tencent/open/utils/e;->d:Ljava/lang/String;

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/tencent/open/utils/e;->d:Ljava/lang/String;

    const-string v2, "appid_for_getting_config"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "status_os"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "status_machine"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v2, "status_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdkv"

    const-string v2, "3.1.0.lite"

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdkp"

    const-string v2, "a"

    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v1, Lcom/tencent/open/utils/e$1;

    invoke-direct {v1, p0, v0}, Lcom/tencent/open/utils/e$1;-><init>(Lcom/tencent/open/utils/e;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/tencent/open/utils/e$1;->start()V

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/tencent/open/utils/e;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/open/utils/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 115
    :goto_0
    iget-object v2, p0, Lcom/tencent/open/utils/e;->c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 118
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/open/utils/e;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 124
    :goto_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 125
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 131
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 137
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v2

    .line 133
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 137
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    return-object v0

    .line 136
    :goto_4
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 137
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 140
    :goto_5
    throw v0

    :catch_4
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method private c()V
    .locals 6

    .line 230
    iget-object v0, p0, Lcom/tencent/open/utils/e;->e:Lorg/json/JSONObject;

    const-string v1, "Common_frequency"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    const v1, 0x36ee80

    mul-int v0, v0, v1

    int-to-long v0, v0

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 237
    iget-wide v4, p0, Lcom/tencent/open/utils/e;->f:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    .line 239
    invoke-direct {p0}, Lcom/tencent/open/utils/e;->b()V

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/tencent/open/utils/e;->h:Z

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; appid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/open/utils/e;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "openSDK_LOG.OpenConfig"

    invoke-static {v0, p1}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/open/utils/e;->d(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/tencent/open/utils/e;->c()V

    .line 252
    iget-object v0, p0, Lcom/tencent/open/utils/e;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/open/utils/e;->d(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/tencent/open/utils/e;->c()V

    .line 277
    iget-object v0, p0, Lcom/tencent/open/utils/e;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 280
    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 282
    :cond_1
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 283
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method
