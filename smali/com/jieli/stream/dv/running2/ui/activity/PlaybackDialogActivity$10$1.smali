.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10$1;
.super Ljava/lang/Object;
.source "PlaybackDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->connection_timeout:I

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    return-void
.end method
