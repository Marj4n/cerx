.class public Lcom/roughike/bottombar/BottomBarTab;
.super Landroid/widget/LinearLayout;
.source "BottomBarTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roughike/bottombar/BottomBarTab$Config;,
        Lcom/roughike/bottombar/BottomBarTab$Type;
    }
.end annotation


# static fields
.field private static final ACTIVE_TITLE_SCALE:F = 1.0f

.field private static final ANIMATION_DURATION:J = 0x96L

.field private static final INACTIVE_FIXED_TITLE_SCALE:F = 0.86f

.field static final STATE_BADGE_COUNT:Ljava/lang/String; = "STATE_BADGE_COUNT_FOR_TAB_"


# instance fields
.field private activeAlpha:F

.field private activeColor:I

.field badge:Lcom/roughike/bottombar/BottomBarBadge;

.field private badgeBackgroundColor:I

.field private badgeHidesWhenActive:Z

.field private barColorWhenSelected:I

.field private final eightDps:I

.field private iconResId:I

.field private iconView:Landroidx/appcompat/widget/AppCompatImageView;

.field private inActiveAlpha:F

.field private inActiveColor:I

.field private indexInContainer:I

.field private isActive:Z

.field private final sixDps:I

.field private final sixteenDps:I

.field private title:Ljava/lang/String;

.field private titleTextAppearanceResId:I

.field private titleTypeFace:Landroid/graphics/Typeface;

.field private titleView:Landroid/widget/TextView;

.field private type:Lcom/roughike/bottombar/BottomBarTab$Type;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    sget-object v0, Lcom/roughike/bottombar/BottomBarTab$Type;->FIXED:Lcom/roughike/bottombar/BottomBarTab$Type;

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->type:Lcom/roughike/bottombar/BottomBarTab$Type;

    const/high16 v0, 0x40c00000    # 6.0f

    .line 72
    invoke-static {p1, v0}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBarTab;->sixDps:I

    const/high16 v0, 0x41000000    # 8.0f

    .line 73
    invoke-static {p1, v0}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBarTab;->eightDps:I

    const/high16 v0, 0x41800000    # 16.0f

    .line 74
    invoke-static {p1, v0}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab;->sixteenDps:I

    return-void
.end method

