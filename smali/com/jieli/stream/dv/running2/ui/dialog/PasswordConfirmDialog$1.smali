.class Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog$1;
.super Ljava/lang/Object;
.source "PasswordConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->access$000(Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->access$100(Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->access$200(Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/PasswordConfirmDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
