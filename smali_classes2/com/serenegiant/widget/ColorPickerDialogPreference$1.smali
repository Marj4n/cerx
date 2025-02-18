.class Lcom/serenegiant/widget/ColorPickerDialogPreference$1;
.super Ljava/lang/Object;
.source "ColorPickerDialogPreference.java"

# interfaces
.implements Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/ColorPickerDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/ColorPickerDialogPreference;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/ColorPickerDialogPreference;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference$1;->this$0:Lcom/serenegiant/widget/ColorPickerDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(Lcom/serenegiant/widget/ColorPickerView;I)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference$1;->this$0:Lcom/serenegiant/widget/ColorPickerDialogPreference;

    invoke-static {p1}, Lcom/serenegiant/widget/ColorPickerDialogPreference;->access$000(Lcom/serenegiant/widget/ColorPickerDialogPreference;)I

    move-result p1

    if-eq p1, p2, :cond_0

    .line 98
    iget-object p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference$1;->this$0:Lcom/serenegiant/widget/ColorPickerDialogPreference;

    invoke-static {p1, p2}, Lcom/serenegiant/widget/ColorPickerDialogPreference;->access$002(Lcom/serenegiant/widget/ColorPickerDialogPreference;I)I

    .line 99
    iget-object p1, p0, Lcom/serenegiant/widget/ColorPickerDialogPreference$1;->this$0:Lcom/serenegiant/widget/ColorPickerDialogPreference;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/serenegiant/widget/ColorPickerDialogPreference;->access$102(Lcom/serenegiant/widget/ColorPickerDialogPreference;Z)Z

    :cond_0
    return-void
.end method
