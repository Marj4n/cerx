.class Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog$1;
.super Ljava/lang/Object;
.source "InputPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->access$000(Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->access$100(Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->access$200(Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog$1;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/InputPasswordDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
