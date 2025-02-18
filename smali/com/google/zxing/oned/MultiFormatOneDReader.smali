.class public final Lcom/google/zxing/oned/MultiFormatOneDReader;
.super Lcom/google/zxing/oned/OneDReader;


# instance fields
.field private final readers:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    :goto_0
    if-eqz p1, :cond_1

    sget-object v1, Lcom/google/zxing/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    if-eqz v0, :cond_a

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/MultiFormatUPCEANReader;

    invoke-direct {v3, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/Code39Reader;

    invoke-direct {v3, v1}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/oned/Code93Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/Code93Reader;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/oned/Code128Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/Code128Reader;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/oned/ITFReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/ITFReader;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/oned/CodaBarReader;

    invoke-direct {v2}, Lcom/google/zxing/oned/CodaBarReader;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_8
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/oned/rss/RSS14Reader;

    invoke-direct {v2}, Lcom/google/zxing/oned/rss/RSS14Reader;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_9
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;

    invoke-direct {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/oned/MultiFormatUPCEANReader;

    invoke-direct {v1, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v0, Lcom/google/zxing/oned/Code39Reader;

    invoke-direct {v0}, Lcom/google/zxing/oned/Code39Reader;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v0, Lcom/google/zxing/oned/Code93Reader;

    invoke-direct {v0}, Lcom/google/zxing/oned/Code93Reader;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v0, Lcom/google/zxing/oned/Code128Reader;

    invoke-direct {v0}, Lcom/google/zxing/oned/Code128Reader;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v0, Lcom/google/zxing/oned/ITFReader;

    invoke-direct {v0}, Lcom/google/zxing/oned/ITFReader;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v0, Lcom/google/zxing/oned/rss/RSS14Reader;

    invoke-direct {v0}, Lcom/google/zxing/oned/rss/RSS14Reader;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;

    invoke-direct {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/OneDReader;

    :try_start_0
    invoke-virtual {v2, p1, p2, p3}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

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

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/Reader;

    invoke-interface {v2}, Lcom/google/zxing/Reader;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
