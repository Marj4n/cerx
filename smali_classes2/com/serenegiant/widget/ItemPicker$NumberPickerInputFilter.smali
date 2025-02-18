.class Lcom/serenegiant/widget/ItemPicker$NumberPickerInputFilter;
.super Ljava/lang/Object;
.source "ItemPicker.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/ItemPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberPickerInputFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/ItemPicker;


# direct methods
.method private constructor <init>(Lcom/serenegiant/widget/ItemPicker;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/serenegiant/widget/ItemPicker$NumberPickerInputFilter;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/widget/ItemPicker;Lcom/serenegiant/widget/ItemPicker$1;)V
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ItemPicker$NumberPickerInputFilter;-><init>(Lcom/serenegiant/widget/ItemPicker;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    .line 485
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker$NumberPickerInputFilter;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {v0}, Lcom/serenegiant/widget/ItemPicker;->access$1000(Lcom/serenegiant/widget/ItemPicker;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker$NumberPickerInputFilter;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {v0}, Lcom/serenegiant/widget/ItemPicker;->access$1100(Lcom/serenegiant/widget/ItemPicker;)Landroid/text/InputFilter;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 488
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 489
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x0

    invoke-interface {p4, p3, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 491
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p5

    invoke-interface {p4, p6, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 492
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 493
    iget-object p4, p0, Lcom/serenegiant/widget/ItemPicker$NumberPickerInputFilter;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {p4}, Lcom/serenegiant/widget/ItemPicker;->access$1000(Lcom/serenegiant/widget/ItemPicker;)[Ljava/lang/String;

    move-result-object p4

    array-length p5, p4

    :goto_0
    if-ge p3, p5, :cond_2

    aget-object p6, p4, p3

    .line 494
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p6, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p6

    .line 495
    invoke-virtual {p6, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_1

    return-object p1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    const-string p1, ""

    return-object p1
.end method
