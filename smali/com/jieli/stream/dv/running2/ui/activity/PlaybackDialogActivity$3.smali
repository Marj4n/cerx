.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$3;
.super Ljava/lang/Object;
.source "PlaybackDialogActivity.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/task/IDebugListener;


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

    .line 312
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDebugResult(II)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$3;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-static {v0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->access$800(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;II)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStartDebug(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method
