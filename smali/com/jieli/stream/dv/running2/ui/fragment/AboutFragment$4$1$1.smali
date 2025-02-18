.class Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1$1;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 1

    .line 252
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 253
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->TAG:Ljava/lang/String;

    const-string v0, "send reset cmd failed!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1$1;->this$2:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 249
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$4$1$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
