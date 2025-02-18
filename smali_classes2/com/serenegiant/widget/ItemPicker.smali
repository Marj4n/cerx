.class public final Lcom/serenegiant/widget/ItemPicker;
.super Landroid/widget/LinearLayout;
.source "ItemPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/widget/ItemPicker$NumberRangeKeyListener;,
        Lcom/serenegiant/widget/ItemPicker$NumberPickerInputFilter;,
        Lcom/serenegiant/widget/ItemPicker$Formatter;,
        Lcom/serenegiant/widget/ItemPicker$OnChangedListener;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C


# instance fields
.field private mCurrentValue:I

.field private mDecrement:Z

.field private mDecrementButton:Lcom/serenegiant/widget/ItemPickerButton;

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFormatter:Lcom/serenegiant/widget/ItemPicker$Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Lcom/serenegiant/widget/ItemPickerButton;

.field private mListener:Lcom/serenegiant/widget/ItemPicker$OnChangedListener;

.field private mMaxValue:I

.field private mMinValue:I

.field private final mNumberInputFilter:Landroid/text/InputFilter;

.field private mPrevValue:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSpeed:J

.field private final mText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [C

    .line 474
    fill-array-data v0, :array_0

    sput-object v0, Lcom/serenegiant/widget/ItemPicker;->DIGIT_CHARACTERS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/widget/ItemPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/widget/ItemPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 149
    invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/serenegiant/widget/ItemPicker;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v1, Lcom/serenegiant/widget/ItemPicker$1;

    invoke-direct {v1, v0}, Lcom/serenegiant/widget/ItemPicker$1;-><init>(Lcom/serenegiant/widget/ItemPicker;)V

    iput-object v1, v0, Lcom/serenegiant/widget/ItemPicker;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    .line 126
    iput-wide v1, v0, Lcom/serenegiant/widget/ItemPicker;->mSpeed:J

    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Lcom/serenegiant/widget/ItemPicker;->setOrientation(I)V

    const/16 v2, 0x10

    .line 151
    invoke-virtual {v0, v2}, Lcom/serenegiant/widget/ItemPicker;->setGravity(I)V

    .line 153
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 154
    sget v3, Lcom/serenegiant/common/R$layout;->item_picker:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 156
    sget-object v2, Lcom/serenegiant/common/R$styleable;->ItemPicker:[I

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual {v3, v5, v2, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 159
    sget v3, Lcom/serenegiant/common/R$styleable;->ItemPicker_ItemPickerMinItemValue:I

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 160
    sget v6, Lcom/serenegiant/common/R$styleable;->ItemPicker_ItemPickerMaxItemValue:I

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 161
    sget v7, Lcom/serenegiant/common/R$styleable;->ItemPicker_ItemPickerDisplayedValue:I

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x0

    if-le v7, v5, :cond_0

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/ItemPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v8

    .line 165
    :goto_0
    sget v9, Lcom/serenegiant/common/R$styleable;->ItemPicker_ItemPickerIncrementBackground:I

    invoke-virtual {v2, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 166
    sget v10, Lcom/serenegiant/common/R$styleable;->ItemPicker_ItemPickerDecrementBackground:I

    invoke-virtual {v2, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 167
    sget v11, Lcom/serenegiant/common/R$styleable;->ItemPicker_ItemPickerIncrementSrc:I

    invoke-virtual {v2, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 168
    sget v12, Lcom/serenegiant/common/R$styleable;->ItemPicker_ItemPickerDecrementSrc:I

    invoke-virtual {v2, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 169
    sget v13, Lcom/serenegiant/common/R$styleable;->ItemPicker_ItemPickerEditTextBackground:I

    invoke-virtual {v2, v13, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 170
    sget v14, Lcom/serenegiant/common/R$styleable;->ItemPicker_ItemPickerCurrentItemValue:I

    invoke-virtual {v2, v14, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 171
    sget v15, Lcom/serenegiant/common/R$styleable;->ItemPicker_ItemPickerSpeed:I

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 172
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    new-instance v2, Lcom/serenegiant/widget/ItemPicker$2;

    invoke-direct {v2, v0}, Lcom/serenegiant/widget/ItemPicker$2;-><init>(Lcom/serenegiant/widget/ItemPicker;)V

    .line 189
    new-instance v1, Lcom/serenegiant/widget/ItemPicker$3;

    invoke-direct {v1, v0}, Lcom/serenegiant/widget/ItemPicker$3;-><init>(Lcom/serenegiant/widget/ItemPicker;)V

    .line 202
    new-instance v4, Lcom/serenegiant/widget/ItemPicker$4;

    invoke-direct {v4, v0}, Lcom/serenegiant/widget/ItemPicker$4;-><init>(Lcom/serenegiant/widget/ItemPicker;)V

    .line 225
    new-instance v5, Lcom/serenegiant/widget/ItemPicker$NumberPickerInputFilter;

    invoke-direct {v5, v0, v8}, Lcom/serenegiant/widget/ItemPicker$NumberPickerInputFilter;-><init>(Lcom/serenegiant/widget/ItemPicker;Lcom/serenegiant/widget/ItemPicker$1;)V

    move/from16 p2, v15

    .line 226
    new-instance v15, Lcom/serenegiant/widget/ItemPicker$NumberRangeKeyListener;

    invoke-direct {v15, v0, v8}, Lcom/serenegiant/widget/ItemPicker$NumberRangeKeyListener;-><init>(Lcom/serenegiant/widget/ItemPicker;Lcom/serenegiant/widget/ItemPicker$1;)V

    iput-object v15, v0, Lcom/serenegiant/widget/ItemPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    .line 227
    sget v8, Lcom/serenegiant/common/R$id;->increment:I

    invoke-virtual {v0, v8}, Lcom/serenegiant/widget/ItemPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/serenegiant/widget/ItemPickerButton;

    iput-object v8, v0, Lcom/serenegiant/widget/ItemPicker;->mIncrementButton:Lcom/serenegiant/widget/ItemPickerButton;

    .line 228
    invoke-virtual {v8, v2}, Lcom/serenegiant/widget/ItemPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v8, v0, Lcom/serenegiant/widget/ItemPicker;->mIncrementButton:Lcom/serenegiant/widget/ItemPickerButton;

    invoke-virtual {v8, v4}, Lcom/serenegiant/widget/ItemPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 230
    iget-object v8, v0, Lcom/serenegiant/widget/ItemPicker;->mIncrementButton:Lcom/serenegiant/widget/ItemPickerButton;

    invoke-virtual {v8, v0}, Lcom/serenegiant/widget/ItemPickerButton;->setNumberPicker(Lcom/serenegiant/widget/ItemPicker;)V

    const/4 v8, -0x1

    if-eq v9, v8, :cond_1

    .line 232
    iget-object v15, v0, Lcom/serenegiant/widget/ItemPicker;->mIncrementButton:Lcom/serenegiant/widget/ItemPickerButton;

    invoke-virtual {v15, v9}, Lcom/serenegiant/widget/ItemPickerButton;->setBackgroundResource(I)V

    :cond_1
    if-eq v11, v8, :cond_2

    .line 234
    iget-object v8, v0, Lcom/serenegiant/widget/ItemPicker;->mIncrementButton:Lcom/serenegiant/widget/ItemPickerButton;

    invoke-virtual {v8, v11}, Lcom/serenegiant/widget/ItemPickerButton;->setImageResource(I)V

    .line 236
    :cond_2
    sget v8, Lcom/serenegiant/common/R$id;->decrement:I

    invoke-virtual {v0, v8}, Lcom/serenegiant/widget/ItemPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/serenegiant/widget/ItemPickerButton;

    iput-object v8, v0, Lcom/serenegiant/widget/ItemPicker;->mDecrementButton:Lcom/serenegiant/widget/ItemPickerButton;

    .line 237
    invoke-virtual {v8, v2}, Lcom/serenegiant/widget/ItemPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v2, v0, Lcom/serenegiant/widget/ItemPicker;->mDecrementButton:Lcom/serenegiant/widget/ItemPickerButton;

    invoke-virtual {v2, v4}, Lcom/serenegiant/widget/ItemPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 239
    iget-object v2, v0, Lcom/serenegiant/widget/ItemPicker;->mDecrementButton:Lcom/serenegiant/widget/ItemPickerButton;

    invoke-virtual {v2, v0}, Lcom/serenegiant/widget/ItemPickerButton;->setNumberPicker(Lcom/serenegiant/widget/ItemPicker;)V

    const/4 v2, -0x1

    if-eq v10, v2, :cond_3

    .line 241
    iget-object v4, v0, Lcom/serenegiant/widget/ItemPicker;->mDecrementButton:Lcom/serenegiant/widget/ItemPickerButton;

    invoke-virtual {v4, v10}, Lcom/serenegiant/widget/ItemPickerButton;->setBackgroundResource(I)V

    :cond_3
    if-eq v12, v2, :cond_4

    .line 243
    iget-object v2, v0, Lcom/serenegiant/widget/ItemPicker;->mDecrementButton:Lcom/serenegiant/widget/ItemPickerButton;

    invoke-virtual {v2, v12}, Lcom/serenegiant/widget/ItemPickerButton;->setImageResource(I)V

    .line 245
    :cond_4
    sget v2, Lcom/serenegiant/common/R$id;->input:I

    invoke-virtual {v0, v2}, Lcom/serenegiant/widget/ItemPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/serenegiant/widget/ItemPicker;->mText:Landroid/widget/EditText;

    .line 246
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 247
    iget-object v1, v0, Lcom/serenegiant/widget/ItemPicker;->mText:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    aput-object v5, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 248
    iget-object v1, v0, Lcom/serenegiant/widget/ItemPicker;->mText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    const/4 v1, -0x1

    if-eq v13, v1, :cond_5

    .line 250
    iget-object v2, v0, Lcom/serenegiant/widget/ItemPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v2, v13}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 252
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/serenegiant/widget/ItemPicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    .line 253
    invoke-virtual {v0, v2}, Lcom/serenegiant/widget/ItemPicker;->setEnabled(Z)V

    :cond_6
    if-le v3, v1, :cond_8

    if-le v6, v1, :cond_8

    if-eqz v7, :cond_7

    .line 258
    invoke-virtual {v0, v3, v6, v7}, Lcom/serenegiant/widget/ItemPicker;->setRange(II[Ljava/lang/String;)V

    goto :goto_1

    .line 261
    :cond_7
    invoke-virtual {v0, v3, v6}, Lcom/serenegiant/widget/ItemPicker;->setRange(II)V

    :cond_8
    :goto_1
    if-le v14, v1, :cond_9

    .line 266
    invoke-virtual {v0, v14}, Lcom/serenegiant/widget/ItemPicker;->setValue(I)V

    :cond_9
    move/from16 v2, p2

    if-le v2, v1, :cond_a

    int-to-long v1, v2

    .line 269
    invoke-virtual {v0, v1, v2}, Lcom/serenegiant/widget/ItemPicker;->setSpeed(J)V

    :cond_a
    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/widget/ItemPicker;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/serenegiant/widget/ItemPicker;->mIncrement:Z

    return p0
.end method

.method static synthetic access$002(Lcom/serenegiant/widget/ItemPicker;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/serenegiant/widget/ItemPicker;->mIncrement:Z

    return p1
.end method

.method static synthetic access$100(Lcom/serenegiant/widget/ItemPicker;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/serenegiant/widget/ItemPicker;->mCurrentValue:I

    return p0
.end method

.method static synthetic access$1000(Lcom/serenegiant/widget/ItemPicker;)[Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/serenegiant/widget/ItemPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/serenegiant/widget/ItemPicker;)Landroid/text/InputFilter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/serenegiant/widget/ItemPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    return-object p0
.end method

.method static synthetic access$1200()[C
    .locals 1

    .line 63
    sget-object v0, Lcom/serenegiant/widget/ItemPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$1300(Lcom/serenegiant/widget/ItemPicker;Ljava/lang/String;)I
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ItemPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/serenegiant/widget/ItemPicker;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/serenegiant/widget/ItemPicker;->mMaxValue:I

    return p0
.end method

.method static synthetic access$200(Lcom/serenegiant/widget/ItemPicker;)J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/serenegiant/widget/ItemPicker;->mSpeed:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/serenegiant/widget/ItemPicker;)Landroid/os/Handler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/serenegiant/widget/ItemPicker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/serenegiant/widget/ItemPicker;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/serenegiant/widget/ItemPicker;->mDecrement:Z

    return p0
.end method

.method static synthetic access$402(Lcom/serenegiant/widget/ItemPicker;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/serenegiant/widget/ItemPicker;->mDecrement:Z

    return p1
.end method

.method static synthetic access$500(Lcom/serenegiant/widget/ItemPicker;)Landroid/widget/EditText;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/serenegiant/widget/ItemPicker;->mText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/serenegiant/widget/ItemPicker;Landroid/view/View;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ItemPicker;->validateInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/serenegiant/widget/ItemPicker;)Ljava/lang/Runnable;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/serenegiant/widget/ItemPicker;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker;->mFormatter:Lcom/serenegiant/widget/ItemPicker$Formatter;

    if-eqz v0, :cond_0

    .line 380
    invoke-interface {v0, p1}, Lcom/serenegiant/widget/ItemPicker$Formatter;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 381
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 552
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 557
    :goto_0
    iget-object v1, p0, Lcom/serenegiant/widget/ItemPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 559
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 560
    iget-object v1, p0, Lcom/serenegiant/widget/ItemPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 561
    iget p1, p0, Lcom/serenegiant/widget/ItemPicker;->mMinValue:I

    add-int/2addr p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 575
    :catch_0
    iget p1, p0, Lcom/serenegiant/widget/ItemPicker;->mMinValue:I

    return p1
.end method

.method private notifyChange()V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker;->mListener:Lcom/serenegiant/widget/ItemPicker$OnChangedListener;

    if-eqz v0, :cond_0

    .line 412
    iget v1, p0, Lcom/serenegiant/widget/ItemPicker;->mPrevValue:I

    iget v2, p0, Lcom/serenegiant/widget/ItemPicker;->mCurrentValue:I

    invoke-interface {v0, p0, v1, v2}, Lcom/serenegiant/widget/ItemPicker$OnChangedListener;->onChanged(Lcom/serenegiant/widget/ItemPicker;II)V

    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 4

    .line 427
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker;->mText:Landroid/widget/EditText;

    iget v1, p0, Lcom/serenegiant/widget/ItemPicker;->mCurrentValue:I

    invoke-direct {p0, v1}, Lcom/serenegiant/widget/ItemPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/serenegiant/widget/ItemPicker;->mText:Landroid/widget/EditText;

    iget v2, p0, Lcom/serenegiant/widget/ItemPicker;->mCurrentValue:I

    iget v3, p0, Lcom/serenegiant/widget/ItemPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 432
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private validateCurrentView(Ljava/lang/CharSequence;)V
    .locals 1

    .line 436
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ItemPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p1

    .line 437
    iget v0, p0, Lcom/serenegiant/widget/ItemPicker;->mMinValue:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/serenegiant/widget/ItemPicker;->mMaxValue:I

    if-gt p1, v0, :cond_0

    .line 438
    iget v0, p0, Lcom/serenegiant/widget/ItemPicker;->mCurrentValue:I

    if-eq v0, p1, :cond_0

    .line 439
    iput v0, p0, Lcom/serenegiant/widget/ItemPicker;->mPrevValue:I

    .line 440
    iput p1, p0, Lcom/serenegiant/widget/ItemPicker;->mCurrentValue:I

    .line 441
    invoke-direct {p0}, Lcom/serenegiant/widget/ItemPicker;->notifyChange()V

    .line 444
    :cond_0
    invoke-direct {p0}, Lcom/serenegiant/widget/ItemPicker;->updateView()V

    return-void
.end method

.method private validateInput(Landroid/view/View;)V
    .locals 1

    .line 448
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 449
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/serenegiant/widget/ItemPicker;->updateView()V

    goto :goto_0

    .line 456
    :cond_0
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ItemPicker;->validateCurrentView(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelDecrement()V
    .locals 1

    const/4 v0, 0x0

    .line 471
    iput-boolean v0, p0, Lcom/serenegiant/widget/ItemPicker;->mDecrement:Z

    return-void
.end method

.method public cancelIncrement()V
    .locals 1

    const/4 v0, 0x0

    .line 464
    iput-boolean v0, p0, Lcom/serenegiant/widget/ItemPicker;->mIncrement:Z

    return-void
.end method

.method protected changeCurrent(I)V
    .locals 2

    .line 395
    iget v0, p0, Lcom/serenegiant/widget/ItemPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 396
    iget p1, p0, Lcom/serenegiant/widget/ItemPicker;->mMinValue:I

    goto :goto_0

    .line 397
    :cond_0
    iget v1, p0, Lcom/serenegiant/widget/ItemPicker;->mMinValue:I

    if-ge p1, v1, :cond_1

    move p1, v0

    .line 400
    :cond_1
    :goto_0
    iget v0, p0, Lcom/serenegiant/widget/ItemPicker;->mCurrentValue:I

    iput v0, p0, Lcom/serenegiant/widget/ItemPicker;->mPrevValue:I

    .line 401
    iput p1, p0, Lcom/serenegiant/widget/ItemPicker;->mCurrentValue:I

    .line 402
    invoke-direct {p0}, Lcom/serenegiant/widget/ItemPicker;->notifyChange()V

    .line 403
    invoke-direct {p0}, Lcom/serenegiant/widget/ItemPicker;->updateView()V

    return-void
.end method

.method protected getBeginRange()I
    .locals 1

    .line 599
    iget v0, p0, Lcom/serenegiant/widget/ItemPicker;->mMinValue:I

    return v0
.end method

.method protected getEndRange()I
    .locals 1

    .line 591
    iget v0, p0, Lcom/serenegiant/widget/ItemPicker;->mMaxValue:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 583
    iget v0, p0, Lcom/serenegiant/widget/ItemPicker;->mCurrentValue:I

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 280
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker;->mIncrementButton:Lcom/serenegiant/widget/ItemPickerButton;

    invoke-virtual {v0, p1}, Lcom/serenegiant/widget/ItemPickerButton;->setEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker;->mDecrementButton:Lcom/serenegiant/widget/ItemPickerButton;

    invoke-virtual {v0, p1}, Lcom/serenegiant/widget/ItemPickerButton;->setEnabled(Z)V

    .line 283
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public setFormatter(Lcom/serenegiant/widget/ItemPicker$Formatter;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/serenegiant/widget/ItemPicker;->mFormatter:Lcom/serenegiant/widget/ItemPicker$Formatter;

    return-void
.end method

.method public setOnChangeListener(Lcom/serenegiant/widget/ItemPicker$OnChangedListener;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/serenegiant/widget/ItemPicker;->mListener:Lcom/serenegiant/widget/ItemPicker$OnChangedListener;

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    .line 289
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 290
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker;->mIncrementButton:Lcom/serenegiant/widget/ItemPickerButton;

    invoke-virtual {v0, p1}, Lcom/serenegiant/widget/ItemPickerButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 291
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker;->mDecrementButton:Lcom/serenegiant/widget/ItemPickerButton;

    invoke-virtual {v0, p1}, Lcom/serenegiant/widget/ItemPickerButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 292
    iget-object v0, p0, Lcom/serenegiant/widget/ItemPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setRange(II)V
    .locals 1

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p0, p1, p2, v0}, Lcom/serenegiant/widget/ItemPicker;->setRange(II[Ljava/lang/String;)V

    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .locals 1

    .line 333
    iput-object p3, p0, Lcom/serenegiant/widget/ItemPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 334
    iput p1, p0, Lcom/serenegiant/widget/ItemPicker;->mMinValue:I

    .line 335
    iput p2, p0, Lcom/serenegiant/widget/ItemPicker;->mMaxValue:I

    .line 336
    iget v0, p0, Lcom/serenegiant/widget/ItemPicker;->mCurrentValue:I

    if-lt v0, p1, :cond_0

    if-le v0, p2, :cond_1

    .line 337
    :cond_0
    iput p1, p0, Lcom/serenegiant/widget/ItemPicker;->mCurrentValue:I

    .line 338
    :cond_1
    invoke-direct {p0}, Lcom/serenegiant/widget/ItemPicker;->updateView()V

    if-eqz p3, :cond_2

    .line 342
    iget-object p1, p0, Lcom/serenegiant/widget/ItemPicker;->mText:Landroid/widget/EditText;

    const p2, 0x80001

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setRawInputType(I)V

    :cond_2
    return-void
.end method

.method public setSpeed(J)V
    .locals 0

    .line 375
    iput-wide p1, p0, Lcom/serenegiant/widget/ItemPicker;->mSpeed:J

    return-void
.end method

.method public setValue(I)V
    .locals 2

    .line 355
    iget v0, p0, Lcom/serenegiant/widget/ItemPicker;->mMinValue:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/serenegiant/widget/ItemPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 360
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget v1, p0, Lcom/serenegiant/widget/ItemPicker;->mMinValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x2

    iget v1, p0, Lcom/serenegiant/widget/ItemPicker;->mMaxValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "current(%d) should be between min(%d) to max(%d) changed to min"

    .line 359
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ItemPicker"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget p1, p0, Lcom/serenegiant/widget/ItemPicker;->mMinValue:I

    .line 363
    :cond_1
    iput p1, p0, Lcom/serenegiant/widget/ItemPicker;->mCurrentValue:I

    .line 364
    invoke-direct {p0}, Lcom/serenegiant/widget/ItemPicker;->updateView()V

    return-void
.end method
