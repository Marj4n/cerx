.class Lcom/serenegiant/widget/ItemPicker$NumberRangeKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "ItemPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/ItemPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberRangeKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/ItemPicker;


# direct methods
.method private constructor <init>(Lcom/serenegiant/widget/ItemPicker;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/serenegiant/widget/ItemPicker$NumberRangeKeyListener;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/widget/ItemPicker;Lcom/serenegiant/widget/ItemPicker$1;)V
    .locals 0

    .line 503
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ItemPicker$NumberRangeKeyListener;-><init>(Lcom/serenegiant/widget/ItemPicker;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    .line 522
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 524
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 527
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x0

    invoke-interface {p4, p2, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 529
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p2

    invoke-interface {p4, p6, p2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 531
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p1

    .line 534
    :cond_1
    iget-object p3, p0, Lcom/serenegiant/widget/ItemPicker$NumberRangeKeyListener;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {p3, p1}, Lcom/serenegiant/widget/ItemPicker;->access$1300(Lcom/serenegiant/widget/ItemPicker;Ljava/lang/String;)I

    move-result p1

    .line 541
    iget-object p3, p0, Lcom/serenegiant/widget/ItemPicker$NumberRangeKeyListener;->this$0:Lcom/serenegiant/widget/ItemPicker;

    invoke-static {p3}, Lcom/serenegiant/widget/ItemPicker;->access$1400(Lcom/serenegiant/widget/ItemPicker;)I

    move-result p3

    if-le p1, p3, :cond_2

    return-object p2

    :cond_2
    return-object v0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .line 515
    invoke-static {}, Lcom/serenegiant/widget/ItemPicker;->access$1200()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
