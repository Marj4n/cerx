.class public Lcom/serenegiant/widget/TimePickerPreferenceV7;
.super Lcom/serenegiant/widget/DialogPreferenceV7;
.source "TimePickerPreferenceV7.java"


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private final mDefaultValue:J

.field private picker:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/widget/TimePickerPreferenceV7;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010091

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/widget/TimePickerPreferenceV7;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/widget/DialogPreferenceV7;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->picker:Landroid/widget/TimePicker;

    .line 57
    sget-object v0, Lcom/serenegiant/common/R$styleable;->TimePicker:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 59
    sget p2, Lcom/serenegiant/common/R$styleable;->TimePicker_TimePickerDefaultValue:I

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    float-to-long p2, p2

    iput-wide p2, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->mDefaultValue:J

    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x104000a

    .line 62
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/TimePickerPreferenceV7;->setPositiveButtonText(I)V

    const/high16 p1, 0x1040000

    .line 63
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/TimePickerPreferenceV7;->setNegativeButtonText(I)V

    .line 64
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->calendar:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/serenegiant/widget/TimePickerPreferenceV7;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->calendar:Ljava/util/Calendar;

    .line 143
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 142
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .line 76
    invoke-super {p0, p1}, Lcom/serenegiant/widget/DialogPreferenceV7;->onBindDialogView(Landroid/view/View;)V

    .line 77
    iget-object p1, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->picker:Landroid/widget/TimePicker;

    iget-object v0, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 78
    iget-object p1, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->picker:Landroid/widget/TimePicker;

    iget-object v0, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .line 69
    new-instance v0, Landroid/widget/TimePicker;

    invoke-virtual {p0}, Lcom/serenegiant/widget/TimePickerPreferenceV7;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->picker:Landroid/widget/TimePicker;

    const/4 v1, 0x1

    .line 70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 71
    iget-object v0, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->picker:Landroid/widget/TimePicker;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/serenegiant/widget/DialogPreferenceV7;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->calendar:Ljava/util/Calendar;

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->picker:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 87
    iget-object p1, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->calendar:Ljava/util/Calendar;

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->picker:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 89
    invoke-virtual {p0}, Lcom/serenegiant/widget/TimePickerPreferenceV7;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/TimePickerPreferenceV7;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    iget-object p1, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/TimePickerPreferenceV7;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/serenegiant/widget/TimePickerPreferenceV7;->persistLong(J)Z

    .line 92
    invoke-virtual {p0}, Lcom/serenegiant/widget/TimePickerPreferenceV7;->notifyChanged()V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 5

    .line 126
    iget-wide v0, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->mDefaultValue:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    if-eqz p1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->calendar:Ljava/util/Calendar;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/serenegiant/widget/TimePickerPreferenceV7;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 134
    :goto_1
    invoke-virtual {p0}, Lcom/serenegiant/widget/TimePickerPreferenceV7;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/TimePickerPreferenceV7;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
