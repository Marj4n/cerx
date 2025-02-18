.class public Lcom/jieli/lib/dv/control/utils/VersionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSdkVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "InputStream closed"

    const-string v1, "==="

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/jieli/lib/dv/control/R$raw;->version:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 15
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 17
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    invoke-static {v1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v3

    .line 22
    :cond_0
    :try_start_2
    invoke-static {v1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    .line 19
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    :try_start_4
    invoke-static {v1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const-string p0, ""

    return-object p0

    .line 22
    :goto_2
    :try_start_5
    invoke-static {v1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 26
    :goto_3
    throw v2
.end method
