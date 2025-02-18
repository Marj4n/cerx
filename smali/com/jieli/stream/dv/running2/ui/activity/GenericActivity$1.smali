.class Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity$1;
.super Ljava/lang/Object;
.source "GenericActivity.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/listener/OnConnectStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/lang/Integer;)V
    .locals 3

    .line 69
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v0, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;

    .line 76
    instance-of v0, p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    if-eqz v0, :cond_1

    .line 77
    move-object v0, p1

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->dismissWaitingDialog()V

    .line 79
    :cond_1
    instance-of v0, p1, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    if-eqz v0, :cond_2

    .line 80
    check-cast p1, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->dismissWaitingDialog()V

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity;->finish()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onStateChanged(Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/GenericActivity$1;->onStateChanged(Ljava/lang/Integer;)V

    return-void
.end method
