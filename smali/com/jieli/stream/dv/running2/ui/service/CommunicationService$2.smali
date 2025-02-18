.class Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$2;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$2;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/lang/Integer;)V
    .locals 1

    .line 408
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$2;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$200(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 416
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "stop mHeartbeatTask"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$2;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$200(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->isHeartbeatTaskRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 418
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$2;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$200(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;)Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/task/HeartbeatTask;->stopRunning()V

    .line 420
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$2;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$202(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;Lcom/jieli/stream/dv/running2/task/HeartbeatTask;)Lcom/jieli/stream/dv/running2/task/HeartbeatTask;

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onStateChanged(Ljava/lang/Object;)V
    .locals 0

    .line 405
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$2;->onStateChanged(Ljava/lang/Integer;)V

    return-void
.end method
