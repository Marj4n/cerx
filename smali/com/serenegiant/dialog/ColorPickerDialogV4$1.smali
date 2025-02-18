.class Lcom/serenegiant/dialog/ColorPickerDialogV4$1;
.super Ljava/lang/Object;
.source "ColorPickerDialogV4.java"

# interfaces
.implements Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/dialog/ColorPickerDialogV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/dialog/ColorPickerDialogV4;


# direct methods
.method constructor <init>(Lcom/serenegiant/dialog/ColorPickerDialogV4;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4$1;->this$0:Lcom/serenegiant/dialog/ColorPickerDialogV4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(Lcom/serenegiant/widget/ColorPickerView;I)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4$1;->this$0:Lcom/serenegiant/dialog/ColorPickerDialogV4;

    invoke-static {p1}, Lcom/serenegiant/dialog/ColorPickerDialogV4;->access$000(Lcom/serenegiant/dialog/ColorPickerDialogV4;)I

    move-result p1

    if-eq p1, p2, :cond_0

    .line 243
    iget-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4$1;->this$0:Lcom/serenegiant/dialog/ColorPickerDialogV4;

    invoke-static {p1, p2}, Lcom/serenegiant/dialog/ColorPickerDialogV4;->access$002(Lcom/serenegiant/dialog/ColorPickerDialogV4;I)I

    .line 244
    iget-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4$1;->this$0:Lcom/serenegiant/dialog/ColorPickerDialogV4;

    invoke-static {p1}, Lcom/serenegiant/dialog/ColorPickerDialogV4;->access$100(Lcom/serenegiant/dialog/ColorPickerDialogV4;)Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4$1;->this$0:Lcom/serenegiant/dialog/ColorPickerDialogV4;

    invoke-static {p1}, Lcom/serenegiant/dialog/ColorPickerDialogV4;->access$100(Lcom/serenegiant/dialog/ColorPickerDialogV4;)Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialogV4$1;->this$0:Lcom/serenegiant/dialog/ColorPickerDialogV4;

    invoke-interface {p1, v0, p2}, Lcom/serenegiant/dialog/ColorPickerDialogV4$OnColorChangedListener;->onColorChanged(Lcom/serenegiant/dialog/ColorPickerDialogV4;I)V

    :cond_0
    return-void
.end method
