.class Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$TimeThread;
.super Ljava/lang/Thread;
.source "CameraNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V
    .locals 0

    .line 1562
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$TimeThread;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1565
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-wide/16 v0, 0xbb8

    .line 1567
    :try_start_0
    invoke-static {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$TimeThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1569
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1571
    :goto_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$TimeThread;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
