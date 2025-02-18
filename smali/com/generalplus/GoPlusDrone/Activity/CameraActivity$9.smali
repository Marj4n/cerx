.class Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$9;
.super Ljava/util/TimerTask;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->stopRecode(Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$9;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$9;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1300(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStopSaveVideo()I

    :cond_0
    return-void
.end method
