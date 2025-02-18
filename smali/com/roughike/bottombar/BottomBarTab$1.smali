.class Lcom/roughike/bottombar/BottomBarTab$1;
.super Ljava/lang/Object;
.source "BottomBarTab.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roughike/bottombar/BottomBarTab;->animateColors(II)V
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

    .line 411
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarTab$1;->this$0:Lcom/roughike/bottombar/BottomBarTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab$1;->this$0:Lcom/roughike/bottombar/BottomBarTab;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/roughike/bottombar/BottomBarTab;->access$900(Lcom/roughike/bottombar/BottomBarTab;I)V

    return-void
.end method
