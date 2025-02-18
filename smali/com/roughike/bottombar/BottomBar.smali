.class public Lcom/roughike/bottombar/BottomBar;
.super Landroid/widget/LinearLayout;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final BEHAVIOR_DRAW_UNDER_NAV:I = 0x4

.field private static final BEHAVIOR_NONE:I = 0x0

.field private static final BEHAVIOR_SHIFTING:I = 0x1

.field private static final BEHAVIOR_SHY:I = 0x2

.field private static final DEFAULT_INACTIVE_SHIFTING_TAB_ALPHA:F = 0.6f

.field private static final STATE_CURRENT_SELECTED_TAB:Ljava/lang/String; = "STATE_CURRENT_SELECTED_TAB"


# instance fields
.field private activeShiftingItemWidth:I

.field private activeTabAlpha:F

.field private activeTabColor:I

.field private backgroundOverlay:Landroid/view/View;

.field private badgeBackgroundColor:I

.field private batchPropertyApplier:Lcom/roughike/bottombar/BatchTabPropertyApplier;

.field private behaviors:I

.field private currentBackgroundColor:I

.field private currentTabPosition:I

.field private currentTabs:[Lcom/roughike/bottombar/BottomBarTab;

.field private defaultBackgroundColor:I

.field private hideBadgeWhenActive:Z

.field private ignoreTabReselectionListener:Z

.field private inActiveShiftingItemWidth:I

.field private inActiveTabAlpha:F

.field private inActiveTabColor:I

.field private isComingFromRestoredState:Z

.field private isTabletMode:Z

.field private maxFixedItemWidth:I

.field private navBarAccountedHeightCalculated:Z

.field private onTabReselectListener:Lcom/roughike/bottombar/OnTabReselectListener;

.field private onTabSelectListener:Lcom/roughike/bottombar/OnTabSelectListener;

.field private outerContainer:Landroid/view/ViewGroup;

.field private primaryColor:I

.field private screenWidth:I

.field private shadowView:Landroid/view/View;

.field private showShadow:Z

.field private shyHeightAlreadyCalculated:Z

.field private tabContainer:Landroid/view/ViewGroup;

.field private tabSelectionInterceptor:Lcom/roughike/bottombar/TabSelectionInterceptor;

.field private tabXmlResource:I

.field private tenDp:I

.field private titleTextAppearance:I

.field private titleTypeFace:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->defaultBackgroundColor:I

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0}, Lcom/roughike/bottombar/BottomBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->defaultBackgroundColor:I

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/roughike/bottombar/BottomBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/roughike/bottombar/BottomBar;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/roughike/bottombar/BottomBar;->inActiveTabAlpha:F

    return p0
.end method

