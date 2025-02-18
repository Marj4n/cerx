.class Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface$1;
.super Ljava/lang/Object;
.source "UVCCameraHandlerMultiSurface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->captureStill(Ljava/lang/String;Lcom/serenegiant/usb/common/AbstractUVCCameraHandler$OnCaptureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface$1;->this$0:Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;

    iput-object p2, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface$1;->this$0:Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface$1;->this$0:Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;

    invoke-static {v1}, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->access$000(Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;)Lcom/serenegiant/glutils/RendererHolder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 176
    :try_start_1
    iget-object v1, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface$1;->this$0:Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;

    invoke-static {v1}, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->access$000(Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;)Lcom/serenegiant/glutils/RendererHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/serenegiant/glutils/RendererHolder;->captureStill(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface$1;->this$0:Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;

    iget-object v2, p0, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/serenegiant/usb/common/UVCCameraHandlerMultiSurface;->updateMedia(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 179
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 182
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
