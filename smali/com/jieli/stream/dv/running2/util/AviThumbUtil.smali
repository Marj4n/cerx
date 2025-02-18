.class public Lcom/jieli/stream/dv/running2/util/AviThumbUtil;
.super Ljava/lang/Object;
.source "AviThumbUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AviThumbUtil"

.field private static mOnAviThumbListener:Lcom/jieli/stream/dv/running2/interfaces/OnAviThumbListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/jieli/stream/dv/running2/interfaces/OnAviThumbListener;
    .locals 1

    .line 17
    sget-object v0, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->mOnAviThumbListener:Lcom/jieli/stream/dv/running2/interfaces/OnAviThumbListener;

    return-object v0
.end method

.method private static dispenseOnCompletedEvent([BLcom/jieli/media/codec/bean/MediaMeta;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/jieli/stream/dv/running2/util/AviThumbUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil$1;-><init>([BLcom/jieli/media/codec/bean/MediaMeta;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static dispenseOnErrorEvent(Ljava/lang/String;)V
    .locals 1

    .line 33
    new-instance v0, Lcom/jieli/stream/dv/running2/util/AviThumbUtil$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jieli/lib/dv/control/utils/ClientContext;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getLong([BZ)J
    .locals 6

    if-eqz p0, :cond_3

    .line 159
    array-length v0, p0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    .line 164
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    shl-long/2addr v2, v1

    .line 166
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    or-long/2addr v2, v4

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 169
    :goto_1
    array-length v0, p0

    if-ge p1, v0, :cond_1

    shl-long/2addr v2, v1

    .line 171
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    or-long/2addr v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-wide v2

    .line 160
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byte array size > 8 !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byte array is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRecordVideoThumb(Ljava/lang/String;Lcom/jieli/stream/dv/running2/interfaces/OnAviThumbListener;)V
    .locals 34

    move-object/from16 v0, p0

    .line 44
    sput-object p1, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->mOnAviThumbListener:Lcom/jieli/stream/dv/running2/interfaces/OnAviThumbListener;

    .line 45
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "AviThumbUtil"

    if-eqz v1, :cond_0

    const-string v0, "getRecordVideoThumb parameter is empty!"

    .line 46
    invoke-static {v2, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params is not be empty."

    .line 47
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->dispenseOnErrorEvent(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0x400

    new-array v3, v3, [B

    const v4, 0x4b000

    new-array v5, v4, [B

    const/4 v6, 0x4

    new-array v7, v6, [B

    new-array v8, v6, [B

    new-array v9, v6, [B

    new-array v10, v6, [B

    new-array v11, v6, [B

    .line 67
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 69
    new-instance v13, Lcom/jieli/media/codec/bean/MediaMeta;

    invoke-direct {v13}, Lcom/jieli/media/codec/bean/MediaMeta;-><init>()V

    .line 70
    invoke-virtual {v13, v0}, Lcom/jieli/media/codec/bean/MediaMeta;->setPath(Ljava/lang/String;)V

    .line 72
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, -0x1

    const-wide/16 v15, 0x0

    const/4 v1, 0x0

    move-wide/from16 v17, v15

    move-wide/from16 v19, v17

    const/4 v12, 0x0

    const/16 v21, -0x1

    .line 73
    :goto_0
    :try_start_1
    invoke-virtual {v14, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eq v6, v0, :cond_c

    add-int v0, v12, v6

    if-gt v0, v4, :cond_1

    .line 75
    :try_start_2
    invoke-static {v3, v1, v5, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v1, v14

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object v1, v14

    goto/16 :goto_c

    :cond_1
    :goto_1
    const v6, 0x4ac00

    if-ge v0, v6, :cond_b

    const/16 v6, 0x7800

    if-lt v0, v6, :cond_8

    cmp-long v6, v17, v15

    if-nez v6, :cond_8

    const/16 v6, 0x20

    const/4 v12, 0x4

    .line 81
    :try_start_3
    invoke-static {v5, v6, v7, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v6, 0x30

    .line 82
    invoke-static {v5, v6, v8, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v6, 0x40

    .line 83
    invoke-static {v5, v6, v9, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v6, 0x44

    .line 84
    invoke-static {v5, v6, v10, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x1

    move-object v12, v2

    .line 86
    invoke-static {v8, v6}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->getLong([BZ)J

    move-result-wide v1

    move-object/from16 v23, v5

    .line 87
    invoke-static {v7, v6}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->getLong([BZ)J

    move-result-wide v4

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .line 88
    invoke-static {v9, v6}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->getLong([BZ)J

    move-result-wide v7

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    .line 89
    invoke-static {v10, v6}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->getLong([BZ)J

    move-result-wide v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    cmp-long v28, v4, v15

    if-lez v28, :cond_2

    long-to-float v15, v1

    const v16, 0x49742400    # 1000000.0f

    long-to-float v6, v4

    div-float v16, v16, v6

    div-float v15, v15, v16

    move-object v6, v9

    move-object/from16 v16, v10

    float-to-double v9, v15

    .line 91
    :try_start_4
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    double-to-long v9, v9

    goto :goto_2

    :cond_2
    move-object v6, v9

    move-object/from16 v16, v10

    move-wide/from16 v9, v19

    :goto_2
    long-to-int v15, v7

    .line 100
    :try_start_5
    invoke-virtual {v13, v15}, Lcom/jieli/media/codec/bean/MediaMeta;->setWidth(I)V

    long-to-int v15, v11

    .line 101
    invoke-virtual {v13, v15}, Lcom/jieli/media/codec/bean/MediaMeta;->setHeight(I)V

    long-to-int v15, v9

    .line 102
    invoke-virtual {v13, v15}, Lcom/jieli/media/codec/bean/MediaMeta;->setDuration(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v15, 0x3

    :goto_3
    move-object/from16 v30, v3

    const v3, 0x4b000

    if-ge v15, v3, :cond_4

    add-int/lit8 v3, v15, -0x3

    .line 105
    :try_start_6
    aget-byte v3, v23, v3

    move-object/from16 v31, v6

    const/16 v6, 0x30

    if-ne v3, v6, :cond_3

    add-int/lit8 v3, v15, -0x2

    aget-byte v3, v23, v3

    if-ne v3, v6, :cond_3

    add-int/lit8 v3, v15, -0x1

    aget-byte v3, v23, v3

    const/16 v6, 0x64

    if-ne v3, v6, :cond_3

    aget-byte v3, v23, v15
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v6, 0x63

    if-ne v3, v6, :cond_3

    add-int/lit8 v21, v15, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v30

    move-object/from16 v6, v31

    goto :goto_3

    :cond_4
    move-object/from16 v31, v6

    :goto_4
    move/from16 v3, v21

    const/4 v6, -0x1

    if-eq v6, v3, :cond_5

    move-object/from16 v22, v14

    move-object/from16 v15, v23

    move-object/from16 v6, v26

    const/4 v14, 0x0

    move-object/from16 v23, v13

    const/4 v13, 0x4

    .line 111
    :try_start_7
    invoke-static {v15, v3, v6, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x1

    .line 112
    invoke-static {v6, v13}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->getLong([BZ)J

    move-result-wide v17

    goto :goto_5

    :cond_5
    move-object/from16 v22, v14

    move-object/from16 v15, v23

    move-object/from16 v6, v26

    move-object/from16 v23, v13

    :goto_5
    move-wide/from16 v13, v17

    move-object/from16 v26, v6

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v15

    const-string v15, "getRecordVideoThumb firstThumbPos ==> "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v15, v27

    invoke-static {v15, v6}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    const-string v3, "getRecordVideoThumb thumbSize ==> "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRecordVideoThumb allFrameCount ==> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecordVideoThumb secPerFrame ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecordVideoThumb duration =====> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecordVideoThumb width ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecordVideoThumb height ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v3, v13, v1

    if-eqz v3, :cond_7

    cmp-long v3, v9, v1

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v1, v19

    const-wide/16 v2, 0x0

    move-wide/from16 v19, v9

    goto :goto_7

    :cond_7
    :goto_6
    const-string v0, "thumbnail is null."

    .line 122
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->dispenseOnErrorEvent(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_8
    move-object v15, v2

    move-object/from16 v30, v3

    move-object/from16 v29, v5

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v31, v9

    move-object/from16 v16, v10

    move-object/from16 v26, v11

    move-object/from16 v23, v13

    move-object/from16 v22, v14

    move-wide/from16 v13, v17

    move/from16 v1, v21

    const-wide/16 v2, 0x0

    :goto_7
    cmp-long v4, v13, v2

    if-lez v4, :cond_a

    int-to-long v4, v0

    int-to-long v6, v1

    add-long/2addr v6, v13

    const-wide/16 v8, 0x400

    add-long/2addr v8, v6

    cmp-long v10, v4, v8

    if-ltz v10, :cond_a

    long-to-int v0, v13

    .line 128
    new-array v2, v0, [B

    const-wide/16 v3, 0x4

    add-long/2addr v6, v3

    const v4, 0x4b000

    int-to-long v3, v4

    cmp-long v5, v6, v3

    if-gtz v5, :cond_9

    const/4 v5, 0x4

    add-int/2addr v1, v5

    move-object/from16 v6, v29

    const/4 v7, 0x0

    .line 130
    invoke-static {v6, v1, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v8, v23

    .line 131
    invoke-static {v2, v8}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->dispenseOnCompletedEvent([BLcom/jieli/media/codec/bean/MediaMeta;)V

    goto :goto_9

    :cond_9
    const-string v0, "thumbnail data is not enough."

    .line 133
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->dispenseOnErrorEvent(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_a
    move-object/from16 v8, v23

    move-object/from16 v6, v29

    const v4, 0x4b000

    const/4 v5, 0x4

    const/4 v7, 0x0

    move v12, v0

    move/from16 v21, v1

    move-object v5, v6

    move-wide/from16 v17, v13

    move-object/from16 v10, v16

    move-object/from16 v14, v22

    move-object/from16 v7, v24

    move-object/from16 v11, v26

    move-object/from16 v9, v31

    const/4 v0, -0x1

    const/4 v1, 0x0

    move-object v13, v8

    move-object/from16 v8, v25

    move-wide/from16 v32, v2

    goto :goto_8

    :cond_b
    move-object/from16 v30, v3

    move-object v6, v5

    move-wide/from16 v32, v15

    move-object v15, v2

    move-wide/from16 v2, v32

    move v12, v0

    const/4 v0, -0x1

    :goto_8
    move-object v2, v15

    move-wide/from16 v15, v32

    move-object/from16 v3, v30

    goto/16 :goto_0

    :cond_c
    move-object/from16 v22, v14

    .line 145
    :goto_9
    :try_start_8
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object/from16 v22, v14

    :goto_a
    move-object v2, v0

    move-object/from16 v1, v22

    goto :goto_d

    :catch_2
    move-exception v0

    move-object/from16 v22, v14

    :goto_b
    move-object/from16 v1, v22

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_d

    :catch_3
    move-exception v0

    .line 140
    :goto_c
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AviThumbUtil;->dispenseOnErrorEvent(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v1, :cond_e

    .line 145
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_f

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 148
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :goto_d
    if-eqz v1, :cond_d

    .line 145
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_e

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 148
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 150
    :cond_d
    :goto_e
    throw v2

    :cond_e
    :goto_f
    return-void
.end method
