.class public Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Z


# direct methods
.method public constructor <init>(Ljava/net/DatagramSocket;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "UdpSocketReceiver"

    .line 29
    iput-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a([B)Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;
    .locals 9

    const-string v0, "param"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 101
    array-length v2, p1

    const/16 v3, 0xa

    if-ge v3, v2, :cond_3

    const/4 v3, 0x4

    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 105
    invoke-static {p1, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "CTP:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    new-array v6, v4, [B

    .line 109
    invoke-static {p1, v3, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x6

    .line 111
    invoke-static {v6}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->byteArrayToInt([B)I

    move-result v6

    if-ltz v6, :cond_3

    add-int/lit8 v7, v6, 0x6

    if-gt v7, v2, :cond_3

    .line 113
    new-array v8, v6, [B

    .line 114
    invoke-static {p1, v4, v8, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    .line 117
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 119
    new-instance v6, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-direct {v6}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;-><init>()V

    .line 120
    invoke-virtual {v6, v4}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setTopic(Ljava/lang/String;)V

    add-int/lit8 v4, v7, 0x4

    if-gt v4, v2, :cond_2

    new-array v8, v3, [B

    .line 123
    invoke-static {p1, v7, v8, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    invoke-static {v8}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->byteArrayToInt([B)I

    move-result v3

    if-ltz v3, :cond_2

    add-int v7, v4, v3

    if-gt v7, v2, :cond_2

    .line 128
    new-array v8, v3, [B

    .line 129
    invoke-static {p1, v4, v8, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v8}, Ljava/lang/String;-><init>([B)V

    if-ne v7, v2, :cond_2

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "errno"

    .line 139
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v6, p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setErrorType(I)V

    const-string p1, "op"

    .line 140
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setOperation(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 143
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 145
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 146
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 148
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-virtual {v1, v2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v6, v1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setParams(Landroidx/collection/ArrayMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {v6, v1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setParams(Landroidx/collection/ArrayMap;)V

    .line 159
    invoke-virtual {v6, v5}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setErrorType(I)V

    .line 160
    invoke-virtual {v6, v1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setOperation(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object v1, v6

    :cond_3
    return-object v1
.end method

.method private a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    const/16 v1, 0x800

    new-array v2, v1, [B

    .line 72
    new-instance v3, Ljava/net/DatagramPacket;

    invoke-direct {v3, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 73
    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 74
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive udp message length : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    .line 77
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    array-length v2, v1

    if-lez v2, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 79
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 80
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    invoke-direct {p0, v2}, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a([B)Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->getInstance()Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->dispatchNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a:Ljava/lang/String;

    const-string v1, "receive message is null or error."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a:Ljava/lang/String;

    const-string v1, "udpSocket is null"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->getInstance()Lcom/jieli/lib/dv/control/utils/ListenerHelper;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/utils/ListenerHelper;->dispatchDeviceConnectState(I)V

    .line 93
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->stopReceiver()V

    :goto_0
    return-void
.end method


# virtual methods
.method public isReceiver()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->c:Z

    return v0
.end method

.method public run()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive udp message start, isReceiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->c:Z

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    iget-object v1, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive udp error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive udp close, isReceiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 43
    :try_start_0
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->c:Z

    .line 44
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopReceiver()V
    .locals 2

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->a:Ljava/lang/String;

    const-string v1, "stop receive udp message"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/udp/UdpSocketReceiver;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
