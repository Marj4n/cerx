.class public Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;
.super Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.source "Ch34xSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ch340SerialPort"
.end annotation


# static fields
.field private static final USB_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final DEFAULT_BAUD_RATE:I

.field private dtr:Z

.field private rts:Z

.field final synthetic this$0:Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->this$0:Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;

    .line 71
    invoke-direct {p0, p2, p3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    const/16 p1, 0x2580

    .line 65
    iput p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->DEFAULT_BAUD_RATE:I

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    .line 68
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    return-void
.end method

.method private checkState(Ljava/lang/String;II[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    array-length v0, p4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p2, p3, v1, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlIn(III[B)I

    move-result p2

    const-string p3, "]"

    if-ltz p2, :cond_4

    .line 134
    array-length v2, p4

    const-string v3, " ["

    if-ne p2, v2, :cond_3

    .line 138
    :goto_0
    array-length p2, p4

    if-ge v1, p2, :cond_2

    .line 139
    aget p2, p4, v1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    goto :goto_1

    .line 143
    :cond_0
    aget-byte p2, v0, v1

    and-int/lit16 p2, p2, 0xff

    .line 144
    aget v2, p4, v1

    if-ne v2, p2, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p4, p4, v1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " byte, but get 0x"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    .line 135
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p4, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " bytes, but get "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_4
    new-instance p2, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed send cmd ["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private controlIn(III[B)I
    .locals 8

    .line 121
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    array-length v6, p4

    const/16 v1, 0xc0

    const/16 v7, 0x1388

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method

.method private controlOut(III)I
    .locals 8

    .line 114
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method

.method private getStatus()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v1, 0x95

    const/16 v2, 0x706

    const/4 v3, 0x0

    .line 158
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlIn(III[B)I

    move-result v1

    if-ltz v1, :cond_0

    .line 161
    aget-byte v0, v0, v3

    return v0

    .line 160
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error getting control lines"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initialize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 165
    fill-array-data v1, :array_0

    const-string v2, "init #1"

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    const/16 v1, 0xa1

    .line 167
    invoke-direct {p0, v1, v4, v4}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v2

    if-ltz v2, :cond_2

    const/16 v2, 0x2580

    .line 171
    invoke-direct {p0, v2}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    new-array v3, v0, [I

    .line 173
    fill-array-data v3, :array_1

    const-string v4, "init #4"

    const/16 v5, 0x95

    const/16 v6, 0x2518

    invoke-direct {p0, v4, v5, v6, v3}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    const/16 v3, 0x9a

    const/16 v4, 0xc3

    .line 175
    invoke-direct {p0, v3, v6, v4}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v3

    if-ltz v3, :cond_1

    new-array v3, v0, [I

    .line 179
    fill-array-data v3, :array_2

    const-string v4, "init #6"

    const/16 v6, 0x706

    invoke-direct {p0, v4, v5, v6, v3}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    const/16 v3, 0x501f

    const v4, 0xd90a

    .line 181
    invoke-direct {p0, v1, v3, v4}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v1

    if-ltz v1, :cond_0

    .line 185
    invoke-direct {p0, v2}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    .line 187
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setControlLines()V

    new-array v0, v0, [I

    .line 189
    fill-array-data v0, :array_3

    const-string v1, "init #10"

    invoke-direct {p0, v1, v5, v6, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Init failed: #7"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Init failed: #5"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Init failed: #2"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private setBaudRate(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p1

    const-wide/32 v2, 0x5b59f000

    .line 197
    div-long/2addr v2, v0

    const/4 v0, 0x3

    const/4 v1, 0x3

    :goto_0
    const-wide/32 v4, 0xfff0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    if-lez v1, :cond_0

    shr-long/2addr v2, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-gtz v6, :cond_3

    const-wide/32 v4, 0x10000

    sub-long/2addr v4, v2

    or-int/lit16 p1, v1, 0x80

    const/16 v0, 0x1312

    const-wide/32 v1, 0xff00

    and-long/2addr v1, v4

    int-to-long v6, p1

    or-long/2addr v1, v6

    long-to-int p1, v1

    const/16 v1, 0x9a

    .line 211
    invoke-direct {p0, v1, v0, p1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result p1

    if-ltz p1, :cond_2

    const/16 p1, 0xf2c

    const-wide/16 v2, 0xff

    and-long/2addr v2, v4

    long-to-int v0, v2

    .line 216
    invoke-direct {p0, v1, p1, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result p1

    if-ltz p1, :cond_1

    return-void

    .line 218
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error setting baud rate: #2"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error setting baud rate: #1)"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported baud rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setControlLines()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v0, v2

    not-int v0, v0

    const/16 v2, 0xa4

    invoke-direct {p0, v2, v0, v1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v0

    if-ltz v0, :cond_2

    return-void

    .line 152
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to set control lines"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected closeInt()V
    .locals 3

    const/4 v0, 0x0

    .line 107
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getCD()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCTS()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getControlLines()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    move-result v0

    .line 330
    const-class v1, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 331
    iget-boolean v2, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_1

    .line 332
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_1
    iget-boolean v2, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_3

    .line 334
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DSR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_4

    .line 335
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CD:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_5

    .line 336
    sget-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RI:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v1
.end method

.method public getDSR()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDTR()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    return v0
.end method

.method public getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->this$0:Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;

    return-object v0
.end method

.method public getRI()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->getStatus()B

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    return v0
.end method

.method public getSupportedControlLines()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    const-class v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method protected openInt(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    .line 83
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v3, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Could not claim data interface"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    .line 89
    :goto_1
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 90
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 92
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_2

    .line 93
    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_2

    .line 95
    :cond_2
    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 100
    :cond_4
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->initialize()V

    const/16 p1, 0x2580

    .line 101
    invoke-direct {p0, p1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    return-void
.end method

.method public setDTR(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    .line 308
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setControlLines()V

    return-void
.end method

.method public setParameters(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_d

    .line 227
    invoke-direct {p0, p1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    const/4 p1, 0x5

    if-eq p2, p1, :cond_3

    const/4 p1, 0x6

    if-eq p2, p1, :cond_2

    const/4 p1, 0x7

    if-eq p2, p1, :cond_1

    const/16 p1, 0x8

    if-ne p2, p1, :cond_0

    const/16 p1, 0xc3

    goto :goto_0

    .line 245
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid data bits: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p1, 0xc2

    goto :goto_0

    :cond_2
    const/16 p1, 0xc1

    goto :goto_0

    :cond_3
    const/16 p1, 0xc0

    :goto_0
    const/4 p2, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_8

    if-eq p4, v1, :cond_7

    if-eq p4, v0, :cond_6

    if-eq p4, p2, :cond_5

    const/4 v2, 0x4

    if-ne p4, v2, :cond_4

    or-int/lit8 p1, p1, 0x38

    goto :goto_1

    .line 264
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid parity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    or-int/lit8 p1, p1, 0x28

    goto :goto_1

    :cond_6
    or-int/lit8 p1, p1, 0x18

    goto :goto_1

    :cond_7
    or-int/lit8 p1, p1, 0x8

    :cond_8
    :goto_1
    if-eq p3, v1, :cond_b

    if-eq p3, v0, :cond_a

    if-eq p3, p2, :cond_9

    .line 276
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid stop bits: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 271
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unsupported stop bits: 1.5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    or-int/lit8 p1, p1, 0x4

    :cond_b
    const/16 p2, 0x9a

    const/16 p3, 0x2518

    .line 279
    invoke-direct {p0, p2, p3, p1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result p1

    if-ltz p1, :cond_c

    return-void

    .line 281
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Error setting control byte"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid baud rate: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setRTS(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    .line 324
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setControlLines()V

    return-void
.end method
