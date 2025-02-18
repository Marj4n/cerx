.class Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$13;
.super Ljava/lang/Object;
.source "CameraNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->tryPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

.field final synthetic val$fbShow:Z

.field final synthetic val$linkSpeed:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;ZLjava/lang/Integer;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$13;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    iput-boolean p2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$13;->val$fbShow:Z

    iput-object p3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$13;->val$linkSpeed:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 787
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$13;->val$fbShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$13;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    const-string v2, "Replay."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 790
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_tvSpeed = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$13;->val$linkSpeed:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  naStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ControlFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    sget-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    invoke-virtual {v0}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStatus()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 794
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$13;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-static {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$1700(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;Z)V

    goto :goto_0

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$13;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$1700(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;Z)V

    :goto_0
    return-void
.end method
