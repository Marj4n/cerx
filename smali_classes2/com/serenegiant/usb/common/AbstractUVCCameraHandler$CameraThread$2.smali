.class Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$2;
.super Ljava/lang/Object;
.source "AbstractUVCCameraHandler.java"

# interfaces
.implements Lcom/serenegiant/usb/encoder/biz/AACEncodeConsumer$OnAACEncodeResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;->startAudioRecord()V
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

    .line 781
    iput-object p1, p0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread$2;->this$0:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncodeResult([BIIJ)V
    .locals 8

    .line 784
    sget-object v0, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;

    if-eqz v0, :cond_0

    .line 785
    sget-object v1, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler;->mListener:Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnEncodeResultListener;->onEncodeResult([BIIJI)V

    :cond_0
    return-void
.end method
