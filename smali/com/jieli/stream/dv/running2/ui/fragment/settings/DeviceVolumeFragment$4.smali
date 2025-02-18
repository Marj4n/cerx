.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$4;
.super Ljava/lang/Object;
.source "DeviceVolumeFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 74
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "volume"

    invoke-static {p3, v0, p2}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 75
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/jieli/stream/dv/running2/R$string;->device_volume_value:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
