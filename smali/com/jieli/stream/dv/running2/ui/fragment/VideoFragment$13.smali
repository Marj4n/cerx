.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$13;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->openRTS()V
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

    .line 729
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$13;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$13;->val$cameraType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 3

    .line 732
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 733
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$13;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Send failed!!!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$13;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$2800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 736
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$13;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$2800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$13;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$2902(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Z)Z

    .line 738
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$13;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getNetMode()I

    move-result p1

    .line 739
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$13;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open rts mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$13;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$13;->val$cameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 742
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$13;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    const/16 v1, 0x8b5

    invoke-static {v0, p1, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 729
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$13;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
