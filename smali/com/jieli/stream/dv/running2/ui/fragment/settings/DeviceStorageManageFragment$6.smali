.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$6;
.super Ljava/lang/Object;
.source "DeviceStorageManageFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->showFormatDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment$6;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    return-void
.end method
