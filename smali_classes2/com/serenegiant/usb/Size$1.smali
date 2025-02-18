.class final Lcom/serenegiant/usb/Size$1;
.super Ljava/lang/Object;
.source "Size.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/serenegiant/usb/Size;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/serenegiant/usb/Size;
    .locals 2

    .line 295
    new-instance v0, Lcom/serenegiant/usb/Size;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/serenegiant/usb/Size;-><init>(Landroid/os/Parcel;Lcom/serenegiant/usb/Size$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 292
    invoke-virtual {p0, p1}, Lcom/serenegiant/usb/Size$1;->createFromParcel(Landroid/os/Parcel;)Lcom/serenegiant/usb/Size;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/serenegiant/usb/Size;
    .locals 0

    .line 299
    new-array p1, p1, [Lcom/serenegiant/usb/Size;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 292
    invoke-virtual {p0, p1}, Lcom/serenegiant/usb/Size$1;->newArray(I)[Lcom/serenegiant/usb/Size;

    move-result-object p1

    return-object p1
.end method
