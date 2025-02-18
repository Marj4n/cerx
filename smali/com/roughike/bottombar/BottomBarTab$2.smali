.class Lcom/roughike/bottombar/BottomBarTab$2;
.super Ljava/lang/Object;
.source "BottomBarTab.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roughike/bottombar/BottomBarTab;->updateWidth(FZ)V
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

    .line 458
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarTab$2;->this$0:Lcom/roughike/bottombar/BottomBarTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab$2;->this$0:Lcom/roughike/bottombar/BottomBarTab;

    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBarTab;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 465
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBarTab$2;->this$0:Lcom/roughike/bottombar/BottomBarTab;

    invoke-virtual {p1, v0}, Lcom/roughike/bottombar/BottomBarTab;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
