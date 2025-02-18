.class public final Lcom/google/zxing/qrcode/decoder/Version;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/decoder/Version$ECB;,
        Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    }
.end annotation


# static fields
.field private static final VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

.field private static final VERSION_DECODE_INFO:[I


# instance fields
.field private final alignmentPatternCenters:[I

.field private final ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

.field private final totalCodewords:I

.field private final versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    invoke-static {}, Lcom/google/zxing/qrcode/decoder/Version;->buildVersions()[Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    return-void

    :array_0
    .array-data 4
        0x7c94
        0x85bc
        0x9a99
        0xa4d3
        0xbbf6
        0xc762
        0xd847
        0xe60d
        0xf928
        0x10b78
        0x1145d
        0x12a17
        0x13532
        0x149a6
        0x15683
        0x168c9
        0x177ec
        0x18ec4
        0x191e1
        0x1afab
        0x1b08e
        0x1cc1a
        0x1d33f
        0x1ed75
        0x1f250
        0x209d5
        0x216f0
        0x228ba
        0x2379f
        0x24b0b
        0x2542e
        0x26a64
        0x27541
        0x28c69
    .end array-data
.end method

.method private constructor <init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    const/4 v0, 0x1

    aput-object p4, p1, v0

    const/4 p4, 0x2

    aput-object p5, p1, p4

    const/4 p4, 0x3

    aput-object p6, p1, p4

    iput-object p1, p0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    invoke-virtual {p3}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result p1

    invoke-virtual {p3}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object p3

    const/4 p4, 0x0

    :goto_0
    array-length p5, p3

    if-ge p2, p5, :cond_0

    aget-object p5, p3, p2

    invoke-virtual {p5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result p6

    invoke-virtual {p5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result p5

    add-int/2addr p5, p1

    mul-int p6, p6, p5

    add-int/2addr p4, p6

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput p4, p0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    return-void
.end method

.method private static buildVersions()[Lcom/google/zxing/qrcode/decoder/Version;
    .locals 41

    const/16 v0, 0x28

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v1, 0x0

    new-array v3, v1, [I

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v9, 0x1

    const/16 v10, 0x13

    invoke-direct {v1, v9, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/4 v11, 0x7

    invoke-direct {v4, v11, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    invoke-direct {v1, v9, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v13, 0xa

    invoke-direct {v5, v13, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xd

    invoke-direct {v1, v9, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v6, v14, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v2, 0x9

    invoke-direct {v1, v9, v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v15, 0x11

    invoke-direct {v7, v15, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/4 v2, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x22

    invoke-direct {v5, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v4, v13, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x1c

    invoke-direct {v6, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v5, v12, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x16

    invoke-direct {v8, v9, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v6, v13, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v11, v9, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v8, v7, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v17, 0x2

    move-object/from16 v16, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    invoke-direct/range {v16 .. v22}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x37

    invoke-direct {v5, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v6, 0xf

    invoke-direct {v4, v6, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2c

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1a

    invoke-direct {v5, v11, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v7, v2, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v15, 0x12

    invoke-direct {v8, v15, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v15, v2, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v7, v13, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v24, 0x3

    move-object/from16 v23, v1

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v8

    move-object/from16 v29, v7

    invoke-direct/range {v23 .. v29}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x50

    invoke-direct {v5, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v7, 0x14

    invoke-direct {v4, v7, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x20

    invoke-direct {v7, v2, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v8, 0x12

    invoke-direct {v5, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x18

    invoke-direct {v8, v2, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v7, v11, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x4

    const/16 v13, 0x9

    invoke-direct {v14, v10, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v8, v12, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v26, 0x4

    move-object/from16 v25, v1

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    invoke-direct/range {v25 .. v31}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v4, v2, [I

    fill-array-data v4, :array_3

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x6c

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v5, v11, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x2b

    invoke-direct {v8, v2, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v7, v15, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v13, v2, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v14, v2, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x12

    invoke-direct {v8, v11, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xb

    invoke-direct {v13, v2, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0xc

    invoke-direct {v14, v2, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x16

    invoke-direct {v11, v9, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v24, 0x5

    move-object/from16 v23, v1

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v11

    invoke-direct/range {v23 .. v29}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v4, v2, [I

    fill-array-data v4, :array_4

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x44

    invoke-direct {v7, v2, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v8, 0x12

    invoke-direct {v5, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x1b

    invoke-direct {v8, v10, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v7, v12, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x13

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v8, v15, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v11, v10, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v13, 0x1c

    invoke-direct {v9, v13, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v26, 0x6

    move-object/from16 v25, v1

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    invoke-direct/range {v25 .. v31}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v5, v3, [I

    fill-array-data v5, :array_5

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x4e

    invoke-direct {v8, v2, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x14

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x1f

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x12

    invoke-direct {v8, v11, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xe

    invoke-direct {v11, v2, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v14, v10, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v4, 0x12

    invoke-direct {v9, v4, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xd

    invoke-direct {v11, v10, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    invoke-direct {v14, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v12, 0x1a

    invoke-direct {v4, v12, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v24, 0x7

    move-object/from16 v23, v1

    move-object/from16 v25, v5

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v4

    invoke-direct/range {v23 .. v29}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v5, v3, [I

    fill-array-data v5, :array_6

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x61

    invoke-direct {v8, v2, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v7, v15, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x26

    invoke-direct {v9, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x27

    invoke-direct {v11, v2, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v12, 0x16

    invoke-direct {v8, v12, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x12

    invoke-direct {v11, v10, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x13

    invoke-direct {v14, v2, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v9, v12, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v11, v10, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v12, v2, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v14, 0x1a

    invoke-direct {v4, v14, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v24, 0x8

    move-object/from16 v23, v1

    move-object/from16 v25, v5

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v4

    invoke-direct/range {v23 .. v29}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/4 v4, 0x7

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x74

    invoke-direct {v7, v2, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v8, 0x1e

    invoke-direct {v5, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x24

    invoke-direct {v9, v3, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x25

    invoke-direct {v11, v2, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v12, 0x16

    invoke-direct {v7, v12, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    invoke-direct {v11, v10, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x11

    invoke-direct {v12, v10, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v14, 0x14

    invoke-direct {v9, v14, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xc

    invoke-direct {v12, v10, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xd

    invoke-direct {v14, v10, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v11, v15, v12, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v24, 0x9

    move-object/from16 v23, v1

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move-object/from16 v28, v9

    move-object/from16 v29, v11

    invoke-direct/range {v23 .. v29}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0x8

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x44

    invoke-direct {v7, v2, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x45

    invoke-direct {v9, v2, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x12

    invoke-direct {v5, v11, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2b

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2c

    const/4 v13, 0x1

    invoke-direct {v11, v13, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v12, 0x1a

    invoke-direct {v7, v12, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/4 v13, 0x6

    invoke-direct {v11, v13, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x14

    invoke-direct {v12, v2, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v9, v15, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v12, v13, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x10

    invoke-direct {v13, v2, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v14, 0x1c

    invoke-direct {v11, v14, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v24, 0xa

    move-object/from16 v23, v1

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move-object/from16 v28, v9

    move-object/from16 v29, v11

    invoke-direct/range {v23 .. v29}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0x9

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x51

    invoke-direct {v7, v10, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x14

    invoke-direct {v5, v9, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x32

    const/4 v12, 0x1

    invoke-direct {v9, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x33

    invoke-direct {v11, v10, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v7, v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    invoke-direct {v11, v10, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x17

    invoke-direct {v12, v10, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v13, 0x1c

    invoke-direct {v9, v13, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xc

    invoke-direct {v12, v3, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x8

    const/16 v8, 0xd

    invoke-direct {v13, v14, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v11, v15, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v24, 0xb

    move-object/from16 v23, v1

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move-object/from16 v28, v9

    move-object/from16 v29, v11

    invoke-direct/range {v23 .. v29}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0xa

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x5c

    invoke-direct {v7, v2, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x5d

    invoke-direct {v8, v2, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v5, v15, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x24

    const/4 v11, 0x6

    invoke-direct {v8, v11, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x25

    invoke-direct {v9, v2, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v12, 0x16

    invoke-direct {v7, v12, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x14

    invoke-direct {v9, v10, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x15

    invoke-direct {v12, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1a

    invoke-direct {v8, v11, v9, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/4 v13, 0x7

    invoke-direct {v11, v13, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v12, v10, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v13, 0x1c

    invoke-direct {v9, v13, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v24, 0xc

    move-object/from16 v23, v1

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    invoke-direct/range {v23 .. v29}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0xb

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x6b

    invoke-direct {v7, v10, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v8, 0x1a

    invoke-direct {v5, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x8

    const/16 v11, 0x25

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x26

    const/4 v12, 0x1

    invoke-direct {v9, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x16

    invoke-direct {v7, v11, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x8

    const/16 v12, 0x14

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x15

    invoke-direct {v11, v10, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v8, v15, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xc

    invoke-direct {v12, v10, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v13, 0x16

    invoke-direct {v9, v13, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v24, 0xd

    move-object/from16 v23, v1

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    invoke-direct/range {v23 .. v29}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0xc

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v4, v10, [I

    fill-array-data v4, :array_c

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x73

    invoke-direct {v7, v3, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x74

    const/4 v11, 0x1

    invoke-direct {v8, v11, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1e

    invoke-direct {v5, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x28

    invoke-direct {v8, v10, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x29

    const/4 v12, 0x5

    invoke-direct {v9, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v7, v15, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xb

    const/16 v13, 0x10

    invoke-direct {v9, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v13, 0x14

    invoke-direct {v8, v13, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xb

    const/16 v14, 0xc

    invoke-direct {v11, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xd

    invoke-direct {v13, v12, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v9, v15, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v24, 0xe

    move-object/from16 v23, v1

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    invoke-direct/range {v23 .. v29}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v14

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v4, v10, [I

    fill-array-data v4, :array_d

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x57

    const/4 v9, 0x5

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x58

    const/4 v12, 0x1

    invoke-direct {v8, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x16

    invoke-direct {v5, v11, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x29

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2a

    invoke-direct {v11, v9, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v7, v15, v8, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v11, v9, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x19

    const/4 v13, 0x7

    invoke-direct {v9, v13, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v14, 0x1e

    invoke-direct {v8, v14, v11, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xb

    const/16 v12, 0xc

    invoke-direct {v11, v14, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xd

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v9, v15, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0xf

    move-object/from16 v32, v1

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0xe

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v4, v10, [I

    fill-array-data v4, :array_e

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x62

    const/4 v9, 0x5

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x63

    const/4 v11, 0x1

    invoke-direct {v8, v11, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v5, v15, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x2d

    const/4 v11, 0x7

    invoke-direct {v8, v11, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2e

    invoke-direct {v9, v3, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v12, 0x1c

    invoke-direct {v7, v12, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    invoke-direct {v9, v6, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x14

    invoke-direct {v12, v2, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v8, v15, v9, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v12, v3, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xd

    const/16 v15, 0x10

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v14, 0x1e

    invoke-direct {v9, v14, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x10

    move-object/from16 v32, v1

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v4, v10, [I

    fill-array-data v4, :array_f

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x6b

    const/4 v9, 0x1

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x6c

    const/4 v13, 0x5

    invoke-direct {v8, v13, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v12, 0x1c

    invoke-direct {v5, v12, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xa

    invoke-direct {v8, v13, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x2f

    invoke-direct {v13, v9, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v7, v12, v8, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x16

    invoke-direct {v13, v9, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x17

    invoke-direct {v9, v6, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v8, v12, v13, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0xe

    invoke-direct {v13, v2, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x11

    invoke-direct {v15, v14, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v9, v12, v13, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v35, 0x11

    move-object/from16 v34, v1

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-object/from16 v38, v7

    move-object/from16 v39, v8

    move-object/from16 v40, v9

    invoke-direct/range {v34 .. v40}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0x10

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v4, v10, [I

    fill-array-data v4, :array_10

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x78

    const/4 v9, 0x5

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x79

    const/4 v12, 0x1

    invoke-direct {v8, v12, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1e

    invoke-direct {v5, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x9

    const/16 v12, 0x2b

    invoke-direct {v8, v9, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2c

    invoke-direct {v9, v10, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v12, 0x1a

    invoke-direct {v7, v12, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x16

    invoke-direct {v9, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x17

    const/4 v14, 0x1

    invoke-direct {v12, v14, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v13, 0x1c

    invoke-direct {v8, v13, v9, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xe

    invoke-direct {v12, v2, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x13

    invoke-direct {v14, v15, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v9, v13, v12, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x12

    move-object/from16 v32, v1

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0x11

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v4, v10, [I

    fill-array-data v4, :array_11

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x71

    invoke-direct {v7, v3, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x72

    invoke-direct {v8, v10, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1c

    invoke-direct {v5, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x2c

    invoke-direct {v8, v3, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x2d

    invoke-direct {v9, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v12, 0x1a

    invoke-direct {v7, v12, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x15

    const/16 v14, 0x11

    invoke-direct {v9, v14, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x16

    invoke-direct {v13, v10, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v8, v12, v9, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x9

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x10

    const/16 v15, 0xe

    invoke-direct {v14, v11, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v9, v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x13

    move-object/from16 v32, v1

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0x12

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    new-array v4, v10, [I

    fill-array-data v4, :array_12

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x6b

    invoke-direct {v7, v3, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x6c

    const/4 v11, 0x5

    invoke-direct {v8, v11, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1c

    invoke-direct {v5, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x29

    invoke-direct {v8, v3, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2a

    const/16 v12, 0xd

    invoke-direct {v9, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1a

    invoke-direct {v7, v11, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x18

    invoke-direct {v9, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x19

    const/4 v13, 0x5

    invoke-direct {v11, v13, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v12, 0x1e

    invoke-direct {v8, v12, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v11, v6, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xa

    const/16 v14, 0x10

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v13, 0x1c

    invoke-direct {v9, v13, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x14

    move-object/from16 v32, v1

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0x13

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v4, 0x5

    new-array v5, v4, [I

    fill-array-data v5, :array_13

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x74

    invoke-direct {v7, v10, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x75

    invoke-direct {v8, v10, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1c

    invoke-direct {v4, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x2a

    const/16 v11, 0x11

    invoke-direct {v8, v11, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1a

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x17

    const/4 v14, 0x6

    invoke-direct {v12, v14, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v13, 0x1c

    invoke-direct {v8, v13, v9, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x13

    const/16 v15, 0x10

    invoke-direct {v12, v13, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v13, v14, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1e

    invoke-direct {v9, v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x15

    move-object/from16 v32, v1

    move-object/from16 v34, v5

    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0x14

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v4, 0x5

    new-array v5, v4, [I

    fill-array-data v5, :array_14

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x6f

    invoke-direct {v7, v2, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x70

    const/4 v11, 0x7

    invoke-direct {v8, v11, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1c

    invoke-direct {v4, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    const/16 v13, 0x11

    invoke-direct {v8, v13, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x18

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x19

    const/16 v14, 0x10

    invoke-direct {v11, v14, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v13, 0x1e

    invoke-direct {v8, v13, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x22

    const/16 v14, 0xd

    invoke-direct {v11, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v9, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x16

    move-object/from16 v32, v1

    move-object/from16 v34, v5

    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0x15

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v4, 0x5

    new-array v5, v4, [I

    fill-array-data v5, :array_15

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x79

    invoke-direct {v8, v10, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x7a

    invoke-direct {v9, v4, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v4, 0x1e

    invoke-direct {v7, v4, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x2f

    invoke-direct {v8, v10, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x30

    const/16 v12, 0xe

    invoke-direct {v9, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1c

    invoke-direct {v4, v11, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xb

    const/16 v13, 0x18

    invoke-direct {v9, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v13, 0x1e

    invoke-direct {v8, v13, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x10

    invoke-direct {v11, v14, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v15, v12, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v9, v13, v11, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x17

    move-object/from16 v32, v1

    move-object/from16 v34, v5

    move-object/from16 v35, v7

    move-object/from16 v36, v4

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0x16

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v4, 0x5

    new-array v5, v4, [I

    fill-array-data v5, :array_16

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x75

    const/4 v9, 0x6

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x76

    invoke-direct {v8, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1e

    invoke-direct {v4, v11, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2d

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2e

    const/16 v12, 0xe

    invoke-direct {v9, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1c

    invoke-direct {v7, v11, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xb

    const/16 v12, 0x18

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x19

    const/16 v13, 0x10

    invoke-direct {v11, v13, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v12, 0x1e

    invoke-direct {v8, v12, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x11

    invoke-direct {v13, v2, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v9, v12, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x18

    move-object/from16 v32, v1

    move-object/from16 v34, v5

    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0x17

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v4, 0x5

    new-array v5, v4, [I

    fill-array-data v5, :array_17

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x8

    const/16 v9, 0x6a

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x6b

    invoke-direct {v8, v10, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1a

    invoke-direct {v4, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x8

    const/16 v11, 0x2f

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x30

    const/16 v12, 0xd

    invoke-direct {v9, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1c

    invoke-direct {v7, v11, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x7

    const/16 v12, 0x18

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x19

    const/16 v13, 0x16

    invoke-direct {v11, v13, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v12, 0x1e

    invoke-direct {v8, v12, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v11, v13, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xd

    const/16 v15, 0x10

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v9, v12, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x19

    move-object/from16 v32, v1

    move-object/from16 v34, v5

    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0x18

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v4, 0x5

    new-array v5, v4, [I

    fill-array-data v5, :array_18

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x72

    const/16 v9, 0xa

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x73

    invoke-direct {v8, v2, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1c

    invoke-direct {v4, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x13

    const/16 v12, 0x2e

    invoke-direct {v8, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2f

    invoke-direct {v11, v10, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v7, v9, v8, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    invoke-direct {v11, v9, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x17

    const/4 v14, 0x6

    invoke-direct {v12, v14, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v8, v9, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x21

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x11

    invoke-direct {v12, v10, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v13, 0x1e

    invoke-direct {v9, v13, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x1a

    move-object/from16 v32, v1

    move-object/from16 v34, v5

    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0x19

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v4, 0x5

    new-array v5, v4, [I

    fill-array-data v5, :array_19

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x8

    const/16 v9, 0x7a

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x7b

    invoke-direct {v8, v10, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1e

    invoke-direct {v4, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x2d

    const/16 v11, 0x16

    invoke-direct {v8, v11, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2e

    invoke-direct {v9, v3, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1c

    invoke-direct {v7, v11, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x8

    const/16 v12, 0x17

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1a

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v12, 0x1e

    invoke-direct {v8, v12, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xc

    invoke-direct {v11, v13, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x10

    const/16 v15, 0x1c

    invoke-direct {v13, v15, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v9, v12, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x1b

    move-object/from16 v32, v1

    move-object/from16 v34, v5

    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0x1a

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v4, 0x6

    new-array v5, v4, [I

    fill-array-data v5, :array_1a

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x75

    invoke-direct {v7, v3, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x76

    const/16 v11, 0xa

    invoke-direct {v8, v11, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1e

    invoke-direct {v4, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x2d

    invoke-direct {v8, v3, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x17

    const/16 v12, 0x2e

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1c

    invoke-direct {v7, v11, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x18

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1f

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v12, 0x1e

    invoke-direct {v8, v12, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0xb

    invoke-direct {v11, v13, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x1f

    const/16 v15, 0x10

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v9, v12, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x1c

    move-object/from16 v32, v1

    move-object/from16 v34, v5

    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0x1b

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v4, 0x6

    new-array v5, v4, [I

    fill-array-data v5, :array_1b

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x74

    const/4 v9, 0x7

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x75

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1e

    invoke-direct {v4, v11, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x15

    const/16 v12, 0x2d

    invoke-direct {v8, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    invoke-direct {v11, v9, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1c

    invoke-direct {v7, v9, v8, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x17

    const/4 v12, 0x1

    invoke-direct {v9, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x25

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v12, 0x1e

    invoke-direct {v8, v12, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x13

    invoke-direct {v11, v13, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x1a

    const/16 v15, 0x10

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v9, v12, v11, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x1d

    move-object/from16 v32, v1

    move-object/from16 v34, v5

    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0x1c

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v4, 0x6

    new-array v5, v4, [I

    fill-array-data v5, :array_1c

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x73

    const/4 v9, 0x5

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x74

    const/16 v11, 0xa

    invoke-direct {v8, v11, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1e

    invoke-direct {v4, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x13

    const/16 v12, 0x2f

    invoke-direct {v8, v9, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x30

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1c

    invoke-direct {v7, v11, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x18

    invoke-direct {v9, v6, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x19

    invoke-direct {v11, v12, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v13, 0x1e

    invoke-direct {v8, v13, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x17

    invoke-direct {v11, v14, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v14, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x10

    invoke-direct {v14, v12, v15}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v9, v13, v11, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x1e

    move-object/from16 v32, v1

    move-object/from16 v34, v5

    move-object/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v4, 0x1d

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v4, 0x6

    new-array v5, v4, [I

    fill-array-data v5, :array_1d

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x73

    const/16 v9, 0xd

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x74

    invoke-direct {v8, v3, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v3, 0x1e

    invoke-direct {v4, v3, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x2e

    invoke-direct {v7, v2, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x1d

    const/16 v11, 0x2f

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1c

    invoke-direct {v3, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x2a

    const/16 v11, 0x18

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    const/4 v12, 0x1

    invoke-direct {v9, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1e

    invoke-direct {v7, v11, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    invoke-direct {v9, v12, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x10

    const/16 v14, 0x1c

    invoke-direct {v12, v14, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v8, v11, v9, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x1f

    move-object/from16 v32, v1

    move-object/from16 v34, v5

    move-object/from16 v35, v4

    move-object/from16 v36, v3

    move-object/from16 v37, v7

    move-object/from16 v38, v8

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v11

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x6

    new-array v4, v3, [I

    fill-array-data v4, :array_1e

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x73

    const/16 v8, 0x11

    invoke-direct {v5, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v3, v11, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0xa

    const/16 v9, 0x2e

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x17

    const/16 v12, 0x2f

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1c

    invoke-direct {v5, v11, v7, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x18

    invoke-direct {v9, v8, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x23

    const/16 v12, 0x19

    invoke-direct {v8, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1e

    invoke-direct {v7, v11, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    invoke-direct {v9, v12, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x23

    const/16 v14, 0x10

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v8, v11, v9, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v35, 0x20

    move-object/from16 v34, v1

    move-object/from16 v36, v4

    move-object/from16 v37, v3

    move-object/from16 v38, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    invoke-direct/range {v34 .. v40}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x6

    new-array v4, v3, [I

    fill-array-data v4, :array_1f

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x73

    const/16 v8, 0x11

    invoke-direct {v5, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x74

    const/4 v9, 0x1

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v8, 0x1e

    invoke-direct {v3, v8, v5, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x2e

    const/16 v9, 0xe

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x15

    const/16 v11, 0x2f

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1c

    invoke-direct {v5, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x1d

    const/16 v11, 0x18

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x13

    const/16 v12, 0x19

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1e

    invoke-direct {v7, v11, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    invoke-direct {v9, v12, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x2e

    const/16 v14, 0x10

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v8, v11, v9, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x21

    move-object/from16 v32, v1

    move-object/from16 v34, v4

    move-object/from16 v35, v3

    move-object/from16 v36, v5

    move-object/from16 v37, v7

    move-object/from16 v38, v8

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x20

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x6

    new-array v4, v3, [I

    fill-array-data v4, :array_20

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x73

    const/16 v9, 0xd

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x74

    invoke-direct {v8, v3, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v3, 0x1e

    invoke-direct {v5, v3, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x2e

    const/16 v9, 0xe

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x17

    const/16 v11, 0x2f

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1c

    invoke-direct {v3, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x2c

    const/16 v11, 0x18

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    const/4 v12, 0x7

    invoke-direct {v9, v12, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1e

    invoke-direct {v7, v11, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x3b

    const/16 v13, 0x10

    invoke-direct {v9, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x11

    const/4 v14, 0x1

    invoke-direct {v12, v14, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v8, v11, v9, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x22

    move-object/from16 v32, v1

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move-object/from16 v36, v3

    move-object/from16 v37, v7

    move-object/from16 v38, v8

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x21

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x7

    new-array v4, v3, [I

    fill-array-data v4, :array_21

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0xc

    const/16 v9, 0x79

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x7a

    invoke-direct {v8, v3, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v3, 0x1e

    invoke-direct {v5, v3, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0xc

    const/16 v9, 0x2f

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x30

    const/16 v11, 0x1a

    invoke-direct {v8, v11, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1c

    invoke-direct {v3, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x27

    const/16 v11, 0x18

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xe

    const/16 v12, 0x19

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1e

    invoke-direct {v7, v11, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    invoke-direct {v9, v12, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v13, 0x29

    const/16 v14, 0x10

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v8, v11, v9, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x23

    move-object/from16 v32, v1

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move-object/from16 v36, v3

    move-object/from16 v37, v7

    move-object/from16 v38, v8

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x22

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x7

    new-array v4, v3, [I

    fill-array-data v4, :array_22

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x79

    const/4 v8, 0x6

    invoke-direct {v5, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x7a

    const/16 v11, 0xe

    invoke-direct {v7, v11, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1e

    invoke-direct {v3, v9, v5, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x2f

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x22

    const/16 v11, 0x30

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1c

    invoke-direct {v5, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x2e

    const/16 v11, 0x18

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xa

    const/16 v12, 0x19

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1e

    invoke-direct {v7, v11, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v9, v2, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x40

    const/16 v13, 0x10

    invoke-direct {v2, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v8, v11, v9, v2}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x24

    move-object/from16 v32, v1

    move-object/from16 v34, v4

    move-object/from16 v35, v3

    move-object/from16 v36, v5

    move-object/from16 v37, v7

    move-object/from16 v38, v8

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v2, 0x7

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x7a

    const/16 v7, 0x11

    invoke-direct {v4, v7, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x7b

    invoke-direct {v5, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v7, 0x1e

    invoke-direct {v2, v7, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x1d

    const/16 v8, 0x2e

    invoke-direct {v5, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x2f

    const/16 v9, 0xe

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v5, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x31

    const/16 v9, 0x18

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xa

    const/16 v12, 0x19

    invoke-direct {v8, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v11, 0x1e

    invoke-direct {v5, v11, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v8, v9, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    const/16 v13, 0x10

    invoke-direct {v9, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v7, v11, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x25

    move-object/from16 v32, v1

    move-object/from16 v34, v3

    move-object/from16 v35, v2

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-object/from16 v38, v7

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v2, 0x7

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x7a

    invoke-direct {v4, v10, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x12

    const/16 v8, 0x7b

    invoke-direct {v5, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v7, 0x1e

    invoke-direct {v2, v7, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x2e

    const/16 v8, 0xd

    invoke-direct {v5, v8, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x20

    const/16 v9, 0x2f

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v5, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x30

    const/16 v9, 0x18

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0xe

    const/16 v11, 0x19

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1e

    invoke-direct {v5, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2a

    invoke-direct {v8, v11, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x20

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v7, v9, v8, v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x26

    move-object/from16 v32, v1

    move-object/from16 v34, v3

    move-object/from16 v35, v2

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-object/from16 v38, v7

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v2, 0x7

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x14

    const/16 v7, 0x75

    invoke-direct {v4, v5, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x76

    invoke-direct {v5, v10, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v7, 0x1e

    invoke-direct {v2, v7, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v7, 0x28

    const/16 v8, 0x2f

    invoke-direct {v5, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x30

    const/4 v9, 0x7

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v8, 0x1c

    invoke-direct {v4, v8, v5, v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x2b

    const/16 v9, 0x18

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x19

    const/16 v10, 0x16

    invoke-direct {v8, v10, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v9, 0x1e

    invoke-direct {v5, v9, v7, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v8, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0xa

    invoke-direct {v8, v10, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x43

    const/16 v12, 0x10

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v7, v9, v8, v10}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v33, 0x27

    move-object/from16 v32, v1

    move-object/from16 v34, v3

    move-object/from16 v35, v2

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-object/from16 v38, v7

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v2, 0x7

    new-array v9, v2, [I

    fill-array-data v9, :array_26

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v3, 0x76

    const/16 v4, 0x13

    invoke-direct {v2, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x77

    const/4 v5, 0x6

    invoke-direct {v3, v5, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v4, 0x1e

    invoke-direct {v10, v4, v2, v3}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v3, 0x12

    const/16 v4, 0x2f

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x1f

    const/16 v5, 0x30

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v4, 0x1c

    invoke-direct {v11, v4, v2, v3}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v12, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v3, 0x22

    const/16 v4, 0x18

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x22

    const/16 v5, 0x19

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    const/16 v4, 0x1e

    invoke-direct {v12, v4, v2, v3}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    new-instance v13, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x3d

    const/16 v6, 0x10

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v13, v4, v2, v3}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    const/16 v8, 0x28

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[ILcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    return-object v0

    :array_0
    .array-data 4
        0x6
        0x12
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x16
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x1e
    .end array-data

    :array_4
    .array-data 4
        0x6
        0x22
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x16
        0x26
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x18
        0x2a
    .end array-data

    :array_7
    .array-data 4
        0x6
        0x1a
        0x2e
    .end array-data

    :array_8
    .array-data 4
        0x6
        0x1c
        0x32
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x1e
        0x36
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x20
        0x3a
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x22
        0x3e
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method

.method static decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 5

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v1, 0x0

    const v2, 0x7fffffff

    :goto_0
    sget-object v3, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget v3, v3, v0

    if-ne v3, p0, :cond_0

    add-int/lit8 v0, v0, 0x7

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, v3}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v3

    if-ge v3, v2, :cond_1

    add-int/lit8 v1, v0, 0x7

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    if-gt v2, p0, :cond_3

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    rem-int/lit8 v0, p0, 0x4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p0, p0, -0x11

    shr-int/lit8 p0, p0, 0x2

    :try_start_0
    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method public static getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x28

    if-gt p0, v1, :cond_0

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method buildFunctionPattern()Lcom/google/zxing/common/BitMatrix;
    .locals 10

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v0

    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v2, v3, v3}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    add-int/lit8 v4, v0, -0x8

    const/16 v5, 0x8

    invoke-virtual {v1, v4, v2, v5, v3}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    iget-object v4, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    array-length v4, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    iget-object v6, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    aget v6, v6, v5

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_3

    if-nez v5, :cond_0

    if-eqz v7, :cond_2

    add-int/lit8 v8, v4, -0x1

    if-eq v7, v8, :cond_2

    :cond_0
    add-int/lit8 v8, v4, -0x1

    if-ne v5, v8, :cond_1

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    iget-object v8, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    aget v8, v8, v7

    add-int/lit8 v8, v8, -0x2

    const/4 v9, 0x5

    invoke-virtual {v1, v8, v6, v9, v9}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v0, -0x11

    const/4 v5, 0x6

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v3, v6, v4}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    invoke-virtual {v1, v3, v5, v4, v6}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    iget v3, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    if-le v3, v5, :cond_5

    add-int/lit8 v0, v0, -0xb

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3, v5}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    invoke-virtual {v1, v2, v0, v5, v3}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_5
    return-object v1
.end method

.method public getAlignmentPatternCenters()[I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    return-object v0
.end method

.method public getDimensionForVersion()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTotalCodewords()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    return v0
.end method

.method public getVersionNumber()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
