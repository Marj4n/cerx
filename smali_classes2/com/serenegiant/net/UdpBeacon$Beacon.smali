.class Lcom/serenegiant/net/UdpBeacon$Beacon;
.super Ljava/lang/Object;
.source "UdpBeacon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/net/UdpBeacon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Beacon"
.end annotation


# static fields
.field public static final BEACON_IDENTITY:Ljava/lang/String; = "SAKI"


# instance fields
.field private final extraBytes:I

.field private final extras:Ljava/nio/ByteBuffer;

.field private final listenPort:I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->uuid:Ljava/util/UUID;

    .line 88
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    if-gez v0, :cond_0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 89
    :cond_0
    iput v0, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->listenPort:I

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    .line 92
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extraBytes:I

    if-lez v0, :cond_1

    .line 94
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extras:Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 96
    iget-object p1, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extras:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    .line 98
    :cond_1
    iput-object v2, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extras:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extraBytes:I

    .line 102
    iput-object v2, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extras:Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;I)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/net/UdpBeacon$Beacon;-><init>(Ljava/util/UUID;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;II)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->uuid:Ljava/util/UUID;

    .line 112
    iput p2, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->listenPort:I

    and-int/lit16 p1, p3, 0xff

    .line 113
    iput p1, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extraBytes:I

    if-lez p1, :cond_0

    .line 115
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extras:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extras:Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method static synthetic access$1200(Lcom/serenegiant/net/UdpBeacon$Beacon;)Ljava/util/UUID;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->uuid:Ljava/util/UUID;

    return-object p0
.end method


# virtual methods
.method public asBytes()[B
    .locals 5

    .line 122
    iget v0, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extraBytes:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x17

    new-array v0, v0, [B

    .line 123
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v3, "SAKI"

    .line 124
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 126
    iget-object v1, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->uuid:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 127
    iget-object v1, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->uuid:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 128
    iget v1, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->listenPort:I

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 129
    iget v1, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extraBytes:I

    if-lez v1, :cond_1

    int-to-byte v1, v1

    .line 130
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 131
    iget-object v1, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extras:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 132
    iget-object v1, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extras:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 133
    iget-object v1, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extras:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 135
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public extra()Ljava/nio/ByteBuffer;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extras:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public extra(Ljava/nio/ByteBuffer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 149
    :goto_0
    iget v1, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extraBytes:I

    if-lez v1, :cond_1

    if-gt v1, v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extras:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 151
    iget-object v0, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extras:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 152
    iget-object p1, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extras:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    return-void
.end method

.method public extra([B)V
    .locals 0

    .line 144
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/net/UdpBeacon$Beacon;->extra(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 157
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->listenPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/serenegiant/net/UdpBeacon$Beacon;->extraBytes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Beacon(%s,port=%d,extra=%d)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
