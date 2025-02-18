.class public Lcom/jieli/stream/dv/running2/util/ThumbnailManager;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"


# static fields
.field private static instance:Lcom/jieli/lib/dv/control/player/VideoThumbnail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/jieli/lib/dv/control/player/VideoThumbnail;
    .locals 2

    .line 14
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ThumbnailManager;->instance:Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Lcom/jieli/stream/dv/running2/util/ThumbnailManager;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/jieli/stream/dv/running2/util/ThumbnailManager;->instance:Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    invoke-direct {v1}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;-><init>()V

    sput-object v1, Lcom/jieli/stream/dv/running2/util/ThumbnailManager;->instance:Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    .line 19
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ThumbnailManager;->instance:Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    return-object v0
.end method

.method public static release()V
    .locals 1

    .line 25
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ThumbnailManager;->instance:Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->release()Z

    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/jieli/stream/dv/running2/util/ThumbnailManager;->instance:Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    :cond_0
    return-void
.end method
