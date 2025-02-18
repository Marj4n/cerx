.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$4;
.super Ljava/lang/Object;
.source "PlaybackDialogActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/player/OnBufferingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuffering(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 380
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$4;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method
