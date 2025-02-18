.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$CustomNameFilter;
.super Ljava/lang/Object;
.source "DeviceNameFragment.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomNameFilter"
.end annotation


# instance fields
.field private maxLength:I

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;I)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$CustomNameFilter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$CustomNameFilter;->maxLength:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return-object p3

    :cond_0
    const/4 p2, 0x0

    .line 173
    iget-object p5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$CustomNameFilter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p5, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Ljava/lang/CharSequence;)I

    move-result p5

    .line 174
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p6

    if-eqz p6, :cond_1

    .line 175
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$CustomNameFilter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p2, p4}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Ljava/lang/CharSequence;)I

    move-result p2

    .line 177
    :cond_1
    iget p6, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$CustomNameFilter;->maxLength:I

    const-string v0, ""

    if-gt p2, p6, :cond_6

    if-le p5, p6, :cond_2

    goto/16 :goto_1

    :cond_2
    add-int p6, p5, p2

    .line 181
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p4

    if-nez p4, :cond_4

    .line 182
    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$CustomNameFilter;->maxLength:I

    if-gt p6, p2, :cond_3

    return-object p3

    .line 185
    :cond_3
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$CustomNameFilter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p3, p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 186
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$CustomNameFilter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "sub="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 194
    :cond_4
    :try_start_0
    iget-object p4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$CustomNameFilter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p4}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Landroid/widget/EditText;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p6, "utf-8"

    invoke-virtual {p4, p6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p4

    array-length p4, p4

    iget-object p4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$CustomNameFilter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p4}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 196
    invoke-virtual {p4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 198
    :goto_0
    iget-object p4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$CustomNameFilter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p4}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Landroid/widget/EditText;

    move-result-object p6

    invoke-virtual {p6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p6

    invoke-static {p4, p6}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Ljava/lang/CharSequence;)I

    move-result p4

    add-int/2addr p4, p5

    .line 201
    iget p5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$CustomNameFilter;->maxLength:I

    if-le p4, p5, :cond_5

    sub-int/2addr p5, p2

    .line 204
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$CustomNameFilter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p2, p1, p5}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 206
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment$CustomNameFilter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "end sub="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    return-object p3

    :cond_6
    :goto_1
    return-object v0
.end method
