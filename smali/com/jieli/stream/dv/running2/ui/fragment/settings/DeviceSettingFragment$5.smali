.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$5;
.super Ljava/lang/Object;
.source "DeviceSettingFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->showFactoryResetDialog()V
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

    .line 234
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$5;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$5;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    return-void
.end method
