.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10$2;
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

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;Ljava/lang/String;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10$2;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$10$2;->val$message:Ljava/lang/String;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    return-void
.end method
