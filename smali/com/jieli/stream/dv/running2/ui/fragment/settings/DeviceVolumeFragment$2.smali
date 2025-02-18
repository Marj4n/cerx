.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$2;
.super Ljava/lang/Object;
.source "DeviceVolumeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 56
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
