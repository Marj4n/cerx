.class public final Lcom/google/android/material/timepicker/MaterialTimePicker;
.super Landroidx/fragment/app/DialogFragment;
.source "MaterialTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;
    }
.end annotation


# static fields
.field private static final CLOCK_BUTTON_DATA:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INPUT_MODE_CLOCK:I = 0x0

.field static final INPUT_MODE_EXTRA:Ljava/lang/String; = "TIME_PICKER_INPUT_MODE"

.field public static final INPUT_MODE_KEYBOARD:I = 0x1

.field private static final KEYBOARD_BUTTON_DATA:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final TIME_MODEL_EXTRA:Ljava/lang/String; = "TIME_PICKER_TIME_MODEL"

.field static final TITLE_RES_EXTRA:Ljava/lang/String; = "TIME_PICKER_TITLE_RES"

.field static final TITLE_TEXT_EXTRA:Ljava/lang/String; = "TIME_PICKER_TITLE_TEXT"


# instance fields
.field private activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

.field private final cancelListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private final dismissListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private inputMode:I

.field private modeButton:Lcom/google/android/material/button/MaterialButton;

.field private final negativeButtonListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final positiveButtonListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private textInputView:Landroid/widget/LinearLayout;

.field private time:Lcom/google/android/material/timepicker/TimeModel;

.field private timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

.field private timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

.field private timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

.field private titleResId:I

