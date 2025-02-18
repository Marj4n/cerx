.class final Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceCallback"
.end annotation


# instance fields
.field private mDidDetachFromWindow:Z

.field private mHeight:I

.field private mIsFormatChanged:Z

.field private mOwnSurfaceTexture:Z

.field private mRenderCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWeakRenderView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I

.field private mWillDetachFromWindow:Z


# direct methods
.method public constructor <init>(Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;)V
    .locals 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    .line 224
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    .line 227
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 230
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method


# virtual methods
.method public addRenderCallback(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;)V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1, v2, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 244
    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 247
    :goto_0
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 249
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1, v2, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    :cond_1
    const/4 v1, 0x0

    .line 250
    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;III)V

    :cond_2
    return-void
.end method

.method public didDetachFromWindow()V
    .locals 2

    const-string v0, "TextureRenderView"

    const-string v1, "didDetachFromWindow()"

    .line 351
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 260
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 p2, 0x0

    .line 261
    iput-boolean p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 262
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 263
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 265
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;

    invoke-direct {p3, v0, p1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 266
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;

    .line 267
    invoke-interface {v0, p3, p2, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 286
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 288
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 289
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 291
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;

    invoke-direct {v0, v1, p1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 292
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;

    .line 293
    invoke-interface {v1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 296
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureDestroyed: destroy: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextureRenderView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 273
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 275
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 276
    iput p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 278
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;

    invoke-direct {v0, v1, p1, p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 279
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;

    const/4 v2, 0x0

    .line 280
    invoke-interface {v1, v0, v2, p2, p3}, Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$ISurfaceHolder;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    const-string v0, "TextureRenderView"

    if-nez p1, :cond_0

    const-string p1, "releaseSurfaceTexture: null"

    .line 311
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 312
    :cond_0
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    if-eqz v1, :cond_3

    .line 313
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_1

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release different SurfaceTexture"

    .line 314
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 316
    :cond_1
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v1, :cond_2

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release detached SurfaceTexture"

    .line 317
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    :cond_2
    const-string p1, "releaseSurfaceTexture: didDetachFromWindow(): already released by TextureView"

    .line 320
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :cond_3
    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 323
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_4

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): release different SurfaceTexture"

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 326
    :cond_4
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez p1, :cond_5

    const-string p1, "releaseSurfaceTexture: willDetachFromWindow(): re-attach SurfaceTexture to TextureView"

    .line 327
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0, v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    goto :goto_0

    :cond_5
    const-string p1, "releaseSurfaceTexture: willDetachFromWindow(): will released by TextureView"

    .line 330
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :cond_6
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v1, :cond_7

    const-string v1, "releaseSurfaceTexture: alive: release different SurfaceTexture"

    .line 334
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 336
    :cond_7
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez p1, :cond_8

    const-string p1, "releaseSurfaceTexture: alive: re-attach SurfaceTexture to TextureView"

    .line 337
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p0, v2}, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    goto :goto_0

    :cond_8
    const-string p1, "releaseSurfaceTexture: alive: will released by TextureView"

    .line 340
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public removeRenderCallback(Lcom/jieli/stream/dv/running2/ui/widget/media/IRenderView$IRenderCallback;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOwnSurfaceTexture(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    return-void
.end method

.method public willDetachFromWindow()V
    .locals 2

    const-string v0, "TextureRenderView"

    const-string v1, "willDetachFromWindow()"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    return-void
.end method
