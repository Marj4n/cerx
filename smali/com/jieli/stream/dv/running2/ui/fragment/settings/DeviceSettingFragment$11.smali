.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$11;
.super Ljava/lang/Object;
.source "DeviceSettingFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->showNotifyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$11;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    .line 367
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$11;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$11;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 370
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$11$1;

    invoke-direct {v4, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$11$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$11;)V

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSetApAccount(Ljava/lang/String;Ljava/lang/String;ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$11;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    return-void
.end method
