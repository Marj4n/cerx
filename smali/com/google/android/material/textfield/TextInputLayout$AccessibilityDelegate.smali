.class public Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field private final layout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 4235
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 4236
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 11

    .line 4242
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 4243
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4244
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4245
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    .line 4246
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v2

    .line 4247
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterMaxLength()I

    move-result v3

    .line 4248
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterOverflowDescription()Ljava/lang/CharSequence;

    move-result-object v4

    .line 4249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 4250
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v6

    .line 4251
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v6

    if-nez v8, :cond_2

    .line 4252
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-eqz v7, :cond_3

    .line 4254
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-string v1, ""

    :goto_3
    if-eqz v5, :cond_4

    .line 4257
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 4258
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 4259
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 4262
    :cond_5
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 4263
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v7, v10, :cond_6

    .line 4264
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_6
    if-eqz v5, :cond_7

    .line 4268
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4269
    :cond_7
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    xor-int/lit8 v1, v5, 0x1

    .line 4271
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setShowingHintText(Z)V

    :cond_8
    if-eqz v0, :cond_9

    .line 4276
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v3, :cond_9

    goto :goto_6

    :cond_9
    const/4 v3, -0x1

    .line 4275
    :goto_6
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMaxTextLength(I)V

    if-eqz v9, :cond_b

    if-eqz v8, :cond_a

    goto :goto_7

    :cond_a
    move-object v2, v4

    .line 4279
    :goto_7
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setError(Ljava/lang/CharSequence;)V

    .line 4282
    :cond_b
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p2, v0, :cond_c

    if-eqz p1, :cond_c

    .line 4283
    sget p2, Lcom/google/android/material/R$id;->textinput_helper_text:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setLabelFor(I)V

    :cond_c
    return-void
.end method
