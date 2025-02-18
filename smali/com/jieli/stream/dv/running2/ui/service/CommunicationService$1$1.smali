.class Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1$1;
.super Ljava/lang/Object;
.source "CommunicationService.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


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

    .line 141
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1$1;->this$1:Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 145
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Send failed"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 141
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/service/CommunicationService$1$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
