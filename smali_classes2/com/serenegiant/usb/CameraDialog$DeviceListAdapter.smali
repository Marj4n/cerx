.class final Lcom/serenegiant/usb/CameraDialog$DeviceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CameraDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/CameraDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 202
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/usb/CameraDialog$DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/serenegiant/usb/CameraDialog$DeviceListAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/serenegiant/usb/CameraDialog$DeviceListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/hardware/usb/UsbDevice;
    .locals 1

    if-ltz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/serenegiant/usb/CameraDialog$DeviceListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/serenegiant/usb/CameraDialog$DeviceListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lcom/serenegiant/usb/CameraDialog$DeviceListAdapter;->getItem(I)Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 227
    iget-object p2, p0, Lcom/serenegiant/usb/CameraDialog$DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/jiangdg/libusbcamera/R$layout;->listitem_device:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 229
    :cond_0
    instance-of p3, p2, Landroid/widget/CheckedTextView;

    if-eqz p3, :cond_1

    .line 230
    invoke-virtual {p0, p1}, Lcom/serenegiant/usb/CameraDialog$DeviceListAdapter;->getItem(I)Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    .line 231
    move-object p3, p2

    check-cast p3, Landroid/widget/CheckedTextView;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 232
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "UVC Camera:(%x:%x:%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-virtual {p3, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2
.end method
