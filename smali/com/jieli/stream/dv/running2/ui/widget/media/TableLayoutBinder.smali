.class public Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;
.super Ljava/lang/Object;
.source "TableLayoutBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mTableLayout:Landroid/widget/TableLayout;

.field public mTableView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    sget v0, Lcom/jieli/stream/dv/running2/R$layout;->table_media_info:I

    invoke-direct {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->mTableView:Landroid/view/ViewGroup;

    .line 42
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->table:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableLayout;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->mTableLayout:Landroid/widget/TableLayout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TableLayout;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->mTableView:Landroid/view/ViewGroup;

    .line 48
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->mTableLayout:Landroid/widget/TableLayout;

    return-void
.end method


# virtual methods
.method public appendRow(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->mTableLayout:Landroid/widget/TableLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->setNameValueText(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {p2, p1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public appendRow1(ILjava/lang/String;)Landroid/view/View;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->appendRow1(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public appendRow1(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 52
    sget v0, Lcom/jieli/stream/dv/running2/R$layout;->table_media_info_row1:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->appendRow(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public appendRow2(ILjava/lang/String;)Landroid/view/View;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->appendRow2(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public appendRow2(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 60
    sget v0, Lcom/jieli/stream/dv/running2/R$layout;->table_media_info_row2:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->appendRow(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public appendSection(I)Landroid/view/View;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public appendSection(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .line 68
    sget v0, Lcom/jieli/stream/dv/running2/R$layout;->table_media_info_section:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->appendRow(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public buildAlertDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 110
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->buildLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method public buildLayout()Landroid/view/ViewGroup;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->mTableView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public obtainViewHolder(Landroid/view/View;)Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder$ViewHolder;
    .locals 2

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder$ViewHolder;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder$ViewHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder$1;)V

    .line 87
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder$ViewHolder;->mNameTextView:Landroid/widget/TextView;

    .line 88
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->value:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder$ViewHolder;->mValueTextView:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public setNameValueText(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->obtainViewHolder(Landroid/view/View;)Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder$ViewHolder;

    move-result-object p1

    .line 96
    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder$ViewHolder;->setName(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1, p3}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder$ViewHolder;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setValueText(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder;->obtainViewHolder(Landroid/view/View;)Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder$ViewHolder;

    move-result-object p1

    .line 102
    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/widget/media/TableLayoutBinder$ViewHolder;->setValue(Ljava/lang/String;)V

    return-void
.end method
