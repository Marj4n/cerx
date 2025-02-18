.class Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$5;
.super Ljava/lang/Object;
.source "FlashActivity.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->showNotifyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 210
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->access$102(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 211
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$5;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->access$200(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)V

    return-void
.end method
