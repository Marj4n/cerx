.class public Lcom/jieli/lib/dv/control/gps/GpsParser;
.super Lcom/jieli/lib/dv/control/base/AbstractClient;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Lcom/jieli/lib/dv/control/gps/OnGpsListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/base/AbstractClient;-><init>()V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/jieli/lib/dv/control/gps/GpsParser;->a:J

    .line 16
    sget-object v0, Lcom/jieli/lib/dv/control/player/Stream;->sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/Stream;->loadLibrariesOnce(Lcom/jieli/lib/dv/control/player/JlLibLoader;)V

    .line 17
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/gps/GpsParser;->nativeInit()Z

    return-void
.end method

.method private native nativeClose()Z
.end method

.method private native nativeCreate()Z
.end method

.method private native nativeInit()Z
.end method

.method private native nativeParse([B)Z
.end method


# virtual methods
.method public close()Z
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/jieli/lib/dv/control/gps/GpsParser;->b:Lcom/jieli/lib/dv/control/gps/OnGpsListener;

    .line 49
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/gps/GpsParser;->nativeClose()Z

    move-result v0

    return v0
.end method

.method public create()Z
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/jieli/lib/dv/control/gps/GpsParser;->nativeCreate()Z

    move-result v0

    return v0
.end method

.method protected onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onParsed(DDD)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/jieli/lib/dv/control/gps/GpsParser;->b:Lcom/jieli/lib/dv/control/gps/OnGpsListener;

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/jieli/lib/dv/control/model/GpsInfo;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/model/GpsInfo;-><init>()V

    .line 63
    invoke-virtual {v0, p1, p2}, Lcom/jieli/lib/dv/control/model/GpsInfo;->setLongitude(D)V

    .line 64
    invoke-virtual {v0, p3, p4}, Lcom/jieli/lib/dv/control/model/GpsInfo;->setLatitude(D)V

    .line 65
    invoke-virtual {v0, p5, p6}, Lcom/jieli/lib/dv/control/model/GpsInfo;->setSpeed(D)V

    .line 66
    iget-object p1, p0, Lcom/jieli/lib/dv/control/gps/GpsParser;->b:Lcom/jieli/lib/dv/control/gps/OnGpsListener;

    invoke-interface {p1, v0}, Lcom/jieli/lib/dv/control/gps/OnGpsListener;->onGps(Lcom/jieli/lib/dv/control/model/GpsInfo;)V

    :cond_0
    return-void
.end method

.method public parse([B)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/jieli/lib/dv/control/gps/GpsParser;->nativeParse([B)Z

    move-result p1

    return p1
.end method

.method public setOnGpsListener(Lcom/jieli/lib/dv/control/gps/OnGpsListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/jieli/lib/dv/control/gps/GpsParser;->b:Lcom/jieli/lib/dv/control/gps/OnGpsListener;

    return-void
.end method
