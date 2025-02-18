.class public Lcom/jieli/stream/dv/running2/util/QRCode;
.super Ljava/lang/Object;
.source "QRCode.java"


# static fields
.field private static IMAGE_HALFWIDTH:I = 0x32


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createQRCode(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x1f4

    .line 25
    invoke-static {p0, v0}, Lcom/jieli/stream/dv/running2/util/QRCode;->createQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9

    .line 37
    :try_start_0
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 38
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v1, "utf-8"

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v1, p0

    move v3, p1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    mul-int v0, p1, p1

    .line 40
    new-array v2, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    .line 43
    invoke-virtual {p0, v3, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    mul-int v4, v1, p1

    add-int/2addr v4, v3

    const/high16 v5, -0x1000000

    .line 44
    aput v5, v2, v4

    goto :goto_2

    :cond_0
    mul-int v4, v1, p1

    add-int/2addr v4, v3

    const/4 v5, -0x1

    .line 46
    aput v5, v2, v4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v7, p1

    move v8, p1

    .line 52
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createQRCodeWithLogo2(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    .line 70
    :try_start_0
    div-int/lit8 v0, p1, 0xa

    sput v0, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    .line 71
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 72
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v1, "utf-8"

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v2, p0

    move v4, p1

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    const/4 v0, 0x0

    .line 79
    invoke-static {p2, p1, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    mul-int v1, p1, p1

    .line 81
    new-array v3, v1, [I

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_1

    .line 85
    invoke-virtual {p0, v4, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    mul-int v5, v2, p1

    add-int/2addr v5, v4

    .line 86
    invoke-virtual {p2, v4, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    aput v6, v3, v5

    goto :goto_2

    :cond_0
    mul-int v5, v2, p1

    add-int/2addr v5, v4

    .line 88
    aput v1, v3, v5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v5, p1

    move v8, p1

    move v9, p1

    .line 95
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createQRCodeWithLogo3(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    .line 113
    :try_start_0
    div-int/lit8 v0, p1, 0xa

    sput v0, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    .line 114
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 115
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v1, "utf-8"

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v2, p0

    move v4, p1

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    const/4 v0, 0x0

    .line 122
    invoke-static {p2, p1, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    mul-int v1, p1, p1

    .line 124
    new-array v3, v1, [I

    const v1, -0x6d8ca

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_1

    .line 128
    invoke-virtual {p0, v4, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    mul-int v5, v2, p1

    add-int/2addr v5, v4

    .line 129
    aput v1, v3, v5

    goto :goto_2

    :cond_0
    mul-int v5, v2, p1

    add-int/2addr v5, v4

    .line 131
    invoke-virtual {p2, v4, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    const v7, 0x66ffffff

    and-int/2addr v6, v7

    aput v6, v3, v5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v5, p1

    move v8, p1

    move v9, p1

    .line 137
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 140
    invoke-virtual {p0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createQRCodeWithLogo4(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    .line 155
    :try_start_0
    div-int/lit8 v0, p1, 0xa

    sput v0, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    .line 156
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 157
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v1, "utf-8"

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v2, p0

    move v4, p1

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    const/4 v0, 0x0

    .line 164
    invoke-static {p2, p1, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    mul-int v1, p1, p1

    .line 166
    new-array v3, v1, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v2, p1, :cond_3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p1, :cond_2

    .line 170
    invoke-virtual {p0, v5, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v4, :cond_0

    mul-int v4, v2, p1

    add-int/2addr v4, v5

    const/high16 v6, -0x1000000

    .line 173
    aput v6, v3, v4

    const/4 v4, 0x0

    goto :goto_2

    :cond_0
    mul-int v4, v2, p1

    add-int/2addr v4, v5

    .line 175
    invoke-virtual {p2, v5, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    aput v6, v3, v4

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    mul-int v6, v2, p1

    add-int/2addr v6, v5

    const/4 v7, -0x1

    .line 179
    aput v7, v3, v6

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v5, p1

    move v8, p1

    move v9, p1

    .line 185
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 188
    invoke-virtual {p0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createQRCodeWithLogo5(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14

    move v0, p1

    .line 202
    :try_start_0
    div-int/lit8 v1, v0, 0xa

    sput v1, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    .line 203
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 204
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "utf-8"

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v2, p0

    move v4, p1

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v3, p2

    .line 211
    invoke-static {v3, p1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 213
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 214
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    .line 215
    div-int/lit8 v11, v10, 0x2

    .line 216
    div-int/lit8 v12, v4, 0x2

    .line 218
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 219
    sget v4, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 220
    sget v6, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    .line 221
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v6, v5

    .line 222
    invoke-virtual {v8, v4, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 226
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x0

    .line 225
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    mul-int v4, v0, v0

    .line 228
    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_2

    .line 231
    sget v7, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    sub-int v7, v11, v7

    if-le v6, v7, :cond_0

    sget v7, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    add-int/2addr v7, v11

    if-ge v6, v7, :cond_0

    sget v7, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    sub-int v7, v12, v7

    if-le v5, v7, :cond_0

    sget v7, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    add-int/2addr v7, v12

    if-ge v5, v7, :cond_0

    mul-int v7, v5, v10

    add-int/2addr v7, v6

    sub-int v8, v6, v11

    .line 236
    sget v9, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    add-int/2addr v8, v9

    sub-int v9, v5, v12

    sget v13, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    add-int/2addr v9, v13

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    aput v8, v4, v7

    goto :goto_2

    .line 239
    :cond_0
    invoke-virtual {v1, v6, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_1

    mul-int v7, v5, v0

    add-int/2addr v7, v6

    const v8, -0xc84e62

    .line 240
    aput v8, v4, v7

    goto :goto_2

    :cond_1
    mul-int v7, v5, v0

    add-int/2addr v7, v6

    const/4 v8, -0x1

    .line 242
    aput v8, v4, v7

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 247
    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, v4

    move v4, p1

    move v7, p1

    move v8, p1

    .line 249
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static createQRCodeWithLogo6(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14

    move v0, p1

    .line 266
    :try_start_0
    div-int/lit8 v1, v0, 0xa

    sput v1, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    .line 267
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 268
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "utf-8"

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v2, p0

    move v4, p1

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v3, p2

    .line 278
    invoke-static {v3, p1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 280
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 281
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    .line 282
    div-int/lit8 v11, v10, 0x2

    .line 283
    div-int/lit8 v12, v4, 0x2

    .line 285
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 286
    sget v4, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 287
    sget v6, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    .line 288
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v6, v5

    .line 289
    invoke-virtual {v8, v4, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 293
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x0

    .line 292
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    mul-int v4, v0, v0

    .line 295
    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_5

    .line 298
    sget v7, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    sub-int v7, v11, v7

    if-le v6, v7, :cond_0

    sget v7, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    add-int/2addr v7, v11

    if-ge v6, v7, :cond_0

    sget v7, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    sub-int v7, v12, v7

    if-le v5, v7, :cond_0

    sget v7, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    add-int/2addr v7, v12

    if-ge v5, v7, :cond_0

    mul-int v7, v5, v10

    add-int/2addr v7, v6

    sub-int v8, v6, v11

    .line 303
    sget v9, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    add-int/2addr v8, v9

    sub-int v9, v5, v12

    sget v13, Lcom/jieli/stream/dv/running2/util/QRCode;->IMAGE_HALFWIDTH:I

    add-int/2addr v9, v13

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    aput v8, v4, v7

    goto :goto_2

    .line 306
    :cond_0
    invoke-virtual {v1, v6, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_3

    mul-int v7, v5, v0

    add-int/2addr v7, v6

    const v8, -0xeeeeef

    .line 307
    aput v8, v4, v7

    const/16 v8, 0x73

    if-ge v6, v8, :cond_1

    if-lt v5, v8, :cond_2

    add-int/lit8 v9, v0, -0x73

    if-ge v5, v9, :cond_2

    :cond_1
    if-ge v5, v8, :cond_4

    add-int/lit8 v8, v0, -0x73

    if-lt v6, v8, :cond_4

    :cond_2
    const v8, -0x6d8ca

    .line 309
    aput v8, v4, v7

    goto :goto_2

    :cond_3
    mul-int v7, v5, v0

    add-int/2addr v7, v6

    const/4 v8, -0x1

    .line 312
    aput v8, v4, v7

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 317
    :cond_6
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, v4

    move v4, p1

    move v7, p1

    move v8, p1

    .line 319
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception v0

    .line 322
    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
