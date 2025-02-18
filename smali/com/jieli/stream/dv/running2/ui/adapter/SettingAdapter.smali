.class public Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;,
        Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/SettingItem;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->items:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getType()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 74
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->getItemViewType(I)I

    move-result v0

    .line 75
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p2, :cond_1

    .line 124
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/jieli/stream/dv/running2/R$layout;->item_device_setting_three:I

    invoke-virtual {p1, p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 125
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getMarginTop()I

    move-result p1

    invoke-virtual {p2, v3, p1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 126
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;

    invoke-direct {p1, p0, v2}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;-><init>(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$1;)V

    .line 127
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->item_setting_three_tv1:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-static {p1, p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;->access$102(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 128
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->item_setting_three_tv2:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-static {p1, p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;->access$202(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 129
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;

    .line 133
    :goto_0
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 134
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;->access$100(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;->access$200(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_2
    if-nez p2, :cond_3

    .line 97
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/jieli/stream/dv/running2/R$layout;->item_device_setting_two:I

    invoke-virtual {p2, v0, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 98
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getMarginTop()I

    move-result p3

    invoke-virtual {p2, v3, p3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 99
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;

    invoke-direct {p3, p0, v2}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;-><init>(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$1;)V

    .line 100
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->item_setting_three_tv1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;->access$402(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->item_setting_three_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;

    invoke-static {p3, v0}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;->access$502(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;)Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;

    .line 102
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;->access$500(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;)Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;

    move-result-object v0

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$1;

    invoke-direct {v2, p0, v1, p3, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$1;-><init>(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;Lcom/jieli/stream/dv/running2/bean/SettingItem;Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;I)V

    invoke-virtual {v0, v2}, Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;

    .line 116
    :goto_1
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 117
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;->access$400(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;->access$500(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper1;)Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;

    move-result-object p1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/jieli/stream/dv/running2/ui/widget/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    goto :goto_3

    :cond_4
    if-nez p2, :cond_5

    .line 80
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/jieli/stream/dv/running2/R$layout;->item_device_setting_one:I

    invoke-virtual {p1, p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 81
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getMarginTop()I

    move-result p1

    invoke-virtual {p2, v3, p1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 82
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;

    invoke-direct {p1, p0, v2}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;-><init>(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$1;)V

    .line 83
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->item_setting_one_tv1:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-static {p1, p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;->access$102(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 84
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->item_setting_one_tv2:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-static {p1, p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;->access$202(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 85
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 87
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;

    .line 89
    :goto_2
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 90
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;->access$100(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;->access$200(Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter$ViewHelper;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/SettingItem;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->items:Ljava/util/List;

    return-void
.end method
