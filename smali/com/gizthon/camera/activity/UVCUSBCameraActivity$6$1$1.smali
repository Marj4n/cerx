.class Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1$1;
.super Ljava/lang/Object;
.source "UVCUSBCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1;->onRecordResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1;

.field final synthetic val$videoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1;Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1$1;->this$2:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1;

    iput-object p2, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1$1;->val$videoPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1$1;->this$2:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1;

    iget-object v0, v0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1;->this$1:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;

    iget-object v0, v0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save videoPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1$1;->val$videoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    iget-object v0, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1$1;->this$2:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1;

    iget-object v0, v0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1;->this$1:Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;

    iget-object v0, v0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6;->this$0:Lcom/gizthon/camera/activity/UVCUSBCameraActivity;

    iget-object v1, p0, Lcom/gizthon/camera/activity/UVCUSBCameraActivity$6$1$1;->val$videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gizthon/camera/activity/UVCUSBCameraActivity;->refresh(Ljava/lang/String;)V

    return-void
.end method
