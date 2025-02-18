.class public abstract Lcom/jieli/lib/dv/control/base/AbstractClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile mIsLibLoaded:Z = false

.field public static final sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/jieli/lib/dv/control/base/AbstractClient$1;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/base/AbstractClient$1;-><init>()V

    sput-object v0, Lcom/jieli/lib/dv/control/base/AbstractClient;->sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadLibrariesOnce(Lcom/jieli/lib/dv/control/player/JlLibLoader;)V
    .locals 2

    .line 24
    const-class v0, Lcom/jieli/lib/dv/control/base/AbstractClient;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-boolean v1, Lcom/jieli/lib/dv/control/base/AbstractClient;->mIsLibLoaded:Z

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    .line 27
    sget-object p0, Lcom/jieli/lib/dv/control/base/AbstractClient;->sLocalLibLoader:Lcom/jieli/lib/dv/control/player/JlLibLoader;

    :cond_0
    const-string v1, "jl_player"

    .line 36
    invoke-interface {p0, v1}, Lcom/jieli/lib/dv/control/player/JlLibLoader;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 37
    sput-boolean p0, Lcom/jieli/lib/dv/control/base/AbstractClient;->mIsLibLoaded:Z

    .line 39
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


# virtual methods
.method protected abstract close()Z
.end method

.method protected abstract create()Z
.end method
