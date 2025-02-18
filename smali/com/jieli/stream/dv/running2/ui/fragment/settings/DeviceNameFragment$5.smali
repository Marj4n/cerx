.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$5;
.super Ljava/lang/Object;
.source "DeviceNameFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->showChoseDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$5;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$5;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Z)V

    .line 297
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$5;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    return-void
.end method
