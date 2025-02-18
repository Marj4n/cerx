.class Lcom/serenegiant/utils/SysFs$MyByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "SysFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/utils/SysFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyByteArrayOutputStream"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 455
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 459
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs$MyByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/serenegiant/utils/SysFs$MyByteArrayOutputStream;->buf:[B

    invoke-virtual {p0}, Lcom/serenegiant/utils/SysFs$MyByteArrayOutputStream;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
