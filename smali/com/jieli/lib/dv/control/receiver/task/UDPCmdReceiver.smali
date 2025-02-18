.class public Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;
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

.field private mUDPSocketWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramSocket;Landroid/os/Handler;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->isReceiverTaskRunning:Z

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->mUDPSocketWeakReference:Ljava/lang/ref/WeakReference;

    .line 38
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private handleUDPReceiver()Z
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->mUDPSocketWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/16 v2, 0x800

    new-array v3, v2, [B

    .line 45
    new-instance v4, Ljava/net/DatagramPacket;

    invoke-direct {v4, v3, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 47
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    :goto_0
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    if-lez v0, :cond_2

    .line 54
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 55
    array-length v3, v2

    if-lez v3, :cond_1

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 56
    new-array v3, v0, [B

    .line 57
    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    invoke-direct {p0, v3}, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->parseCmdData([B)Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x65

    .line 63
    iput v2, v1, Landroid/os/Message;->what:I

    .line 64
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 67
    :cond_0
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->tag:Ljava/lang/String;

    const-string v1, "mHandler is null or error."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_1
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->tag:Ljava/lang/String;

    const-string v1, "receive message is null or error."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_2
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->tag:Ljava/lang/String;

    const-string v1, "tempBuf is null or error."

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_3
    sget-object v0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->tag:Ljava/lang/String;

    const-string v2, "udpSocket is null"

    invoke-static {v0, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->stopRunning()V

    return v1
.end method

.method private parseCmdData([B)Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;
    .locals 9

    const-string v0, "param"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 83
    array-length v2, p1

    const/16 v3, 0xa

    if-ge v3, v2, :cond_3

    const/4 v3, 0x4

    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 87
    invoke-static {p1, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "CTP:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    new-array v6, v4, [B

    .line 91
    invoke-static {p1, v3, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x6

    .line 93
    invoke-static {v6}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->byteArrayToInt([B)I

    move-result v6

    if-ltz v6, :cond_3

    add-int/lit8 v7, v6, 0x6

    if-gt v7, v2, :cond_3

    .line 95
    new-array v8, v6, [B

    .line 96
    invoke-static {p1, v4, v8, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    .line 99
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 101
    new-instance v6, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-direct {v6}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;-><init>()V

    .line 102
    invoke-virtual {v6, v4}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setTopic(Ljava/lang/String;)V

    add-int/lit8 v4, v7, 0x4

    if-gt v4, v2, :cond_2

    new-array v8, v3, [B

    .line 105
    invoke-static {p1, v7, v8, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    invoke-static {v8}, Lcom/jieli/lib/dv/control/utils/BufChangeHex;->byteArrayToInt([B)I

    move-result v3

    if-ltz v3, :cond_2

    add-int v7, v4, v3

    if-gt v7, v2, :cond_2

    .line 110
    new-array v8, v3, [B

    .line 111
    invoke-static {p1, v4, v8, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v8}, Ljava/lang/String;-><init>([B)V

    if-ne v7, v2, :cond_2

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "errno"

    .line 121
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v6, p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setErrorType(I)V

    const-string p1, "op"

    .line 122
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setOperation(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 125
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 127
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 128
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {v1, v2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v6, v1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setParams(Landroidx/collection/ArrayMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {v6, v1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setParams(Landroidx/collection/ArrayMap;)V

    .line 141
    invoke-virtual {v6, v5}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setErrorType(I)V

    .line 142
    invoke-virtual {v6, v1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->setOperation(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object v1, v6

    :cond_3
    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 157
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->isReceiverTaskRunning:Z

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->isReceiverTaskRunning:Z

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->handleUDPReceiver()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public stopRunning()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/jieli/lib/dv/control/receiver/task/UDPCmdReceiver;->isReceiverTaskRunning:Z

    return-void
.end method
