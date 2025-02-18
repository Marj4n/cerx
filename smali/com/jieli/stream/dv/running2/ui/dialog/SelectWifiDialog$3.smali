.class Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;
.super Ljava/lang/Object;
.source "SelectWifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 173
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_7

    .line 177
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$400(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 178
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$500(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$OnConnectWifiListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$500(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$OnConnectWifiListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$OnConnectWifiListener;->onCancel()V

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->dismiss()V

    goto/16 :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$600(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 183
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 184
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$200(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->wifi_ssid_empty_tip:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    .line 187
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->wifi_pwd_length_not_allow:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$500(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$OnConnectWifiListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$500(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$OnConnectWifiListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$200(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$OnConnectWifiListener;->onSelectWifi(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->dismiss()V

    goto :goto_0

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$700(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 195
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$800(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$802(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;Z)Z

    .line 196
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$800(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 197
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Landroid/widget/EditText;

    move-result-object p1

    .line 198
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    .line 197
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 199
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$700(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/jieli/stream/dv/running2/R$drawable;->dbg_show_pwd_selector:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 201
    :cond_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Landroid/widget/EditText;

    move-result-object p1

    .line 202
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    .line 201
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 203
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$300(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 204
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog$3;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;->access$700(Lcom/jieli/stream/dv/running2/ui/dialog/SelectWifiDialog;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_hide_pwd:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    :goto_0
    return-void
.end method
