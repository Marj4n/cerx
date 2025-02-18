.class public Lcom/serenegiant/usb/common/UVCCameraHandler;
.super Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;
.source "UVCCameraHandler.java"


# direct methods
.method protected constructor <init>(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;-><init>(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)V

    return-void
.end method

.method public static final createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;II)Lcom/serenegiant/usb/common/UVCCameraHandler;
    .locals 7

    const/4 v2, 0x1

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 45
    invoke-static/range {v0 .. v6}, Lcom/serenegiant/usb/common/UVCCameraHandler;->createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIIIF)Lcom/serenegiant/usb/common/UVCCameraHandler;

    move-result-object p0

    return-object p0
.end method

.method public static final createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIF)Lcom/serenegiant/usb/common/UVCCameraHandler;
    .locals 7

    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 61
    invoke-static/range {v0 .. v6}, Lcom/serenegiant/usb/common/UVCCameraHandler;->createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIIIF)Lcom/serenegiant/usb/common/UVCCameraHandler;

    move-result-object p0

    return-object p0
.end method

.method public static final createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;III)Lcom/serenegiant/usb/common/UVCCameraHandler;
    .locals 7

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 77
    invoke-static/range {v0 .. v6}, Lcom/serenegiant/usb/common/UVCCameraHandler;->createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIIIF)Lcom/serenegiant/usb/common/UVCCameraHandler;

    move-result-object p0

    return-object p0
.end method

.method public static final createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIII)Lcom/serenegiant/usb/common/UVCCameraHandler;
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 94
    invoke-static/range {v0 .. v6}, Lcom/serenegiant/usb/common/UVCCameraHandler;->createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIIIF)Lcom/serenegiant/usb/common/UVCCameraHandler;

    move-result-object p0

    return-object p0
.end method

.method public static final createHandler(Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIIIF)Lcom/serenegiant/usb/common/UVCCameraHandler;
    .locals 10

    .line 112
    new-instance v9, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    const-class v1, Lcom/serenegiant/usb/common/UVCCameraHandler;

    move-object v0, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;-><init>(Ljava/lang/Class;Landroid/app/Activity;Lcom/serenegiant/usb/widget/CameraViewInterface;IIIIF)V

    .line 113
    invoke-virtual {v9}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->start()V

    .line 114
    invoke-virtual {v9}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->getHandler()Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/common/UVCCameraHandler;

    return-object v0
.end method


# virtual methods
.method public captureStill(Ljava/lang/String;Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->captureStill(Ljava/lang/String;Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;)V

    return-void
.end method

.method public startCameraFoucs()V
    .locals 0

    .line 138
    invoke-super {p0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->startCameraFoucs()V

    return-void
.end method

.method public startPreview(Ljava/lang/Object;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->startPreview(Ljava/lang/Object;)V

    return-void
.end method