.method static synthetic access$100(Lcom/roughike/bottombar/BottomBar;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/roughike/bottombar/BottomBar;->activeTabAlpha:F

    return p0
.end method

.method static synthetic access$200(Lcom/roughike/bottombar/BottomBar;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/roughike/bottombar/BottomBar;->inActiveTabColor:I

    return p0
.end method

.method static synthetic access$300(Lcom/roughike/bottombar/BottomBar;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/roughike/bottombar/BottomBar;->activeTabColor:I

    return p0
.end method

.method static synthetic access$400(Lcom/roughike/bottombar/BottomBar;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/roughike/bottombar/BottomBar;->badgeBackgroundColor:I

    return p0
.end method

.method static synthetic access$500(Lcom/roughike/bottombar/BottomBar;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/roughike/bottombar/BottomBar;->titleTextAppearance:I

    return p0
.end method

.method static synthetic access$600(Lcom/roughike/bottombar/BottomBar;)Landroid/graphics/Typeface;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/roughike/bottombar/BottomBar;->titleTypeFace:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$700(Lcom/roughike/bottombar/BottomBar;)Landroid/view/ViewGroup;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/roughike/bottombar/BottomBar;->outerContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$800(Lcom/roughike/bottombar/BottomBar;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/roughike/bottombar/BottomBar;->backgroundOverlay:Landroid/view/View;

    return-object p0
.end method

.method private animateBGColorChange(Landroid/view/View;I)V
    .locals 2

    .line 888
    invoke-direct {p0, p2}, Lcom/roughike/bottombar/BottomBar;->prepareForBackgroundColorAnimation(I)V

    .line 890
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 891
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->outerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 895
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/roughike/bottombar/BottomBar;->backgroundCircularRevealAnimation(Landroid/view/View;I)V

    goto :goto_0

    .line 897
    :cond_1
    invoke-direct {p0, p2}, Lcom/roughike/bottombar/BottomBar;->backgroundCrossfadeAnimation(I)V

    :goto_0
    return-void
.end method

.method private backgroundCircularRevealAnimation(Landroid/view/View;I)V
    .locals 4

    .line 911
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getX(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 912
    iget-boolean v1, p0, Lcom/roughike/bottombar/BottomBar;->isTabletMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 913
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    .line 915
    iget-boolean p1, p0, Lcom/roughike/bottombar/BottomBar;->isTabletMode:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/roughike/bottombar/BottomBar;->outerContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBar;->outerContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 917
    :goto_1
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar;->backgroundOverlay:Landroid/view/View;

    int-to-float v2, v2

    int-to-float p1, p1

    invoke-static {v3, v0, v1, v2, p1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    .line 925
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->isTabletMode:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1f4

    .line 926
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 929
    :cond_2
    new-instance v0, Lcom/roughike/bottombar/BottomBar$9;

    invoke-direct {v0, p0, p2}, Lcom/roughike/bottombar/BottomBar$9;-><init>(Lcom/roughike/bottombar/BottomBar;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 947
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private backgroundCrossfadeAnimation(I)V
    .locals 2

    .line 951
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->backgroundOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 952
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->backgroundOverlay:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 953
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/roughike/bottombar/BottomBar$10;

    invoke-direct {v1, p0, p1}, Lcom/roughike/bottombar/BottomBar$10;-><init>(Lcom/roughike/bottombar/BottomBar;I)V

    .line 954
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 970
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private determineInitialBackgroundColor()V
    .locals 3

    .line 216
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->isShiftingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget v0, p0, Lcom/roughike/bottombar/BottomBar;->primaryColor:I

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->defaultBackgroundColor:I

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 222
    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 226
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->defaultBackgroundColor:I

    .line 227
    invoke-virtual {p0, v1}, Lcom/roughike/bottombar/BottomBar;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method private drawUnderNav()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->isTabletMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 171
    invoke-direct {p0, v0}, Lcom/roughike/bottombar/BottomBar;->hasBehavior(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/roughike/bottombar/NavbarUtils;->shouldDrawBehindNavbar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private findTabInLayout(Landroid/view/ViewGroup;)Lcom/roughike/bottombar/BottomBarTab;
    .locals 3

    const/4 v0, 0x0

    .line 805
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 806
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 808
    instance-of v2, v1, Lcom/roughike/bottombar/BottomBarTab;

    if-eqz v2, :cond_0

    .line 809
    check-cast v1, Lcom/roughike/bottombar/BottomBarTab;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTabConfig()Lcom/roughike/bottombar/BottomBarTab$Config;
    .locals 2

    .line 256
    new-instance v0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;

    invoke-direct {v0}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;-><init>()V

    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->inActiveTabAlpha:F

    .line 257
    invoke-virtual {v0, v1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->inActiveTabAlpha(F)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;

    move-result-object v0

    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->activeTabAlpha:F

    .line 258
    invoke-virtual {v0, v1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->activeTabAlpha(F)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;

    move-result-object v0

    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->inActiveTabColor:I

    .line 259
    invoke-virtual {v0, v1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->inActiveTabColor(I)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;

    move-result-object v0

    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->activeTabColor:I

    .line 260
    invoke-virtual {v0, v1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->activeTabColor(I)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;

    move-result-object v0

    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->defaultBackgroundColor:I

    .line 261
    invoke-virtual {v0, v1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->barColorWhenSelected(I)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;

    move-result-object v0

    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->badgeBackgroundColor:I

    .line 262
    invoke-virtual {v0, v1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->badgeBackgroundColor(I)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/roughike/bottombar/BottomBar;->hideBadgeWhenActive:Z

    .line 263
    invoke-virtual {v0, v1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->hideBadgeWhenSelected(Z)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;

    move-result-object v0

    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->titleTextAppearance:I

    .line 264
    invoke-virtual {v0, v1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->titleTextAppearance(I)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->titleTypeFace:Landroid/graphics/Typeface;

    .line 265
    invoke-virtual {v0, v1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->titleTypeFace(Landroid/graphics/Typeface;)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->build()Lcom/roughike/bottombar/BottomBarTab$Config;

    move-result-object v0

    return-object v0
.end method

.method private getTypeFaceFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 185
    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleBackgroundColorChange(Lcom/roughike/bottombar/BottomBarTab;Z)V
    .locals 2

    .line 866
    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarTab;->getBarColorWhenSelected()I

    move-result v0

    .line 868
    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->currentBackgroundColor:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 873
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBar;->outerContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void

    .line 879
    :cond_1
    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarTab;->hasActiveBadge()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 880
    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarTab;->getOuterView()Landroid/view/ViewGroup;

    move-result-object p1

    .line 883
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/roughike/bottombar/BottomBar;->animateBGColorChange(Landroid/view/View;I)V

    .line 884
    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->currentBackgroundColor:I

    return-void
.end method

.method private handleClick(Lcom/roughike/bottombar/BottomBarTab;)V
    .locals 4

    .line 817
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getCurrentTab()Lcom/roughike/bottombar/BottomBarTab;

    move-result-object v0

    .line 819
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->tabSelectionInterceptor:Lcom/roughike/bottombar/TabSelectionInterceptor;

    if-eqz v1, :cond_0

    .line 820
    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarTab;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarTab;->getId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/roughike/bottombar/TabSelectionInterceptor;->shouldInterceptTabSelection(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 824
    invoke-virtual {v0, v1}, Lcom/roughike/bottombar/BottomBarTab;->deselect(Z)V

    .line 825
    invoke-virtual {p1, v1}, Lcom/roughike/bottombar/BottomBarTab;->select(Z)V

    .line 827
    invoke-direct {p0, v0, p1, v1}, Lcom/roughike/bottombar/BottomBar;->shiftingMagic(Lcom/roughike/bottombar/BottomBarTab;Lcom/roughike/bottombar/BottomBarTab;Z)V

    .line 828
    invoke-direct {p0, p1, v1}, Lcom/roughike/bottombar/BottomBar;->handleBackgroundColorChange(Lcom/roughike/bottombar/BottomBarTab;Z)V

    .line 829
    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarTab;->getIndexInTabContainer()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->updateSelectedTab(I)V

    return-void
.end method

.method private handleLongClick(Lcom/roughike/bottombar/BottomBarTab;)Z
    .locals 2

    .line 833
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->isShiftingMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->isTabletMode:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarTab;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 834
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarTab;->getTitle()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private hasBehavior(I)Z
    .locals 1

    .line 180
    iget v0, p0, Lcom/roughike/bottombar/BottomBar;->behaviors:I

    or-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 120
    new-instance v0, Lcom/roughike/bottombar/BatchTabPropertyApplier;

    invoke-direct {v0, p0}, Lcom/roughike/bottombar/BatchTabPropertyApplier;-><init>(Lcom/roughike/bottombar/BottomBar;)V

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->batchPropertyApplier:Lcom/roughike/bottombar/BatchTabPropertyApplier;

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/roughike/bottombar/BottomBar;->populateAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->initializeViews()V

    .line 124
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->determineInitialBackgroundColor()V

    .line 126
    iget p1, p0, Lcom/roughike/bottombar/BottomBar;->tabXmlResource:I

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBar;->setItems(I)V

    :cond_0
    return-void
.end method

.method private initializeShyBehavior()V
    .locals 2

    .line 712
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 714
    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 722
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->shyHeightAlreadyCalculated:Z

    if-nez v0, :cond_1

    .line 723
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    invoke-direct {p0, v0}, Lcom/roughike/bottombar/BottomBar;->updateShyHeight(I)V

    .line 727
    iput-boolean v1, p0, Lcom/roughike/bottombar/BottomBar;->shyHeightAlreadyCalculated:Z

    :cond_1
    return-void

    .line 718
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "In order to have shy behavior, the BottomBar must be a direct child of a CoordinatorLayout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeViews()V
    .locals 4

    .line 193
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->isTabletMode:Z

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 194
    :goto_0
    iget-boolean v3, p0, Lcom/roughike/bottombar/BottomBar;->isTabletMode:Z

    if-eqz v3, :cond_1

    const/4 v1, -0x1

    .line 195
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 197
    invoke-virtual {p0, v2}, Lcom/roughike/bottombar/BottomBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->isTabletMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBar;->setOrientation(I)V

    .line 199
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 201
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/roughike/bottombar/BottomBar;->isTabletMode:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/roughike/bottombar/R$layout;->bb_bottom_bar_item_container_tablet:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/roughike/bottombar/R$layout;->bb_bottom_bar_item_container:I

    :goto_1
    invoke-static {v0, v1, p0}, Lcom/roughike/bottombar/BottomBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    sget v1, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_background_overlay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/roughike/bottombar/BottomBar;->backgroundOverlay:Landroid/view/View;

    .line 206
    sget v1, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_outer_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/roughike/bottombar/BottomBar;->outerContainer:Landroid/view/ViewGroup;

    .line 207
    sget v1, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_item_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/roughike/bottombar/BottomBar;->tabContainer:Landroid/view/ViewGroup;

    .line 208
    sget v1, Lcom/roughike/bottombar/R$id;->bb_bottom_bar_shadow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->shadowView:Landroid/view/View;

    .line 210
    iget-boolean v1, p0, Lcom/roughike/bottombar/BottomBar;->showShadow:Z

    if-nez v1, :cond_3

    const/16 v1, 0x8

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private isShiftingMode()Z
    .locals 2

    .line 166
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->isTabletMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/roughike/bottombar/BottomBar;->hasBehavior(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isShy()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->isTabletMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/roughike/bottombar/BottomBar;->hasBehavior(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private populateAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 132
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/roughike/bottombar/R$attr;->colorPrimary:I

    invoke-static {v0, v1}, Lcom/roughike/bottombar/MiscUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->primaryColor:I

    .line 133
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/roughike/bottombar/MiscUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->screenWidth:I

    .line 134
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->tenDp:I

    .line 135
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43280000    # 168.0f

    invoke-static {v0, v1}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->maxFixedItemWidth:I

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/roughike/bottombar/R$styleable;->BottomBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 141
    :try_start_0
    sget v0, Lcom/roughike/bottombar/R$styleable;->BottomBar_bb_tabXmlResource:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->tabXmlResource:I

    .line 142
    sget v0, Lcom/roughike/bottombar/R$styleable;->BottomBar_bb_tabletMode:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->isTabletMode:Z

    .line 143
    sget v0, Lcom/roughike/bottombar/R$styleable;->BottomBar_bb_behavior:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->behaviors:I

    .line 144
    sget v0, Lcom/roughike/bottombar/R$styleable;->BottomBar_bb_inActiveTabAlpha:I

    .line 145
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->isShiftingMode()Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 144
    :goto_0
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->inActiveTabAlpha:F

    .line 146
    sget v0, Lcom/roughike/bottombar/R$styleable;->BottomBar_bb_activeTabAlpha:I

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBar;->activeTabAlpha:F

    .line 149
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->isShiftingMode()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    sget v0, Lcom/roughike/bottombar/R$color;->bb_inActiveBottomBarItemColor:I

    .line 150
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 151
    :goto_1
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->isShiftingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->primaryColor:I

    .line 153
    :goto_2
    sget v0, Lcom/roughike/bottombar/R$styleable;->BottomBar_bb_inActiveTabColor:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/roughike/bottombar/BottomBar;->inActiveTabColor:I

    .line 154
    sget p1, Lcom/roughike/bottombar/R$styleable;->BottomBar_bb_activeTabColor:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/roughike/bottombar/BottomBar;->activeTabColor:I

    .line 155
    sget p1, Lcom/roughike/bottombar/R$styleable;->BottomBar_bb_badgeBackgroundColor:I

    const/high16 v0, -0x10000

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/roughike/bottombar/BottomBar;->badgeBackgroundColor:I

    .line 156
    sget p1, Lcom/roughike/bottombar/R$styleable;->BottomBar_bb_badgesHideWhenActive:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/roughike/bottombar/BottomBar;->hideBadgeWhenActive:Z

    .line 157
    sget p1, Lcom/roughike/bottombar/R$styleable;->BottomBar_bb_titleTextAppearance:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/roughike/bottombar/BottomBar;->titleTextAppearance:I

    .line 158
    sget p1, Lcom/roughike/bottombar/R$styleable;->BottomBar_bb_titleTypeFace:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->getTypeFaceFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar;->titleTypeFace:Landroid/graphics/Typeface;

    .line 159
    sget p1, Lcom/roughike/bottombar/R$styleable;->BottomBar_bb_showShadow:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/roughike/bottombar/BottomBar;->showShadow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private prepareForBackgroundColorAnimation(I)V
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->outerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 903
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->backgroundOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 905
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->backgroundOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 906
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBar;->backgroundOverlay:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private resizeForDrawingUnderNavbar()V
    .locals 2

    .line 738
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-boolean v1, p0, Lcom/roughike/bottombar/BottomBar;->navBarAccountedHeightCalculated:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 742
    iput-boolean v1, p0, Lcom/roughike/bottombar/BottomBar;->navBarAccountedHeightCalculated:Z

    .line 743
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->tabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 745
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/roughike/bottombar/NavbarUtils;->getNavbarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    .line 747
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 749
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->isShy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    invoke-direct {p0, v0}, Lcom/roughike/bottombar/BottomBar;->updateShyHeight(I)V

    :cond_0
    return-void
.end method

.method private resizeTabsToCorrectSizes([Lcom/roughike/bottombar/BottomBarTab;)V
    .locals 7

    .line 322
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/roughike/bottombar/MiscUtils;->pixelToDp(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 324
    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->screenWidth:I

    if-le v0, v1, :cond_1

    .line 325
    :cond_0
    iget v0, p0, Lcom/roughike/bottombar/BottomBar;->screenWidth:I

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v1

    array-length v2, p1

    div-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v0

    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->maxFixedItemWidth:I

    .line 328
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v1, v0

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double v3, v3, v1

    double-to-int v3, v3

    .line 333
    iput v3, p0, Lcom/roughike/bottombar/BottomBar;->inActiveShiftingItemWidth:I

    .line 334
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    int-to-double v3, v3

    const-wide v5, 0x3fb999999999999aL    # 0.1

    mul-double v3, v3, v5

    mul-double v3, v3, v1

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/roughike/bottombar/BottomBar;->activeShiftingItemWidth:I

    .line 335
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/roughike/bottombar/R$dimen;->bb_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 337
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p1, v3

    .line 338
    invoke-virtual {v4}, Lcom/roughike/bottombar/BottomBarTab;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 339
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 341
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->isShiftingMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 342
    invoke-virtual {v4}, Lcom/roughike/bottombar/BottomBarTab;->isActive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 343
    iget v6, p0, Lcom/roughike/bottombar/BottomBar;->activeShiftingItemWidth:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 345
    :cond_2
    iget v6, p0, Lcom/roughike/bottombar/BottomBar;->inActiveShiftingItemWidth:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 348
    :cond_3
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 351
    :goto_1
    invoke-virtual {v4}, Lcom/roughike/bottombar/BottomBarTab;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_4

    .line 352
    iget-object v5, p0, Lcom/roughike/bottombar/BottomBar;->tabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 355
    :cond_4
    invoke-virtual {v4}, Lcom/roughike/bottombar/BottomBarTab;->requestLayout()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private shiftingMagic(Lcom/roughike/bottombar/BottomBarTab;Lcom/roughike/bottombar/BottomBarTab;Z)V
    .locals 1

    .line 859
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->isShiftingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    iget v0, p0, Lcom/roughike/bottombar/BottomBar;->inActiveShiftingItemWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, p3}, Lcom/roughike/bottombar/BottomBarTab;->updateWidth(FZ)V

    .line 861
    iget p1, p0, Lcom/roughike/bottombar/BottomBar;->activeShiftingItemWidth:I

    int-to-float p1, p1

    invoke-virtual {p2, p1, p3}, Lcom/roughike/bottombar/BottomBarTab;->updateWidth(FZ)V

    :cond_0
    return-void
.end method

.method private toggleShyVisibility(Z)V
    .locals 1

    .line 979
    invoke-static {p0}, Lcom/roughike/bottombar/BottomNavigationBehavior;->from(Landroid/view/View;)Lcom/roughike/bottombar/BottomNavigationBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 981
    invoke-virtual {v0, p0, p1}, Lcom/roughike/bottombar/BottomNavigationBehavior;->setHidden(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private updateItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/roughike/bottombar/BottomBarTab;",
            ">;)V"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->tabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 275
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/roughike/bottombar/BottomBarTab;

    .line 277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/roughike/bottombar/BottomBarTab;

    .line 280
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->isShiftingMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 281
    sget-object v5, Lcom/roughike/bottombar/BottomBarTab$Type;->SHIFTING:Lcom/roughike/bottombar/BottomBarTab$Type;

    goto :goto_1

    .line 282
    :cond_0
    iget-boolean v5, p0, Lcom/roughike/bottombar/BottomBar;->isTabletMode:Z

    if-eqz v5, :cond_1

    .line 283
    sget-object v5, Lcom/roughike/bottombar/BottomBarTab$Type;->TABLET:Lcom/roughike/bottombar/BottomBarTab$Type;

    goto :goto_1

    .line 285
    :cond_1
    sget-object v5, Lcom/roughike/bottombar/BottomBarTab$Type;->FIXED:Lcom/roughike/bottombar/BottomBarTab$Type;

    .line 288
    :goto_1
    invoke-virtual {v4, v5}, Lcom/roughike/bottombar/BottomBarTab;->setType(Lcom/roughike/bottombar/BottomBarTab$Type;)V

    .line 289
    invoke-virtual {v4}, Lcom/roughike/bottombar/BottomBarTab;->prepareLayout()V

    .line 291
    iget v5, p0, Lcom/roughike/bottombar/BottomBar;->currentTabPosition:I

    if-ne v2, v5, :cond_2

    .line 292
    invoke-virtual {v4, v1}, Lcom/roughike/bottombar/BottomBarTab;->select(Z)V

    .line 294
    invoke-direct {p0, v4, v1}, Lcom/roughike/bottombar/BottomBar;->handleBackgroundColorChange(Lcom/roughike/bottombar/BottomBarTab;Z)V

    goto :goto_2

    .line 296
    :cond_2
    invoke-virtual {v4, v1}, Lcom/roughike/bottombar/BottomBarTab;->deselect(Z)V

    .line 299
    :goto_2
    iget-boolean v5, p0, Lcom/roughike/bottombar/BottomBar;->isTabletMode:Z

    if-nez v5, :cond_4

    .line 300
    invoke-virtual {v4}, Lcom/roughike/bottombar/BottomBarTab;->getWidth()I

    move-result v5

    if-le v5, v3, :cond_3

    .line 301
    invoke-virtual {v4}, Lcom/roughike/bottombar/BottomBarTab;->getWidth()I

    move-result v3

    .line 304
    :cond_3
    aput-object v4, v0, v2

    goto :goto_3

    .line 306
    :cond_4
    iget-object v5, p0, Lcom/roughike/bottombar/BottomBar;->tabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 309
    :goto_3
    invoke-virtual {v4, p0}, Lcom/roughike/bottombar/BottomBarTab;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    invoke-virtual {v4, p0}, Lcom/roughike/bottombar/BottomBarTab;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    :cond_5
    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->currentTabs:[Lcom/roughike/bottombar/BottomBarTab;

    .line 316
    iget-boolean p1, p0, Lcom/roughike/bottombar/BottomBar;->isTabletMode:Z

    if-nez p1, :cond_6

    .line 317
    invoke-direct {p0, v0}, Lcom/roughike/bottombar/BottomBar;->resizeTabsToCorrectSizes([Lcom/roughike/bottombar/BottomBarTab;)V

    :cond_6
    return-void
.end method

.method private updateSelectedTab(I)V
    .locals 3

    .line 841
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBar;->getTabAtPosition(I)Lcom/roughike/bottombar/BottomBarTab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarTab;->getId()I

    move-result v0

    .line 843
    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->currentTabPosition:I

    if-eq p1, v1, :cond_0

    .line 844
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->onTabSelectListener:Lcom/roughike/bottombar/OnTabSelectListener;

    if-eqz v1, :cond_1

    .line 845
    invoke-interface {v1, v0}, Lcom/roughike/bottombar/OnTabSelectListener;->onTabSelected(I)V

    goto :goto_0

    .line 847
    :cond_0
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->onTabReselectListener:Lcom/roughike/bottombar/OnTabReselectListener;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/roughike/bottombar/BottomBar;->ignoreTabReselectionListener:Z

    if-nez v2, :cond_1

    .line 848
    invoke-interface {v1, v0}, Lcom/roughike/bottombar/OnTabReselectListener;->onTabReSelected(I)V

    .line 851
    :cond_1
    :goto_0
    iput p1, p0, Lcom/roughike/bottombar/BottomBar;->currentTabPosition:I

    .line 853
    iget-boolean p1, p0, Lcom/roughike/bottombar/BottomBar;->ignoreTabReselectionListener:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 854
    iput-boolean p1, p0, Lcom/roughike/bottombar/BottomBar;->ignoreTabReselectionListener:Z

    :cond_2
    return-void
.end method

.method private updateShyHeight(I)V
    .locals 3

    .line 733
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    new-instance v1, Lcom/roughike/bottombar/BottomNavigationBehavior;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/roughike/bottombar/BottomNavigationBehavior;-><init>(IIZ)V

    .line 734
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    return-void
.end method

.method private updateTitleBottomPadding()V
    .locals 8

    .line 685
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getTabCount()I

    move-result v0

    .line 687
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar;->tabContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->isShiftingMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 692
    invoke-virtual {p0, v1}, Lcom/roughike/bottombar/BottomBar;->getTabAtPosition(I)Lcom/roughike/bottombar/BottomBarTab;

    move-result-object v2

    .line 693
    invoke-virtual {v2}, Lcom/roughike/bottombar/BottomBarTab;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 699
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    .line 700
    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    .line 702
    iget v3, p0, Lcom/roughike/bottombar/BottomBar;->tenDp:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_2

    .line 705
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    .line 706
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v3, v7

    .line 705
    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public findPositionForTabWithId(I)I
    .locals 0

    .line 531
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBar;->getTabWithId(I)Lcom/roughike/bottombar/BottomBarTab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarTab;->getIndexInTabContainer()I

    move-result p1

    return p1
.end method

.method public getCurrentTab()Lcom/roughike/bottombar/BottomBarTab;
    .locals 1

    .line 496
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getCurrentTabPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBar;->getTabAtPosition(I)Lcom/roughike/bottombar/BottomBarTab;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTabId()I
    .locals 1

    .line 517
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getCurrentTab()Lcom/roughike/bottombar/BottomBarTab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarTab;->getId()I

    move-result v0

    return v0
.end method

.method public getCurrentTabPosition()I
    .locals 1

    .line 524
    iget v0, p0, Lcom/roughike/bottombar/BottomBar;->currentTabPosition:I

    return v0
.end method

.method public getTabAtPosition(I)Lcom/roughike/bottombar/BottomBarTab;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->tabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 505
    instance-of v0, p1, Lcom/roughike/bottombar/BadgeContainer;

    if-eqz v0, :cond_0

    .line 506
    check-cast p1, Lcom/roughike/bottombar/BadgeContainer;

    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->findTabInLayout(Landroid/view/ViewGroup;)Lcom/roughike/bottombar/BottomBarTab;

    move-result-object p1

    return-object p1

    .line 509
    :cond_0
    check-cast p1, Lcom/roughike/bottombar/BottomBarTab;

    return-object p1
.end method

.method public getTabCount()I
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->tabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getTabWithId(I)Lcom/roughike/bottombar/BottomBarTab;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->tabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/roughike/bottombar/BottomBarTab;

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 795
    instance-of v0, p1, Lcom/roughike/bottombar/BottomBarTab;

    if-nez v0, :cond_0

    return-void

    .line 796
    :cond_0
    check-cast p1, Lcom/roughike/bottombar/BottomBarTab;

    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->handleClick(Lcom/roughike/bottombar/BottomBarTab;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 665
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_2

    .line 668
    iget-boolean p1, p0, Lcom/roughike/bottombar/BottomBar;->isTabletMode:Z

    if-nez p1, :cond_0

    .line 669
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBar;->currentTabs:[Lcom/roughike/bottombar/BottomBarTab;

    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->resizeTabsToCorrectSizes([Lcom/roughike/bottombar/BottomBarTab;)V

    .line 672
    :cond_0
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->updateTitleBottomPadding()V

    .line 674
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->isShy()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 675
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->initializeShyBehavior()V

    .line 678
    :cond_1
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->drawUnderNav()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 679
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->resizeForDrawingUnderNavbar()V

    :cond_2
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 801
    instance-of v0, p1, Lcom/roughike/bottombar/BottomBarTab;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/roughike/bottombar/BottomBarTab;

    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->handleLongClick(Lcom/roughike/bottombar/BottomBarTab;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 773
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 774
    check-cast p1, Landroid/os/Bundle;

    .line 775
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBar;->restoreState(Landroid/os/Bundle;)V

    const-string v0, "superstate"

    .line 777
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 779
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 758
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->saveState()Landroid/os/Bundle;

    move-result-object v0

    .line 759
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "superstate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public removeOnTabReselectListener()V
    .locals 1

    const/4 v0, 0x0

    .line 424
    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->onTabReselectListener:Lcom/roughike/bottombar/OnTabReselectListener;

    return-void
.end method

.method public removeOnTabSelectListener()V
    .locals 1

    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->onTabSelectListener:Lcom/roughike/bottombar/OnTabSelectListener;

    return-void
.end method

.method public removeOverrideTabSelectionListener()V
    .locals 1

    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lcom/roughike/bottombar/BottomBar;->tabSelectionInterceptor:Lcom/roughike/bottombar/TabSelectionInterceptor;

    return-void
.end method

.method restoreState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 785
    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->isComingFromRestoredState:Z

    .line 786
    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->ignoreTabReselectionListener:Z

    .line 788
    iget v0, p0, Lcom/roughike/bottombar/BottomBar;->currentTabPosition:I

    const-string v1, "STATE_CURRENT_SELECTED_TAB"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    .line 789
    invoke-virtual {p0, p1, v0}, Lcom/roughike/bottombar/BottomBar;->selectTabAtPosition(IZ)V

    :cond_0
    return-void
.end method

.method saveState()Landroid/os/Bundle;
    .locals 3

    .line 765
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 766
    iget v1, p0, Lcom/roughike/bottombar/BottomBar;->currentTabPosition:I

    const-string v2, "STATE_CURRENT_SELECTED_TAB"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public selectTabAtPosition(I)V
    .locals 1

    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, p1, v0}, Lcom/roughike/bottombar/BottomBar;->selectTabAtPosition(IZ)V

    return-void
.end method

.method public selectTabAtPosition(IZ)V
    .locals 2

    .line 472
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getTabCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getCurrentTab()Lcom/roughike/bottombar/BottomBarTab;

    move-result-object v0

    .line 478
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBar;->getTabAtPosition(I)Lcom/roughike/bottombar/BottomBarTab;

    move-result-object v1

    .line 480
    invoke-virtual {v0, p2}, Lcom/roughike/bottombar/BottomBarTab;->deselect(Z)V

    .line 481
    invoke-virtual {v1, p2}, Lcom/roughike/bottombar/BottomBarTab;->select(Z)V

    .line 483
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->updateSelectedTab(I)V

    .line 484
    invoke-direct {p0, v0, v1, p2}, Lcom/roughike/bottombar/BottomBar;->shiftingMagic(Lcom/roughike/bottombar/BottomBarTab;Lcom/roughike/bottombar/BottomBarTab;Z)V

    .line 485
    invoke-direct {p0, v1, p2}, Lcom/roughike/bottombar/BottomBar;->handleBackgroundColorChange(Lcom/roughike/bottombar/BottomBarTab;Z)V

    return-void

    .line 473
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t select tab at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". This BottomBar has no items at that position."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public selectTabWithId(I)V
    .locals 0

    .line 452
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBar;->findPositionForTabWithId(I)I

    move-result p1

    .line 453
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBar;->selectTabAtPosition(I)V

    return-void
.end method

.method public setActiveTabAlpha(F)V
    .locals 1

    .line 559
    iput p1, p0, Lcom/roughike/bottombar/BottomBar;->activeTabAlpha:F

    .line 561
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBar;->batchPropertyApplier:Lcom/roughike/bottombar/BatchTabPropertyApplier;

    new-instance v0, Lcom/roughike/bottombar/BottomBar$2;

    invoke-direct {v0, p0}, Lcom/roughike/bottombar/BottomBar$2;-><init>(Lcom/roughike/bottombar/BottomBar;)V

    invoke-virtual {p1, v0}, Lcom/roughike/bottombar/BatchTabPropertyApplier;->applyToAllTabs(Lcom/roughike/bottombar/BatchTabPropertyApplier$TabPropertyUpdater;)V

    return-void
.end method

.method public setActiveTabColor(I)V
    .locals 1

    .line 584
    iput p1, p0, Lcom/roughike/bottombar/BottomBar;->activeTabColor:I

    .line 586
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBar;->batchPropertyApplier:Lcom/roughike/bottombar/BatchTabPropertyApplier;

    new-instance v0, Lcom/roughike/bottombar/BottomBar$4;

    invoke-direct {v0, p0}, Lcom/roughike/bottombar/BottomBar$4;-><init>(Lcom/roughike/bottombar/BottomBar;)V

    invoke-virtual {p1, v0}, Lcom/roughike/bottombar/BatchTabPropertyApplier;->applyToAllTabs(Lcom/roughike/bottombar/BatchTabPropertyApplier$TabPropertyUpdater;)V

    return-void
.end method

.method public setBadgeBackgroundColor(I)V
    .locals 1

    .line 598
    iput p1, p0, Lcom/roughike/bottombar/BottomBar;->badgeBackgroundColor:I

    .line 600
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBar;->batchPropertyApplier:Lcom/roughike/bottombar/BatchTabPropertyApplier;

    new-instance v0, Lcom/roughike/bottombar/BottomBar$5;

    invoke-direct {v0, p0}, Lcom/roughike/bottombar/BottomBar$5;-><init>(Lcom/roughike/bottombar/BottomBar;)V

    invoke-virtual {p1, v0}, Lcom/roughike/bottombar/BatchTabPropertyApplier;->applyToAllTabs(Lcom/roughike/bottombar/BatchTabPropertyApplier$TabPropertyUpdater;)V

    return-void
.end method

.method public setBadgesHideWhenActive(Z)V
    .locals 2

    .line 613
    iput-boolean p1, p0, Lcom/roughike/bottombar/BottomBar;->hideBadgeWhenActive:Z

    .line 614
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar;->batchPropertyApplier:Lcom/roughike/bottombar/BatchTabPropertyApplier;

    new-instance v1, Lcom/roughike/bottombar/BottomBar$6;

    invoke-direct {v1, p0, p1}, Lcom/roughike/bottombar/BottomBar$6;-><init>(Lcom/roughike/bottombar/BottomBar;Z)V

    invoke-virtual {v0, v1}, Lcom/roughike/bottombar/BatchTabPropertyApplier;->applyToAllTabs(Lcom/roughike/bottombar/BatchTabPropertyApplier$TabPropertyUpdater;)V

    return-void
.end method

.method public setDefaultTab(I)V
    .locals 0

    .line 432
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBar;->findPositionForTabWithId(I)I

    move-result p1

    .line 433
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBar;->setDefaultTabPosition(I)V

    return-void
.end method

.method public setDefaultTabPosition(I)V
    .locals 1

    .line 443
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar;->isComingFromRestoredState:Z

    if-eqz v0, :cond_0

    return-void

    .line 445
    :cond_0
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBar;->selectTabAtPosition(I)V

    return-void
.end method

.method public setInActiveTabAlpha(F)V
    .locals 1

    .line 545
    iput p1, p0, Lcom/roughike/bottombar/BottomBar;->inActiveTabAlpha:F

    .line 547
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBar;->batchPropertyApplier:Lcom/roughike/bottombar/BatchTabPropertyApplier;

    new-instance v0, Lcom/roughike/bottombar/BottomBar$1;

    invoke-direct {v0, p0}, Lcom/roughike/bottombar/BottomBar$1;-><init>(Lcom/roughike/bottombar/BottomBar;)V

    invoke-virtual {p1, v0}, Lcom/roughike/bottombar/BatchTabPropertyApplier;->applyToAllTabs(Lcom/roughike/bottombar/BatchTabPropertyApplier$TabPropertyUpdater;)V

    return-void
.end method

.method public setInActiveTabColor(I)V
    .locals 1

    .line 570
    iput p1, p0, Lcom/roughike/bottombar/BottomBar;->inActiveTabColor:I

    .line 572
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBar;->batchPropertyApplier:Lcom/roughike/bottombar/BatchTabPropertyApplier;

    new-instance v0, Lcom/roughike/bottombar/BottomBar$3;

    invoke-direct {v0, p0}, Lcom/roughike/bottombar/BottomBar$3;-><init>(Lcom/roughike/bottombar/BottomBar;)V

    invoke-virtual {p1, v0}, Lcom/roughike/bottombar/BatchTabPropertyApplier;->applyToAllTabs(Lcom/roughike/bottombar/BatchTabPropertyApplier$TabPropertyUpdater;)V

    return-void
.end method

.method public setItems(I)V
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, p1, v0}, Lcom/roughike/bottombar/BottomBar;->setItems(ILcom/roughike/bottombar/BottomBarTab$Config;)V

    return-void
.end method

.method public setItems(ILcom/roughike/bottombar/BottomBarTab$Config;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar;->getTabConfig()Lcom/roughike/bottombar/BottomBarTab$Config;

    move-result-object p2

    .line 251
    :cond_0
    new-instance v0, Lcom/roughike/bottombar/TabParser;

    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lcom/roughike/bottombar/TabParser;-><init>(Landroid/content/Context;Lcom/roughike/bottombar/BottomBarTab$Config;I)V

    .line 252
    invoke-virtual {v0}, Lcom/roughike/bottombar/TabParser;->parseTabs()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->updateItems(Ljava/util/List;)V

    return-void

    .line 244
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No items specified for the BottomBar!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnTabReselectListener(Lcom/roughike/bottombar/OnTabReselectListener;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar;->onTabReselectListener:Lcom/roughike/bottombar/OnTabReselectListener;

    return-void
.end method

.method public setOnTabSelectListener(Lcom/roughike/bottombar/OnTabSelectListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 384
    invoke-virtual {p0, p1, v0}, Lcom/roughike/bottombar/BottomBar;->setOnTabSelectListener(Lcom/roughike/bottombar/OnTabSelectListener;Z)V

    return-void
.end method

.method public setOnTabSelectListener(Lcom/roughike/bottombar/OnTabSelectListener;Z)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar;->onTabSelectListener:Lcom/roughike/bottombar/OnTabSelectListener;

    if-eqz p2, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getTabCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBar;->getCurrentTabId()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/roughike/bottombar/OnTabSelectListener;->onTabSelected(I)V

    :cond_0
    return-void
.end method

.method public setTabSelectionInterceptor(Lcom/roughike/bottombar/TabSelectionInterceptor;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar;->tabSelectionInterceptor:Lcom/roughike/bottombar/TabSelectionInterceptor;

    return-void
.end method

.method public setTabTitleTextAppearance(I)V
    .locals 1

    .line 626
    iput p1, p0, Lcom/roughike/bottombar/BottomBar;->titleTextAppearance:I

    .line 628
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBar;->batchPropertyApplier:Lcom/roughike/bottombar/BatchTabPropertyApplier;

    new-instance v0, Lcom/roughike/bottombar/BottomBar$7;

    invoke-direct {v0, p0}, Lcom/roughike/bottombar/BottomBar$7;-><init>(Lcom/roughike/bottombar/BottomBar;)V

    invoke-virtual {p1, v0}, Lcom/roughike/bottombar/BatchTabPropertyApplier;->applyToAllTabs(Lcom/roughike/bottombar/BatchTabPropertyApplier$TabPropertyUpdater;)V

    return-void
.end method

.method public setTabTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 653
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar;->titleTypeFace:Landroid/graphics/Typeface;

    .line 655
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBar;->batchPropertyApplier:Lcom/roughike/bottombar/BatchTabPropertyApplier;

    new-instance v0, Lcom/roughike/bottombar/BottomBar$8;

    invoke-direct {v0, p0}, Lcom/roughike/bottombar/BottomBar$8;-><init>(Lcom/roughike/bottombar/BottomBar;)V

    invoke-virtual {p1, v0}, Lcom/roughike/bottombar/BatchTabPropertyApplier;->applyToAllTabs(Lcom/roughike/bottombar/BatchTabPropertyApplier$TabPropertyUpdater;)V

    return-void
.end method

.method public setTabTitleTypeface(Ljava/lang/String;)V
    .locals 0

    .line 645
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBar;->getTypeFaceFromAsset(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 646
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBar;->setTabTitleTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
