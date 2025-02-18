.class public Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ResolutionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecyclerHolder"
.end annotation


# instance fields
.field textView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 72
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;->textView:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Z)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;->textView:Landroid/widget/TextView;

    if-nez p2, :cond_0

    const-string p2, "#B1B1B3"

    goto :goto_0

    :cond_0
    const-string p2, "#494949"

    :goto_0
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-void
.end method

.method public getRadio()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
