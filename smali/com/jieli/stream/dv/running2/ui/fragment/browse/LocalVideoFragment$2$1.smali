.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2$1;
.super Ljava/lang/Object;
.source "LocalVideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->clear()V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;I)V

    return-void
.end method
