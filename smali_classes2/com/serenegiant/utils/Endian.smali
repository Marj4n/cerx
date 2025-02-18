.class public Lcom/serenegiant/utils/Endian;
.super Ljava/lang/Object;
.source "Endian.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static be2boolean([BI)Z
    .locals 0

    .line 23
    aget-byte p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static be2char([BI)C
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 31
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    int-to-char p0, v0

    return p0
.end method

.method public static be2double([BI)D
    .locals 0

    .line 95
    invoke-static {p0, p1}, Lcom/serenegiant/utils/Endian;->be2long([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static be2float([BI)F
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lcom/serenegiant/utils/Endian;->be2int([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static be2int([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x3

    .line 51
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    add-int/2addr v0, p0

    return v0
.end method

.method public static be2long([BI)J
    .locals 7

    add-int/lit8 v0, p1, 0x7

    .line 73
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    aget-byte p0, p0, p1

    int-to-long p0, p0

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static be2short([BI)S
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 41
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    int-to-short p0, v0

    return p0
.end method

.method public static bool2be([BIZ)V
    .locals 0

    int-to-byte p2, p2

    .line 103
    aput-byte p2, p0, p1

    return-void
.end method

.method public static bool2le([BIZ)V
    .locals 0

    int-to-byte p2, p2

    .line 107
    aput-byte p2, p0, p1

    return-void
.end method

.method public static char2be([BIC)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    .line 111
    aput-byte v1, p0, v0

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 112
    aput-byte p2, p0, p1

    return-void
.end method

.method public static char2le([BIC)V
    .locals 1

    int-to-byte v0, p2

    .line 116
    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 117
    aput-byte p2, p0, p1

    return-void
.end method

.method public static double2be([BID)V
    .locals 0

    .line 175
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lcom/serenegiant/utils/Endian;->long2be([BIJ)V

    return-void
.end method

.method public static double2le([BID)V
    .locals 0

    .line 179
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lcom/serenegiant/utils/Endian;->long2le([BIJ)V

    return-void
.end method

.method public static float2be([BIF)V
    .locals 0

    .line 145
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/Endian;->int2be([BII)V

    return-void
.end method

.method public static float2le([BIF)V
    .locals 0

    .line 149
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/Endian;->int2le([BII)V

    return-void
.end method

.method public static int2be([BII)V
    .locals 2

    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    .line 131
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 132
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 133
    aput-byte v1, p0, v0

    ushr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    .line 134
    aput-byte p2, p0, p1

    return-void
.end method

.method public static int2le([BII)V
    .locals 2

    int-to-byte v0, p2

    .line 138
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 139
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 140
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    ushr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    .line 141
    aput-byte p2, p0, p1

    return-void
.end method

.method public static le2boolean([BI)Z
    .locals 0

    .line 27
    aget-byte p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static le2char([BI)C
    .locals 1

    .line 36
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    int-to-char p0, v0

    return p0
.end method

.method public static le2double([BI)D
    .locals 0

    .line 99
    invoke-static {p0, p1}, Lcom/serenegiant/utils/Endian;->le2long([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static le2float([BI)F
    .locals 0

    .line 69
    invoke-static {p0, p1}, Lcom/serenegiant/utils/Endian;->le2int([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static le2int([BI)I
    .locals 2

    .line 58
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    add-int/2addr v0, p0

    return v0
.end method

.method public static le2long([BI)J
    .locals 7

    .line 84
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static le2short([BI)S
    .locals 1

    .line 46
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    int-to-short p0, v0

    return p0
.end method

.method public static long2be([BIJ)V
    .locals 3

    add-int/lit8 v0, p1, 0x7

    long-to-int v1, p2

    int-to-byte v1, v1

    .line 153
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 154
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 155
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 156
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 157
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 158
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 159
    aput-byte v1, p0, v0

    const/16 v0, 0x38

    ushr-long/2addr p2, v0

    long-to-int p3, p2

    int-to-byte p2, p3

    .line 160
    aput-byte p2, p0, p1

    return-void
.end method

.method public static long2le([BIJ)V
    .locals 3

    long-to-int v0, p2

    int-to-byte v0, v0

    .line 164
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 165
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 166
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 167
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 168
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 169
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 170
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x7

    const/16 v0, 0x38

    ushr-long/2addr p2, v0

    long-to-int p3, p2

    int-to-byte p2, p3

    .line 171
    aput-byte p2, p0, p1

    return-void
.end method

.method public static short2be([BIS)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    .line 121
    aput-byte v1, p0, v0

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 122
    aput-byte p2, p0, p1

    return-void
.end method

.method public static short2le([BIS)V
    .locals 1

    int-to-byte v0, p2

    .line 126
    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 127
    aput-byte p2, p0, p1

    return-void
.end method
