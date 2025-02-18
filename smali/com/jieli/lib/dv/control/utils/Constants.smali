.class public Lcom/jieli/lib/dv/control/utils/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CTP_SIGNATURE:Ljava/lang/String; = "CTP:"

.field public static final DEVICE_STATE_CONNECTED:I = 0x0

.field public static final DEVICE_STATE_CONNECTING:I = 0x2

.field public static final DEVICE_STATE_CONNECTION_TIMEOUT:I = 0x3

.field public static final DEVICE_STATE_DISCONNECTED:I = 0x1

.field public static final DEVICE_STATE_EXCEPTION:I = 0x4

.field public static final DEVICE_STATE_UDP_EXCEPTION:I = 0x5

.field public static final DEVICE_STATE_UDP_TIMEOUT:I = 0x6

.field public static final DEVICE_STATE_UNREADY:I = -0x1

.field public static final EXTRA_CMD_INFO:Ljava/lang/String; = "extra.cmd.info"

.field public static final JSON_ERROR_NUMBER:Ljava/lang/String; = "errno"

.field public static final JSON_OP:Ljava/lang/String; = "op"

.field public static final JSON_PARAM:Ljava/lang/String; = "param"

.field public static final REQUEST_FAILED:I = -0x1

.field public static final REQUEST_SUCCESS:I = 0x1

.field public static final SEND_FAILED:I = -0x1

.field public static final SEND_SUCCESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectDescription(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "Udp Connection timeout"

    return-object p0

    :pswitch_1
    const-string p0, "Udp Channel occurred exception"

    return-object p0

    :pswitch_2
    const-string p0, "Network occurred exception"

    return-object p0

    :pswitch_3
    const-string p0, "Connection timeout"

    return-object p0

    :pswitch_4
    const-string p0, "Connecting..."

    return-object p0

    :pswitch_5
    const-string p0, "Disconnect"

    return-object p0

    :pswitch_6
    const-string p0, "Connected"

    return-object p0

    :pswitch_7
    const-string p0, "Network not ready"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
