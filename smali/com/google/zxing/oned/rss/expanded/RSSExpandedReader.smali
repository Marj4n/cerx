.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;


# static fields
.field private static final EVEN_TOTAL_SUBSET:[I

.field private static final FINDER_PATTERNS:[[I

.field private static final FINDER_PATTERN_SEQUENCES:[[I

.field private static final FINDER_PAT_A:I = 0x0

.field private static final FINDER_PAT_B:I = 0x1

.field private static final FINDER_PAT_C:I = 0x2

.field private static final FINDER_PAT_D:I = 0x3

.field private static final FINDER_PAT_E:I = 0x4

.field private static final FINDER_PAT_F:I = 0x5

.field private static final GSUM:[I

.field private static final LONGEST_SEQUENCE_SIZE:I

.field private static final MAX_PAIRS:I = 0xb

.field private static final SYMBOL_WIDEST:[I

.field private static final WEIGHTS:[[I


# instance fields
.field private final currentSequence:[I

.field private final pairs:Ljava/util/Vector;

.field private final startEnd:[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    const/4 v1, 0x6

    new-array v2, v1, [[I

    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v7, 0x2

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v8, 0x3

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v0

    sput-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    const/16 v2, 0x17

    new-array v2, v2, [[I

    const/16 v4, 0x8

    new-array v9, v4, [I

    fill-array-data v9, :array_9

    aput-object v9, v2, v5

    new-array v9, v4, [I

    fill-array-data v9, :array_a

    aput-object v9, v2, v6

    new-array v9, v4, [I

    fill-array-data v9, :array_b

    aput-object v9, v2, v7

    new-array v9, v4, [I

    fill-array-data v9, :array_c

    aput-object v9, v2, v8

    new-array v9, v4, [I

    fill-array-data v9, :array_d

    aput-object v9, v2, v3

    new-array v9, v4, [I

    fill-array-data v9, :array_e

    aput-object v9, v2, v0

    new-array v9, v4, [I

    fill-array-data v9, :array_f

    aput-object v9, v2, v1

    new-array v9, v4, [I

    fill-array-data v9, :array_10

    const/4 v10, 0x7

    aput-object v9, v2, v10

    new-array v9, v4, [I

    fill-array-data v9, :array_11

    aput-object v9, v2, v4

    new-array v9, v4, [I

    fill-array-data v9, :array_12

    const/16 v11, 0x9

    aput-object v9, v2, v11

    new-array v9, v4, [I

    fill-array-data v9, :array_13

    const/16 v12, 0xa

    aput-object v9, v2, v12

    new-array v9, v4, [I

    fill-array-data v9, :array_14

    const/16 v13, 0xb

    aput-object v9, v2, v13

    new-array v9, v4, [I

    fill-array-data v9, :array_15

    const/16 v14, 0xc

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_16

    const/16 v14, 0xd

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_17

    const/16 v14, 0xe

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_18

    const/16 v14, 0xf

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_19

    const/16 v14, 0x10

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1a

    const/16 v14, 0x11

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1b

    const/16 v14, 0x12

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1c

    const/16 v14, 0x13

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1d

    const/16 v14, 0x14

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1e

    const/16 v14, 0x15

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1f

    const/16 v14, 0x16

    aput-object v9, v2, v14

    sput-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    new-array v2, v12, [[I

    new-array v9, v7, [I

    fill-array-data v9, :array_20

    aput-object v9, v2, v5

    new-array v5, v8, [I

    fill-array-data v5, :array_21

    aput-object v5, v2, v6

    new-array v5, v3, [I

    fill-array-data v5, :array_22

    aput-object v5, v2, v7

    new-array v5, v0, [I

    fill-array-data v5, :array_23

    aput-object v5, v2, v8

    new-array v5, v1, [I

    fill-array-data v5, :array_24

    aput-object v5, v2, v3

    new-array v3, v10, [I

    fill-array-data v3, :array_25

    aput-object v3, v2, v0

    new-array v0, v4, [I

    fill-array-data v0, :array_26

    aput-object v0, v2, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_27

    aput-object v0, v2, v10

    new-array v0, v12, [I

    fill-array-data v0, :array_28

    aput-object v0, v2, v4

    new-array v0, v13, [I

    fill-array-data v0, :array_29

    aput-object v0, v2, v11

    sput-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    array-length v0, v2

    sub-int/2addr v0, v6

    aget-object v0, v2, v0

    array-length v0, v0

    sput v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->LONGEST_SEQUENCE_SIZE:I

    return-void

    :array_0
    .array-data 4
        0x7
        0x5
        0x4
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x14
        0x34
        0x68
        0xcc
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x15c
        0x56c
        0xb84
        0xf94
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x8
        0x4
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x6
        0x4
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x4
        0x6
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x2
        0x8
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x6
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x2
        0x9
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    :array_b
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    :array_c
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_d
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_e
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_f
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_10
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_11
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_12
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_13
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_14
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_15
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_16
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_17
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_18
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_1a
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_1b
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_1c
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_1d
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_1e
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_1f
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    :array_20
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x2
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/Vector;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    sget v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->LONGEST_SEQUENCE_SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->currentSequence:[I

    return-void
.end method

.method private adjustOddEvenCounts(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->oddCounts:[I

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->evenCounts:[I

    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v1

    add-int v2, v0, v1

    sub-int/2addr v2, p1

    and-int/lit8 p1, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x4

    const/16 v7, 0xd

    if-le v0, v7, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    if-ge v0, v6, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x0

    :goto_3
    if-le v1, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    if-ge v1, v6, :cond_5

    const/4 v3, 0x1

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-ne v2, v4, :cond_9

    if-eqz p1, :cond_7

    if-nez v5, :cond_6

    move v4, v8

    :goto_5
    const/4 v9, 0x1

    goto :goto_7

    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_7
    if-eqz v5, :cond_8

    move v4, v8

    :goto_6
    const/4 v6, 0x1

    goto :goto_7

    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_9
    const/4 v7, -0x1

    if-ne v2, v7, :cond_d

    if-eqz p1, :cond_b

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_b
    if-eqz v5, :cond_c

    move v4, v8

    const/4 v3, 0x1

    goto :goto_7

    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_d
    if-nez v2, :cond_18

    if-eqz p1, :cond_10

    if-eqz v5, :cond_f

    if-ge v0, v1, :cond_e

    goto :goto_6

    :cond_e
    move v4, v8

    const/4 v3, 0x1

    goto :goto_5

    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_10
    if-nez v5, :cond_17

    move v4, v8

    :goto_7
    if-eqz v4, :cond_12

    if-nez v9, :cond_11

    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->oddCounts:[I

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->oddRoundingErrors:[F

    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    goto :goto_8

    :cond_11
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_12
    :goto_8
    if-eqz v9, :cond_13

    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->oddCounts:[I

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->oddRoundingErrors:[F

    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    :cond_13
    if-eqz v3, :cond_15

    if-nez v6, :cond_14

    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->evenCounts:[I

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->oddRoundingErrors:[F

    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    goto :goto_9

    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_15
    :goto_9
    if-eqz v6, :cond_16

    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->evenCounts:[I

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->evenRoundingErrors:[F

    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    :cond_16
    return-void

    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_18
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private checkChecksum()Z
    .locals 8

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    :goto_0
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    rem-int/lit16 v0, v0, 0xd3

    add-int/lit8 v4, v4, -0x4

    mul-int/lit16 v4, v4, 0xd3

    add-int/2addr v4, v0

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v0

    if-ne v4, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private checkPairSequence(Ljava/util/Vector;Lcom/google/zxing/oned/rss/FinderPattern;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->currentSequence:[I

    array-length v2, v2

    if-gt v0, v2, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->currentSequence:[I

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->currentSequence:[I

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result p2

    aput p2, p1, v3

    const/4 p1, 0x0

    :goto_1
    sget-object p2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    array-length v3, p2

    if-ge p1, v3, :cond_5

    aget-object p2, p2, p1

    array-length v3, p2

    if-lt v3, v0, :cond_4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->currentSequence:[I

    aget v4, v4, v3

    aget v5, p2, v3

    if-eq v4, v5, :cond_1

    const/4 v3, 0x0

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_4

    array-length p1, p2

    if-ne v0, p1, :cond_3

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_4
    return v1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private static constructResult(Ljava/util/Vector;)Lcom/google/zxing/Result;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;->buildBitArray(Ljava/util/Vector;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object p0

    new-instance v3, Lcom/google/zxing/Result;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    aget-object v5, v2, v1

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aget-object v2, v2, v5

    aput-object v2, v4, v5

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    aget-object p0, p0, v5

    const/4 v1, 0x3

    aput-object p0, v4, v1

    sget-object p0, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1, v4, p0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v3
.end method

.method private findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/Vector;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeFinderCounters:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {p3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object p3

    aget p3, p3, v2

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    rem-int/2addr p2, v3

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    const/4 v6, 0x0

    :goto_2
    if-ge p3, v5, :cond_4

    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    xor-int/2addr v6, v2

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    move v7, v6

    const/4 v8, 0x0

    move v6, p3

    :goto_4
    if-ge p3, v5, :cond_a

    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v7

    if-eqz v9, :cond_5

    aget v9, v0, v8

    add-int/2addr v9, v2

    aput v9, v0, v8

    goto :goto_6

    :cond_5
    if-ne v8, v4, :cond_9

    if-eqz p2, :cond_6

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    :cond_6
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isFinderPattern([I)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aput v6, p1, v1

    aput p3, p1, v2

    return-void

    :cond_7
    if-eqz p2, :cond_8

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    :cond_8
    aget v9, v0, v1

    aget v10, v0, v2

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    aget v9, v0, v3

    aput v9, v0, v1

    aget v9, v0, v4

    aput v9, v0, v2

    aput v1, v0, v3

    aput v1, v0, v4

    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v8, v8, 0x1

    :goto_5
    aput v2, v0, v8

    xor-int/lit8 v7, v7, 0x1

    :goto_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private static getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    :goto_0
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-ne v1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    xor-int/lit8 v0, v0, 0x1

    :goto_1
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-ne v1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return p1
.end method

.method private static isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget p3, p3, v0

    sub-int/2addr p3, v1

    :goto_0
    if-ltz p3, :cond_0

    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    add-int/2addr p3, v1

    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v2, p1, v0

    sub-int/2addr v2, p3

    aget p1, p1, v1

    move v7, p1

    move v6, p3

    goto :goto_2

    :cond_1
    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v2, p3, v0

    aget p3, p3, v1

    add-int/2addr p3, v1

    :goto_1
    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p1, Lcom/google/zxing/common/BitArray;->size:I

    if-ge p3, v3, :cond_2

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget p1, p1, v1

    sub-int p1, p3, p1

    move v7, p3

    move v6, v2

    move v2, p1

    :goto_2
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeFinderCounters:[I

    array-length p3, p1

    sub-int/2addr p3, v1

    :goto_3
    if-lez p3, :cond_3

    add-int/lit8 v3, p3, -0x1

    aget v3, p1, v3

    aput v3, p1, p3

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_3
    aput v2, p1, v0

    :try_start_0
    sget-object p3, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    invoke-static {p1, p3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFinderValue([I[[I)I

    move-result v4
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 p3, 0x2

    new-array v5, p3, [I

    aput v6, v5, v0

    aput v7, v5, v1

    move-object v3, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static reverseCounters([I)V
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    aget v4, p0, v3

    aput v4, p0, v1

    aput v2, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->dataCharacterCounters:[I

    const/4 v3, 0x0

    aput v3, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v5, 0x2

    aput v3, v2, v5

    const/4 v6, 0x3

    aput v3, v2, v6

    const/4 v6, 0x4

    aput v3, v2, v6

    const/4 v7, 0x5

    aput v3, v2, v7

    const/4 v7, 0x6

    aput v3, v2, v7

    const/4 v7, 0x7

    aput v3, v2, v7

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v7

    if-eqz p4, :cond_0

    aget v7, v7, v3

    invoke-static {v1, v7, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    goto :goto_1

    :cond_0
    aget v7, v7, v4

    add-int/2addr v7, v4

    invoke-static {v1, v7, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    array-length v1, v2

    sub-int/2addr v1, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_1

    aget v8, v2, v7

    aget v9, v2, v1

    aput v9, v2, v7

    aput v8, v2, v1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v1, 0x11

    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v1

    div-float/2addr v7, v8

    iget-object v8, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->oddCounts:[I

    iget-object v9, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->evenCounts:[I

    iget-object v10, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->oddRoundingErrors:[F

    iget-object v11, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->evenRoundingErrors:[F

    const/4 v12, 0x0

    :goto_2
    array-length v13, v2

    if-ge v12, v13, :cond_5

    const/high16 v13, 0x3f800000    # 1.0f

    aget v14, v2, v12

    int-to-float v14, v14

    mul-float v14, v14, v13

    div-float/2addr v14, v7

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    const/16 v15, 0x8

    if-ge v13, v4, :cond_2

    const/4 v13, 0x1

    goto :goto_3

    :cond_2
    if-le v13, v15, :cond_3

    const/16 v13, 0x8

    :cond_3
    :goto_3
    shr-int/lit8 v15, v12, 0x1

    and-int/lit8 v16, v12, 0x1

    if-nez v16, :cond_4

    aput v13, v8, v15

    int-to-float v13, v13

    sub-float/2addr v14, v13

    aput v14, v10, v15

    goto :goto_4

    :cond_4
    aput v13, v9, v15

    int-to-float v13, v13

    sub-float/2addr v14, v13

    aput v14, v11, v15

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->adjustOddEvenCounts(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    if-eqz p3, :cond_6

    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    const/4 v2, 0x2

    :goto_5
    add-int/2addr v1, v2

    xor-int/lit8 v2, p4, 0x1

    add-int/2addr v1, v2

    sub-int/2addr v1, v4

    array-length v2, v8

    sub-int/2addr v2, v4

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_6
    if-ltz v2, :cond_8

    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v11

    if-eqz v11, :cond_7

    sget-object v11, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v11, v11, v1

    mul-int/lit8 v12, v2, 0x2

    aget v11, v11, v12

    aget v12, v8, v2

    mul-int v12, v12, v11

    add-int/2addr v7, v12

    :cond_7
    aget v11, v8, v2

    add-int/2addr v10, v11

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_8
    array-length v2, v9

    sub-int/2addr v2, v4

    const/4 v11, 0x0

    :goto_7
    if-ltz v2, :cond_a

    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v12

    if-eqz v12, :cond_9

    sget-object v12, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v12, v12, v1

    mul-int/lit8 v13, v2, 0x2

    add-int/2addr v13, v4

    aget v12, v12, v13

    aget v13, v9, v2

    mul-int v13, v13, v12

    add-int/2addr v11, v13

    :cond_9
    aget v12, v9, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_a
    add-int/2addr v7, v11

    and-int/lit8 v1, v10, 0x1

    if-nez v1, :cond_b

    const/16 v1, 0xd

    if-gt v10, v1, :cond_b

    if-lt v10, v6, :cond_b

    sub-int/2addr v1, v10

    div-int/2addr v1, v5

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    aget v2, v2, v1

    rsub-int/lit8 v5, v2, 0x9

    invoke-static {v8, v2, v4}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v2

    invoke-static {v9, v5, v3}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v3

    sget-object v4, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    aget v4, v4, v1

    sget-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    aget v1, v5, v1

    mul-int v2, v2, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    new-instance v1, Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-direct {v1, v2, v7}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v1

    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reset()V

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/Vector;

    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/Vector;

    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/Vector;)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/Vector;

    invoke-virtual {p0, p2, v0, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/Vector;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mayBeLast()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/Vector;

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mustBeLast()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    return-void
.end method

.method retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/Vector;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x1

    :cond_1
    invoke-direct {p0, p1, p2, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/Vector;I)V

    invoke-direct {p0, p1, p3, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v3, v3, v2

    invoke-static {p1, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_1

    invoke-direct {p0, p2, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkPairSequence(Ljava/util/Vector;Lcom/google/zxing/oned/rss/FinderPattern;)Z

    move-result p2

    invoke-virtual {p0, p1, v5, v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object p3

    :try_start_0
    invoke-virtual {p0, p1, v5, v0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    :goto_2
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-direct {v0, p3, p1, v5, p2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V

    return-object v0

    :cond_3
    throw p1
.end method
