.class Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$15;
.super Landroid/os/Handler;
.source "CameraNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;
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

    .line 835
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$15;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 838
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 840
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 842
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 843
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity$15;->this$0:Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;->access$1802(Lcom/generalplus/GoPlusDrone/Activity/CameraNewActivity;Z)Z

    .line 845
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_StatusHandler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ControlFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
