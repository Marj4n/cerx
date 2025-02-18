.class Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;->onSelected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;

.field final synthetic val$select:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;->val$select:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 241
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;->val$select:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/16 v2, 0x101

    if-nez v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 246
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->getInstance()Lcom/jieli/stream/dv/running2/util/FTPClientUtil;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;->val$select:Ljava/lang/String;

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;

    iget-object v4, v4, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->uploadFile(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 249
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;)V

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToResetDev(Lcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
