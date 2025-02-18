.class Lcom/serenegiant/widget/ItemPickerPreference$1;
.super Ljava/lang/Object;
.source "ItemPickerPreference.java"

# interfaces
.implements Lcom/serenegiant/widget/ItemPicker$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/ItemPickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/ItemPickerPreference;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/ItemPickerPreference;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreference$1;->this$0:Lcom/serenegiant/widget/ItemPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/serenegiant/widget/ItemPicker;II)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreference$1;->this$0:Lcom/serenegiant/widget/ItemPickerPreference;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/serenegiant/widget/ItemPickerPreference;->access$000(Lcom/serenegiant/widget/ItemPickerPreference;Ljava/lang/Object;)Z

    .line 114
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreference$1;->this$0:Lcom/serenegiant/widget/ItemPickerPreference;

    invoke-static {p1, p3}, Lcom/serenegiant/widget/ItemPickerPreference;->access$102(Lcom/serenegiant/widget/ItemPickerPreference;I)I

    .line 115
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreference$1;->this$0:Lcom/serenegiant/widget/ItemPickerPreference;

    invoke-static {p1}, Lcom/serenegiant/widget/ItemPickerPreference;->access$100(Lcom/serenegiant/widget/ItemPickerPreference;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/serenegiant/widget/ItemPickerPreference;->access$200(Lcom/serenegiant/widget/ItemPickerPreference;I)Z

    return-void
.end method
