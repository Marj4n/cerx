.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2$1;
.super Ljava/lang/Object;
.source "EmergencyVideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->clear()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;I)V

    return-void
.end method
