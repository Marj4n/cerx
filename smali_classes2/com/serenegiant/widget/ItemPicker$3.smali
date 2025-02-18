.class Lcom/serenegiant/widget/ItemPicker$3;
.super Ljava/lang/Object;
.source "ItemPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 189
    iput-object p1, p0, Lcom/serenegiant/widget/ItemPicker$3;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 197
    iget-object p2, p0, Lcom/serenegiant/widget/ItemPicker$3;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {p2, p1}, Lcom/serenegiant/widget/ItemPicker;->access$600(Lcom/serenegiant/widget/ItemPicker;Landroid/view/View;)V

    :cond_0
    return-void
.end method
