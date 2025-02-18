.class Lcom/roughike/bottombar/BottomNavigationBehavior;
.super Lcom/roughike/bottombar/VerticalScrollingBehavior;
.source "BottomNavigationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roughike/bottombar/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;,
        Lcom/roughike/bottombar/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;,
        Lcom/roughike/bottombar/BottomNavigationBehavior$BottomNavigationWithSnackbar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/roughike/bottombar/VerticalScrollingBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final bottomNavHeight:I

.field private final defaultOffset:I

.field private hidden:Z

.field private isTablet:Z

.field private mScrollingEnabled:Z

.field private mSnackbarHeight:I

.field private mTranslationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field private final mWithSnackBarImpl:Lcom/roughike/bottombar/BottomNavigationBehavior$BottomNavigationWithSnackbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/roughike/bottombar/BottomNavigationBehavior;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 3

    .line 32
    invoke-direct {p0}, Lcom/roughike/bottombar/VerticalScrollingBehavior;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->isTablet:Z

    .line 27
    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->hidden:Z

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->mSnackbarHeight:I

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/roughike/bottombar/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;

    invoke-direct {v0, p0, v1}, Lcom/roughike/bottombar/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;-><init>(Lcom/roughike/bottombar/BottomNavigationBehavior;Lcom/roughike/bottombar/BottomNavigationBehavior$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/roughike/bottombar/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;

    invoke-direct {v0, p0, v1}, Lcom/roughike/bottombar/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;-><init>(Lcom/roughike/bottombar/BottomNavigationBehavior;Lcom/roughike/bottombar/BottomNavigationBehavior$1;)V

    :goto_0
    iput-object v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->mWithSnackBarImpl:Lcom/roughike/bottombar/BottomNavigationBehavior$BottomNavigationWithSnackbar;

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->mScrollingEnabled:Z

    .line 33
    iput p1, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->bottomNavHeight:I

    .line 34
    iput p2, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->defaultOffset:I

    .line 35
    iput-boolean p3, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->isTablet:Z

    return-void
.end method

.method static synthetic access$200(Lcom/roughike/bottombar/BottomNavigationBehavior;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->isTablet:Z

    return p0
.end method

.method static synthetic access$300(Lcom/roughike/bottombar/BottomNavigationBehavior;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->mSnackbarHeight:I

    return p0
.end method

.method static synthetic access$302(Lcom/roughike/bottombar/BottomNavigationBehavior;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->mSnackbarHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/roughike/bottombar/BottomNavigationBehavior;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->bottomNavHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/roughike/bottombar/BottomNavigationBehavior;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->defaultOffset:I

    return p0
.end method

.method private animateOffset(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomNavigationBehavior;->ensureOrCancelAnimator(Landroid/view/View;)V

    .line 90
    iget-object p1, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->mTranslationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private ensureOrCancelAnimator(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->mTranslationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-nez v0, :cond_0

    .line 95
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->mTranslationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const-wide/16 v0, 0x12c

    .line 96
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 97
    iget-object p1, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->mTranslationAnimator:Landroidx/core/view/ViewPropertyAnimatorCompat;

    sget-object v0, Lcom/roughike/bottombar/BottomNavigationBehavior;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    :goto_0
    return-void
.end method

.method static from(Landroid/view/View;)Lcom/roughike/bottombar/BottomNavigationBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/roughike/bottombar/BottomNavigationBehavior<",
            "TV;>;"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 116
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 119
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 120
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object p0

    .line 121
    instance-of v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;

    if-eqz v0, :cond_0

    .line 125
    check-cast p0, Lcom/roughike/bottombar/BottomNavigationBehavior;

    return-object p0

    .line 122
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not associated with BottomNavigationBehavior"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not a child of CoordinatorLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private handleDirection(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 72
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->mScrollingEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 73
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->hidden:Z

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 74
    iput-boolean p2, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->hidden:Z

    .line 75
    iget p2, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->defaultOffset:I

    invoke-direct {p0, p1, p2}, Lcom/roughike/bottombar/BottomNavigationBehavior;->animateOffset(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 76
    iget-boolean p2, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->hidden:Z

    if-nez p2, :cond_2

    .line 77
    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->hidden:Z

    .line 78
    iget p2, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->bottomNavHeight:I

    iget v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->defaultOffset:I

    add-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lcom/roughike/bottombar/BottomNavigationBehavior;->animateOffset(Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateScrollingForSnackbar(Landroid/view/View;Z)V
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->isTablet:Z

    if-nez v0, :cond_0

    instance-of p1, p1, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    if-eqz p1, :cond_0

    .line 56
    iput-boolean p2, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->mScrollingEnabled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->mWithSnackBarImpl:Lcom/roughike/bottombar/BottomNavigationBehavior$BottomNavigationWithSnackbar;

    invoke-interface {v0, p1, p3, p2}, Lcom/roughike/bottombar/BottomNavigationBehavior$BottomNavigationWithSnackbar;->updateSnackbar(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 41
    instance-of p1, p3, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    return p1
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p3, v0}, Lcom/roughike/bottombar/BottomNavigationBehavior;->updateScrollingForSnackbar(Landroid/view/View;Z)V

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/roughike/bottombar/VerticalScrollingBehavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onDependentViewRemoved(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, p3, v0}, Lcom/roughike/bottombar/BottomNavigationBehavior;->updateScrollingForSnackbar(Landroid/view/View;Z)V

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/roughike/bottombar/VerticalScrollingBehavior;->onDependentViewRemoved(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public onDirectionNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p2, p7}, Lcom/roughike/bottombar/BottomNavigationBehavior;->handleDirection(Landroid/view/View;I)V

    return-void
.end method

.method protected onNestedDirectionFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFI)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FFI)Z"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p2, p6}, Lcom/roughike/bottombar/BottomNavigationBehavior;->handleDirection(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onNestedVerticalOverScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)V"
        }
    .end annotation

    return-void
.end method

.method setHidden(Landroid/view/View;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 105
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->hidden:Z

    if-eqz v0, :cond_0

    .line 106
    iget v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->defaultOffset:I

    invoke-direct {p0, p1, v0}, Lcom/roughike/bottombar/BottomNavigationBehavior;->animateOffset(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 107
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->hidden:Z

    if-nez v0, :cond_1

    .line 108
    iget v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->bottomNavHeight:I

    iget v1, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->defaultOffset:I

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/roughike/bottombar/BottomNavigationBehavior;->animateOffset(Landroid/view/View;I)V

    .line 110
    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/roughike/bottombar/BottomNavigationBehavior;->hidden:Z

    return-void
.end method
