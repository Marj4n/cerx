.class abstract Lcom/jieli/media/codec/AbstractCodec;
.super Ljava/lang/Object;
.source "AbstractCodec.java"


# static fields
.field private static volatile mIsLibLoaded:Z

.field static final sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/jieli/media/codec/AbstractCodec$1;

    invoke-direct {v0}, Lcom/jieli/media/codec/AbstractCodec$1;-><init>()V

    sput-object v0, Lcom/jieli/media/codec/AbstractCodec;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lcom/jieli/media/codec/AbstractCodec;->mIsLibLoaded:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V
    .locals 2

    .line 19
    const-class v0, Lcom/jieli/media/codec/AbstractCodec;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-boolean v1, Lcom/jieli/media/codec/AbstractCodec;->mIsLibLoaded:Z

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    .line 22
    sget-object p0, Lcom/jieli/media/codec/AbstractCodec;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    :cond_0
    const-string v1, "ijkffmpeg"

    .line 24
    invoke-interface {p0, v1}, Ltv/danmaku/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "jl_frm_codec"

    .line 25
    invoke-interface {p0, v1}, Ltv/danmaku/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 26
    sput-boolean p0, Lcom/jieli/media/codec/AbstractCodec;->mIsLibLoaded:Z

    .line 28
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
