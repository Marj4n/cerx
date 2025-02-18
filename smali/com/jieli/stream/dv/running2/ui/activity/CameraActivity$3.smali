.class Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->onStop()V
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

    .line 114
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;->access$000(Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "send failed!!!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/CameraActivity$3;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
