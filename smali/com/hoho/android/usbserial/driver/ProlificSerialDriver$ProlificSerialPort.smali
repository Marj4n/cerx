.class Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;
.super Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.source "ProlificSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProlificSerialPort"
.end annotation


# static fields
.field private static final CONTROL_DTR:I = 0x1

.field private static final CONTROL_RTS:I = 0x2

.field private static final DEVICE_TYPE_0:I = 0x1

.field private static final DEVICE_TYPE_1:I = 0x2

.field private static final DEVICE_TYPE_HX:I = 0x0

.field private static final FLUSH_RX_REQUEST:I = 0x8

.field private static final FLUSH_TX_REQUEST:I = 0x9

.field private static final INTERRUPT_ENDPOINT:I = 0x81

.field private static final PROLIFIC_CTRL_OUT_REQTYPE:I = 0x21

.field private static final PROLIFIC_VENDOR_IN_REQTYPE:I = 0xc0

.field private static final PROLIFIC_VENDOR_OUT_REQTYPE:I = 0x40

.field private static final PROLIFIC_VENDOR_READ_REQUEST:I = 0x1

.field private static final PROLIFIC_VENDOR_WRITE_REQUEST:I = 0x1

.field private static final READ_ENDPOINT:I = 0x83

.field private static final SET_CONTROL_REQUEST:I = 0x22

.field private static final SET_LINE_REQUEST:I = 0x20

.field private static final STATUS_BUFFER_SIZE:I = 0xa

.field private static final STATUS_BYTE_IDX:I = 0x8

.field private static final STATUS_FLAG_CD:I = 0x1

.field private static final STATUS_FLAG_CTS:I = 0x80

.field private static final STATUS_FLAG_DSR:I = 0x2

.field private static final STATUS_FLAG_RI:I = 0x8

.field private static final USB_READ_TIMEOUT_MILLIS:I = 0x3e8

.field private static final USB_RECIP_INTERFACE:I = 0x1

.field private static final USB_WRITE_TIMEOUT_MILLIS:I = 0x1388

.field private static final WRITE_ENDPOINT:I = 0x2


# instance fields
.field private mBaudRate:I

.field private mControlLinesValue:I

.field private mDataBits:I

.field private mDeviceType:I

.field private mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mParity:I

.field private mReadStatusException:Ljava/io/IOException;

.field private volatile mReadStatusThread:Ljava/lang/Thread;

.field private final mReadStatusThreadLock:Ljava/lang/Object;

.field private mStatus:I

.field private mStopBits:I

.field mStopReadStatusThread:Z

