.class public Lcom/serenegiant/io/ByteBufferOutputStream;
.super Ljava/io/OutputStream;
.source "ByteBufferOutputStream.java"


# instance fields
.field private final autoEnlarge:Z

.field private wrappedBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    .line 51
    iput-boolean p2, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->autoEnlarge:Z

    return-void
.end method

.method private growTo(I)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    sub-int v1, v0, p1

    if-gez v1, :cond_0

    move v0, p1

    :cond_0
    if-gez v0, :cond_2

    if-ltz p1, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    .line 102
    :cond_1
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1

    .line 106
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 111
    :cond_3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    .line 114
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 115
    iget-object v0, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public size()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public toByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 124
    iget-boolean v1, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->autoEnlarge:Z

    if-eqz v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 126
    invoke-direct {p0, v0}, Lcom/serenegiant/io/ByteBufferOutputStream;->growTo(I)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/serenegiant/io/ByteBufferOutputStream;->write(I)V

    :goto_0
    return-void

    .line 129
    :cond_0
    throw v0
.end method

.method public write([B)V
    .locals 3

    const/4 v0, 0x0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 142
    iget-boolean v2, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->autoEnlarge:Z

    if-eqz v2, :cond_0

    .line 143
    iget-object v1, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    .line 144
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    array-length v2, p1

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 145
    invoke-direct {p0, v0}, Lcom/serenegiant/io/ByteBufferOutputStream;->growTo(I)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/serenegiant/io/ByteBufferOutputStream;->write([B)V

    :goto_0
    return-void

    .line 148
    :cond_0
    throw v1
.end method

.method public write([BII)V
    .locals 3

    const/4 v0, 0x0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 161
    iget-boolean v2, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->autoEnlarge:Z

    if-eqz v2, :cond_0

    .line 162
    iget-object v1, p0, Lcom/serenegiant/io/ByteBufferOutputStream;->wrappedBuffer:Ljava/nio/ByteBuffer;

    .line 163
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, p3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 164
    invoke-direct {p0, v0}, Lcom/serenegiant/io/ByteBufferOutputStream;->growTo(I)V

    .line 165
    invoke-virtual {p0, p1, p2, p3}, Lcom/serenegiant/io/ByteBufferOutputStream;->write([BII)V

    :goto_0
    return-void

    .line 167
    :cond_0
    throw v1
.end method
