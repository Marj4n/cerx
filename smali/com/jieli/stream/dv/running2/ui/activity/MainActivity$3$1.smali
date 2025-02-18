.class Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->onStateChanged(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 1

    .line 264
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 265
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity;->tag:Ljava/lang/String;

    const-string v0, "Send failed!!!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 261
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/MainActivity$3$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