.field final synthetic this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    .line 109
    invoke-direct {p0, p2, p3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    .line 97
    iput p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    const/4 p2, -0x1

    .line 99
    iput p2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    iput p2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    iput p2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    iput p2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    .line 101
    iput p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    const/4 p2, 0x0

    .line 102
    iput-object p2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    .line 103
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    .line 104
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    .line 105
    iput-object p2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    return-void
.end method

.method static synthetic access$100(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->readStatusThreadFunction()V

    return-void
.end method

.method private final ctrlOut(III[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x21

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->outControlTransfer(IIII[B)V

    return-void
.end method

.method private doBlackMagic()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x8484

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 165
    invoke-direct {p0, v0, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    const/16 v3, 0x404

    const/4 v4, 0x0

    .line 166
    invoke-direct {p0, v3, v1, v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 167
    invoke-direct {p0, v0, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    const v5, 0x8383

    .line 168
    invoke-direct {p0, v5, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 169
    invoke-direct {p0, v0, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 170
    invoke-direct {p0, v3, v2, v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 171
    invoke-direct {p0, v0, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 172
    invoke-direct {p0, v5, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 173
    invoke-direct {p0, v1, v2, v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 174
    invoke-direct {p0, v2, v1, v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 175
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    if-nez v0, :cond_0

    const/16 v0, 0x44

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    return-void
.end method

.method private final getStatus()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    const/16 v1, 0xa

    new-array v2, v1, [B

    .line 212
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-static {v1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not read initial CTS / DSR / CD / RI status"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 219
    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    .line 222
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort$1;

    invoke-direct {v2, p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort$1;-><init>(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    .line 228
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 229
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 231
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 235
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 241
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    return v0

    :cond_3
    const/4 v1, 0x0

    .line 237
    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    .line 238
    throw v0
.end method

.method private final inControlTransfer(IIIII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    new-array v8, p5, [B

    .line 120
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v7, 0x3e8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v8

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-ne p1, p5, :cond_0

    return-object v8

    .line 123
    :cond_0
    new-instance p2, Ljava/io/IOException;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    .line 125
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, p5

    const/4 p3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, p3

    const-string p1, "ControlTransfer with value 0x%x failed: %d"

    .line 124
    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final outControlTransfer(IIII[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 132
    :cond_0
    array-length v1, p5

    .line 133
    :goto_0
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v9, 0x1388

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v8, v1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    .line 136
    :cond_1
    new-instance p2, Ljava/io/IOException;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    .line 138
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, v0

    const/4 p3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, p3

    const-string p1, "ControlTransfer with value 0x%x failed: %d"

    .line 137
    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final readStatusThreadFunction()V
    .locals 8

    .line 185
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    if-nez v0, :cond_3

    const/16 v0, 0xa

    new-array v1, v0, [B

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    .line 188
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v5, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const/16 v6, 0x1f4

    invoke-virtual {v4, v5, v1, v0, v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testConnection()V

    :cond_1
    if-lez v4, :cond_0

    if-ne v4, v0, :cond_2

    const/16 v0, 0x8

    .line 193
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    goto :goto_0

    .line 195
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid CTS / DSR / CD / RI status buffer received, expected %d bytes, but received %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x1

    .line 198
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 196
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 203
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    :cond_3
    return-void
.end method

.method private resetDevice()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 155
    invoke-virtual {p0, v0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->purgeHwBuffers(ZZ)V

    return-void
.end method

.method private setControlLines(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x22

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 179
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->ctrlOut(III[B)V

    .line 180
    iput p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    return-void
.end method

.method private final testStatusFlag(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->getStatus()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final vendorIn(III)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0xc0

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 144
    invoke-direct/range {v0 .. v5}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->inControlTransfer(IIIII)[B

    move-result-object p1

    return-object p1
.end method

.method private final vendorOut(II[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x40

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 150
    invoke-direct/range {v0 .. v5}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->outControlTransfer(IIII[B)V

    return-void
.end method


# virtual methods
.method public closeInt()V
    .locals 4

    const/4 v0, 0x1

    .line 311
    :try_start_0
    iput-boolean v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    .line 312
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 313
    :try_start_1
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 315
    :try_start_2
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 317
    :try_start_3
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-static {v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "An error occured while waiting for status read thread"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    :try_start_4
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 320
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 324
    :catch_1
    :goto_1
    :try_start_7
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    return-void
.end method

.method public getCD()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 397
    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getCTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    .line 402
    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
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

    .line 450
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->getStatus()I

    move-result v0

    .line 451
    const-class v1, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 452
    iget v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    .line 453
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_1
    iget v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    .line 455
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DSR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_4

    .line 456
    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CD:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 457
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

    const/4 v0, 0x2

    .line 407
    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getDTR()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    return-object v0
.end method

.method public getRI()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 428
    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getRTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 463
    const-class v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public openInt(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    const/4 v2, 0x1

    .line 252
    invoke-virtual {p1, v0, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 256
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v3

    const/4 v4, 0x2

    if-ge p1, v3, :cond_3

    .line 257
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    .line 259
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v5

    if-eq v5, v4, :cond_2

    const/16 v4, 0x81

    if-eq v5, v4, :cond_1

    const/16 v4, 0x83

    if-eq v5, v4, :cond_0

    goto :goto_1

    .line 261
    :cond_0
    iput-object v3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 269
    :cond_1
    iput-object v3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 265
    :cond_2
    iput-object v3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 274
    :cond_3
    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 275
    iput v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    goto :goto_3

    .line 278
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 279
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getRawDescriptors"

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 280
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    new-array v2, v1, [Ljava/lang/Object;

    .line 281
    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    const/4 v0, 0x7

    .line 282
    aget-byte p1, p1, v0

    const/16 v0, 0x40

    if-ne p1, v0, :cond_5

    .line 284
    iput v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    goto :goto_3

    .line 285
    :cond_5
    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 286
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result p1

    const/16 v0, 0xff

    if-ne p1, v0, :cond_6

    goto :goto_2

    .line 289
    :cond_6
    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-static {p1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Could not detect PL2303 subtype, Assuming that it is a HX device"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    goto :goto_3

    .line 287
    :cond_7
    :goto_2
    iput v4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 299
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-static {v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "An unexpected exception occured while trying to detect PL2303 subtype"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 294
    :catch_1
    iget-object p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-static {p1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Method UsbDeviceConnection.getRawDescriptors, required for PL2303 subtype detection, not available! Assuming that it is a HX device"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iput v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    .line 303
    :goto_3
    iget p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    invoke-direct {p0, p1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    .line 304
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V

    .line 305
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->doBlackMagic()V

    return-void

    .line 253
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error claiming Prolific interface 0"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public purgeHwBuffers(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 469
    invoke-direct {p0, p1, v1, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0x9

    .line 473
    invoke-direct {p0, p1, v1, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    :cond_1
    return-void
.end method

.method public setDTR(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 419
    iget p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 421
    :cond_0
    iget p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 p1, p1, -0x2

    .line 423
    :goto_0
    invoke-direct {p0, p1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    return-void
.end method

.method public setParameters(IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    if-ne v0, p4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [B

    if-lez p1, :cond_a

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v5, 0x3

    aput-byte v1, v0, v5

    const/4 v1, 0x4

    if-eq p3, v3, :cond_3

    if-eq p3, v4, :cond_2

    if-ne p3, v5, :cond_1

    aput-byte v3, v0, v1

    goto :goto_0

    .line 357
    :cond_1
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

    :cond_2
    aput-byte v4, v0, v1

    goto :goto_0

    :cond_3
    aput-byte v2, v0, v1

    :goto_0
    const/4 v6, 0x5

    if-eqz p4, :cond_8

    if-eq p4, v3, :cond_7

    if-eq p4, v4, :cond_6

    if-eq p4, v5, :cond_5

    if-ne p4, v1, :cond_4

    aput-byte v1, v0, v6

    goto :goto_1

    .line 377
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
    aput-byte v5, v0, v6

    goto :goto_1

    :cond_6
    aput-byte v4, v0, v6

    goto :goto_1

    :cond_7
    aput-byte v3, v0, v6

    goto :goto_1

    :cond_8
    aput-byte v2, v0, v6

    :goto_1
    if-lt p2, v6, :cond_9

    const/16 v1, 0x8

    if-gt p2, v1, :cond_9

    const/4 v1, 0x6

    int-to-byte v3, p2

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    .line 385
    invoke-direct {p0, v1, v2, v2, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->ctrlOut(III[B)V

    .line 387
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V

    .line 389
    iput p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    .line 390
    iput p2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    .line 391
    iput p3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    .line 392
    iput p4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    return-void

    .line 381
    :cond_9
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

    .line 339
    :cond_a
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

    if-eqz p1, :cond_0

    .line 440
    iget p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 442
    :cond_0
    iget p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 p1, p1, -0x3

    .line 444
    :goto_0
    invoke-direct {p0, p1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    return-void
.end method