.field private titleText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Landroid/util/Pair;

    sget v1, Lcom/google/android/material/R$drawable;->ic_clock_black_24dp:I

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->material_timepicker_clock_mode_description:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/material/timepicker/MaterialTimePicker;->CLOCK_BUTTON_DATA:Landroid/util/Pair;

    .line 61
    new-instance v0, Landroid/util/Pair;

    sget v1, Lcom/google/android/material/R$drawable;->ic_keyboard_black_24dp:I

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->material_timepicker_text_input_mode_description:I

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/material/timepicker/MaterialTimePicker;->KEYBOARD_BUTTON_DATA:Landroid/util/Pair;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    .line 67
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    .line 69
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    .line 95
    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/timepicker/MaterialTimePicker;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/material/timepicker/MaterialTimePicker;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/material/timepicker/MaterialTimePicker;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/material/timepicker/MaterialTimePicker;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateInputMode(Lcom/google/android/material/button/MaterialButton;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/material/timepicker/MaterialTimePicker;)Ljava/util/Set;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/material/timepicker/MaterialTimePicker;)Ljava/util/Set;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/MaterialTimePicker;
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->newInstance(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/MaterialTimePicker;

    move-result-object p0

    return-object p0
.end method

.method private static dataForMode(I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 302
    sget-object p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->CLOCK_BUTTON_DATA:Landroid/util/Pair;

    return-object p0

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no icon for mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1
    sget-object p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->KEYBOARD_BUTTON_DATA:Landroid/util/Pair;

    return-object p0
.end method

.method private initializeOrRetrieveActivePresenterForMode(I)Lcom/google/android/material/timepicker/TimePickerPresenter;
    .locals 2

    if-nez p1, :cond_1

    .line 284
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;-><init>(Lcom/google/android/material/timepicker/TimePickerView;Lcom/google/android/material/timepicker/TimeModel;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    return-object p1

    .line 292
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    if-nez p1, :cond_2

    .line 293
    new-instance p1, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->textInputView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/TimeModel;)V

    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 296
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    return-object p1
.end method

.method private static newInstance(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/MaterialTimePicker;
    .locals 4

    .line 101
    new-instance v0, Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;-><init>()V

    .line 102
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 103
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$000(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lcom/google/android/material/timepicker/TimeModel;

    move-result-object v2

    const-string v3, "TIME_PICKER_TIME_MODEL"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$100(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)I

    move-result v2

    const-string v3, "TIME_PICKER_INPUT_MODE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$200(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)I

    move-result v2

    const-string v3, "TIME_PICKER_TITLE_RES"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$300(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    invoke-static {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$300(Lcom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TIME_PICKER_TITLE_TEXT"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "TIME_PICKER_TIME_MODEL"

    .line 174
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/timepicker/TimeModel;

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/TimeModel;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    :cond_1
    const-string v0, "TIME_PICKER_INPUT_MODE"

    const/4 v1, 0x0

    .line 178
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    const-string v0, "TIME_PICKER_TITLE_RES"

    .line 179
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    const-string v0, "TIME_PICKER_TITLE_TEXT"

    .line 180
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/String;

    return-void
.end method

.method private updateInputMode(Lcom/google/android/material/button/MaterialButton;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerPresenter;->hide()V

    .line 274
    :cond_0
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->initializeOrRetrieveActivePresenterForMode(I)Lcom/google/android/material/timepicker/TimePickerPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    .line 275
    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerPresenter;->show()V

    .line 276
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lcom/google/android/material/timepicker/TimePickerPresenter;

    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerPresenter;->invalidate()V

    .line 277
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    invoke-static {v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->dataForMode(I)Landroid/util/Pair;

    move-result-object v0

    .line 278
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 279
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public addOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addOnPositiveButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public clearOnCancelListeners()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public clearOnDismissListeners()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public clearOnNegativeButtonClickListeners()V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public clearOnPositiveButtonClickListeners()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getHour()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    rem-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getInputMode()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    return v0
.end method

.method getTimePickerClockPresenter()Lcom/google/android/material/timepicker/TimePickerClockPresenter;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    return-object v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    .line 252
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 156
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->restoreState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 133
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$attr;->materialTimePickerTheme:I

    invoke-static {p1, v0}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    .line 134
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/util/TypedValue;->data:I

    :goto_0
    invoke-direct {v0, v1, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 135
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 136
    sget v1, Lcom/google/android/material/R$attr;->colorSurface:I

    const-class v3, Lcom/google/android/material/timepicker/MaterialTimePicker;

    .line 138
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-static {p1, v1, v3}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 140
    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v4, 0x0

    sget v5, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker:I

    invoke-direct {v3, p1, v4, v2, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 143
    invoke-virtual {v3, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 144
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 145
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 146
    invoke-virtual {p1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 147
    invoke-virtual {p1, v1}, Landroid/view/Window;->requestFeature(I)Z

    const/4 v1, -0x2

    .line 149
    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setLayout(II)V

    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 189
    sget p3, Lcom/google/android/material/R$layout;->material_timepicker_dialog:I

    .line 190
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 191
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_view:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/timepicker/TimePickerView;

    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 192
    new-instance p3, Lcom/google/android/material/timepicker/MaterialTimePicker$1;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$1;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/timepicker/TimePickerView;->setOnDoubleTapListener(Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;)V

    .line 200
    sget p2, Lcom/google/android/material/R$id;->material_textinput_timepicker:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->textInputView:Landroid/widget/LinearLayout;

    .line 201
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_mode_button:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    .line 202
    sget p2, Lcom/google/android/material/R$id;->header_title:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 204
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 205
    iget-object p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_0
    iget p3, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    if-eqz p3, :cond_1

    .line 209
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 212
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0, p2}, Lcom/google/android/material/timepicker/MaterialTimePicker;->updateInputMode(Lcom/google/android/material/button/MaterialButton;)V

    .line 213
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_ok_button:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 214
    new-instance p3, Lcom/google/android/material/timepicker/MaterialTimePicker$2;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$2;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    sget p2, Lcom/google/android/material/R$id;->material_timepicker_cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 226
    new-instance p3, Lcom/google/android/material/timepicker/MaterialTimePicker$3;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$3;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object p2, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lcom/google/android/material/button/MaterialButton;

    new-instance p3, Lcom/google/android/material/timepicker/MaterialTimePicker$4;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/MaterialTimePicker$4;-><init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .line 260
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 266
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 162
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->time:Lcom/google/android/material/timepicker/TimeModel;

    const-string v1, "TIME_PICKER_TIME_MODEL"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 164
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    const-string v1, "TIME_PICKER_INPUT_MODE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    iget v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    const-string v1, "TIME_PICKER_TITLE_RES"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/String;

    const-string v1, "TIME_PICKER_TITLE_TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeOnPositiveButtonClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
