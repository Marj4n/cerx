.class Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$2;
.super Ljava/lang/Object;
.source "NotifyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 378
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->access$100(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 379
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->access$100(Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;->onClick()V

    :cond_0
    return-void
.end method
