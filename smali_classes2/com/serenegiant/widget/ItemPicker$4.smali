.class Lcom/serenegiant/widget/ItemPicker$4;
.super Ljava/lang/Object;
.source "ItemPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 202
    iput-object p1, p0, Lcom/serenegiant/widget/ItemPicker$4;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker$4;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {v0}, Lcom/serenegiant/widget/ItemPicker;->access$500(Lcom/serenegiant/widget/ItemPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 214
    sget v0, Lcom/serenegiant/common/R$id;->increment:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPicker$4;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {p1, v2}, Lcom/serenegiant/widget/ItemPicker;->access$002(Lcom/serenegiant/widget/ItemPicker;Z)Z

    .line 216
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPicker$4;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {p1}, Lcom/serenegiant/widget/ItemPicker;->access$300(Lcom/serenegiant/widget/ItemPicker;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker$4;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {v0}, Lcom/serenegiant/widget/ItemPicker;->access$700(Lcom/serenegiant/widget/ItemPicker;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 217
    :cond_0
    sget v0, Lcom/serenegiant/common/R$id;->decrement:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 218
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPicker$4;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {p1, v2}, Lcom/serenegiant/widget/ItemPicker;->access$402(Lcom/serenegiant/widget/ItemPicker;Z)Z

    .line 219
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPicker$4;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {p1}, Lcom/serenegiant/widget/ItemPicker;->access$300(Lcom/serenegiant/widget/ItemPicker;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker$4;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {v0}, Lcom/serenegiant/widget/ItemPicker;->access$700(Lcom/serenegiant/widget/ItemPicker;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return v2
.end method
