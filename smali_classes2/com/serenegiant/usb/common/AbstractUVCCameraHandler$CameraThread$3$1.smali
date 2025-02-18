.class Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3$1;
.super Ljava/lang/Object;
.source "AbstractUVCCameraHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;->onFrame(Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;

.field final synthetic val$yuv:[B


# direct methods
.method constructor <init>(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;[B)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3$1;->this$1:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;

    iput-object p2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3$1;->val$yuv:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 847
    iget-object v0, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3$1;->this$1:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;

    iget-object v0, v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    iget-object v1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3$1;->this$1:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;

    iget-object v1, v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-static {v1}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$300(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$3$1;->val$yuv:[B

    invoke-static {v0, v1, v2}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->access$400(Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;Ljava/lang/String;[B)V

    return-void
.end method
