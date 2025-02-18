.class Lcom/serenegiant/widget/ItemPickerPreferenceV7$1;
.super Ljava/lang/Object;
.source "ItemPickerPreferenceV7.java"

# interfaces
.implements Lcom/serenegiant/widget/ItemPicker$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/ItemPickerPreferenceV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/ItemPickerPreferenceV7;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/ItemPickerPreferenceV7;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7$1;->this$0:Lcom/serenegiant/widget/ItemPickerPreferenceV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/serenegiant/widget/ItemPicker;II)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7$1;->this$0:Lcom/serenegiant/widget/ItemPickerPreferenceV7;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->callChangeListener(Ljava/lang/Object;)Z

    .line 119
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7$1;->this$0:Lcom/serenegiant/widget/ItemPickerPreferenceV7;

    invoke-static {p1, p3}, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->access$002(Lcom/serenegiant/widget/ItemPickerPreferenceV7;I)I

    .line 120
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7$1;->this$0:Lcom/serenegiant/widget/ItemPickerPreferenceV7;

    invoke-static {p1}, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->access$000(Lcom/serenegiant/widget/ItemPickerPreferenceV7;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->access$100(Lcom/serenegiant/widget/ItemPickerPreferenceV7;I)Z

    return-void
.end method
