.class public Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;
.super Ljava/lang/Object;
.source "BluetoothDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final address:Ljava/lang/String;

.field public final bondState:I

.field public final deviceClass:I

.field public final name:Ljava/lang/String;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo$1;

    invoke-direct {v0}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo$1;-><init>()V

    sput-object v0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->name:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->address:Ljava/lang/String;

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->type:I

    goto :goto_0

    .line 60
    :cond_0
    iput v1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->type:I

    .line 62
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    :cond_1
    iput v1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->deviceClass:I

    .line 64
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    iput p1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->bondState:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->name:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->address:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->type:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->deviceClass:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->bondState:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPaired()Z
    .locals 2

    .line 80
    iget v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->bondState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->address:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "BluetoothDeviceInfo(%s/%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 91
    iget-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget p2, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget p2, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->deviceClass:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget p2, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->bondState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
