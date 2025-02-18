.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$3;
.super Ljava/lang/Object;
.source "LocalPhotoFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnConfirmClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->showWaitingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$3;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    return-void
.end method
