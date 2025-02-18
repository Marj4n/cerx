.class public Lcom/jieli/stream/dv/running2/task/SDPServer;
.super Ljava/lang/Thread;
.source "SDPServer.java"


# instance fields
.field private mFramePerSecond:I

.field private mRtpAudioPort:I

.field private mRtpVideoPort:I

.field private mRunning:Z

.field private mSampleRate:I

.field private mServerSocket:Ljava/net/ServerSocket;

.field private mVideoFormat:I

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/jieli/stream/dv/running2/task/SDPServer;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mRunning:Z

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mVideoFormat:I

    const/16 v1, 0x1f40

    .line 26
    iput v1, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mSampleRate:I

    const/16 v1, 0x1e

    .line 27
    iput v1, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mFramePerSecond:I

    const/16 v1, 0x1a0a

    .line 28
    iput v1, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mRtpVideoPort:I

    const/16 v1, 0x4d2

    .line 29
    iput v1, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mRtpAudioPort:I

    .line 35
    iput p2, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mVideoFormat:I

    .line 37
    :try_start_0
    new-instance p2, Ljava/net/ServerSocket;

    invoke-direct {p2}, Ljava/net/ServerSocket;-><init>()V

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 39
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 42
    :goto_0
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz p2, :cond_0

    .line 44
    :try_start_1
    invoke-virtual {p2, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 46
    invoke-virtual {p2}, Ljava/net/SocketException;->printStackTrace()V

    .line 49
    :goto_1
    :try_start_2
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 85
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mRunning:Z

    .line 89
    iget v1, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mVideoFormat:I

    if-ne v1, v0, :cond_0

    const/16 v0, 0x60

    const-string v1, "H264"

    goto :goto_0

    :cond_0
    const/16 v0, 0x1a

    const-string v1, "JPEG"

    .line 96
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c=IN IP4 127.0.0.1\nm=audio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mRtpAudioPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " RTP/AVP 97\na=rtpmap:97 L16/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mSampleRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/1\na=ptime:20\nm=video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mRtpVideoPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " RTP/AVP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\na=rtpmap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/90000\na=framerate:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mFramePerSecond:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDP:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mRunning:Z

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 110
    :try_start_0
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    if-eqz v2, :cond_1

    .line 117
    :try_start_1
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 119
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 122
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    .line 124
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 127
    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    .line 129
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/task/SDPServer;->stopRunning()V

    .line 136
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->tag:Ljava/lang/String;

    const-string v1, "SDP Server exit."

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mFramePerSecond:I

    return-void
.end method

.method public setRtpAudioPort(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mRtpAudioPort:I

    return-void
.end method

.method public setRtpVideoPort(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mRtpVideoPort:I

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mSampleRate:I

    return-void
.end method

.method public stopRunning()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mRunning:Z

    .line 66
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/task/SDPServer;->mServerSocket:Ljava/net/ServerSocket;

    return-void
.end method
