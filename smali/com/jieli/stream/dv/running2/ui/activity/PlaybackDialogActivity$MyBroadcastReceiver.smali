.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PlaybackDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;


# direct methods
.method private constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$MyBroadcastReceiver;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$1;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$MyBroadcastReceiver;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$MyBroadcastReceiver;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 165
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity$MyBroadcastReceiver;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackDialogActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
