.class Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$2;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/bean/SettingItem$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

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

    .line 151
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "save_picture"

    invoke-static {p1, p2, p3}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
