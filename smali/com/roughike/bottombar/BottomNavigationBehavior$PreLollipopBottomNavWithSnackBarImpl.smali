.class Lcom/roughike/bottombar/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;
.super Ljava/lang/Object;
.source "BottomNavigationBehavior.java"

# interfaces
.implements Lcom/roughike/bottombar/BottomNavigationBehavior$BottomNavigationWithSnackbar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roughike/bottombar/BottomNavigationBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreLollipopBottomNavWithSnackBarImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roughike/bottombar/BottomNavigationBehavior;


# direct methods
.method private constructor <init>(Lcom/roughike/bottombar/BottomNavigationBehavior;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/roughike/bottombar/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/BottomNavigationBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roughike/bottombar/BottomNavigationBehavior;Lcom/roughike/bottombar/BottomNavigationBehavior$1;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;-><init>(Lcom/roughike/bottombar/BottomNavigationBehavior;)V

    return-void
.end method


# virtual methods
.method public updateSnackbar(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/roughike/bottombar/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/BottomNavigationBehavior;

    invoke-static {p1}, Lcom/roughike/bottombar/BottomNavigationBehavior;->access$200(Lcom/roughike/bottombar/BottomNavigationBehavior;)Z

    move-result p1

    if-nez p1, :cond_2

    instance-of p1, p2, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    if-eqz p1, :cond_2

    .line 138
    iget-object p1, p0, Lcom/roughike/bottombar/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/BottomNavigationBehavior;

    invoke-static {p1}, Lcom/roughike/bottombar/BottomNavigationBehavior;->access$300(Lcom/roughike/bottombar/BottomNavigationBehavior;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 139
    iget-object p1, p0, Lcom/roughike/bottombar/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/BottomNavigationBehavior;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/roughike/bottombar/BottomNavigationBehavior;->access$302(Lcom/roughike/bottombar/BottomNavigationBehavior;I)I

    .line 141
    :cond_0
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    return-void

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/roughike/bottombar/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/BottomNavigationBehavior;

    invoke-static {p1}, Lcom/roughike/bottombar/BottomNavigationBehavior;->access$400(Lcom/roughike/bottombar/BottomNavigationBehavior;)I

    move-result p1

    iget-object v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/BottomNavigationBehavior;

    invoke-static {v0}, Lcom/roughike/bottombar/BottomNavigationBehavior;->access$300(Lcom/roughike/bottombar/BottomNavigationBehavior;)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/roughike/bottombar/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/BottomNavigationBehavior;

    invoke-static {v0}, Lcom/roughike/bottombar/BottomNavigationBehavior;->access$500(Lcom/roughike/bottombar/BottomNavigationBehavior;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 144
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 145
    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 146
    invoke-virtual {p3}, Landroid/view/View;->bringToFront()V

    .line 147
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->requestLayout()V

    .line 148
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-ge p1, p2, :cond_2

    .line 149
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method
