.class Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1$2;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/task/ClearThumbTask$OnClearThumbTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1$2;->this$1:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1$2;->this$1:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;->this$0:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$302(Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;Lcom/jieli/stream/dv/running2/task/ClearThumbTask;)Lcom/jieli/stream/dv/running2/task/ClearThumbTask;

    return-void
.end method
