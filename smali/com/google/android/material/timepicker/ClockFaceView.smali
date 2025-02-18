.class Lcom/google/android/material/timepicker/ClockFaceView;
.super Lcom/google/android/material/timepicker/RadialViewGroup;
.source "ClockFaceView.java"

# interfaces
.implements Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;


# static fields
.field private static final EPSILON:F = 0.001f


# instance fields
.field private final clockHandPadding:I

.field private final clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

.field private currentHandRotation:F

.field private final gradientColors:[I

.field private final gradientPositions:[F

.field private final scratch:Landroid/graphics/RectF;

.field private final textColor:I

.field private final textViewPool:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final textViewRect:Landroid/graphics/Rect;

.field private final valueAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field private values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/timepicker/RadialViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 73
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->gradientPositions:[F

    .line 94
    sget-object v1, Lcom/google/android/material/R$styleable;->ClockFaceView:[I

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 96
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 97
    sget v1, Lcom/google/android/material/R$styleable;->ClockFaceView_valueTextColor:I

    const/high16 v3, -0x1000000

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textColor:I

    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/google/android/material/R$layout;->material_clockface_view:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 99
    sget v1, Lcom/google/android/material/R$id;->material_clock_hand:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/timepicker/ClockFaceView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/timepicker/ClockHandView;

    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    .line 100
    sget v1, Lcom/google/android/material/R$dimen;->material_clock_hand_padding:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandPadding:I

    .line 101
    sget p3, Lcom/google/android/material/R$attr;->colorOnSurface:I

    invoke-static {p0, p3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result p3

    .line 102
    sget v1, Lcom/google/android/material/R$attr;->colorOnPrimary:I

    invoke-static {p0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v1

    new-array v0, v0, [I

    aput v1, v0, v2

    aput v1, v0, v4

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 103
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->gradientColors:[I

    .line 104
    iget-object p3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {p3, p0}, Lcom/google/android/material/timepicker/ClockHandView;->addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V

    .line 106
    sget p3, Lcom/google/android/material/R$color;->material_timepicker_clockface:I

    .line 107
    invoke-static {p1, p3}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/ClockFaceView;->setBackgroundColor(I)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p3, Lcom/google/android/material/timepicker/ClockFaceView$1;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/ClockFaceView$1;-><init>(Lcom/google/android/material/timepicker/ClockFaceView;)V

    .line 112
    invoke-virtual {p1, p3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 127
    invoke-virtual {p0, v4}, Lcom/google/android/material/timepicker/ClockFaceView;->setFocusable(Z)V

    .line 128
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    new-instance p1, Lcom/google/android/material/timepicker/ClockFaceView$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/timepicker/ClockFaceView$2;-><init>(Lcom/google/android/material/timepicker/ClockFaceView;)V

    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->valueAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/material/timepicker/ClockFaceView;)Lcom/google/android/material/timepicker/ClockHandView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/timepicker/ClockFaceView;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandPadding:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/util/SparseArray;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    return-object p0
.end method

.method private findIntersectingTextView()V
    .locals 6

    .line 219
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockHandView;->getCurrentSelectorBox()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    .line 220
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 222
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 223
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 224
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/timepicker/ClockFaceView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 226
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 227
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v3}, Lcom/google/android/material/timepicker/ClockFaceView;->getGradientForTextView(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RadialGradient;

    move-result-object v3

    .line 228
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 229
    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getGradientForTextView(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RadialGradient;
    .locals 7

    .line 234
    invoke-static {p1, p2}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 238
    :cond_0
    new-instance p2, Landroid/graphics/RadialGradient;

    .line 239
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v1

    .line 240
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    .line 241
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v3, p1, v0

    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->gradientColors:[I

    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->gradientPositions:[F

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object p2
.end method

.method private updateTextViews(I)V
    .locals 7

    .line 162
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 163
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    array-length v3, v3

    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 164
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 165
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 166
    invoke-virtual {p0, v3}, Lcom/google/android/material/timepicker/ClockFaceView;->removeView(Landroid/view/View;)V

    .line 167
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    .line 172
    sget v3, Lcom/google/android/material/R$layout;->material_clockface_textview:I

    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 173
    invoke-virtual {p0, v3}, Lcom/google/android/material/timepicker/ClockFaceView;->addView(Landroid/view/View;)V

    .line 174
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    :cond_1
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    sget v4, Lcom/google/android/material/R$id;->material_value_index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 179
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->valueAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 181
    iget v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 183
    iget-object v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    aget-object v6, v6, v2

    aput-object v6, v5, v1

    invoke-virtual {v4, p1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 189
    invoke-super {p0, p1}, Lcom/google/android/material/timepicker/RadialViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 190
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    invoke-static {v1, v0, v2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    .line 191
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 209
    invoke-super/range {p0 .. p5}, Lcom/google/android/material/timepicker/RadialViewGroup;->onLayout(ZIIII)V

    .line 210
    invoke-direct {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->findIntersectingTextView()V

    return-void
.end method

.method public onRotate(FZ)V
    .locals 1

    .line 249
    iget p2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->currentHandRotation:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v0, 0x3a83126f    # 0.001f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    .line 250
    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->currentHandRotation:F

    .line 251
    invoke-direct {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->findIntersectingTextView()V

    :cond_0
    return-void
.end method

.method public setHandRotation(F)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    .line 215
    invoke-direct {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->findIntersectingTextView()V

    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getRadius()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 202
    invoke-super {p0, p1}, Lcom/google/android/material/timepicker/RadialViewGroup;->setRadius(I)V

    .line 203
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getRadius()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setCircleRadius(I)V

    :cond_0
    return-void
.end method

.method public setValues([Ljava/lang/String;I)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    .line 158
    invoke-direct {p0, p2}, Lcom/google/android/material/timepicker/ClockFaceView;->updateTextViews(I)V

    return-void
.end method
