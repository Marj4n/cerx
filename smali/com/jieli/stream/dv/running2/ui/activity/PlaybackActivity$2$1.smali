.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$2$1;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$2;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$2;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$2$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$2;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    return-void
.end method
