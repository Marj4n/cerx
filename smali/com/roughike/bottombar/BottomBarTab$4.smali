.class Lcom/roughike/bottombar/BottomBarTab$4;
.super Ljava/lang/Object;
.source "BottomBarTab.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roughike/bottombar/BottomBarTab;->setTopPaddingAnimated(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roughike/bottombar/BottomBarTab;


# direct methods
.method constructor <init>(Lcom/roughike/bottombar/BottomBarTab;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarTab$4;->this$0:Lcom/roughike/bottombar/BottomBarTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 495
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab$4;->this$0:Lcom/roughike/bottombar/BottomBarTab;

    invoke-static {v0}, Lcom/roughike/bottombar/BottomBarTab;->access$1100(Lcom/roughike/bottombar/BottomBarTab;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBarTab$4;->this$0:Lcom/roughike/bottombar/BottomBarTab;

    .line 496
    invoke-static {v1}, Lcom/roughike/bottombar/BottomBarTab;->access$1100(Lcom/roughike/bottombar/BottomBarTab;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingLeft()I

    move-result v1

    .line 497
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/roughike/bottombar/BottomBarTab$4;->this$0:Lcom/roughike/bottombar/BottomBarTab;

    .line 498
    invoke-static {v2}, Lcom/roughike/bottombar/BottomBarTab;->access$1100(Lcom/roughike/bottombar/BottomBarTab;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/roughike/bottombar/BottomBarTab$4;->this$0:Lcom/roughike/bottombar/BottomBarTab;

    .line 499
    invoke-static {v3}, Lcom/roughike/bottombar/BottomBarTab;->access$1100(Lcom/roughike/bottombar/BottomBarTab;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    move-result v3

    .line 495
    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setPadding(IIII)V

    return-void
.end method
