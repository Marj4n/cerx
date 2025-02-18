.class public final Lcom/serenegiant/utils/BitsHelper;
.super Ljava/lang/Object;
.source "BitsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LSB(B)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    shl-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    int-to-byte p0, p0

    shl-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    int-to-byte p0, p0

    shl-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    int-to-byte p0, p0

    .line 145
    invoke-static {p0}, Lcom/serenegiant/utils/BitsHelper;->countBits(B)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static LSB(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    shl-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 176
    invoke-static {p0}, Lcom/serenegiant/utils/BitsHelper;->countBits(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static LSB(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    shl-long v0, p0, v0

    or-long/2addr p0, v0

    const/4 v0, 0x2

    shl-long v0, p0, v0

    or-long/2addr p0, v0

    const/4 v0, 0x4

    shl-long v0, p0, v0

    or-long/2addr p0, v0

    const/16 v0, 0x8

    shl-long v0, p0, v0

    or-long/2addr p0, v0

    const/16 v0, 0x10

    shl-long v0, p0, v0

    or-long/2addr p0, v0

    const/16 v0, 0x20

    shl-long v0, p0, v0

    or-long/2addr p0, v0

    .line 193
    invoke-static {p0, p1}, Lcom/serenegiant/utils/BitsHelper;->countBits(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x40

    return p0
.end method

.method public static LSB(S)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    shl-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    int-to-short p0, p0

    shl-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    int-to-short p0, p0

    shl-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    int-to-short p0, p0

    shl-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    .line 160
    invoke-static {p0}, Lcom/serenegiant/utils/BitsHelper;->countBits(S)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static MSB(B)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    int-to-byte p0, p0

    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    int-to-byte p0, p0

    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    int-to-byte p0, p0

    .line 85
    invoke-static {p0}, Lcom/serenegiant/utils/BitsHelper;->countBits(B)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static MSB(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 114
    invoke-static {p0}, Lcom/serenegiant/utils/BitsHelper;->countBits(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static MSB(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p0, v0

    or-long/2addr p0, v1

    const/4 v1, 0x2

    ushr-long v1, p0, v1

    or-long/2addr p0, v1

    const/4 v1, 0x4

    ushr-long v1, p0, v1

    or-long/2addr p0, v1

    const/16 v1, 0x8

    ushr-long v1, p0, v1

    or-long/2addr p0, v1

    const/16 v1, 0x10

    ushr-long v1, p0, v1

    or-long/2addr p0, v1

    const/16 v1, 0x20

    ushr-long v1, p0, v1

    or-long/2addr p0, v1

    .line 131
    invoke-static {p0, p1}, Lcom/serenegiant/utils/BitsHelper;->countBits(J)I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public static MSB(S)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    int-to-short p0, p0

    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    int-to-short p0, p0

    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    int-to-short p0, p0

    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    .line 99
    invoke-static {p0}, Lcom/serenegiant/utils/BitsHelper;->countBits(S)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static countBits(B)I
    .locals 1

    and-int/lit8 v0, p0, 0x55

    ushr-int/lit8 p0, p0, 0x1

    and-int/lit8 p0, p0, 0x55

    add-int/2addr v0, p0

    and-int/lit8 p0, v0, 0x33

    ushr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x33

    add-int/2addr p0, v0

    and-int/lit8 v0, p0, 0xf

    ushr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0xf

    add-int/2addr v0, p0

    return v0
.end method

.method public static countBits(I)I
    .locals 2

    const v0, 0x55555555

    and-int v1, p0, v0

    ushr-int/lit8 p0, p0, 0x1

    and-int/2addr p0, v0

    add-int/2addr v1, p0

    const p0, 0x33333333

    and-int v0, v1, p0

    ushr-int/lit8 v1, v1, 0x2

    and-int/2addr p0, v1

    add-int/2addr v0, p0

    const p0, 0xf0f0f0f

    and-int v1, v0, p0

    ushr-int/lit8 v0, v0, 0x4

    and-int/2addr p0, v0

    add-int/2addr v1, p0

    const p0, 0xff00ff

    and-int v0, v1, p0

    ushr-int/lit8 v1, v1, 0x8

    and-int/2addr p0, v1

    add-int/2addr v0, p0

    const p0, 0xffff

    and-int v1, v0, p0

    ushr-int/lit8 v0, v0, 0x10

    and-int/2addr p0, v0

    add-int/2addr v1, p0

    return v1
.end method

.method public static countBits(J)I
    .locals 5

    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    and-long v2, p0, v0

    const/4 v4, 0x1

    ushr-long/2addr p0, v4

    and-long/2addr p0, v0

    add-long/2addr v2, p0

    const-wide p0, 0x3333333333333333L    # 4.667261458395856E-62

    and-long v0, v2, p0

    const/4 v4, 0x2

    ushr-long/2addr v2, v4

    and-long/2addr p0, v2

    add-long/2addr v0, p0

    const-wide p0, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long v2, v0, p0

    const/4 v4, 0x4

    ushr-long/2addr v0, v4

    and-long/2addr p0, v0

    add-long/2addr v2, p0

    const-wide p0, 0xff00ff00ff00ffL

    and-long v0, v2, p0

    const/16 v4, 0x8

    ushr-long/2addr v2, v4

    and-long/2addr p0, v2

    add-long/2addr v0, p0

    const-wide p0, 0xffff0000ffffL

    and-long v2, v0, p0

    const/16 v4, 0x10

    ushr-long/2addr v0, v4

    and-long/2addr p0, v0

    add-long/2addr v2, p0

    const-wide p0, 0xffffffffL

    and-long v0, v2, p0

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    and-long/2addr p0, v2

    add-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static countBits(S)I
    .locals 1

    and-int/lit16 v0, p0, 0x5555

    ushr-int/lit8 p0, p0, 0x1

    and-int/lit16 p0, p0, 0x5555

    add-int/2addr v0, p0

    and-int/lit16 p0, v0, 0x3333

    ushr-int/lit8 v0, v0, 0x2

    and-int/lit16 v0, v0, 0x3333

    add-int/2addr p0, v0

    and-int/lit16 v0, p0, 0xf0f

    ushr-int/lit8 p0, p0, 0x4

    and-int/lit16 p0, p0, 0xf0f

    add-int/2addr v0, p0

    and-int/lit16 p0, v0, 0xff

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p0, v0

    return p0
.end method

.method public static squareBits(B)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p0, v0

    .line 203
    invoke-static {p0}, Lcom/serenegiant/utils/BitsHelper;->MSB(I)I

    move-result p0

    add-int/2addr p0, v0

    shl-int p0, v0, p0

    return p0
.end method

.method public static squareBits(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p0, v0

    .line 223
    invoke-static {p0}, Lcom/serenegiant/utils/BitsHelper;->MSB(I)I

    move-result p0

    add-int/2addr p0, v0

    shl-int p0, v0, p0

    return p0
.end method

.method public static squareBits(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    .line 233
    invoke-static {p0, p1}, Lcom/serenegiant/utils/BitsHelper;->MSB(J)I

    move-result p0

    const/4 p1, 0x1

    add-int/2addr p0, p1

    shl-int p0, p1, p0

    return p0
.end method

.method public static squareBits(S)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p0, v0

    .line 213
    invoke-static {p0}, Lcom/serenegiant/utils/BitsHelper;->MSB(I)I

    move-result p0

    add-int/2addr p0, v0

    shl-int p0, v0, p0

    return p0
.end method
