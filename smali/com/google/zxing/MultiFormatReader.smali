.class public final Lcom/google/zxing/MultiFormatReader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/Reader;


# instance fields
.field private hints:Ljava/util/Hashtable;

.field private readers:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/Reader;

    :try_start_0
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->hints:Ljava/util/Hashtable;

    invoke-interface {v2, p1, v3}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Hashtable;)V

    invoke-direct {p0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Hashtable;)V

    invoke-direct {p0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Hashtable;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/Reader;

    invoke-interface {v2}, Lcom/google/zxing/Reader;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHints(Ljava/util/Hashtable;)V
    .locals 5

    iput-object p1, p0, Lcom/google/zxing/MultiFormatReader;->hints:Ljava/util/Hashtable;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    :goto_1
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    if-eqz v3, :cond_9

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    iget-object v1, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/oned/MultiFormatOneDReader;

    invoke-direct {v4, p1}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v4}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/datamatrix/DataMatrixReader;

    invoke-direct {v4}, Lcom/google/zxing/datamatrix/DataMatrixReader;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/aztec/AztecReader;

    invoke-direct {v4}, Lcom/google/zxing/aztec/AztecReader;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/pdf417/PDF417Reader;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/PDF417Reader;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_8
    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/oned/MultiFormatOneDReader;

    invoke-direct {v1, p1}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez v2, :cond_a

    iget-object v0, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/oned/MultiFormatOneDReader;

    invoke-direct {v1, p1}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/datamatrix/DataMatrixReader;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/DataMatrixReader;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/aztec/AztecReader;

    invoke-direct {v1}, Lcom/google/zxing/aztec/AztecReader;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/pdf417/PDF417Reader;

    invoke-direct {v1}, Lcom/google/zxing/pdf417/PDF417Reader;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/oned/MultiFormatOneDReader;

    invoke-direct {v1, p1}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method
