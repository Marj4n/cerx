.class public final Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;
.super Ljava/lang/Object;
.source "USBMonitor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/USBMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UsbControlBlock"
.end annotation


# instance fields
.field private final mBusNum:I

.field protected mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private final mDevNum:I

.field protected final mInfo:Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

.field private final mInterfaces:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/usb/UsbInterface;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWeakDevice:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakMonitor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/serenegiant/usb/USBMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1088
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInterfaces:Landroid/util/SparseArray;

    .line 1130
    invoke-virtual {p1}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getUSBMonitor()Lcom/serenegiant/usb/USBMonitor;

    move-result-object v0

    .line 1131
    invoke-virtual {p1}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1135
    invoke-static {v0}, Lcom/serenegiant/usb/USBMonitor;->access$1400(Lcom/serenegiant/usb/USBMonitor;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v2, :cond_0

    .line 1139
    invoke-static {v0}, Lcom/serenegiant/usb/USBMonitor;->access$1400(Lcom/serenegiant/usb/USBMonitor;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/serenegiant/usb/USBMonitor;->updateDeviceInfo(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;)Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInfo:Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

    .line 1140
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakMonitor:Ljava/lang/ref/WeakReference;

    .line 1141
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    .line 1142
    iget v0, p1, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mBusNum:I

    iput v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mBusNum:I

    .line 1143
    iget p1, p1, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mDevNum:I

    iput p1, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mDevNum:I

    return-void

    .line 1137
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "device may already be removed or have no permission"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1133
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "device may already be removed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;)V
    .locals 10

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1088
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInterfaces:Landroid/util/SparseArray;

    .line 1098
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakMonitor:Ljava/lang/ref/WeakReference;

    .line 1099
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    .line 1100
    invoke-static {p1}, Lcom/serenegiant/usb/USBMonitor;->access$1400(Lcom/serenegiant/usb/USBMonitor;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 1101
    invoke-static {p1}, Lcom/serenegiant/usb/USBMonitor;->access$1400(Lcom/serenegiant/usb/USBMonitor;)Landroid/hardware/usb/UsbManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/serenegiant/usb/USBMonitor;->updateDeviceInfo(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;)Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInfo:Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

    .line 1102
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    .line 1103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 p2, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1107
    array-length v3, v0

    sub-int/2addr v3, v1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1108
    array-length v4, v0

    sub-int/2addr v4, p2

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1110
    :goto_0
    iput v3, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mBusNum:I

    .line 1111
    iput v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mDevNum:I

    .line 1113
    iget-object v4, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const-string v5, "USBMonitor"

    if-eqz v4, :cond_2

    .line 1114
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v4

    .line 1115
    iget-object v6, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    move-result-object v6

    .line 1116
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v9, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v9, v1

    const/4 p1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v9, p1

    const-string p1, "name=%s,desc=%d,busnum=%d,devnum=%d,rawDesc="

    invoke-static {v8, p1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1118
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not connect to device "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$1;)V
    .locals 0

    .line 1081
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;-><init>(Lcom/serenegiant/usb/USBMonitor;Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method private declared-synchronized checkConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 1491
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1494
    monitor-exit p0

    return-void

    .line 1492
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized claimInterface(Landroid/hardware/usb/UsbInterface;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1411
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized claimInterface(Landroid/hardware/usb/UsbInterface;Z)V
    .locals 1

    monitor-enter p0

    .line 1415
    :try_start_0
    invoke-direct {p0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->checkConnection()V

    .line 1416
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1417
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clone()Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1159
    :try_start_0
    new-instance v0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    invoke-direct {v0, p0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;-><init>(Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1161
    new-instance v1, Ljava/lang/CloneNotSupportedException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1081
    invoke-virtual {p0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->clone()Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 8

    monitor-enter p0

    .line 1445
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_4

    .line 1446
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInterfaces:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1448
    iget-object v3, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInterfaces:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-eqz v3, :cond_1

    .line 1450
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    .line 1452
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbInterface;

    .line 1453
    iget-object v7, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v7, v6}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1455
    :cond_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1458
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInterfaces:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1459
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    const/4 v0, 0x0

    .line 1460
    iput-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 1461
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/USBMonitor;

    if-eqz v0, :cond_4

    .line 1463
    invoke-static {v0}, Lcom/serenegiant/usb/USBMonitor;->access$1100(Lcom/serenegiant/usb/USBMonitor;)Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1464
    invoke-static {v0}, Lcom/serenegiant/usb/USBMonitor;->access$1100(Lcom/serenegiant/usb/USBMonitor;)Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;

    move-result-object v1

    iget-object v2, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    invoke-interface {v1, v2, p0}, Lcom/serenegiant/usb/USBMonitor$OnDeviceConnectListener;->onDisconnect(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;)V

    .line 1466
    :cond_3
    invoke-static {v0}, Lcom/serenegiant/usb/USBMonitor;->access$700(Lcom/serenegiant/usb/USBMonitor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1469
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1474
    :cond_0
    instance-of v1, p1, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    if-eqz v1, :cond_3

    .line 1475
    check-cast p1, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;

    invoke-virtual {p1}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1476
    iget-object p1, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    .line 1477
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    :goto_0
    return v0

    .line 1478
    :cond_3
    instance-of v0, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_4

    .line 1479
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1481
    :cond_4
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBusNum()I
    .locals 1

    .line 1355
    iget v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mBusNum:I

    return v0
.end method

.method public declared-synchronized getConnection()Landroid/hardware/usb/UsbDeviceConnection;
    .locals 1

    monitor-enter p0

    .line 1264
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDevNum()I
    .locals 1

    .line 1359
    iget v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mDevNum:I

    return v0
.end method

.method public final getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 1171
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_0

    .line 1191
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDeviceKey()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1222
    invoke-direct {p0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->checkConnection()V

    .line 1223
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    invoke-static {v0}, Lcom/serenegiant/usb/USBMonitor;->getDeviceKey(Landroid/hardware/usb/UsbDevice;)I

    move-result v0

    return v0
.end method

.method public getDeviceKey(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1234
    invoke-direct {p0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->checkConnection()V

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInfo:Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

    iget-object v1, v1, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->serial:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/serenegiant/usb/USBMonitor;->getDeviceKey(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public getDeviceKeyName()Ljava/lang/String;
    .locals 1

    .line 1200
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    invoke-static {v0}, Lcom/serenegiant/usb/USBMonitor;->getDeviceKeyName(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceKeyName(Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1211
    invoke-direct {p0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->checkConnection()V

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInfo:Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

    iget-object v1, v1, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->serial:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/serenegiant/usb/USBMonitor;->getDeviceKeyName(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceKeyNameWithSerial()Ljava/lang/String;
    .locals 3

    .line 1245
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInfo:Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

    iget-object v1, v1, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->serial:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/serenegiant/usb/USBMonitor;->getDeviceKeyName(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceKeyWithSerial()I
    .locals 1

    .line 1255
    invoke-virtual {p0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getDeviceKeyNameWithSerial()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_0

    .line 1181
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getFileDescriptor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 1274
    :try_start_0
    invoke-direct {p0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->checkConnection()V

    .line 1275
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInterface(I)Landroid/hardware/usb/UsbInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1369
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->getInterface(II)Landroid/hardware/usb/UsbInterface;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getInterface(II)Landroid/hardware/usb/UsbInterface;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 1381
    :try_start_0
    invoke-direct {p0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->checkConnection()V

    .line 1382
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInterfaces:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 1384
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1385
    iget-object v1, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInterfaces:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1387
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbInterface;

    if-nez v1, :cond_3

    .line 1389
    iget-object v2, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 1390
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 1392
    invoke-virtual {v2, v4}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    .line 1393
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v6

    if-ne v6, p1, :cond_1

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v6

    if-ne v6, p2, :cond_1

    move-object v1, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 1399
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1402
    :cond_3
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getManufacture()Ljava/lang/String;
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInfo:Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

    iget-object v0, v0, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_0

    .line 1306
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 1333
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInfo:Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

    iget-object v0, v0, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->product:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getRawDescriptors()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 1285
    :try_start_0
    invoke-direct {p0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->checkConnection()V

    .line 1286
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .line 1351
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInfo:Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

    iget-object v0, v0, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public getUSBMonitor()Lcom/serenegiant/usb/USBMonitor;
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakMonitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/USBMonitor;

    return-object v0
.end method

.method public getUsbVersion()Ljava/lang/String;
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInfo:Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

    iget-object v0, v0, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->usb_version:Ljava/lang/String;

    return-object v0
.end method

.method public getVenderId()I
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mWeakDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_0

    .line 1296
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1342
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInfo:Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;

    iget-object v0, v0, Lcom/serenegiant/usb/USBMonitor$UsbDeviceInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized releaseInterface(Landroid/hardware/usb/UsbInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 1426
    :try_start_0
    invoke-direct {p0}, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->checkConnection()V

    .line 1427
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInterfaces:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 1429
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 1430
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1431
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mInterfaces:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1435
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1436
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
