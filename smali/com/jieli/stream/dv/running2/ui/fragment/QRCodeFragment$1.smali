.class Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment$1;
.super Ljava/lang/Object;
.source "QRCodeFragment.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->showQRCodeDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Boolean;)V
    .locals 2

    .line 107
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "search_mode"

    .line 109
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/QRCodeFragment$1;->onCompleted(Ljava/lang/Boolean;)V

    return-void
.end method
