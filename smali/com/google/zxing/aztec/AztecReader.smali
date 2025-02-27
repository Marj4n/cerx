.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/aztec/AztecReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    new-instance v0, Lcom/google/zxing/aztec/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v0}, Lcom/google/zxing/aztec/detector/Detector;->detect()Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/zxing/ResultPointCallback;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-interface {p2, v2}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {p2}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1

    new-instance p2, Lcom/google/zxing/Result;

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v2

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {p2, v1, v2, v0, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public reset()V
    .locals 0

    return-void
.end method
