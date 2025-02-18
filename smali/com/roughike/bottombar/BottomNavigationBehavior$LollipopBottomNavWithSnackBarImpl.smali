.class Lcom/roughike/bottombar/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;
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
    name = "LollipopBottomNavWithSnackBarImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roughike/bottombar/BottomNavigationBehavior;


# direct methods
.method private constructor <init>(Lcom/roughike/bottombar/BottomNavigationBehavior;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/roughike/bottombar/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/BottomNavigationBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roughike/bottombar/BottomNavigationBehavior;Lcom/roughike/bottombar/BottomNavigationBehavior$1;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;-><init>(Lcom/roughike/bottombar/BottomNavigationBehavior;)V

    return-void
.end method


# virtual methods
.method public updateSnackbar(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 159
    iget-object p1, p0, Lcom/roughike/bottombar/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/BottomNavigationBehavior;

    invoke-static {p1}, Lcom/roughike/bottombar/BottomNavigationBehavior;->access$200(Lcom/roughike/bottombar/BottomNavigationBehavior;)Z

    move-result p1

    if-nez p1, :cond_2

    instance-of p1, p2, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    if-eqz p1, :cond_2

    .line 160
    iget-object p1, p0, Lcom/roughike/bottombar/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/BottomNavigationBehavior;

    invoke-static {p1}, Lcom/roughike/bottombar/BottomNavigationBehavior;->access$300(Lcom/roughike/bottombar/BottomNavigationBehavior;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 161
    iget-object p1, p0, Lcom/roughike/bottombar/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/BottomNavigationBehavior;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/roughike/bottombar/BottomNavigationBehavior;->access$302(Lcom/roughike/bottombar/BottomNavigationBehavior;I)I

    .line 163
    :cond_0
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result p1

    const/4 p3, 0x0

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_1

    return-void

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/roughike/bottombar/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/BottomNavigationBehavior;

    invoke-static {p1}, Lcom/roughike/bottombar/BottomNavigationBehavior;->access$300(Lcom/roughike/bottombar/BottomNavigationBehavior;)I

    move-result p1

    iget-object p3, p0, Lcom/roughike/bottombar/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/BottomNavigationBehavior;

    invoke-static {p3}, Lcom/roughike/bottombar/BottomNavigationBehavior;->access$400(Lcom/roughike/bottombar/BottomNavigationBehavior;)I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/roughike/bottombar/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/BottomNavigationBehavior;

    invoke-static {p3}, Lcom/roughike/bottombar/BottomNavigationBehavior;->access$500(Lcom/roughike/bottombar/BottomNavigationBehavior;)I

    move-result p3

    sub-int/2addr p1, p3

    .line 165
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    .line 166
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 165
    invoke-virtual {p2, p3, v0, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void
.end method
