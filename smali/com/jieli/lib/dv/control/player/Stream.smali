.class public abstract Lcom/jieli/lib/dv/control/player/Stream;
.super Lcom/jieli/lib/dv/control/player/IStreamClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/lib/dv/control/player/Stream$Protocol;,
        Lcom/jieli/lib/dv/control/player/Stream$Status;
    }
.end annotation


# static fields
.field protected static DEFAULT_CHANNEL:I = 0x0

.field public static final TYPE_DEV_GPS:I = 0x8

.field public static final TYPE_RTS_H264:I = 0x3

.field public static final TYPE_RTS_JPG:I = 0x2

.field public static final TYPE_RTS_PCM:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/player/IStreamClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected configure(II)Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    new-array p1, v0, [I

    aput p2, p1, v2

    .line 79
    invoke-virtual {p0, v1, p1}, Lcom/jieli/lib/dv/control/player/Stream;->configure([I[I)Z

    move-result p1

    return p1
.end method

.method protected configure([I[I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected isMute()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onFrameReceived(I[BJJ)V
.end method

.method protected abstract release()Z
.end method

.method protected setMute(Z)V
    .locals 0

    return-void
.end method

.method protected abstract setSoTimeout(I)Z
.end method

.method protected useDeviceTimestamp(Z)V
    .locals 0

    return-void
.end method
