.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$1;
.super Ljava/lang/Object;
.source "EmergencyVideoFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x54

    if-eq v0, v2, :cond_2

    const/16 p1, 0x101

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;I)V

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;)V

    goto :goto_0

    .line 76
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, 0xa4

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    goto :goto_0

    .line 79
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-static {p1, v0, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;IZ)V

    goto :goto_0

    .line 82
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;

    invoke-static {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/EmergencyVideoFragment;IZ)V

    :cond_5
    :goto_0
    return v1
.end method
