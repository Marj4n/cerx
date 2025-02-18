.class public Lcom/serenegiant/media/MediaData;
.super Ljava/lang/Object;
.source "MediaData.java"


# instance fields
.field flags:I

.field mBuffer:Ljava/nio/ByteBuffer;

.field presentationTimeUs:J

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaData;->resize(I)Lcom/serenegiant/media/MediaData;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/serenegiant/media/MediaData;->flags:I

    iput v0, p0, Lcom/serenegiant/media/MediaData;->size:I

    .line 135
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public get()Ljava/nio/ByteBuffer;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 199
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/serenegiant/media/MediaData;->size:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 200
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 201
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public get(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    .line 190
    iget v2, p0, Lcom/serenegiant/media/MediaData;->size:I

    iget-wide v3, p0, Lcom/serenegiant/media/MediaData;->presentationTimeUs:J

    iget v5, p0, Lcom/serenegiant/media/MediaData;->flags:I

    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    return-void
.end method

.method public get(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/serenegiant/media/MediaData;->size:I

    if-lt v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 179
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/serenegiant/media/MediaData;->size:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 181
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 160
    array-length v0, p1

    iget v1, p0, Lcom/serenegiant/media/MediaData;->size:I

    if-lt v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 164
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/serenegiant/media/MediaData;->size:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 165
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 166
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public presentationTimeUs()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/serenegiant/media/MediaData;->presentationTimeUs:J

    return-wide v0
.end method

.method public resize(I)Lcom/serenegiant/media/MediaData;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 123
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 124
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p0
.end method

.method public set(Ljava/nio/ByteBuffer;IIJI)V
    .locals 0

    .line 79
    iput-wide p4, p0, Lcom/serenegiant/media/MediaData;->presentationTimeUs:J

    .line 80
    iput p3, p0, Lcom/serenegiant/media/MediaData;->size:I

    .line 81
    iput p6, p0, Lcom/serenegiant/media/MediaData;->flags:I

    .line 82
    invoke-virtual {p0, p3}, Lcom/serenegiant/media/MediaData;->resize(I)Lcom/serenegiant/media/MediaData;

    if-eqz p1, :cond_0

    if-le p3, p2, :cond_0

    add-int/2addr p3, p2

    .line 84
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 86
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    iget-object p2, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 88
    iget-object p1, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public set(Ljava/nio/ByteBuffer;IJ)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    .line 60
    invoke-virtual/range {v0 .. v6}, Lcom/serenegiant/media/MediaData;->set(Ljava/nio/ByteBuffer;IIJI)V

    return-void
.end method

.method public set(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    .line 101
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/serenegiant/media/MediaData;->presentationTimeUs:J

    if-eqz p1, :cond_0

    .line 102
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/serenegiant/media/MediaData;->size:I

    .line 103
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v0, p0, Lcom/serenegiant/media/MediaData;->flags:I

    .line 104
    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 105
    iget v0, p0, Lcom/serenegiant/media/MediaData;->size:I

    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaData;->resize(I)Lcom/serenegiant/media/MediaData;

    if-eqz p1, :cond_1

    .line 106
    iget v0, p0, Lcom/serenegiant/media/MediaData;->size:I

    if-le v0, p2, :cond_1

    add-int/2addr v0, p2

    .line 107
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 109
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    iget-object p2, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 111
    iget-object p1, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/serenegiant/media/MediaData;->size:I

    return v0
.end method
