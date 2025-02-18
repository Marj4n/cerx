.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$14;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->closeRTS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

.field final synthetic val$cameraType:I


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;I)V
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$14;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$14;->val$cameraType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 2

    .line 762
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 763
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$14;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Send failed!!!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 765
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$14;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$14;->val$cameraType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 759
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$14;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
