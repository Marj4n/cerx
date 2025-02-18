.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$1;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;)V
    .locals 0

    .line 1036
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    :cond_0
    return-void
.end method
