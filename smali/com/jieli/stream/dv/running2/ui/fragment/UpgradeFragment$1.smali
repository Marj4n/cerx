.class Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;
.super Ljava/lang/Object;
.source "UpgradeFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 79
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 80
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v4, 0x5566

    if-eq v2, v4, :cond_3

    const/16 v4, 0x5567

    if-eq v2, v4, :cond_2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 131
    :pswitch_0
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eq v1, v4, :cond_0

    .line 133
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->upgrade_failed_tip:I

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    .line 136
    iget-object v4, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v4 .. v10}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V

    .line 137
    iget-object v11, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v11}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x5

    const/4 v14, 0x2

    const/4 v15, 0x0

    const-wide/16 v16, 0x64

    invoke-static/range {v11 .. v17}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V

    .line 139
    :cond_1
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.jieli.dv.running2_sdk_upgrade_success"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    :goto_0
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto/16 :goto_1

    .line 118
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 119
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_4

    .line 120
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v2, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$502(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Ljava/util/List;)Ljava/util/List;

    .line 121
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "current_wifi_ssid"

    const/4 v5, 0x0

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 123
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    iget-object v5, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    iget-object v5, v5, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    iget-object v6, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    iget-object v6, v6, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v5, v6, v1, v2}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->connectWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$902(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Z)Z

    goto/16 :goto_1

    .line 106
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 107
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_4

    .line 108
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v2, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$502(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Ljava/util/List;)Ljava/util/List;

    .line 109
    iget-object v5, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v5}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v5 .. v11}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;Landroid/os/Handler;IILjava/lang/Object;J)V

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v5}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    const/16 v4, 0x1008

    invoke-virtual {v2, v1, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto/16 :goto_1

    .line 82
    :pswitch_3
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 83
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 84
    iget-object v5, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v5}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 85
    iget-object v5, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v5}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;

    invoke-virtual {v5, v1}, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->setState(I)V

    .line 86
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v5, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    sget v6, Lcom/jieli/stream/dv/running2/R$string;->executing_step:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v7}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/UpgradeStep;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {v5, v6, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 89
    iget-object v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 100
    :cond_2
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 101
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/widget/ProgressBar;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 102
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 94
    :cond_3
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 95
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/widget/ProgressBar;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 96
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_4
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
