.class public Lcom/serenegiant/widget/ValueSelectorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ValueSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/widget/ValueSelectorAdapter$ViewHolder;,
        Lcom/serenegiant/widget/ValueSelectorAdapter$ValueEntry;,
        Lcom/serenegiant/widget/ValueSelectorAdapter$ValueSelectorAdapterListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/serenegiant/widget/ValueSelectorAdapter$ValueEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayoutId:I

.field private final mListener:Lcom/serenegiant/widget/ValueSelectorAdapter$ValueSelectorAdapterListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private final mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/serenegiant/widget/ValueSelectorAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/widget/ValueSelectorAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIILcom/serenegiant/widget/ValueSelectorAdapter$ValueSelectorAdapterListener;)V
    .locals 0

    .line 79
    invoke-static {p1, p4, p5}, Lcom/serenegiant/widget/ValueSelectorAdapter;->createEntries(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p4

    invoke-direct {p0, p1, p2, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 142
    new-instance p4, Lcom/serenegiant/widget/ValueSelectorAdapter$1;

    invoke-direct {p4, p0}, Lcom/serenegiant/widget/ValueSelectorAdapter$1;-><init>(Lcom/serenegiant/widget/ValueSelectorAdapter;)V

    iput-object p4, p0, Lcom/serenegiant/widget/ValueSelectorAdapter;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/widget/ValueSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    iput p2, p0, Lcom/serenegiant/widget/ValueSelectorAdapter;->mLayoutId:I

    .line 82
    iput p3, p0, Lcom/serenegiant/widget/ValueSelectorAdapter;->mTitleId:I

    .line 83
    iput-object p6, p0, Lcom/serenegiant/widget/ValueSelectorAdapter;->mListener:Lcom/serenegiant/widget/ValueSelectorAdapter$ValueSelectorAdapterListener;

    return-void
.end method

.method static synthetic access$200(Lcom/serenegiant/widget/ValueSelectorAdapter;)Lcom/serenegiant/widget/ValueSelectorAdapter$ValueSelectorAdapterListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/serenegiant/widget/ValueSelectorAdapter;->mListener:Lcom/serenegiant/widget/ValueSelectorAdapter$ValueSelectorAdapterListener;

    return-object p0
.end method

.method private static createEntries(Landroid/content/Context;II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Lcom/serenegiant/widget/ValueSelectorAdapter$ValueEntry;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 60
    array-length v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    array-length v1, p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge p2, v0, :cond_2

    .line 63
    new-instance v2, Lcom/serenegiant/widget/ValueSelectorAdapter$ValueEntry;

    aget-object v3, p1, p2

    aget-object v4, p0, p2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/serenegiant/widget/ValueSelectorAdapter$ValueEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/serenegiant/widget/ValueSelectorAdapter$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    return-object v1
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lcom/serenegiant/widget/ValueSelectorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getPosition(I)I
    .locals 3

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-virtual {p0}, Lcom/serenegiant/widget/ValueSelectorAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 133
    invoke-virtual {p0, v1}, Lcom/serenegiant/widget/ValueSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/serenegiant/widget/ValueSelectorAdapter$ValueEntry;

    .line 134
    iget-object v2, v2, Lcom/serenegiant/widget/ValueSelectorAdapter$ValueEntry;->value:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_2

    .line 92
    iget-object p2, p0, Lcom/serenegiant/widget/ValueSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v0, p0, Lcom/serenegiant/widget/ValueSelectorAdapter;->mLayoutId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 93
    new-instance p3, Lcom/serenegiant/widget/ValueSelectorAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/serenegiant/widget/ValueSelectorAdapter$ViewHolder;-><init>(Lcom/serenegiant/widget/ValueSelectorAdapter$1;)V

    .line 94
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 95
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/serenegiant/widget/ValueSelectorAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    goto :goto_1

    .line 98
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/serenegiant/widget/ValueSelectorAdapter;->mTitleId:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/serenegiant/widget/ValueSelectorAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    iput-object v0, p3, Lcom/serenegiant/widget/ValueSelectorAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    .line 102
    :goto_0
    iget-object v1, p3, Lcom/serenegiant/widget/ValueSelectorAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 104
    :try_start_1
    sget v1, Lcom/serenegiant/common/R$id;->title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/serenegiant/widget/ValueSelectorAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 106
    :catch_1
    iput-object v0, p3, Lcom/serenegiant/widget/ValueSelectorAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    .line 110
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/serenegiant/widget/ValueSelectorAdapter;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/serenegiant/widget/ValueSelectorAdapter$ViewHolder;

    .line 115
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ValueSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/widget/ValueSelectorAdapter$ValueEntry;

    if-eqz v0, :cond_3

    .line 116
    iget-object v1, p3, Lcom/serenegiant/widget/ValueSelectorAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 117
    iget-object v1, p3, Lcom/serenegiant/widget/ValueSelectorAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/serenegiant/widget/ValueSelectorAdapter$ValueEntry;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_3
    iput p1, p3, Lcom/serenegiant/widget/ValueSelectorAdapter$ViewHolder;->position:I

    return-object p2
.end method
