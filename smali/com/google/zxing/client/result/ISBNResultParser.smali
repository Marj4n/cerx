.class public Lcom/google/zxing/client/result/ISBNResultParser;
.super Lcom/google/zxing/client/result/ResultParser;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ISBNParsedResult;
    .locals 3

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    return-object v1

    :cond_2
    const-string v0, "978"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "979"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    new-instance v0, Lcom/google/zxing/client/result/ISBNParsedResult;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/result/ISBNParsedResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
