.class Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;
.super Ljava/lang/Thread;
.source "DebugHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/task/DebugHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveThread"
.end annotation


# instance fields
.field private volatile isThreadAlive:Z

.field private mSocket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/task/DebugHelper;Ljava/net/DatagramSocket;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 164
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->isThreadAlive:Z

    .line 168
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->mSocket:Ljava/net/DatagramSocket;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;)Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->isThreadAlive:Z

    return p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->stopThread()V

    return-void
.end method

.method private declared-synchronized stopThread()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 178
    :try_start_0
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->isThreadAlive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private string2Int(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 264
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "MSSDP_NOTIFY "

    .line 183
    invoke-static {}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReceiveThread running..."

    invoke-static {v1, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->isThreadAlive:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 185
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->mSocket:Ljava/net/DatagramSocket;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-static {v0, v3}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$400(Lcom/jieli/stream/dv/running2/task/DebugHelper;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$500(Lcom/jieli/stream/dv/running2/task/DebugHelper;ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    const/16 v1, 0x1400

    const/4 v4, 0x2

    :try_start_0
    new-array v5, v1, [B

    .line 191
    new-instance v6, Ljava/net/DatagramPacket;

    invoke-direct {v6, v5, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 192
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 193
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_0

    .line 196
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, ""

    .line 199
    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UX_SEND_LEN"

    .line 200
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, -0x1

    const/4 v8, 0x3

    const-string v9, ","

    const-string v10, ":"

    if-eq v6, v7, :cond_5

    .line 202
    :try_start_1
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 205
    invoke-virtual {v5, v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 206
    aget-object v6, v5, v2

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 207
    aget-object v6, v5, v2

    invoke-virtual {v6, v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 208
    aget-object v6, v6, v3

    invoke-direct {p0, v6}, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->string2Int(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 210
    :goto_1
    aget-object v7, v5, v3

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 211
    aget-object v2, v5, v3

    invoke-virtual {v2, v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 212
    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->string2Int(Ljava/lang/String;)I

    move-result v2

    :cond_3
    if-lez v6, :cond_4

    .line 216
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-static {v3, v1, v6, v2}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$600(Lcom/jieli/stream/dv/running2/task/DebugHelper;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 218
    :cond_4
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-static {v2, v8}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$400(Lcom/jieli/stream/dv/running2/task/DebugHelper;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v8, v2}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$500(Lcom/jieli/stream/dv/running2/task/DebugHelper;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "UX_REPORT"

    .line 222
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_8

    .line 224
    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 226
    aget-object v1, v1, v3

    .line 228
    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 232
    aget-object v5, v1, v2

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 233
    aget-object v5, v1, v2

    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 234
    aget-object v5, v5, v3

    invoke-direct {p0, v5}, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->string2Int(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    .line 236
    :goto_2
    aget-object v6, v1, v3

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 237
    aget-object v1, v1, v3

    invoke-virtual {v1, v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 238
    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->string2Int(Ljava/lang/String;)I

    move-result v2

    .line 241
    :cond_7
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-static {v1, v5, v2}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$700(Lcom/jieli/stream/dv/running2/task/DebugHelper;II)V

    goto/16 :goto_0

    .line 245
    :cond_8
    invoke-static {}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-static {v1, v8, v5}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$500(Lcom/jieli/stream/dv/running2/task/DebugHelper;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 253
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->this$0:Lcom/jieli/stream/dv/running2/task/DebugHelper;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/jieli/stream/dv/running2/task/DebugHelper;->access$500(Lcom/jieli/stream/dv/running2/task/DebugHelper;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :cond_9
    :goto_3
    iput-boolean v2, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->isThreadAlive:Z

    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 173
    :try_start_0
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/task/DebugHelper$ReceiveThread;->isThreadAlive:Z

    .line 174
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
