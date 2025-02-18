.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$1;
.super Ljava/lang/Object;
.source "DevPhotoFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/16 v3, 0x53

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 96
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download file result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {p1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;Z)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {p1, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;Z)V

    goto :goto_0

    .line 109
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 110
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x12

    invoke-static {p1, v0, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;II)V

    .line 112
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/DevPhotoFragment;)V

    :cond_5
    :goto_0
    return v1
.end method
