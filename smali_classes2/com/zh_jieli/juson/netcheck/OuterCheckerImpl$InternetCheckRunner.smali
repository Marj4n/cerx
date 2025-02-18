.class Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;
.super Ljava/lang/Object;
.source "OuterCheckerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternetCheckRunner"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field mResultCallback:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;

.field private mTimeout:J

.field final synthetic this$0:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;


# direct methods
.method public constructor <init>(Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;Ljava/util/List;JLcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;J",
            "Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;",
            ")V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->this$0:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mList:Ljava/util/List;

    .line 97
    iput-wide p3, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mTimeout:J

    .line 98
    iput-object p5, p0, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mResultCallback:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, " ms"

    const-string v3, "time"

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 114
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 115
    :try_start_1
    iget-object v0, v1, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/nio/channels/SocketChannel;

    const/4 v9, 0x0

    .line 116
    :goto_0
    iget-object v10, v1, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 118
    iget-object v10, v1, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v11, "host"

    .line 120
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "port"

    .line 121
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v11, :cond_0

    goto :goto_1

    .line 123
    :cond_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v12

    .line 124
    invoke-virtual {v12, v7}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 125
    new-instance v13, Ljava/net/InetSocketAddress;

    invoke-direct {v13, v11, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v12, v13}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    const/16 v10, 0x8

    .line 126
    invoke-virtual {v12, v8, v10}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 127
    aput-object v12, v6, v9

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v11, 0x0

    .line 132
    :cond_2
    :try_start_2
    iget-wide v12, v1, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mTimeout:J

    invoke-virtual {v8, v12, v13}, Ljava/nio/channels/Selector;->select(J)I

    move-result v12

    if-lez v12, :cond_5

    .line 134
    invoke-virtual {v8}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v12

    .line 135
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 136
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 137
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/nio/channels/SelectionKey;

    .line 138
    invoke-virtual {v13}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    .line 142
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v11, :cond_5

    goto :goto_4

    .line 146
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 147
    iget-wide v14, v1, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mTimeout:J

    sub-long/2addr v12, v9

    sub-long/2addr v14, v12

    iput-wide v14, v1, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mTimeout:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v12, 0x0

    cmp-long v16, v14, v12

    if-gtz v16, :cond_2

    .line 154
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_6

    .line 157
    :try_start_3
    invoke-virtual {v8}, Ljava/nio/channels/Selector;->close()V

    :cond_6
    :goto_5
    if-ge v7, v0, :cond_8

    .line 159
    aget-object v2, v6, v7

    if-eqz v2, :cond_7

    .line 161
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 164
    :cond_8
    iget-object v0, v1, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mResultCallback:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;

    invoke-interface {v0, v11}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;->onResult(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    move-object v9, v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v9, v0

    const/4 v11, 0x0

    :goto_6
    move-object/from16 v17, v8

    move-object v8, v6

    move-object/from16 v6, v17

    goto :goto_d

    :catch_1
    move-exception v0

    const/4 v11, 0x0

    :goto_7
    move-object/from16 v17, v8

    move-object v8, v6

    move-object/from16 v6, v17

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v9, v0

    move-object v8, v6

    const/4 v11, 0x0

    goto :goto_d

    :catch_2
    move-exception v0

    move-object v8, v6

    const/4 v11, 0x0

    .line 152
    :goto_8
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_9

    .line 157
    :try_start_5
    invoke-virtual {v6}, Ljava/nio/channels/Selector;->close()V

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_b

    :cond_9
    :goto_9
    if-eqz v8, :cond_b

    .line 159
    array-length v0, v8

    :goto_a
    if-ge v7, v0, :cond_b

    aget-object v2, v8, v7

    if-eqz v2, :cond_a

    .line 161
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 164
    :cond_b
    iget-object v0, v1, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mResultCallback:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;

    invoke-interface {v0, v11}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;->onResult(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_c

    .line 165
    :goto_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_c
    return-void

    :catchall_3
    move-exception v0

    move-object v9, v0

    .line 154
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_c

    .line 157
    :try_start_6
    invoke-virtual {v6}, Ljava/nio/channels/Selector;->close()V

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_10

    :cond_c
    :goto_e
    if-eqz v8, :cond_e

    .line 159
    array-length v0, v8

    :goto_f
    if-ge v7, v0, :cond_e

    aget-object v2, v8, v7

    if-eqz v2, :cond_d

    .line 161
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 164
    :cond_e
    iget-object v0, v1, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$InternetCheckRunner;->mResultCallback:Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;

    invoke-interface {v0, v11}, Lcom/zh_jieli/juson/netcheck/OuterCheckerImpl$ResultCallback;->onResult(Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_11

    .line 165
    :goto_10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_11
    throw v9
.end method
