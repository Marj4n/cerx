.class Lcom/jieli/stream/dv/running2/task/MediaTask$1;
.super Ljava/lang/Object;
.source "MediaTask.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/task/MediaTask;->tryToDownload(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$saveUrl:Ljava/lang/String;

.field final synthetic val$total:J


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/task/MediaTask;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$filename:Ljava/lang/String;

    iput-wide p4, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$total:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string p1, "MediaTask"

    const-string p2, "onFailure ~~~~~11111111111111111"

    .line 169
    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "download file fail, delete file success!"

    .line 173
    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0x53

    .line 178
    iput p2, p1, Landroid/os/Message;->what:I

    const/4 p2, 0x0

    .line 179
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 180
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$filename:Ljava/lang/String;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$102(Lcom/jieli/stream/dv/running2/task/MediaTask;Lokhttp3/Call;)Lokhttp3/Call;

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "download file fail, delete file success!"

    const-string v3, "MediaTask"

    const-string v0, "onResponse ~~~~~22222222222222"

    .line 188
    invoke-static {v3, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v4, 0x1000

    new-array v4, v4, [B

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    .line 199
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 200
    :try_start_1
    new-instance v13, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    iget-object v14, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, -0x1

    const/4 v14, -0x1

    .line 201
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v12, v4}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-eq v15, v0, :cond_2

    int-to-long v7, v15

    add-long/2addr v5, v7

    .line 203
    invoke-virtual {v13, v4, v9, v15}, Ljava/io/FileOutputStream;->write([BII)V

    const-wide/16 v7, 0x64

    mul-long v7, v7, v5

    .line 204
    iget-wide v10, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$total:J

    div-long/2addr v7, v10

    long-to-int v8, v7

    if-eq v8, v14, :cond_0

    .line 207
    iget-object v7, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v7}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 209
    iget-object v7, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v7}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/16 v10, 0x55

    .line 210
    iput v10, v7, Landroid/os/Message;->what:I

    .line 211
    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 212
    iget-object v10, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$filename:Ljava/lang/String;

    iput-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    iget-object v10, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v10}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    move v14, v8

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v12, :cond_3

    .line 229
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 232
    :cond_3
    :goto_1
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 235
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_3
    iget-wide v7, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$total:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_5

    .line 238
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$200(Lcom/jieli/stream/dv/running2/task/MediaTask;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0, v9}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$202(Lcom/jieli/stream/dv/running2/task/MediaTask;Z)Z

    .line 240
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    invoke-static {v3, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_4
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 248
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x53

    .line 249
    iput v2, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    .line 250
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 251
    iget-object v2, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 252
    iget-object v2, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$300(Lcom/jieli/stream/dv/running2/task/MediaTask;)Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    move-result-object v0

    if-nez v0, :cond_b

    .line 254
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    new-instance v2, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$400(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$302(Lcom/jieli/stream/dv/running2/task/MediaTask;Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;)Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    goto/16 :goto_a

    .line 258
    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 261
    invoke-static {v3, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_6
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_e

    goto/16 :goto_b

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v4, v0

    const/4 v12, 0x0

    :goto_4
    const/4 v13, 0x0

    goto/16 :goto_d

    :catch_3
    move-exception v0

    const/4 v12, 0x0

    :goto_5
    const/4 v13, 0x0

    .line 219
    :goto_6
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 220
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 223
    invoke-static {v3, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_7
    if-eqz v12, :cond_8

    .line 229
    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_8

    :cond_8
    :goto_7
    if-eqz v13, :cond_9

    .line 232
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    .line 235
    :goto_8
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_9
    :goto_9
    iget-wide v7, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$total:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_c

    .line 238
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$200(Lcom/jieli/stream/dv/running2/task/MediaTask;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 239
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0, v9}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$202(Lcom/jieli/stream/dv/running2/task/MediaTask;Z)Z

    .line 240
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 243
    invoke-static {v3, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_a
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 248
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x53

    .line 249
    iput v2, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    .line 250
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 251
    iget-object v2, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 252
    iget-object v2, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$300(Lcom/jieli/stream/dv/running2/task/MediaTask;)Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    move-result-object v0

    if-nez v0, :cond_b

    .line 254
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    new-instance v2, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$400(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$302(Lcom/jieli/stream/dv/running2/task/MediaTask;Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;)Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    .line 255
    :cond_b
    :goto_a
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$300(Lcom/jieli/stream/dv/running2/task/MediaTask;)Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    move-result-object v0

    iget-object v2, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->scanFiles(Ljava/lang/String;)V

    goto :goto_c

    .line 258
    :cond_c
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 261
    invoke-static {v3, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_d
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 265
    :goto_b
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x53

    .line 266
    iput v2, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    .line 267
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 268
    iget-object v2, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$filename:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 269
    iget-object v2, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 272
    :cond_e
    :goto_c
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$102(Lcom/jieli/stream/dv/running2/task/MediaTask;Lokhttp3/Call;)Lokhttp3/Call;

    goto/16 :goto_12

    :catchall_2
    move-exception v0

    move-object v4, v0

    :goto_d
    if-eqz v12, :cond_f

    .line 229
    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_f

    :cond_f
    :goto_e
    if-eqz v13, :cond_10

    .line 232
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_10

    .line 235
    :goto_f
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_10
    :goto_10
    iget-wide v7, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$total:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_13

    .line 238
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$200(Lcom/jieli/stream/dv/running2/task/MediaTask;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 239
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0, v9}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$202(Lcom/jieli/stream/dv/running2/task/MediaTask;Z)Z

    .line 240
    new-instance v0, Ljava/io/File;

    iget-object v5, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 243
    invoke-static {v3, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_11
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 248
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x53

    .line 249
    iput v2, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    .line 250
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 251
    iget-object v2, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 252
    iget-object v2, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$300(Lcom/jieli/stream/dv/running2/task/MediaTask;)Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    move-result-object v0

    if-nez v0, :cond_12

    .line 254
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    new-instance v2, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$400(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$302(Lcom/jieli/stream/dv/running2/task/MediaTask;Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;)Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    .line 255
    :cond_12
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$300(Lcom/jieli/stream/dv/running2/task/MediaTask;)Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    move-result-object v0

    iget-object v2, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->scanFiles(Ljava/lang/String;)V

    goto :goto_11

    .line 258
    :cond_13
    new-instance v0, Ljava/io/File;

    iget-object v5, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$saveUrl:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 261
    invoke-static {v3, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_14
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 265
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x53

    .line 266
    iput v2, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    .line 267
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 268
    iget-object v2, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->val$filename:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 269
    iget-object v2, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 272
    :cond_15
    :goto_11
    iget-object v0, v1, Lcom/jieli/stream/dv/running2/task/MediaTask$1;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$102(Lcom/jieli/stream/dv/running2/task/MediaTask;Lokhttp3/Call;)Lokhttp3/Call;

    .line 273
    throw v4

    :cond_16
    :goto_12
    return-void
.end method
