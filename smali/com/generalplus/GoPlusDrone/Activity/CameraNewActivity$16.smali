.class Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$16;
.super Ljava/util/TimerTask;
.source "CameraNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->stopRecode(Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)V
    .locals 0

    .line 906
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$16;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$16;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$1900(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStopSaveVideo()I

    :cond_0
    return-void
.end method
