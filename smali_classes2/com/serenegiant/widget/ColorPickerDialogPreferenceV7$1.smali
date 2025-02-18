.class Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7$1;
.super Ljava/lang/Object;
.source "ColorPickerDialogPreferenceV7.java"

# interfaces
.implements Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7$1;->this$0:Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(Lcom/serenegiant/widget/ColorPickerView;I)V
    .locals 0

    .line 111
    iget-object p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7$1;->this$0:Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;

    invoke-static {p1}, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->access$000(Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;)I

    move-result p1

    if-eq p1, p2, :cond_0

    .line 112
    iget-object p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7$1;->this$0:Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;

    invoke-static {p1, p2}, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->access$002(Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;I)I

    .line 113
    iget-object p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7$1;->this$0:Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;->access$102(Lcom/serenegiant/widget/ColorPickerDialogPreferenceV7;Z)Z

    :cond_0
    return-void
.end method
