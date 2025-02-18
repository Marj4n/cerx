.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;
.super Ljava/lang/Object;
.source "DevicePwdFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->onCompletion(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 2

    .line 113
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 114
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->setting_failed:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$702(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;Z)Z

    .line 117
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;

    iget-boolean p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->val$immediateEffect:Z

    if-eqz p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jieli.dv.running2_account_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1$1;

    invoke-direct {p1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;)V

    .line 142
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1$1;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 110
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment$3$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
