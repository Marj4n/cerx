.class final Lcom/baidu/trace/c/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/trace/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Lcom/baidu/trace/c/a$c;

.field protected e:Ljava/lang/String;

.field protected f:Lcom/baidu/trace/model/BaseRequest;

.field protected g:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/baidu/trace/model/ProtocolType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/baidu/trace/c/a$d;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    const-string v0, ""

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/baidu/trace/model/ProtocolType;->HTTPS:Lcom/baidu/trace/model/ProtocolType;

    if-ne v1, p1, :cond_1

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    :goto_0
    invoke-direct {p0, p1}, Lcom/baidu/trace/c/a$d;->a(Ljava/net/HttpURLConnection;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/baidu/trace/c/a$d;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    iget-object v2, p0, Lcom/baidu/trace/c/a$d;->d:Lcom/baidu/trace/c/a$c;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/baidu/trace/c/a$d;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    iget-object v2, p0, Lcom/baidu/trace/c/a$d;->d:Lcom/baidu/trace/c/a$c;

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, v1

    :catch_0
    :cond_1
    return-object v0
.end method

.method static synthetic a(ILcom/baidu/trace/model/BaseRequest;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 15

    move v0, p0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v7, p5

    check-cast v7, Lcom/baidu/trace/api/analysis/OnAnalysisListener;

    move-object/from16 v2, p1

    move/from16 v3, p4

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/analysis/OnAnalysisListener;)V

    :goto_0
    return-void

    :cond_1
    const/4 v10, 0x0

    move-object/from16 v13, p5

    check-cast v13, Lcom/baidu/trace/api/bos/OnBosListener;

    invoke-static {}, Lcom/baidu/trace/c/a;->c()Lcom/baidu/trace/c/a$a;

    move-result-object v14

    move-object/from16 v8, p1

    move/from16 v9, p4

    move/from16 v11, p2

    move-object/from16 v12, p3

    invoke-static/range {v8 .. v14}, Lcom/baidu/trace/h;->a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/bos/OnBosListener;Landroid/os/Handler;)V

    return-void

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v5, p5

    check-cast v5, Lcom/baidu/trace/api/track/OnTrackListener;

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/track/OnTrackListener;)V

    return-void

    :cond_3
    const/4 v8, 0x0

    move-object/from16 v11, p5

    check-cast v11, Lcom/baidu/trace/api/entity/OnEntityListener;

    move-object/from16 v6, p1

    move/from16 v7, p4

    move/from16 v9, p2

    move-object/from16 v10, p3

    invoke-static/range {v6 .. v11}, Lcom/baidu/trace/aa;->a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/entity/OnEntityListener;)V

    return-void

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v5, p5

    check-cast v5, Lcom/baidu/trace/api/fence/OnFenceListener;

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-void
.end method

