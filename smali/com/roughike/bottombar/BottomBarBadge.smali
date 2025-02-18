.class Lcom/roughike/bottombar/BottomBarBadge;
.super Landroid/widget/TextView;
.source "BottomBarBadge.java"


# instance fields
.field private count:I

.field private isVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/roughike/bottombar/BottomBarBadge;->isVisible:Z

    return-void
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 165
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBarBadge;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBarBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private wrapTabAndBadgeInSameContainer(Lcom/roughike/bottombar/BottomBarTab;)V
    .locals 4

    .line 114
    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarTab;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 115
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 117
    new-instance v1, Lcom/roughike/bottombar/BadgeContainer;

    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarBadge;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/roughike/bottombar/BadgeContainer;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/roughike/bottombar/BadgeContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {v1, p1}, Lcom/roughike/bottombar/BadgeContainer;->addView(Landroid/view/View;)V

    .line 122
    invoke-virtual {v1, p0}, Lcom/roughike/bottombar/BadgeContainer;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarTab;->getIndexInTabContainer()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 126
    invoke-virtual {v1}, Lcom/roughike/bottombar/BadgeContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/roughike/bottombar/BottomBarBadge$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/roughike/bottombar/BottomBarBadge$1;-><init>(Lcom/roughike/bottombar/BottomBarBadge;Lcom/roughike/bottombar/BadgeContainer;Lcom/roughike/bottombar/BottomBarTab;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method adjustPositionAndSize(Lcom/roughike/bottombar/BottomBarTab;)V
    .locals 6

    .line 146
    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarTab;->getIconView()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    .line 147
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarBadge;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarBadge;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 150
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 152
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->getX()F

    move-result p1

    add-float/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBarBadge;->setX(F)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 153
    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBarBadge;->setTranslationY(F)V

    .line 155
    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p1, v1, :cond_0

    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p1, v1, :cond_1

    .line 156
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method attachToTab(Lcom/roughike/bottombar/BottomBarTab;I)V
    .locals 2

    .line 95
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    .line 99
    invoke-virtual {p0, v0}, Lcom/roughike/bottombar/BottomBarBadge;->setGravity(I)V

    .line 100
    sget v0, Lcom/roughike/bottombar/R$style;->BB_BottomBarBadge_Text:I

    invoke-static {p0, v0}, Lcom/roughike/bottombar/MiscUtils;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 102
    invoke-virtual {p0, p2}, Lcom/roughike/bottombar/BottomBarBadge;->setColoredCircleBackground(I)V

    .line 103
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBarBadge;->wrapTabAndBadgeInSameContainer(Lcom/roughike/bottombar/BottomBarTab;)V

    return-void
.end method

.method getCount()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/roughike/bottombar/BottomBarBadge;->count:I

    return v0
.end method

.method hide()V
    .locals 3

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBarBadge;->isVisible:Z

    .line 77
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 78
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method isVisible()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBarBadge;->isVisible:Z

    return v0
.end method

.method removeFromTab(Lcom/roughike/bottombar/BottomBarTab;)V
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarBadge;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/roughike/bottombar/BadgeContainer;

    .line 138
    invoke-virtual {v0}, Lcom/roughike/bottombar/BadgeContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 140
    invoke-virtual {v0, p1}, Lcom/roughike/bottombar/BadgeContainer;->removeView(Landroid/view/View;)V

    .line 141
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 142
    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarTab;->getIndexInTabContainer()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method setColoredCircleBackground(I)V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/roughike/bottombar/BottomBarBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/roughike/bottombar/MiscUtils;->dpToPixel(Landroid/content/Context;F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    .line 108
    invoke-static {v1, p1}, Lcom/roughike/bottombar/BadgeCircle;->make(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    .line 109
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/roughike/bottombar/BottomBarBadge;->setPadding(IIII)V

    .line 110
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBarBadge;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setCount(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/roughike/bottombar/BottomBarBadge;->count:I

    .line 47
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roughike/bottombar/BottomBarBadge;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method show()V
    .locals 3

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBarBadge;->isVisible:Z

    .line 64
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 65
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 66
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method
