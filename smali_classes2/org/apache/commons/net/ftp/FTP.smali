.class public Lorg/apache/commons/net/ftp/FTP;
.super Lorg/apache/commons/net/SocketClient;
.source "FTP.java"


# static fields
.field public static final ASCII_FILE_TYPE:I = 0x0

.field public static final BINARY_FILE_TYPE:I = 0x2

.field public static final BLOCK_TRANSFER_MODE:I = 0xb

.field public static final CARRIAGE_CONTROL_TEXT_FORMAT:I = 0x6

.field public static final COMPRESSED_TRANSFER_MODE:I = 0xc

.field public static final DEFAULT_CONTROL_ENCODING:Ljava/lang/String; = "ISO-8859-1"

.field public static final DEFAULT_DATA_PORT:I = 0x14

.field public static final DEFAULT_PORT:I = 0x15

.field public static final EBCDIC_FILE_TYPE:I = 0x1

.field public static final FILE_STRUCTURE:I = 0x7

.field public static final LOCAL_FILE_TYPE:I = 0x3

.field public static final NON_PRINT_TEXT_FORMAT:I = 0x4

.field public static final PAGE_STRUCTURE:I = 0x9

.field public static final RECORD_STRUCTURE:I = 0x8

.field public static final REPLY_CODE_LEN:I = 0x3

.field public static final STREAM_TRANSFER_MODE:I = 0xa

.field public static final TELNET_TEXT_FORMAT:I = 0x5

.field private static final __modes:Ljava/lang/String; = "AEILNTCFRPSBC"


# instance fields
.field protected _commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

.field protected _controlEncoding:Ljava/lang/String;

.field protected _controlInput_:Ljava/io/BufferedReader;

.field protected _controlOutput_:Ljava/io/BufferedWriter;

.field protected _newReplyString:Z

.field protected _replyCode:I

.field protected _replyLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _replyString:Ljava/lang/String;

.field protected strictMultilineParsing:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 263
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTP;->strictMultilineParsing:Z

    const/16 v1, 0x15

    .line 264
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/FTP;->setDefaultPort(I)V

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    .line 266
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyString:Ljava/lang/String;

    const-string v0, "ISO-8859-1"

    .line 268
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlEncoding:Ljava/lang/String;

    .line 269
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-void
.end method

.method private __buildMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/16 p1, 0x20

    .line 514
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "\r\n"

    .line 517
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private __getReply()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 292
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->__getReply(Z)V

    return-void
.end method