.method static synthetic a(ILcom/baidu/trace/model/BaseRequest;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 15

    move v0, p0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {p2 .. p2}, Lcom/baidu/trace/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p4

    check-cast v7, Lcom/baidu/trace/api/analysis/OnAnalysisListener;

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/analysis/OnAnalysisListener;)V

    :goto_0
    return-void

    :cond_1
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {p2 .. p2}, Lcom/baidu/trace/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, p4

    check-cast v13, Lcom/baidu/trace/api/bos/OnBosListener;

    const/4 v14, 0x0

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-static/range {v8 .. v14}, Lcom/baidu/trace/h;->a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/bos/OnBosListener;Landroid/os/Handler;)V

    return-void

    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {p2 .. p2}, Lcom/baidu/trace/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p4

    check-cast v5, Lcom/baidu/trace/api/track/OnTrackListener;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static/range {v0 .. v5}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/track/OnTrackListener;)V

    return-void

    :cond_3
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {p2 .. p2}, Lcom/baidu/trace/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p4

    check-cast v11, Lcom/baidu/trace/api/entity/OnEntityListener;

    move-object/from16 v6, p1

    move/from16 v7, p3

    invoke-static/range {v6 .. v11}, Lcom/baidu/trace/aa;->a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/entity/OnEntityListener;)V

    return-void

    :cond_4
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "UTF-8"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p4

    check-cast v5, Lcom/baidu/trace/api/fence/OnFenceListener;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static/range {v0 .. v5}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v8, 0x0

    const/16 v9, 0x36b0

    move-object/from16 v11, p4

    check-cast v11, Lcom/baidu/trace/api/fence/OnFenceListener;

    const-string v10, "\u54cd\u5e94\u89e3\u6790\u5931\u8d25"

    move-object/from16 v6, p1

    move/from16 v7, p3

    invoke-static/range {v6 .. v11}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/trace/c/a$d;->d:Lcom/baidu/trace/c/a$c;

    invoke-virtual {v1}, Lcom/baidu/trace/c/a$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x2710

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x3a98

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method private b(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "UTF-8"

    const/16 v4, 0xc8

    const-string v5, "application/x-www-form-urlencoded;charset=UTF-8"

    const-string v6, "Content-Type"

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    :try_start_1
    move-object v2, p1

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/baidu/trace/c/a;->d()Lcom/baidu/trace/c/a$b;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    sget-object v2, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    iget-object v8, p0, Lcom/baidu/trace/c/a$d;->d:Lcom/baidu/trace/c/a$c;

    if-ne v2, v8, :cond_0

    invoke-virtual {p1, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v2, p0, Lcom/baidu/trace/c/a$d;->e:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    iget-object v3, p0, Lcom/baidu/trace/c/a$d;->d:Lcom/baidu/trace/c/a$c;

    if-ne v2, v3, :cond_3

    invoke-virtual {p1, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    if-ne v4, v2, :cond_3

    goto :goto_0

    :cond_1
    instance-of v2, p1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/baidu/trace/c/a$c;->a:Lcom/baidu/trace/c/a$c;

    iget-object v8, p0, Lcom/baidu/trace/c/a$d;->d:Lcom/baidu/trace/c/a$c;

    if-ne v2, v8, :cond_2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    if-ne v4, v2, :cond_3

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/baidu/trace/c/a$c;->b:Lcom/baidu/trace/c/a$c;

    iget-object v4, p0, Lcom/baidu/trace/c/a$d;->d:Lcom/baidu/trace/c/a$c;

    if-ne v2, v4, :cond_3

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v2, p0, Lcom/baidu/trace/c/a$d;->e:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/baidu/trace/c/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    :catch_0
    nop

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object v0

    :catch_1
    nop

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_6

    :goto_3
    if-eqz v1, :cond_6

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    throw p1

    :catch_2
    nop

    :cond_6
    :goto_4
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-object v0

    :catch_3
    :try_start_4
    const-string v2, "BaiduTraceSDK"

    const-string v3, "current network is unavailable or unstable"

    invoke-static {v2, v3}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_8

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    throw p1

    :catch_4
    nop

    :cond_8
    :goto_5
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    return-object v0

    :goto_6
    if-eqz v1, :cond_a

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception p1

    throw p1

    :catch_5
    nop

    :cond_a
    :goto_7
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/baidu/trace/c/a$d;->f:Lcom/baidu/trace/model/BaseRequest;

    invoke-virtual {v0}, Lcom/baidu/trace/model/BaseRequest;->isCanceled()Z

    move-result v0

    const-string v1, "request has been canceled!"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/baidu/trace/a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/trace/c/a;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/trace/c/a;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/trace/c/a;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/trace/b/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/trace/c/a;->c()Lcom/baidu/trace/c/a$a;

    move-result-object v0

    new-instance v1, Lcom/baidu/trace/c/b;

    invoke-direct {v1, p0}, Lcom/baidu/trace/c/b;-><init>(Lcom/baidu/trace/c/a$d;)V

    invoke-virtual {v0, v1}, Lcom/baidu/trace/c/a$a;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x3

    :try_start_0
    sget-object v3, Lcom/baidu/trace/model/ProtocolType;->HTTPS:Lcom/baidu/trace/model/ProtocolType;

    sget-object v4, Lcom/baidu/trace/c/a;->b:Lcom/baidu/trace/model/ProtocolType;

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/baidu/trace/c/a$d;->a:I

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/baidu/trace/model/ProtocolType;->HTTP:Lcom/baidu/trace/model/ProtocolType;

    sget-object v4, Lcom/baidu/trace/c/a;->b:Lcom/baidu/trace/model/ProtocolType;

    if-ne v3, v4, :cond_4

    sget-object v3, Lcom/baidu/trace/model/ProtocolType;->HTTP:Lcom/baidu/trace/model/ProtocolType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://api.map.baidu.com/sdkproxy/v2/lbs_tracesdk/trace/v3/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/baidu/trace/c/a$d;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/baidu/trace/c/a$d;->a(Lcom/baidu/trace/model/ProtocolType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v3, Lcom/baidu/trace/model/ProtocolType;->HTTPS:Lcom/baidu/trace/model/ProtocolType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://api.map.baidu.com/sdkproxy/v2/lbs_tracesdk/trace/v3/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/baidu/trace/c/a$d;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "http request failed"

    invoke-static {v3}, Lcom/baidu/trace/a;->a(Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/baidu/trace/c/a$d;->f:Lcom/baidu/trace/model/BaseRequest;

    invoke-virtual {v3}, Lcom/baidu/trace/model/BaseRequest;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Lcom/baidu/trace/a;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/baidu/trace/c/a$d;->a:I

    if-ne v2, v1, :cond_6

    iget v1, p0, Lcom/baidu/trace/c/a$d;->b:I

    if-eq v2, v1, :cond_6

    iget-object v3, p0, Lcom/baidu/trace/c/a$d;->f:Lcom/baidu/trace/model/BaseRequest;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/baidu/trace/c/a$d;->b:I

    iget-object v1, p0, Lcom/baidu/trace/c/a$d;->g:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lcom/baidu/trace/api/bos/OnBosListener;

    invoke-static {}, Lcom/baidu/trace/c/a;->c()Lcom/baidu/trace/c/a$a;

    move-result-object v9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v0}, Lcom/baidu/trace/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v3 .. v9}, Lcom/baidu/trace/h;->a(Lcom/baidu/trace/model/BaseRequest;IZILjava/lang/String;Lcom/baidu/trace/api/bos/OnBosListener;Landroid/os/Handler;)V

    return-void

    :cond_6
    invoke-static {}, Lcom/baidu/trace/c/a;->c()Lcom/baidu/trace/c/a$a;

    move-result-object v1

    new-instance v2, Lcom/baidu/trace/c/c;

    invoke-direct {v2, p0, v0}, Lcom/baidu/trace/c/c;-><init>(Lcom/baidu/trace/c/a$d;Ljava/lang/StringBuffer;)V

    invoke-virtual {v1, v2}, Lcom/baidu/trace/c/a$a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TaskRunnable [tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/c/a$d;->f:Lcom/baidu/trace/model/BaseRequest;

    invoke-virtual {v1}, Lcom/baidu/trace/model/BaseRequest;->getTag()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/c/a$d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operateType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/trace/c/a$d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/c/a$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/c/a$d;->d:Lcom/baidu/trace/c/a$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/trace/c/a$d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
