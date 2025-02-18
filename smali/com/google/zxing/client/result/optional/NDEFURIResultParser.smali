.class final Lcom/google/zxing/client/result/optional/NDEFURIResultParser;
.super Lcom/google/zxing/client/result/optional/AbstractNDEFResultParser;


# static fields
.field private static final URI_PREFIXES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    const/4 v0, 0x0

    const-string v1, "http://www."

    const-string v2, "https://www."

    const-string v3, "http://"

    const-string v4, "https://"

    const-string v5, "tel:"

    const-string v6, "mailto:"

    const-string v7, "ftp://anonymous:anonymous@"

    const-string v8, "ftp://ftp."

    const-string v9, "ftps://"

    const-string v10, "sftp://"

    const-string v11, "smb://"

    const-string v12, "nfs://"

    const-string v13, "ftp://"

    const-string v14, "dav://"

    const-string v15, "news:"

    const-string v16, "telnet://"

    const-string v17, "imap:"

    const-string v18, "rtsp://"

    const-string v19, "urn:"

    const-string v20, "pop:"

    const-string v21, "sip:"

    const-string v22, "sips:"

    const-string v23, "tftp:"

    const-string v24, "btspp://"

    const-string v25, "btl2cap://"

    const-string v26, "btgoep://"

    const-string v27, "tcpobex://"

    const-string v28, "irdaobex://"

    const-string v29, "file://"

    const-string v30, "urn:epc:id:"

    const-string v31, "urn:epc:tag:"

    const-string v32, "urn:epc:pat:"

    const-string v33, "urn:epc:raw:"

    const-string v34, "urn:epc:"

    const-string v35, "urn:nfc:"

    filled-new-array/range {v0 .. v35}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/optional/NDEFURIResultParser;->URI_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/optional/AbstractNDEFResultParser;-><init>()V

    return-void
.end method

.method static decodeURIPayload([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lcom/google/zxing/client/result/optional/NDEFURIResultParser;->URI_PREFIXES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const-string v3, "UTF8"

    invoke-static {p0, v2, v1, v3}, Lcom/google/zxing/client/result/optional/NDEFURIResultParser;->bytesToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
    .locals 3

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/client/result/optional/NDEFRecord;->readRecord([BI)Lcom/google/zxing/client/result/optional/NDEFRecord;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/google/zxing/client/result/optional/NDEFRecord;->isMessageBegin()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/zxing/client/result/optional/NDEFRecord;->isMessageEnd()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/client/result/optional/NDEFRecord;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "U"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/client/result/optional/NDEFRecord;->getPayload()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/client/result/optional/NDEFURIResultParser;->decodeURIPayload([B)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method
