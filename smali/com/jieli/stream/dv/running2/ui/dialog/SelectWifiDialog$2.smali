.class Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$2;
.super Ljava/lang/Object;
.source "SelectWifiDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 156
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$100(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$100(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$WifiListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$200(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 159
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p2, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$202(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Landroid/widget/EditText;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 162
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
