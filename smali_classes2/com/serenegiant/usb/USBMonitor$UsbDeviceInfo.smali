.class public Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;
.super Ljava/lang/Object;
.source "USBMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/USBMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsbDeviceInfo"
.end annotation


# instance fields
.field public manufacturer:Ljava/lang/String;

.field public product:Ljava/lang/String;

.field public serial:Ljava/lang/String;

.field public usb_version:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;)V
    .locals 0

    .line 830
    invoke-direct {p0}, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    .line 838
    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->serial:Ljava/lang/String;

    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->product:Ljava/lang/String;

    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->manufacturer:Ljava/lang/String;

    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->usb_version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 843
    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->usb_version:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->manufacturer:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    aput-object v3, v0, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->product:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    aput-object v3, v0, v1

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->version:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    aput-object v3, v0, v1

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->serial:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v2, v3

    :cond_4
    aput-object v2, v0, v1

    const-string v1, "UsbDevice:usb_version=%s,manufacturer=%s,product=%s,version=%s,serial=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
