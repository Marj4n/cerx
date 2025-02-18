.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;
.super Ljava/lang/Object;
.source "DeviceNameFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    const-string v0, "utf-8"

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "\n"

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v1, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    .line 115
    :try_start_0
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)I

    move-result v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v4

    goto :goto_0

    :catch_0
    move-exception v3

    .line 117
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x1f

    if-le v3, v4, :cond_2

    .line 121
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1f

    .line 123
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    if-gt v3, v5, :cond_1

    .line 124
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 125
    :cond_1
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1f

    if-le v1, v3, :cond_3

    .line 127
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {p1, v1, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Landroid/widget/TextView;

    move-result-object v1

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->device_name_input_limit:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 131
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/jieli/stream/dv/running2/R$color;->text_press_gray:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    :cond_3
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    sget v5, Lcom/jieli/stream/dv/running2/R$string;->device_name_input_limit:I

    invoke-virtual {v3, v5}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v6}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)I

    move-result v6

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$602(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_2
    return-void

    .line 106
    :cond_4
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p1, p4}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$102(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;I)I

    return-void
.end method
