.class public final Lcom/jieli/lib/dv/control/utils/Code;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_ACCESS_REFUSE:I = 0x3

.field public static final ERROR_IN_BROWSE:I = 0x9

.field public static final ERROR_IN_PARKING:I = 0xa

.field public static final ERROR_IN_USB_MODE:I = 0x7

.field public static final ERROR_IN_VIDEO:I = 0x8

.field public static final ERROR_NETWORK:I = 0xe

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NO_TOPIC:I = 0x6

.field public static final ERROR_OPEN_FILE:I = 0xb

.field public static final ERROR_REAR_CAMERA_NOT_SUPPORT:I = 0x10

.field public static final ERROR_REAR_CAMERA_OFFLINE:I = 0xf

.field public static final ERROR_REQUEST:I = 0x4

.field public static final ERROR_RT_STREAM_OPEN_FAILED:I = 0x11

.field public static final ERROR_SET_PARAMETER:I = 0xd

.field public static final ERROR_SYSTEM_EXCEPTION:I = 0xc

.field public static final ERROR_TF_CARD:I = 0x1

.field public static final ERROR_TF_CARD_OFFLINE:I = 0x2

.field public static final ERROR_VERSION_NOT_MATCH:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCodeDescription(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "open real time stream filed"

    return-object p0

    :pswitch_1
    const-string p0, "Rear camera not supported by device"

    return-object p0

    :pswitch_2
    const-string p0, "Rear camera offline"

    return-object p0

    :pswitch_3
    const-string p0, "Maybe APP disconnected from device"

    return-object p0

    :pswitch_4
    const-string p0, "Failed to set parameter"

    return-object p0

    :pswitch_5
    const-string p0, "System occurred an exception"

    return-object p0

    :pswitch_6
    const-string p0, "Device open file occurred an error"

    return-object p0

    :pswitch_7
    const-string p0, "Device is in parking"

    return-object p0

    :pswitch_8
    const-string p0, "Device is in browsing"

    return-object p0

    :pswitch_9
    const-string p0, "Device is in video"

    return-object p0

    :pswitch_a
    const-string p0, "Device is in USB mode"

    return-object p0

    :pswitch_b
    const-string p0, "Maybe the topic has not been implemented yet"

    return-object p0

    :pswitch_c
    const-string p0, "App version not match with device"

    return-object p0

    :pswitch_d
    const-string p0, "Request occurred an error"

    return-object p0

    :pswitch_e
    const-string p0, "Device refuse access"

    return-object p0

    :pswitch_f
    const-string p0, "TF card is offline"

    return-object p0

    :pswitch_10
    const-string p0, "TF card occurred an error"

    return-object p0

    :pswitch_11
    const-string p0, "No error"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
