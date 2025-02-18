.class public final Lcom/baidu/trace/api/bos/BosPutObjectRequest;
.super Lcom/baidu/trace/api/bos/BosObjectRequest;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/InputStream;

.field private c:[B

.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method private constructor <init>(IJLjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectType;Ljava/io/File;Ljava/io/InputStream;[BLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/baidu/trace/api/bos/BosObjectRequest;-><init>(IJLjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectType;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->a:Ljava/io/File;

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->b:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->c:[B

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->d:Ljava/lang/String;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->e:J

    iput-object p6, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->a:Ljava/io/File;

    iput-object p7, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->b:Ljava/io/InputStream;

    iput-object p8, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->c:[B

    iput-object p9, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public static buildByteArrayRequest(IJLjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectType;[B)Lcom/baidu/trace/api/bos/BosPutObjectRequest;
    .locals 11

    new-instance v10, Lcom/baidu/trace/api/bos/BosPutObjectRequest;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;-><init>(IJLjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectType;Ljava/io/File;Ljava/io/InputStream;[BLjava/lang/String;)V

    return-object v10
.end method

.method public static buildFileRequest(IJLjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectType;Ljava/io/File;)Lcom/baidu/trace/api/bos/BosPutObjectRequest;
    .locals 11

    new-instance v10, Lcom/baidu/trace/api/bos/BosPutObjectRequest;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v9}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;-><init>(IJLjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectType;Ljava/io/File;Ljava/io/InputStream;[BLjava/lang/String;)V

    return-object v10
.end method

.method public static buildStreamReqeust(IJLjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectType;Ljava/io/InputStream;)Lcom/baidu/trace/api/bos/BosPutObjectRequest;
    .locals 11

    new-instance v10, Lcom/baidu/trace/api/bos/BosPutObjectRequest;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v9}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;-><init>(IJLjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectType;Ljava/io/File;Ljava/io/InputStream;[BLjava/lang/String;)V

    return-object v10
.end method

.method public static buildStringRequest(IJLjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectType;Ljava/lang/String;)Lcom/baidu/trace/api/bos/BosPutObjectRequest;
    .locals 11

    new-instance v10, Lcom/baidu/trace/api/bos/BosPutObjectRequest;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/baidu/trace/api/bos/BosPutObjectRequest;-><init>(IJLjava/lang/String;Lcom/baidu/trace/api/bos/BosObjectType;Ljava/io/File;Ljava/io/InputStream;[BLjava/lang/String;)V

    return-object v10
.end method


# virtual methods
.method public final getByteArray()[B
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->c:[B

    return-object v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->a:Ljava/io/File;

    return-object v0
.end method

.method public final getObjectSize()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->e:J

    return-wide v0
.end method

.method public final getStreamData()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getStringData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final setByteArray([B)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->c:[B

    return-void
.end method

.method public final setFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->a:Ljava/io/File;

    return-void
.end method

.method public final setObjectSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->e:J

    return-void
.end method

.method public final setStreamData(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->b:Ljava/io/InputStream;

    return-void
.end method

.method public final setStringData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "BosPutObjectRequest{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", streamData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->b:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", byteArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->c:[B

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->c:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    if-nez v1, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    const-string v2, ", "

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->c:[B

    aget-byte v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    const-string v1, ", stringData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ", objectSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/baidu/trace/api/bos/BosPutObjectRequest;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
