.class public Lcom/serenegiant/io/ChannelHelper;
.super Ljava/lang/Object;
.source "ChannelHelper.java"


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 40
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/io/ChannelHelper;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1

    if-eqz p0, :cond_0

    .line 1058
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 1059
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 1061
    :cond_1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1062
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1063
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public static readBoolean(Ljava/nio/channels/ByteChannel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->readBoolean(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method

.method public static readBoolean(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 65
    invoke-static {p1, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 66
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_1

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 69
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 67
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readBooleanArray(Ljava/nio/channels/ByteChannel;)[Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    .line 303
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 304
    invoke-interface {p0, v1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_2

    .line 306
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 307
    new-array p0, v0, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 309
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    aput-boolean v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    .line 305
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readByte(Ljava/nio/channels/ByteChannel;)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->readByte(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)B

    move-result p0

    return p0
.end method

.method public static readByte(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 93
    invoke-static {p1, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 94
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 96
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 97
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    return p0

    .line 95
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readByteArray(Ljava/nio/channels/ByteChannel;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    .line 324
    new-array v1, v0, [B

    .line 325
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 326
    invoke-interface {p0, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    return-object v1

    .line 327
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readByteBuffer(Ljava/nio/channels/ByteChannel;)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 484
    invoke-static {p0, v0, v1}, Lcom/serenegiant/io/ChannelHelper;->readByteBuffer(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;Z)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static readByteBuffer(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 499
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->readByteBuffer(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;Z)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static readByteBuffer(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;Z)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    if-eqz p1, :cond_0

    .line 518
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 520
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v0, :cond_3

    :cond_1
    if-eqz p2, :cond_5

    if-nez p1, :cond_2

    .line 523
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_1

    .line 526
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    add-int/2addr p2, v0

    .line 525
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 527
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 528
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object p1, p2

    :cond_3
    :goto_1
    add-int p2, v1, v0

    .line 535
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 536
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_4

    .line 538
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 539
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p1

    .line 537
    :cond_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 532
    :cond_5
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readChar(Ljava/nio/channels/ByteChannel;)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->readChar(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)C

    move-result p0

    return p0
.end method

.method public static readChar(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 122
    invoke-static {p1, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 123
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 125
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 126
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result p0

    return p0

    .line 124
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readCharArray(Ljava/nio/channels/ByteChannel;)[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 341
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 342
    invoke-interface {p0, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 344
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 345
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object p0

    .line 346
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object p0

    return-object p0

    .line 349
    :cond_0
    new-array v0, v0, [C

    .line 350
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    return-object v0

    .line 343
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readDouble(Ljava/nio/channels/ByteChannel;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 257
    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->readDouble(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static readDouble(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 269
    invoke-static {p1, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 270
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 272
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 273
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p0

    return-wide p0

    .line 271
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readDoubleArray(Ljava/nio/channels/ByteChannel;)[D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    .line 461
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 462
    invoke-interface {p0, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 464
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 465
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p0

    .line 466
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->array()[D

    move-result-object p0

    return-object p0

    .line 469
    :cond_0
    new-array v0, v0, [D

    .line 470
    invoke-virtual {p0, v0}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    return-object v0

    .line 463
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readFloat(Ljava/nio/channels/ByteChannel;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 225
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 226
    invoke-interface {p0, v1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 228
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 229
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    return p0

    .line 227
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readFloat(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 241
    invoke-static {p1, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 242
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 244
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 245
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    return p0

    .line 243
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readFloatArray(Ljava/nio/channels/ByteChannel;)[F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    .line 437
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 438
    invoke-interface {p0, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 440
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 441
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 442
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object p0

    return-object p0

    .line 445
    :cond_0
    new-array v0, v0, [F

    .line 446
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    return-object v0

    .line 439
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readInt(Ljava/nio/channels/ByteChannel;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 167
    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static readInt(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 180
    invoke-static {p1, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 181
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 183
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 184
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0

    .line 182
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readIntArray(Ljava/nio/channels/ByteChannel;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    .line 389
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 390
    invoke-interface {p0, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 392
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 393
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    .line 394
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object p0

    return-object p0

    .line 397
    :cond_0
    new-array v0, v0, [I

    .line 398
    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object v0

    .line 391
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readLong(Ljava/nio/channels/ByteChannel;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 196
    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->readLong(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readLong(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 209
    invoke-static {p1, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 210
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 212
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 213
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    return-wide p0

    .line 211
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readLongArray(Ljava/nio/channels/ByteChannel;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    .line 413
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 414
    invoke-interface {p0, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 416
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 417
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    .line 418
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->array()[J

    move-result-object p0

    return-object p0

    .line 421
    :cond_0
    new-array v0, v0, [J

    .line 422
    invoke-virtual {p0, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    return-object v0

    .line 415
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readShort(Ljava/nio/channels/ByteChannel;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 138
    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->readShort(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)S

    move-result p0

    return p0
.end method

.method public static readShort(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 151
    invoke-static {p1, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 152
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 154
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 155
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    return p0

    .line 153
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readShortArray(Ljava/nio/channels/ByteChannel;)[S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 365
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 366
    invoke-interface {p0, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 368
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 369
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    .line 370
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object p0

    return-object p0

    .line 373
    :cond_0
    new-array v0, v0, [S

    .line 374
    invoke-virtual {p0, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    return-object v0

    .line 367
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static readString(Ljava/nio/channels/ByteChannel;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    invoke-static {p0}, Lcom/serenegiant/io/ChannelHelper;->readInt(Ljava/nio/channels/ByteChannel;)I

    move-result v0

    .line 286
    new-array v1, v0, [B

    .line 287
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 288
    invoke-interface {p0, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 290
    new-instance p0, Ljava/lang/String;

    sget-object v0, Lcom/serenegiant/io/ChannelHelper;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    .line 289
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static write(Ljava/nio/channels/ByteChannel;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 581
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;BLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;BLjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 595
    invoke-static {p2, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 596
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 597
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 598
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 610
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;CLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;CLjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 624
    invoke-static {p2, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 625
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 626
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 627
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 755
    invoke-static {p0, p1, p2, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;DLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;DLjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 769
    invoke-static {p3, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 770
    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 771
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 772
    invoke-interface {p0, p3}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 726
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;FLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;FLjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 740
    invoke-static {p2, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 741
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 742
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 743
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 668
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 682
    invoke-static {p2, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 683
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 684
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 685
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 697
    invoke-static {p0, p1, p2, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;JLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;JLjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 711
    invoke-static {p3, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 712
    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 713
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 714
    invoke-interface {p0, p3}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    sget-object v0, Lcom/serenegiant/io/ChannelHelper;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 785
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 786
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1042
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 1043
    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 639
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;SLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;SLjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 653
    invoke-static {p2, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 654
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 655
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 656
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 552
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ZLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;ZLjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 566
    invoke-static {p2, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    int-to-byte p1, p1

    .line 567
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 568
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 569
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 831
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;I)V

    .line 832
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 844
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[CLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[CLjava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 858
    array-length v0, p1

    .line 859
    invoke-static {p0, v0, p2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V

    mul-int/lit8 v1, v0, 0x2

    .line 860
    invoke-static {p2, v1}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 862
    aget-char v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 864
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 865
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1009
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[DLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[DLjava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1023
    array-length v0, p1

    .line 1024
    invoke-static {p0, v0, p2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V

    mul-int/lit8 v1, v0, 0x8

    .line 1025
    invoke-static {p2, v1}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1027
    aget-wide v2, p1, v1

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1029
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1030
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 976
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[FLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[FLjava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 990
    array-length v0, p1

    .line 991
    invoke-static {p0, v0, p2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V

    mul-int/lit8 v1, v0, 0x4

    .line 992
    invoke-static {p2, v1}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 994
    aget v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 996
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 997
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 910
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[ILjava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 924
    array-length v0, p1

    .line 925
    invoke-static {p0, v0, p2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V

    mul-int/lit8 v1, v0, 0x4

    .line 926
    invoke-static {p2, v1}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 928
    aget v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 930
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 931
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 943
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[JLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[JLjava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 957
    array-length v0, p1

    .line 958
    invoke-static {p0, v0, p2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V

    mul-int/lit8 v1, v0, 0x8

    .line 959
    invoke-static {p2, v1}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 961
    aget-wide v2, p1, v1

    invoke-virtual {p2, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 963
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 964
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 877
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[SLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[SLjava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 891
    array-length v0, p1

    .line 892
    invoke-static {p0, v0, p2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V

    mul-int/lit8 v1, v0, 0x2

    .line 893
    invoke-static {p2, v1}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 895
    aget-short v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 897
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 898
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 798
    invoke-static {p0, p1, v0}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;[ZLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static write(Ljava/nio/channels/ByteChannel;[ZLjava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 812
    array-length v0, p1

    .line 813
    invoke-static {p0, v0, p2}, Lcom/serenegiant/io/ChannelHelper;->write(Ljava/nio/channels/ByteChannel;ILjava/nio/ByteBuffer;)V

    .line 814
    invoke-static {p2, v0}, Lcom/serenegiant/io/ChannelHelper;->checkBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 816
    aget-boolean v2, p1, v1

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 818
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 819
    invoke-interface {p0, p2}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method
