.class Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;
.super Lcom/google/zxing/qrcode/decoder/DataMask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataMask100"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/qrcode/decoder/DataMask;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;-><init>()V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .locals 1

    const/4 v0, 0x1

    ushr-int/2addr p1, v0

    div-int/lit8 p2, p2, 0x3

    add-int/2addr p1, p2

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
