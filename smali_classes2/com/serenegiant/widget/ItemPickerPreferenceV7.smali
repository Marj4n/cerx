.class public final Lcom/serenegiant/widget/ItemPickerPreferenceV7;
.super Landroidx/preference/Preference;
.source "ItemPickerPreferenceV7.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mItemPicker:Lcom/serenegiant/widget/ItemPicker;

.field private mMaxValue:I

.field private mMinValue:I

.field private final mOnChangeListener:Lcom/serenegiant/widget/ItemPicker$OnChangedListener;

.field private preferenceValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mMinValue:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mMaxValue:I

    .line 114
    new-instance p1, Lcom/serenegiant/widget/ItemPickerPreferenceV7$1;

    invoke-direct {p1, p0}, Lcom/serenegiant/widget/ItemPickerPreferenceV7$1;-><init>(Lcom/serenegiant/widget/ItemPickerPreferenceV7;)V

    iput-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mOnChangeListener:Lcom/serenegiant/widget/ItemPicker$OnChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mMinValue:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mMaxValue:I

    .line 114
    new-instance p1, Lcom/serenegiant/widget/ItemPickerPreferenceV7$1;

    invoke-direct {p1, p0}, Lcom/serenegiant/widget/ItemPickerPreferenceV7$1;-><init>(Lcom/serenegiant/widget/ItemPickerPreferenceV7;)V

    iput-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mOnChangeListener:Lcom/serenegiant/widget/ItemPicker$OnChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mMinValue:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mMaxValue:I

    .line 114
    new-instance p1, Lcom/serenegiant/widget/ItemPickerPreferenceV7$1;

    invoke-direct {p1, p0}, Lcom/serenegiant/widget/ItemPickerPreferenceV7$1;-><init>(Lcom/serenegiant/widget/ItemPickerPreferenceV7;)V

    iput-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mOnChangeListener:Lcom/serenegiant/widget/ItemPicker$OnChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/widget/ItemPickerPreferenceV7;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->preferenceValue:I

    return p0
.end method

.method static synthetic access$002(Lcom/serenegiant/widget/ItemPickerPreferenceV7;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->preferenceValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/serenegiant/widget/ItemPickerPreferenceV7;I)Z
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->persistInt(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 57
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 58
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 61
    instance-of v2, v1, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 62
    check-cast v1, Landroid/widget/RelativeLayout;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 71
    new-instance p1, Lcom/serenegiant/widget/ItemPicker;

    invoke-virtual {p0}, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/serenegiant/widget/ItemPicker;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mItemPicker:Lcom/serenegiant/widget/ItemPicker;

    .line 73
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v2, -0x1

    invoke-direct {p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    const v2, 0x1020010

    .line 76
    invoke-virtual {p1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 77
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mItemPicker:Lcom/serenegiant/widget/ItemPicker;

    invoke-virtual {v1, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mItemPicker:Lcom/serenegiant/widget/ItemPicker;

    iget v0, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mMinValue:I

    iget v1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mMaxValue:I

    invoke-virtual {p1, v0, v1}, Lcom/serenegiant/widget/ItemPicker;->setRange(II)V

    .line 80
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mItemPicker:Lcom/serenegiant/widget/ItemPicker;

    iget v0, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->preferenceValue:I

    invoke-virtual {p1, v0}, Lcom/serenegiant/widget/ItemPicker;->setValue(I)V

    .line 81
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mItemPicker:Lcom/serenegiant/widget/ItemPicker;

    invoke-virtual {p1}, Lcom/serenegiant/widget/ItemPicker;->getValue()I

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->preferenceValue:I

    .line 82
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->persistInt(I)Z

    .line 83
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mItemPicker:Lcom/serenegiant/widget/ItemPicker;

    iget-object v0, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mOnChangeListener:Lcom/serenegiant/widget/ItemPicker$OnChangedListener;

    invoke-virtual {p1, v0}, Lcom/serenegiant/widget/ItemPicker;->setOnChangeListener(Lcom/serenegiant/widget/ItemPicker$OnChangedListener;)V

    return-void

    .line 68
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unexpected item view type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    .line 96
    iget v0, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->preferenceValue:I

    .line 97
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 98
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 99
    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 101
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 107
    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->getPersistedInt(I)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->preferenceValue:I

    goto :goto_1

    .line 109
    :cond_2
    iput v0, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->preferenceValue:I

    .line 110
    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->persistInt(I)Z

    :goto_1
    return-void
.end method

.method public setRange(II)V
    .locals 2

    if-le p1, p2, :cond_0

    move v1, p2

    move p2, p1

    move p1, v1

    .line 131
    :cond_0
    iget v0, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mMinValue:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mMaxValue:I

    if-eq v0, p2, :cond_2

    .line 132
    :cond_1
    iput p2, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mMaxValue:I

    .line 133
    iput p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mMinValue:I

    .line 134
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mItemPicker:Lcom/serenegiant/widget/ItemPicker;

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/widget/ItemPicker;->setRange(II)V

    .line 136
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mItemPicker:Lcom/serenegiant/widget/ItemPicker;

    iget p2, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->preferenceValue:I

    invoke-virtual {p1, p2}, Lcom/serenegiant/widget/ItemPicker;->setValue(I)V

    .line 137
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->mItemPicker:Lcom/serenegiant/widget/ItemPicker;

    invoke-virtual {p1}, Lcom/serenegiant/widget/ItemPicker;->getValue()I

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->preferenceValue:I

    .line 138
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/ItemPickerPreferenceV7;->persistInt(I)Z

    :cond_2
    return-void
.end method
