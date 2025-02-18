.class public Lcom/serenegiant/widget/CheckableImageButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "CheckableImageButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    const-class v0, Lcom/serenegiant/widget/CheckableImageButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/widget/CheckableImageButton;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 32
    sput-object v0, Lcom/serenegiant/widget/CheckableImageButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, v0, v1}, Lcom/serenegiant/widget/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/widget/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/serenegiant/widget/CheckableImageButton;->mIsChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 66
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lcom/serenegiant/widget/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/serenegiant/widget/CheckableImageButton;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/serenegiant/widget/CheckableImageButton;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/serenegiant/widget/CheckableImageButton;->mIsChecked:Z

    if-eq v0, p1, :cond_0

    .line 49
    iput-boolean p1, p0, Lcom/serenegiant/widget/CheckableImageButton;->mIsChecked:Z

    .line 50
    invoke-virtual {p0}, Lcom/serenegiant/widget/CheckableImageButton;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/serenegiant/widget/CheckableImageButton;->mIsChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/CheckableImageButton;->setChecked(Z)V

    return-void
.end method
