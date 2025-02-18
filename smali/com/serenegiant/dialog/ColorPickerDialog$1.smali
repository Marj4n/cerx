.class Lcom/serenegiant/dialog/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/dialog/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/dialog/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/serenegiant/dialog/ColorPickerDialog;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog$1;->this$0:Lcom/serenegiant/dialog/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(Lcom/serenegiant/widget/ColorPickerView;I)V
    .locals 1

    .line 208
    iget-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog$1;->this$0:Lcom/serenegiant/dialog/ColorPickerDialog;

    invoke-static {p1}, Lcom/serenegiant/dialog/ColorPickerDialog;->access$000(Lcom/serenegiant/dialog/ColorPickerDialog;)I

    move-result p1

    if-eq p1, p2, :cond_0

    .line 209
    iget-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog$1;->this$0:Lcom/serenegiant/dialog/ColorPickerDialog;

    invoke-static {p1, p2}, Lcom/serenegiant/dialog/ColorPickerDialog;->access$002(Lcom/serenegiant/dialog/ColorPickerDialog;I)I

    .line 210
    iget-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog$1;->this$0:Lcom/serenegiant/dialog/ColorPickerDialog;

    invoke-static {p1}, Lcom/serenegiant/dialog/ColorPickerDialog;->access$100(Lcom/serenegiant/dialog/ColorPickerDialog;)Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/serenegiant/dialog/ColorPickerDialog$1;->this$0:Lcom/serenegiant/dialog/ColorPickerDialog;

    invoke-static {p1}, Lcom/serenegiant/dialog/ColorPickerDialog;->access$100(Lcom/serenegiant/dialog/ColorPickerDialog;)Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/serenegiant/dialog/ColorPickerDialog$1;->this$0:Lcom/serenegiant/dialog/ColorPickerDialog;

    invoke-interface {p1, v0, p2}, Lcom/serenegiant/dialog/ColorPickerDialog$OnColorChangedListener;->onColorChanged(Lcom/serenegiant/dialog/ColorPickerDialog;I)V

    :cond_0
    return-void
.end method
