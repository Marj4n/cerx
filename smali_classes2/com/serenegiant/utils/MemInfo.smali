.class public Lcom/serenegiant/utils/MemInfo;
.super Ljava/lang/Object;
.source "MemInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "PROC_MEMINFO"

    const-string v1, "DEBUG_MEMORYINFO"

    const-string v2, "ACTIVITYMANAGER_MEMORYINFO"

    .line 38
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 41
    :try_start_0
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v5, "activity"

    .line 42
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 43
    invoke-virtual {p0, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 44
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "availMem"

    .line 45
    iget-wide v6, v4, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {p0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "totalMem"

    .line 46
    iget-wide v6, v4, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {p0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "threshold"

    .line 47
    iget-wide v6, v4, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {p0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "lowMemory"

    .line 48
    iget-boolean v4, v4, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {p0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 49
    invoke-virtual {v3, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 51
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 55
    :goto_0
    :try_start_2
    new-instance p0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {p0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 56
    invoke-static {p0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 57
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "TotalPss"

    .line 58
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TotalPrivateDirty"

    .line 59
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TotalSharedDirty"

    .line 60
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4_4()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "TotalPrivateClean"

    .line 62
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TotalSharedClean"

    .line 63
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "TotalSwappablePss"

    .line 64
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result p0

    invoke-virtual {v2, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    :cond_0
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 68
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 72
    :goto_1
    :try_start_4
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 75
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/meminfo"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x200

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 77
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 79
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v5, v1, 0x1

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v1, v5

    :cond_3
    if-nez v4, :cond_1

    .line 82
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 83
    invoke-virtual {v3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 85
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EXCEPTION"

    invoke-virtual {v3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    return-object v3
.end method
