.class public final enum Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;
.super Ljava/lang/Enum;
.source "UsbSerialPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/UsbSerialPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControlLine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

.field public static final enum CD:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

.field public static final enum CTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

.field public static final enum DSR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

.field public static final enum DTR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

.field public static final enum RI:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

.field public static final enum RTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 76
    new-instance v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    const-string v1, "RTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    new-instance v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    const-string v1, "CTS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    new-instance v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    const-string v1, "DTR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    new-instance v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    const-string v1, "DSR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DSR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    new-instance v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    const-string v1, "CD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CD:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    new-instance v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    const-string v1, "RI"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RI:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    sget-object v8, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    aput-object v8, v1, v2

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DSR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CD:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->$VALUES:[Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;
    .locals 1

    .line 76
    const-class v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    return-object p0
.end method

.method public static values()[Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;
    .locals 1

    .line 76
    sget-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->$VALUES:[Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v0}, [Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    return-object v0
.end method
