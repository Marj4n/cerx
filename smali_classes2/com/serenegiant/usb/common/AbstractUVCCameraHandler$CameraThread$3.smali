.class Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;
.super Ljava/lang/Object;
.source "AbstractUVCCameraHandler.java"

# interfaces
.implements Lcom/serenegiant/usb/IFrameCallback;


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

    .line 823
    iput-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrame(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 834
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 835
    new-array v0, v0, [B

    .line 836
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 838
    sget-object p1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mPreviewListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;

    if-eqz p1, :cond_0

    .line 839
    sget-object p1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mPreviewListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;

    invoke-interface {p1, v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnPreViewResultListener;->onPreviewResult([B)V

    .line 842
    :cond_0
    sget-boolean p1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->isCaptureStill:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$300(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 843
    sput-boolean p1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->isCaptureStill:Z

    .line 844
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3$1;

    invoke-direct {v1, p0, v0}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3$1;-><init>(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;[B)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 849
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 852
    :cond_1
    iget-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$500(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 854
    iget-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$600(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 855
    invoke-static {}, Lorg/easydarwin/sw/TxtOverlay;->getInstance()Lorg/easydarwin/sw/TxtOverlay;

    move-result-object p1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd EEEE HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/easydarwin/sw/TxtOverlay;->overlay([BLjava/lang/String;)V

    .line 858
    :cond_2
    iget-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {p1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$500(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;

    move-result-object p1

    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$700(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)I

    move-result v1

    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v2}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$800(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/serenegiant/usb/encoder/biz/H264EncodeConsumer;->setRawYuv([BII)V

    :cond_3
    return-void
.end method