.method private __getReply(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    .line 311
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 313
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection closed without indication."

    if-eqz v0, :cond_7

    .line 322
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_6

    const/4 v4, 0x0

    .line 331
    :try_start_0
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    iget-object v5, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v2, v3, :cond_3

    .line 343
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_3

    .line 347
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 354
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->isStrictMultilineParsing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v4}, Lorg/apache/commons/net/ftp/FTP;->__strictCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->__lenientCheck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 350
    :cond_2
    new-instance p1, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;

    invoke-direct {p1, v1}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 364
    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTP;->fireReplyReceived(ILjava/lang/String;)V

    .line 367
    :cond_4
    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    const/16 v0, 0x1a5

    if-eq p1, v0, :cond_5

    return-void

    .line 368
    :cond_5
    new-instance p1, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;

    const-string v0, "FTP response 421 received.  Server closed connection."

    invoke-direct {p1, v0}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 336
    :catch_0
    new-instance p1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse response code.\nServer Reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 324
    :cond_6
    new-instance p1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated server reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_7
    new-instance p1, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;

    invoke-direct {p1, v1}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private __lenientCheck(Ljava/lang/String;)Z
    .locals 3

    .line 283
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private __send(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/net/ftp/FTPConnectionClosedException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 524
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 525
    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 529
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    new-instance p1, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;

    const-string v0, "Connection unexpectedly closed."

    invoke-direct {p1, v0}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 535
    :cond_0
    throw p1
.end method

.method private __strictCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 274
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x20

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method protected __getReplyNoReport()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 303
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->__getReply(Z)V

    return-void
.end method

.method protected __noop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->NOOP:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTP;->__buildMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->__send(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->__getReplyNoReport()V

    return-void
.end method

.method protected _connectAction_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->_connectAction_(Ljava/io/Reader;)V

    return-void
.end method

.method protected _connectAction_(Ljava/io/Reader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    if-nez p1, :cond_0

    .line 394
    new-instance p1, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_input_:Ljava/io/InputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    goto :goto_0

    .line 397
    :cond_0
    new-instance v0, Lorg/apache/commons/net/io/CRLFLineReader;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    .line 399
    :goto_0
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    .line 401
    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->connectTimeout:I

    if-lez p1, :cond_2

    .line 402
    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTP;->_socket_:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1

    .line 403
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_socket_:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/ftp/FTP;->connectTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 405
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTP;->__getReply()V

    .line 407
    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTP;->__getReply()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 411
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Timed out waiting for initial connect reply"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 413
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0

    .line 418
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTP;->__getReply()V

    .line 420
    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 421
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTP;->__getReply()V

    :cond_3
    :goto_2
    return-void
.end method

.method public abor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 829
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->ABOR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public acct(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 810
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->ACCT:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public allo(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1273
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->ALLO:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public allo(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1306
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->ALLO:Lorg/apache/commons/net/ftp/FTPCmd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " R "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public appe(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1254
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->APPE:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public cdup()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->CDUP:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public cwd(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 848
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->CWD:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public dele(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1419
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->DELE:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    const/4 v0, 0x0

    .line 464
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    .line 465
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    const/4 v1, 0x0

    .line 466
    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    .line 467
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyString:Ljava/lang/String;

    return-void
.end method

.method public eprt(Ljava/net/InetAddress;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 986
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    .line 987
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 989
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "|"

    .line 992
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    instance-of v3, p1, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    const-string p1, "1"

    .line 995
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 996
    :cond_1
    instance-of p1, p1, Ljava/net/Inet6Address;

    if-eqz p1, :cond_2

    const-string p1, "2"

    .line 997
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    sget-object p1, Lorg/apache/commons/net/ftp/FTPCmd;->EPRT:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public epsv()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1046
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->EPSV:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public feat()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1286
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->FEAT:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method protected getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;
    .locals 1

    .line 1810
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-object v0
.end method

.method public getControlEncoding()Ljava/lang/String;
    .locals 1

    .line 447
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getReply()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTP;->__getReply()V

    .line 713
    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    return v0
.end method

.method public getReplyCode()I
    .locals 1

    .line 690
    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    return v0
.end method

.method public getReplyString()Ljava/lang/String;
    .locals 3

    .line 740
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyString:Ljava/lang/String;

    return-object v0

    .line 744
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 746
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 747
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    .line 748
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 751
    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    .line 753
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyString:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyStrings()[Ljava/lang/String;
    .locals 2

    .line 726
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public help()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1747
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->HELP:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public help(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1766
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->HELP:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public isStrictMultilineParsing()Z
    .locals 1

    .line 1793
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTP;->strictMultilineParsing:Z

    return v0
.end method

.method public list()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1496
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->LIST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public list(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1519
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->LIST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public mdtm(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1338
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MDTM:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public mfmt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1361
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MFMT:Lorg/apache/commons/net/ftp/FTPCmd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public mkd(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1457
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MKD:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public mlsd()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1541
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MLSD:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public mlsd(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1565
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MLSD:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public mlst()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1587
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MLST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public mlst(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1611
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MLST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public mode(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1141
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MODE:Lorg/apache/commons/net/ftp/FTPCmd;

    add-int/lit8 v1, p1, 0x1

    const-string v2, "AEILNTCFRPSBC"

    invoke-virtual {v2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public nlst()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1632
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->NLST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public nlst(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1655
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->NLST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noop()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1784
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->NOOP:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public pass(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 791
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->PASS:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public pasv()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1025
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->PASV:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public port(Ljava/net/InetAddress;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 944
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    const/16 v2, 0x2c

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 p1, p2, 0x8

    .line 946
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 947
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 948
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p2, 0xff

    .line 950
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 952
    sget-object p1, Lorg/apache/commons/net/ftp/FTPCmd;->PORT:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public pwd()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1475
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->PWD:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public quit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 884
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->QUIT:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public rein()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 902
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->REIN:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public rest(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1326
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->REST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public retr(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1164
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->RETR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public rmd(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1438
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->RMD:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public rnfr(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1381
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->RNFR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public rnto(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1400
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->RNTO:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 676
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(ILjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 578
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 651
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 497
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->__buildMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 499
    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/FTP;->__send(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTP;->__getReply()V

    .line 504
    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    return p1

    .line 494
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Connection is not open"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 602
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setControlEncoding(Ljava/lang/String;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlEncoding:Ljava/lang/String;

    return-void
.end method

.method public setStrictMultilineParsing(Z)V
    .locals 0

    .line 1802
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTP;->strictMultilineParsing:Z

    return-void
.end method

.method public site(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1674
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->SITE:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public smnt(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 921
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->SMNT:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public stat()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1710
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STAT:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public stat(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1729
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STAT:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public stor(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1187
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public stou()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1208
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOU:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public stou(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1231
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOU:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public stru(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1120
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STRU:Lorg/apache/commons/net/ftp/FTPCmd;

    add-int/lit8 v1, p1, 0x1

    const-string v2, "AEILNTCFRPSBC"

    invoke-virtual {v2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public syst()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1692
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->SYST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public type(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1099
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->TYPE:Lorg/apache/commons/net/ftp/FTPCmd;

    add-int/lit8 v1, p1, 0x1

    const-string v2, "AEILNTCFRPSBC"

    invoke-virtual {v2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public type(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AEILNTCFRPSBC"

    .line 1070
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 1071
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 1073
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1075
    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1078
    :goto_0
    sget-object p1, Lorg/apache/commons/net/ftp/FTPCmd;->TYPE:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public user(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 773
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->USER:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
