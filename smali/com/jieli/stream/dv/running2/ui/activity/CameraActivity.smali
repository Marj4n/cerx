.class public Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;
.source "CameraActivity.java"


# instance fields
.field private final CAMERA_OK:I

.field private mCallback:Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;

.field private final onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field private surfaceView:Landroid/view/SurfaceView;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->tag:Ljava/lang/String;

    const/16 v0, 0x64

    .line 31
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->CAMERA_OK:I

    .line 87
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$2;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;)Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->mCallback:Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;

    return-object p0
.end method

.method private initCamera()V
    .locals 8

    .line 58
    new-instance v0, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->mCallback:Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;

    .line 59
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->mCallback:Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 60
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    new-instance v7, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$1;

    invoke-direct {v7, p0}, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;)V

    const/4 v3, 0x1

    const/16 v4, 0x1e0

    const/16 v5, 0x110

    const/16 v6, 0x1e

    invoke-virtual/range {v2 .. v7}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToStreamingPush(ZIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget p1, Lcom/jieli/stream/dv/running2/R$layout;->activity_camera:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->setContentView(I)V

    .line 38
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->surfaceView:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 40
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    .line 42
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-le p1, v0, :cond_1

    const-string p1, "android.permission.CAMERA"

    .line 43
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->initCamera()V

    goto :goto_0

    .line 52
    :cond_1
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->initCamera()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 126
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onDestroy()V

    .line 127
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x64

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->initCamera()V

    goto :goto_0

    :cond_1
    const-string p1, "\u8bf7\u624b\u52a8\u6253\u5f00\u76f8\u673a\u6743\u9650"

    .line 79
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 6

    .line 113
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onStop()V

    .line 114
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$3;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$3;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToStreamingPush(ZIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method
