.class public Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;
.super Ljava/lang/Object;
.source "ProlificSerialDriver.java"

# interfaces
.implements Lcom/hoho/android/usbserial/driver/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->TAG:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 36
    new-instance p1, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;-><init>(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    return-void
.end method

.method static synthetic access$000(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static getSupportedDevices()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v1, 0x67b

    .line 480
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x2303

    aput v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getPorts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
