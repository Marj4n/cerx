.class Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$6;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->tryPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

.field final synthetic val$fbShow:Z

.field final synthetic val$linkSpeed:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;ZLjava/lang/Integer;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$6;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    iput-boolean p2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$6;->val$fbShow:Z

    iput-object p3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$6;->val$linkSpeed:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 669
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$6;->val$fbShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$6;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    const-string v2, "Replay."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 672
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_tvSpeed = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$6;->val$linkSpeed:Ljava/lang/Integer;

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

    .line 673
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$6;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1000(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$6;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    iget v3, v3, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->m_iRetry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$6;->val$linkSpeed:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    sget-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    invoke-virtual {v0}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStatus()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 676
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$6;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    invoke-static {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1100(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Z)V

    goto :goto_0

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity$6;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;->access$1100(Lcom/generalplus/GoPlusDrone/Activity/CameraActivity;Z)V

    :goto_0
    return-void
.end method
