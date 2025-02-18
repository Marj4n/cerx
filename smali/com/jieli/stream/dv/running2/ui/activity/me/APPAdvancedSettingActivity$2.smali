.class Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity$2;
.super Ljava/lang/Object;
.source "APPAdvancedSettingActivity.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchListener(Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;Lcom/jieli/stream/dv/running2/bean/SettingItem;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;",
            "Lcom/jieli/stream/dv/running2/bean/SettingItem<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 107
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity$2;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/APPAdvancedSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "hard_codec"

    invoke-static {p1, p2, p3}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
