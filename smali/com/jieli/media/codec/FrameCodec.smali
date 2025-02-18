.class public Lcom/jieli/media/codec/FrameCodec;
.super Lcom/jieli/media/codec/AbstractCodec;
.source "FrameCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOnFrameCodecListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;",
            ">;"
        }
    .end annotation
.end field

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/jieli/media/codec/AbstractCodec;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->tag:Ljava/lang/String;

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->mHandler:Landroid/os/Handler;

    .line 26
    sget-object v0, Lcom/jieli/media/codec/FrameCodec;->sLocalLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    invoke-static {v0}, Lcom/jieli/media/codec/AbstractCodec;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 27
    invoke-direct {p0}, Lcom/jieli/media/codec/FrameCodec;->nativeInit()Z

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    return-void
.end method

.method private native nativeConvert([BIIILjava/lang/String;)Z
.end method

.method private native nativeConvertVideo(Ljava/lang/String;)Z
.end method

.method private native nativeGetDuration()I
.end method

.method private native nativeInit()Z
.end method

.method private native nativeRelease()Z
.end method


# virtual methods
.method public convertToJPG(Ljava/lang/String;)Z
    .locals 1

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lcom/jieli/media/codec/FrameCodec;->nativeConvertVideo(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "path is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public convertToJPG([B)Z
    .locals 6

    .line 140
    array-length v2, p1

    const/16 v3, 0x280

    const/16 v4, 0x1e0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jieli/media/codec/FrameCodec;->nativeConvert([BIIILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public convertToJPG([BII)Z
    .locals 6

    if-eqz p1, :cond_1

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 113
    array-length v2, p1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jieli/media/codec/FrameCodec;->nativeConvert([BIIILjava/lang/String;)Z

    move-result p1

    return p1

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Param width or height is illegal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Param data is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public convertToJPG([BIILjava/lang/String;)Z
    .locals 6

    if-eqz p1, :cond_1

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 131
    array-length v2, p1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jieli/media/codec/FrameCodec;->nativeConvert([BIIILjava/lang/String;)Z

    move-result p1

    return p1

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Param width or height is illegal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Param data is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()Z
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 34
    iput-object v1, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37
    invoke-direct {p0}, Lcom/jieli/media/codec/FrameCodec;->nativeRelease()Z

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 154
    invoke-direct {p0}, Lcom/jieli/media/codec/FrameCodec;->nativeGetDuration()I

    move-result v0

    return v0
.end method

.method protected onCodecError(Ljava/lang/String;)V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    .line 91
    iget-object v2, p0, Lcom/jieli/media/codec/FrameCodec;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jieli/media/codec/FrameCodec$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/jieli/media/codec/FrameCodec$2;-><init>(Lcom/jieli/media/codec/FrameCodec;Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCodecSuccess([BIIILjava/lang/String;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCodecSuccess: path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnFrameCodecListeners size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Lcom/jieli/media/codec/bean/MediaMeta;

    invoke-direct {v0}, Lcom/jieli/media/codec/bean/MediaMeta;-><init>()V

    if-ltz p2, :cond_1

    .line 63
    invoke-virtual {v0, p2}, Lcom/jieli/media/codec/bean/MediaMeta;->setWidth(I)V

    :cond_1
    if-ltz p3, :cond_2

    .line 66
    invoke-virtual {v0, p3}, Lcom/jieli/media/codec/bean/MediaMeta;->setHeight(I)V

    :cond_2
    if-ltz p4, :cond_3

    .line 68
    invoke-virtual {v0, p4}, Lcom/jieli/media/codec/bean/MediaMeta;->setDuration(I)V

    .line 69
    :cond_3
    invoke-virtual {v0, p5}, Lcom/jieli/media/codec/bean/MediaMeta;->setPath(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 72
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;

    .line 73
    iget-object p4, p0, Lcom/jieli/media/codec/FrameCodec;->mHandler:Landroid/os/Handler;

    new-instance p5, Lcom/jieli/media/codec/FrameCodec$1;

    invoke-direct {p5, p0, p3, p1, v0}, Lcom/jieli/media/codec/FrameCodec$1;-><init>(Lcom/jieli/media/codec/FrameCodec;Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;[BLcom/jieli/media/codec/bean/MediaMeta;)V

    invoke-virtual {p4, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    return-void

    .line 57
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/jieli/media/codec/FrameCodec;->tag:Ljava/lang/String;

    const-string p2, "You haven\'t implemented OnFrameCodecListener yet."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnFrameCodecListener(Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/jieli/media/codec/FrameCodec;->mOnFrameCodecListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
