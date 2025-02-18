.class Lcom/gizthon/camera/activity/UVCUSBCameraActivity$14;
.super Ljava/lang/Object;
.source "UVCUSBCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gizthon/camera/activity/UVCUSBCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$14;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$14;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {v2}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$800(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v5, 0x3c

    div-long/2addr v1, v5

    div-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 350
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    div-long/2addr v7, v3

    div-long/2addr v7, v5

    rem-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 351
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    div-long/2addr v7, v3

    rem-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 352
    iget-object v5, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$14;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    invoke-static {v5}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->access$000(Lcom/gizthon/camera/activity/UVCUSBCameraActivity;)Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/gizthon/camera/databinding/UsbPreviewActivityBinding;->tvRecordTime:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const-string v1, "%02d"

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v2, v10, v9

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$14;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    iget-object v0, v0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
