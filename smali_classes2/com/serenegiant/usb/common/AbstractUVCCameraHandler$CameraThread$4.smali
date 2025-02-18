.class Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;
.super Ljava/lang/Object;
.source "AbstractUVCCameraHandler.java"

# interfaces
.implements Lcom/serenegiant/usb/encoder/MediaEncoder$MediaEncoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;


# direct methods
.method constructor <init>(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)V
    .locals 0

    .line 941
    iput-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncodeResult([BIIJI)V
    .locals 8

    .line 992
    sget-object v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;

    if-eqz v0, :cond_0

    .line 993
    sget-object v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;->onEncodeResult([BIIJI)V

    :cond_0
    return-void
.end method

.method public onPrepared(Lcom/serenegiant/usb/encoder/MediaEncoder;)V
    .locals 4

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared:encoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsUVCCameraHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$1002(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;Z)Z

    .line 946
    instance-of v0, p1, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;

    const-string v2, "onPrepared:"

    if-eqz v0, :cond_0

    .line 948
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$1100(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/widget/CameraViewInterface;

    move-object v3, p1

    check-cast v3, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;

    invoke-interface {v0, v3}, Lcom/serenegiant/usb/widget/CameraViewInterface;->setVideoEncoder(Lcom/serenegiant/usb/encoder/IVideoEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 950
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    :cond_0
    :goto_0
    instance-of v0, p1, Lcom/serenegiant/usb/encoder/MediaSurfaceEncoder;

    if-eqz v0, :cond_1

    .line 954
    :try_start_1
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$1100(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/widget/CameraViewInterface;

    move-object v3, p1

    check-cast v3, Lcom/serenegiant/usb/encoder/MediaSurfaceEncoder;

    invoke-interface {v0, v3}, Lcom/serenegiant/usb/widget/CameraViewInterface;->setVideoEncoder(Lcom/serenegiant/usb/encoder/IVideoEncoder;)V

    .line 955
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$200(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/UVCCamera;

    move-result-object v0

    check-cast p1, Lcom/serenegiant/usb/encoder/MediaSurfaceEncoder;

    invoke-virtual {p1}, Lcom/serenegiant/usb/encoder/MediaSurfaceEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/serenegiant/usb/UVCCamera;->startCapture(Landroid/view/Surface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 957
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public onStopped(Lcom/serenegiant/usb/encoder/MediaEncoder;)V
    .locals 4

    const-string v0, "CameraThread"

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopped:encoder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    instance-of v0, p1, Lcom/serenegiant/usb/encoder/MediaVideoEncoder;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/serenegiant/usb/encoder/MediaSurfaceEncoder;

    if-eqz v0, :cond_6

    .line 968
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$1002(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;Z)Z

    .line 969
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$1200(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 970
    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v2}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$1100(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/usb/widget/CameraViewInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/serenegiant/usb/widget/CameraViewInterface;->setVideoEncoder(Lcom/serenegiant/usb/encoder/IVideoEncoder;)V

    .line 971
    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v2}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$000(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :try_start_1
    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v3}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$200(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/UVCCamera;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 973
    iget-object v3, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v3}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$200(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/UVCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/serenegiant/usb/UVCCamera;->stopCapture()V

    .line 975
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 976
    :try_start_2
    invoke-virtual {p1}, Lcom/serenegiant/usb/encoder/MediaEncoder;->getOutputPath()Ljava/lang/String;

    move-result-object p1

    .line 977
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 978
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$1300(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$1300(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 980
    :cond_2
    iget-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$1300(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$1300(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;

    move-result-object p1

    invoke-static {p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->access$900(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    .line 981
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 982
    :cond_5
    iget-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$4;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-virtual {p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->handleRelease()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 975
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "AbsUVCCameraHandler"

    const-string v1, "onPrepared:"

    .line 986
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    return-void
.end method
