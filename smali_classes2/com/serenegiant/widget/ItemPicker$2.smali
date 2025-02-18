.class Lcom/serenegiant/widget/ItemPicker$2;
.super Ljava/lang/Object;
.source "ItemPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/widget/ItemPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/ItemPicker;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/ItemPicker;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/serenegiant/widget/ItemPicker$2;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker$2;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {v0}, Lcom/serenegiant/widget/ItemPicker;->access$500(Lcom/serenegiant/widget/ItemPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/serenegiant/widget/ItemPicker;->access$600(Lcom/serenegiant/widget/ItemPicker;Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker$2;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {v0}, Lcom/serenegiant/widget/ItemPicker;->access$500(Lcom/serenegiant/widget/ItemPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker$2;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {v0}, Lcom/serenegiant/widget/ItemPicker;->access$500(Lcom/serenegiant/widget/ItemPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 181
    :cond_0
    sget v0, Lcom/serenegiant/common/R$id;->increment:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPicker$2;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {p1}, Lcom/serenegiant/widget/ItemPicker;->access$100(Lcom/serenegiant/widget/ItemPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/serenegiant/widget/ItemPicker;->changeCurrent(I)V

    goto :goto_0

    .line 183
    :cond_1
    sget v0, Lcom/serenegiant/common/R$id;->decrement:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 184
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPicker$2;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {p1}, Lcom/serenegiant/widget/ItemPicker;->access$100(Lcom/serenegiant/widget/ItemPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/serenegiant/widget/ItemPicker;->changeCurrent(I)V

    :cond_2
    :goto_0
    return-void
.end method
