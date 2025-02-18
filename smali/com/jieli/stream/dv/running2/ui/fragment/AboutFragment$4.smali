.class Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/interfaces/OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jieli/stream/dv/running2/interfaces/OnSelectedListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSelected(Ljava/lang/Object;)V
    .locals 0

    .line 226
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;->onSelected(Ljava/lang/String;)V

    return-void
.end method

.method public onSelected(Ljava/lang/String;)V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    const/4 v2, 0x2

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->uploading:I

    invoke-static {v1, v2, v3}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(III)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$102(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "Upload_Firmware"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 238
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;

    invoke-direct {v1, p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 263
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
