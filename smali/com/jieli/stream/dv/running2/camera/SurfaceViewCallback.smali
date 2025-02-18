.class public final Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;
.super Ljava/lang/Object;
.source "SurfaceViewCallback.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mPresenter:Lcom/jieli/stream/dv/running2/camera/CameraPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;->context:Landroid/content/Context;

    .line 16
    new-instance p1, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    invoke-direct {p1}, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;->mPresenter:Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    return-void
.end method


# virtual methods
.method public setDeviceState(Z)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;->mPresenter:Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->setDeviceState(Z)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 33
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;->mPresenter:Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->isPreviewing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 34
    sget-object p2, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;->TAG:Ljava/lang/String;

    const-string p3, "stop preview"

    invoke-static {p2, p3}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;->mPresenter:Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->stopPreview()V

    .line 38
    :cond_0
    sget-object p2, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;->TAG:Ljava/lang/String;

    const-string p3, "start preview"

    invoke-static {p2, p3}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;->mPresenter:Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    invoke-virtual {p2, p1}, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->startPreview(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 25
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;->mPresenter:Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->open()Z

    .line 26
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 28
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;->mPresenter:Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->setDisplayOrientation(I)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 44
    sget-object p1, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;->TAG:Ljava/lang/String;

    const-string v0, "close camera"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;->mPresenter:Lcom/jieli/stream/dv/running2/camera/CameraPresenter;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/camera/CameraPresenter;->close()V

    return-void
.end method