.method static synthetic access$1000(Lcom/roughike/bottombar/BottomBarTab;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/roughike/bottombar/BottomBarTab;->isActive:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/roughike/bottombar/BottomBarTab;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/roughike/bottombar/BottomBarTab;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/roughike/bottombar/BottomBarTab;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBarTab;->setColors(I)V

    return-void
.end method

.method private animateColors(II)V
    .locals 3

    .line 408
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 409
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 410
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 411
    new-instance p1, Lcom/roughike/bottombar/BottomBarTab$1;

    invoke-direct {p1, p0}, Lcom/roughike/bottombar/BottomBarTab$1;-><init>(Lcom/roughike/bottombar/BottomBarTab;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 p1, 0x96

    .line 418
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 419
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateIcon(F)V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 523
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 524
    invoke-virtual {v0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 525
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private animateTitle(FF)V
    .locals 3

    .line 509
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->type:Lcom/roughike/bottombar/BottomBarTab$Type;

    sget-object v1, Lcom/roughike/bottombar/BottomBarTab$Type;->TABLET:Lcom/roughike/bottombar/BottomBarTab$Type;

    if-ne v0, v1, :cond_0

    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleView:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 514
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 515
    invoke-virtual {v0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 516
    invoke-virtual {v0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 517
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 518
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private setAlphas(F)V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    .line 435
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 439
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_1
    return-void
.end method

.method private setColors(I)V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setColorFilter(I)V

    .line 425
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private setTitleScale(F)V
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->type:Lcom/roughike/bottombar/BottomBarTab$Type;

    sget-object v1, Lcom/roughike/bottombar/BottomBarTab$Type;->TABLET:Lcom/roughike/bottombar/BottomBarTab$Type;

    if-ne v0, v1, :cond_0

    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 547
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method private setTopPadding(I)V
    .locals 4

    .line 529
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->type:Lcom/roughike/bottombar/BottomBarTab$Type;

    sget-object v1, Lcom/roughike/bottombar/BottomBarTab$Type;->TABLET:Lcom/roughike/bottombar/BottomBarTab$Type;

    if-ne v0, v1, :cond_0

    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 534
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/roughike/bottombar/BottomBarTab;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 536
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/roughike/bottombar/BottomBarTab;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 537
    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    move-result v3

    .line 533
    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setPadding(IIII)V

    return-void
.end method

.method private setTopPaddingAnimated(II)V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->type:Lcom/roughike/bottombar/BottomBarTab$Type;

    sget-object v1, Lcom/roughike/bottombar/BottomBarTab$Type;->TABLET:Lcom/roughike/bottombar/BottomBarTab$Type;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 491
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 492
    new-instance p2, Lcom/roughike/bottombar/BottomBarTab$4;

    invoke-direct {p2, p0}, Lcom/roughike/bottombar/BottomBarTab$4;-><init>(Lcom/roughike/bottombar/BottomBarTab;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x96

    .line 504
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 505
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateBadgePosition()V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0, p0}, Lcom/roughike/bottombar/BottomBarBadge;->adjustPositionAndSize(Lcom/roughike/bottombar/BottomBarTab;)V

    :cond_0
    return-void
.end method

.method private updateCustomTextAppearance()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleTextAppearanceResId:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleView:Landroid/widget/TextView;

    iget v1, p0, Lcom/roughike/bottombar/BottomBarTab;->titleTextAppearanceResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarTab;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/roughike/bottombar/BottomBarTab;->titleTextAppearanceResId:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleView:Landroid/widget/TextView;

    iget v1, p0, Lcom/roughike/bottombar/BottomBarTab;->titleTextAppearanceResId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateCustomTypeface()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleTypeFace:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBarTab;->titleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private updateTitle()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBarTab;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method deselect(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBarTab;->isActive:Z

    .line 384
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBarTab;->type:Lcom/roughike/bottombar/BottomBarTab$Type;

    sget-object v2, Lcom/roughike/bottombar/BottomBarTab$Type;->SHIFTING:Lcom/roughike/bottombar/BottomBarTab$Type;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const v2, 0x3f5c28f6    # 0.86f

    :goto_1
    if-eqz v1, :cond_2

    .line 387
    iget v3, p0, Lcom/roughike/bottombar/BottomBarTab;->sixteenDps:I

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/roughike/bottombar/BottomBarTab;->eightDps:I

    :goto_2
    if-eqz p1, :cond_3

    .line 390
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBarTab;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    move-result p1

    invoke-direct {p0, p1, v3}, Lcom/roughike/bottombar/BottomBarTab;->setTopPaddingAnimated(II)V

    .line 391
    iget p1, p0, Lcom/roughike/bottombar/BottomBarTab;->inActiveAlpha:F

    invoke-direct {p0, v2, p1}, Lcom/roughike/bottombar/BottomBarTab;->animateTitle(FF)V

    .line 392
    iget p1, p0, Lcom/roughike/bottombar/BottomBarTab;->inActiveAlpha:F

    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBarTab;->animateIcon(F)V

    .line 393
    iget p1, p0, Lcom/roughike/bottombar/BottomBarTab;->activeColor:I

    iget v2, p0, Lcom/roughike/bottombar/BottomBarTab;->inActiveColor:I

    invoke-direct {p0, p1, v2}, Lcom/roughike/bottombar/BottomBarTab;->animateColors(II)V

    goto :goto_3

    .line 395
    :cond_3
    invoke-direct {p0, v2}, Lcom/roughike/bottombar/BottomBarTab;->setTitleScale(F)V

    .line 396
    invoke-direct {p0, v3}, Lcom/roughike/bottombar/BottomBarTab;->setTopPadding(I)V

    .line 397
    iget p1, p0, Lcom/roughike/bottombar/BottomBarTab;->inActiveColor:I

    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBarTab;->setColors(I)V

    .line 398
    iget p1, p0, Lcom/roughike/bottombar/BottomBarTab;->inActiveAlpha:F

    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBarTab;->setAlphas(F)V

    .line 401
    :goto_3
    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarTab;->setSelected(Z)V

    if-nez v1, :cond_4

    .line 402
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarBadge;->isVisible()Z

    move-result p1

    if-nez p1, :cond_4

    .line 403
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarBadge;->show()V

    :cond_4
    return-void
.end method

.method public getActiveAlpha()F
    .locals 1

    .line 204
    iget v0, p0, Lcom/roughike/bottombar/BottomBarTab;->activeAlpha:F

    return v0
.end method

.method public getActiveColor()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/roughike/bottombar/BottomBarTab;->activeColor:I

    return v0
.end method

.method public getBadgeBackgroundColor()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/roughike/bottombar/BottomBarTab;->badgeBackgroundColor:I

    return v0
.end method

.method public getBadgeHidesWhenActive()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBarTab;->badgeHidesWhenActive:Z

    return v0
.end method

.method public getBarColorWhenSelected()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/roughike/bottombar/BottomBarTab;->barColorWhenSelected:I

    return v0
.end method

.method getCurrentDisplayedIconColor()I
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 270
    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getCurrentDisplayedTextAppearance()I
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBarTab;->titleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getCurrentDisplayedTitleColor()I
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getIconResId()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/roughike/bottombar/BottomBarTab;->iconResId:I

    return v0
.end method

.method getIconView()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method public getInActiveAlpha()F
    .locals 1

    .line 192
    iget v0, p0, Lcom/roughike/bottombar/BottomBarTab;->inActiveAlpha:F

    return v0
.end method

.method public getInActiveColor()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/roughike/bottombar/BottomBarTab;->inActiveColor:I

    return v0
.end method

.method getIndexInTabContainer()I
    .locals 1

    .line 330
    iget v0, p0, Lcom/roughike/bottombar/BottomBarTab;->indexInContainer:I

    return v0
.end method

.method getLayoutResource()I
    .locals 2

    .line 110
    sget-object v0, Lcom/roughike/bottombar/BottomBarTab$5;->$SwitchMap$com$roughike$bottombar$BottomBarTab$Type:[I

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBarTab;->type:Lcom/roughike/bottombar/BottomBarTab$Type;

    invoke-virtual {v1}, Lcom/roughike/bottombar/BottomBarTab$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 118
    sget v0, Lcom/roughike/bottombar/R$layout;->bb_bottom_bar_item_fixed_tablet:I

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown BottomBarTab type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    sget v0, Lcom/roughike/bottombar/R$layout;->bb_bottom_bar_item_shifting:I

    goto :goto_0

    .line 112
    :cond_2
    sget v0, Lcom/roughike/bottombar/R$layout;->bb_bottom_bar_item_fixed:I

    :goto_0
    return v0
.end method

.method public getOuterView()Landroid/view/ViewGroup;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarTab;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleTextAppearance()I
    .locals 1

    .line 342
    iget v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleTextAppearanceResId:I

    return v0
.end method

.method public getTitleTypeFace()Landroid/graphics/Typeface;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleTypeFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method getType()Lcom/roughike/bottombar/BottomBarTab$Type;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->type:Lcom/roughike/bottombar/BottomBarTab$Type;

    return-object v0
.end method

.method hasActiveBadge()Z
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isActive()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBarTab;->isActive:Z

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 572
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 573
    check-cast p1, Landroid/os/Bundle;

    .line 574
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBarTab;->restoreState(Landroid/os/Bundle;)V

    const-string v0, "superstate"

    .line 576
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 579
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarTab;->saveState()Landroid/os/Bundle;

    move-result-object v0

    .line 554
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "superstate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0

    .line 559
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method prepareLayout()V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarTab;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarTab;->getLayoutResource()I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/roughike/bottombar/BottomBarTab;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarTab;->setOrientation(I)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarTab;->setGravity(I)V

    .line 93
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarTab;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    sget v0, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_icon:I

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 96
    iget v1, p0, Lcom/roughike/bottombar/BottomBarTab;->iconResId:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 98
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->type:Lcom/roughike/bottombar/BottomBarTab$Type;

    sget-object v1, Lcom/roughike/bottombar/BottomBarTab$Type;->TABLET:Lcom/roughike/bottombar/BottomBarTab$Type;

    if-eq v0, v1, :cond_0

    .line 99
    sget v0, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_title:I

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->titleView:Landroid/widget/TextView;

    .line 100
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarTab;->updateTitle()V

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarTab;->updateCustomTextAppearance()V

    .line 104
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarTab;->updateCustomTypeface()V

    return-void
.end method

.method public removeBadge()V
    .locals 1

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarTab;->setBadgeCount(I)V

    return-void
.end method

.method restoreState(Landroid/os/Bundle;)V
    .locals 2

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_BADGE_COUNT_FOR_TAB_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarTab;->getIndexInTabContainer()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 585
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBarTab;->setBadgeCount(I)V

    return-void
.end method

.method saveState()Landroid/os/Bundle;
    .locals 3

    .line 564
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE_BADGE_COUNT_FOR_TAB_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarTab;->getIndexInTabContainer()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    invoke-virtual {v2}, Lcom/roughike/bottombar/BottomBarBadge;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method select(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 361
    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBarTab;->isActive:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 364
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBarTab;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    move-result p1

    iget v2, p0, Lcom/roughike/bottombar/BottomBarTab;->sixDps:I

    invoke-direct {p0, p1, v2}, Lcom/roughike/bottombar/BottomBarTab;->setTopPaddingAnimated(II)V

    .line 365
    iget p1, p0, Lcom/roughike/bottombar/BottomBarTab;->activeAlpha:F

    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBarTab;->animateIcon(F)V

    .line 366
    iget p1, p0, Lcom/roughike/bottombar/BottomBarTab;->activeAlpha:F

    invoke-direct {p0, v1, p1}, Lcom/roughike/bottombar/BottomBarTab;->animateTitle(FF)V

    .line 367
    iget p1, p0, Lcom/roughike/bottombar/BottomBarTab;->inActiveColor:I

    iget v1, p0, Lcom/roughike/bottombar/BottomBarTab;->activeColor:I

    invoke-direct {p0, p1, v1}, Lcom/roughike/bottombar/BottomBarTab;->animateColors(II)V

    goto :goto_0

    .line 369
    :cond_0
    invoke-direct {p0, v1}, Lcom/roughike/bottombar/BottomBarTab;->setTitleScale(F)V

    .line 370
    iget p1, p0, Lcom/roughike/bottombar/BottomBarTab;->sixDps:I

    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBarTab;->setTopPadding(I)V

    .line 371
    iget p1, p0, Lcom/roughike/bottombar/BottomBarTab;->activeColor:I

    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBarTab;->setColors(I)V

    .line 372
    iget p1, p0, Lcom/roughike/bottombar/BottomBarTab;->activeAlpha:F

    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBarTab;->setAlphas(F)V

    .line 375
    :goto_0
    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarTab;->setSelected(Z)V

    .line 376
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBarTab;->badgeHidesWhenActive:Z

    if-eqz v0, :cond_1

    .line 377
    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarBadge;->hide()V

    :cond_1
    return-void
.end method

.method public setActiveAlpha(F)V
    .locals 1

    .line 208
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab;->activeAlpha:F

    .line 210
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBarTab;->isActive:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBarTab;->setAlphas(F)V

    :cond_0
    return-void
.end method

.method public setActiveColor(I)V
    .locals 1

    .line 232
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab;->activeColor:I

    .line 234
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBarTab;->isActive:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBarTab;->setColors(I)V

    :cond_0
    return-void
.end method

.method public setBadgeBackgroundColor(I)V
    .locals 1

    .line 252
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab;->badgeBackgroundColor:I

    .line 254
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p1}, Lcom/roughike/bottombar/BottomBarBadge;->setColoredCircleBackground(I)V

    :cond_0
    return-void
.end method

.method public setBadgeCount(I)V
    .locals 2

    if-gtz p1, :cond_1

    .line 297
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p1, p0}, Lcom/roughike/bottombar/BottomBarBadge;->removeFromTab(Lcom/roughike/bottombar/BottomBarTab;)V

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    :cond_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    if-nez v0, :cond_2

    .line 306
    new-instance v0, Lcom/roughike/bottombar/BottomBarBadge;

    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarTab;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roughike/bottombar/BottomBarBadge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    .line 307
    iget v1, p0, Lcom/roughike/bottombar/BottomBarTab;->badgeBackgroundColor:I

    invoke-virtual {v0, p0, v1}, Lcom/roughike/bottombar/BottomBarBadge;->attachToTab(Lcom/roughike/bottombar/BottomBarTab;I)V

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    invoke-virtual {v0, p1}, Lcom/roughike/bottombar/BottomBarBadge;->setCount(I)V

    .line 312
    iget-boolean p1, p0, Lcom/roughike/bottombar/BottomBarTab;->isActive:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/roughike/bottombar/BottomBarTab;->badgeHidesWhenActive:Z

    if-eqz p1, :cond_3

    .line 313
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarBadge;->hide()V

    :cond_3
    return-void
.end method

.method public setBadgeHidesWhenActive(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/roughike/bottombar/BottomBarTab;->badgeHidesWhenActive:Z

    return-void
.end method

.method public setBarColorWhenSelected(I)V
    .locals 0

    .line 244
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab;->barColorWhenSelected:I

    return-void
.end method

.method setConfig(Lcom/roughike/bottombar/BottomBarTab$Config;)V
    .locals 1

    .line 78
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config;->access$000(Lcom/roughike/bottombar/BottomBarTab$Config;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarTab;->setInActiveAlpha(F)V

    .line 79
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config;->access$100(Lcom/roughike/bottombar/BottomBarTab$Config;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarTab;->setActiveAlpha(F)V

    .line 80
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config;->access$200(Lcom/roughike/bottombar/BottomBarTab$Config;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarTab;->setInActiveColor(I)V

    .line 81
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config;->access$300(Lcom/roughike/bottombar/BottomBarTab$Config;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarTab;->setActiveColor(I)V

    .line 82
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config;->access$400(Lcom/roughike/bottombar/BottomBarTab$Config;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarTab;->setBarColorWhenSelected(I)V

    .line 83
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config;->access$500(Lcom/roughike/bottombar/BottomBarTab$Config;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarTab;->setBadgeBackgroundColor(I)V

    .line 84
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config;->access$600(Lcom/roughike/bottombar/BottomBarTab$Config;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarTab;->setBadgeHidesWhenActive(Z)V

    .line 85
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config;->access$700(Lcom/roughike/bottombar/BottomBarTab$Config;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarTab;->setTitleTextAppearance(I)V

    .line 86
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config;->access$800(Lcom/roughike/bottombar/BottomBarTab$Config;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBarTab;->setTitleTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method setIconResId(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab;->iconResId:I

    return-void
.end method

.method setIconTint(I)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setColorFilter(I)V

    return-void
.end method

.method public setInActiveAlpha(F)V
    .locals 1

    .line 196
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab;->inActiveAlpha:F

    .line 198
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBarTab;->isActive:Z

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBarTab;->setAlphas(F)V

    :cond_0
    return-void
.end method

.method public setInActiveColor(I)V
    .locals 1

    .line 220
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab;->inActiveColor:I

    .line 222
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBarTab;->isActive:Z

    if-nez v0, :cond_0

    .line 223
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBarTab;->setColors(I)V

    :cond_0
    return-void
.end method

.method setIndexInContainer(I)V
    .locals 0

    .line 334
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab;->indexInContainer:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarTab;->title:Ljava/lang/String;

    .line 188
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarTab;->updateTitle()V

    return-void
.end method

.method setTitleTextAppearance(I)V
    .locals 0

    .line 347
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab;->titleTextAppearanceResId:I

    .line 348
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarTab;->updateCustomTextAppearance()V

    return-void
.end method

.method public setTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarTab;->titleTypeFace:Landroid/graphics/Typeface;

    .line 353
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBarTab;->updateCustomTypeface()V

    return-void
.end method

.method setType(Lcom/roughike/bottombar/BottomBarTab$Type;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarTab;->type:Lcom/roughike/bottombar/BottomBarTab$Type;

    return-void
.end method

.method updateWidth(FZ)V
    .locals 2

    if-nez p2, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarTab;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    float-to-int p1, p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 447
    iget-boolean p1, p0, Lcom/roughike/bottombar/BottomBarTab;->isActive:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    if-eqz p1, :cond_0

    .line 448
    invoke-virtual {p1, p0}, Lcom/roughike/bottombar/BottomBarBadge;->adjustPositionAndSize(Lcom/roughike/bottombar/BottomBarTab;)V

    .line 449
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarBadge;->show()V

    :cond_0
    return-void

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarTab;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    .line 456
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    .line 457
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 458
    new-instance p2, Lcom/roughike/bottombar/BottomBarTab$2;

    invoke-direct {p2, p0}, Lcom/roughike/bottombar/BottomBarTab$2;-><init>(Lcom/roughike/bottombar/BottomBarTab;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 468
    new-instance p2, Lcom/roughike/bottombar/BottomBarTab$3;

    invoke-direct {p2, p0}, Lcom/roughike/bottombar/BottomBarTab$3;-><init>(Lcom/roughike/bottombar/BottomBarTab;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 477
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
