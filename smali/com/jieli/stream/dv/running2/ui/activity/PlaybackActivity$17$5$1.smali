.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5$1;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;)V
    .locals 0

    .line 1445
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5$1;->this$2:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1448
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5$1;->this$2:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$5;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    return-void
.end method
