.class Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 5

    .line 90
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result p1

    invoke-static {p1}, Lcom/jieli/lib/dv/control/utils/Code;->getCodeDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x674f69c0

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "NET_SCR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getTopic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 98
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 99
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOpen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 101
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;)Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;->setDeviceState(Z)V

    goto :goto_1

    .line 103
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;)Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/jieli/stream/dv/running2/camera/SurfaceViewCallback;->setDeviceState(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$2;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method
