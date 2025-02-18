.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$1;
.super Ljava/lang/Object;
.source "DeviceSettingFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;
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

    .line 61
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 65
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x6352

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;)V

    .line 68
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
