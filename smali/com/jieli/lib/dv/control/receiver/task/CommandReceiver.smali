.class public Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final CTP:Ljava/lang/String; = "CTP:"

.field static tag:Ljava/lang/String;


# instance fields
.field private isReceiverTaskRunning:Z

.field private mHandlerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiveErrorTime:I

.field private mSocketWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Landroid/os/Handler;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->isReceiverTaskRunning:Z

    .line 36
    iput v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mReceiveErrorTime:I

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mSocketWeakReference:Ljava/lang/ref/WeakReference;

    .line 48
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private declared-synchronized onDataReceiver([B)V
    .locals 8

    monitor-enter p0

    if-eqz p1, :cond_8

    .line 63
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 70
    aget-byte v2, p1, v0

    const/16 v3, 0x43

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    const/16 v3, 0x54

    if-ne v2, v3, :cond_7

    const/4 v2, 0x2

    aget-byte v3, p1, v2

    const/16 v4, 0x50

    if-ne v3, v4, :cond_7

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_1

    goto/16 :goto_3

    .line 78
    :cond_1
    new-instance v3, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-direct {v3}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;-><init>()V

    const/4 v4, 0x4

    .line 79
    invoke-static {p1, v4, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 85
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 90
    new-array v6, v5, [B

    .line 91
    invoke-static {p1, v1, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v7}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setTopic(Ljava/lang/String;)V

    add-int/2addr v1, v5

    .line 99
    array-length v5, p1

    if-lt v5, v4, :cond_2

    .line 100
    invoke-static {p1, v1, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    add-int/2addr v1, v4

    if-lez v5, :cond_4

    .line 107
    new-array v4, v5, [B

    .line 108
    invoke-static {p1, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "errno"

    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setErrorType(I)V

    const-string v0, "op"

    .line 115
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setOperation(Ljava/lang/String;)V

    const-string v0, "param"

    .line 117
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "param"

    .line 118
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 121
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 122
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 124
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-virtual {v1, v4, v5}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {v3, v1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setParams(Landroidx/collection/ArrayMap;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 132
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 135
    invoke-virtual {v3, p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setParams(Landroidx/collection/ArrayMap;)V

    .line 136
    invoke-virtual {v3, v0}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setErrorType(I)V

    .line 137
    invoke-virtual {v3, p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setOperation(Ljava/lang/String;)V

    .line 140
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 141
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x105

    .line 142
    iput v0, p1, Landroid/os/Message;->what:I

    .line 143
    iput-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    :cond_6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 71
    :cond_7
    :goto_3
    :try_start_3
    sget-object p1, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v0, "\'CTP:\' signature not match"

    invoke-static {p1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 64
    :cond_8
    :goto_4
    :try_start_4
    sget-object p1, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v0, "onDataReceiver:buffer == null || buffer.length <6"

    invoke-static {p1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "param"

    .line 154
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 157
    sget-object v1, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v2, "Receiver thread is running..."

    invoke-static {v1, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 158
    iput-boolean v1, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->isReceiverTaskRunning:Z

    .line 159
    :goto_0
    iget-boolean v2, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->isReceiverTaskRunning:Z

    if-eqz v2, :cond_e

    .line 160
    iget-object v2, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mSocketWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_c

    .line 161
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 164
    :try_start_0
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 165
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v7

    if-lez v7, :cond_a

    new-array v7, v6, [B

    .line 167
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-ne v8, v6, :cond_9

    const-string v8, "CTP:"

    .line 168
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 169
    new-instance v7, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-direct {v7}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;-><init>()V

    const/4 v8, 0x2

    new-array v9, v8, [B

    .line 171
    invoke-virtual {v2, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ne v10, v8, :cond_8

    .line 173
    invoke-static {v9}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->byteArrayToInt([B)I

    move-result v8

    .line 174
    new-array v9, v8, [B

    .line 175
    invoke-virtual {v2, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ne v10, v8, :cond_7

    .line 177
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 178
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 179
    invoke-virtual {v7, v8}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setTopic(Ljava/lang/String;)V

    new-array v8, v6, [B

    .line 181
    invoke-virtual {v2, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-ne v9, v6, :cond_5

    .line 183
    invoke-static {v8}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->byteArrayToInt([B)I

    move-result v8

    if-lez v8, :cond_4

    const/high16 v9, 0x500000

    if-ge v8, v9, :cond_4

    .line 185
    new-array v9, v8, [B

    .line 186
    invoke-virtual {v2, v9}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v8, :cond_3

    .line 188
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/lang/String;-><init>([B)V

    .line 189
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v8, :cond_2

    .line 194
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "errno"

    .line 195
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setErrorType(I)V

    const-string v2, "op"

    .line 196
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setOperation(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 202
    new-instance v9, Landroidx/collection/ArrayMap;

    invoke-direct {v9}, Landroidx/collection/ArrayMap;-><init>()V

    .line 203
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 204
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 205
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 208
    invoke-virtual {v9, v10, v11}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 210
    :cond_0
    invoke-virtual {v7, v9}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setParams(Landroidx/collection/ArrayMap;)V

    goto :goto_2

    .line 211
    :cond_1
    sget-object v2, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v8, "JSON_PARAM is null"

    invoke-static {v2, v8}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 213
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 215
    :cond_2
    sget-object v2, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v8, "Payload empty"

    invoke-static {v2, v8}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 216
    :cond_3
    sget-object v2, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v8, "Payload len error"

    invoke-static {v2, v8}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 219
    invoke-virtual {v7, v2}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setParams(Landroidx/collection/ArrayMap;)V

    .line 220
    invoke-virtual {v7, v5}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setErrorType(I)V

    .line 221
    invoke-virtual {v7, v2}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setOperation(Ljava/lang/String;)V

    .line 223
    :goto_2
    iget-object v2, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 224
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v8, 0x105

    .line 225
    iput v8, v2, Landroid/os/Message;->what:I

    .line 226
    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 228
    iget-object v7, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Handler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 230
    :cond_5
    sget-object v2, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v7, "Content len error"

    invoke-static {v2, v7}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 231
    :cond_6
    sget-object v2, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v7, "topic is empty"

    invoke-static {v2, v7}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 232
    :cond_7
    sget-object v2, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v7, "Read topic len error"

    invoke-static {v2, v7}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 233
    :cond_8
    sget-object v2, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v7, "Topic len error"

    invoke-static {v2, v7}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 234
    :cond_9
    sget-object v2, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    const-string v7, "CTP content error"

    invoke-static {v2, v7}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_a
    :goto_3
    iput v5, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mReceiveErrorTime:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    .line 238
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 240
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 241
    iget v2, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mReceiveErrorTime:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mReceiveErrorTime:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_d

    .line 244
    iput v5, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mReceiveErrorTime:I

    .line 245
    iget-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 246
    iget-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/16 v1, 0x101

    .line 247
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 246
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 249
    :cond_b
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver error time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->mReceiveErrorTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 255
    :cond_c
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    :cond_d
    :goto_4
    const-wide/16 v2, 0xa

    .line 257
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    :cond_e
    :goto_5
    return-void
.end method

.method public stopRunning()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/receiver/task/CommandReceiver;->isReceiverTaskRunning:Z

    return-void
.end method
