.class Lcom/roughike/bottombar/BottomBar$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roughike/bottombar/BottomBar;->backgroundCircularRevealAnimation(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roughike/bottombar/BottomBar;

.field final synthetic val$newColor:I


# direct methods
.method constructor <init>(Lcom/roughike/bottombar/BottomBar;I)V
    .locals 0

    .line 929
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar$9;->this$0:Lcom/roughike/bottombar/BottomBar;

    iput p2, p0, Lcom/roughike/bottombar/BottomBar$9;->val$newColor:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private onEnd()V
    .locals 2

    .line 941
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar$9;->this$0:Lcom/roughike/bottombar/BottomBar;

    invoke-static {v0}, Lcom/roughike/bottombar/BottomBar;->access$700(Lcom/roughike/bottombar/BottomBar;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/roughike/bottombar/BottomBar$9;->val$newColor:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 942
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar$9;->this$0:Lcom/roughike/bottombar/BottomBar;

    invoke-static {v0}, Lcom/roughike/bottombar/BottomBar;->access$800(Lcom/roughike/bottombar/BottomBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 943
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar$9;->this$0:Lcom/roughike/bottombar/BottomBar;

    invoke-static {v0}, Lcom/roughike/bottombar/BottomBar;->access$800(Lcom/roughike/bottombar/BottomBar;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 937
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar$9;->onEnd()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 932
    invoke-direct {p0}, Lcom/roughike/bottombar/BottomBar$9;->onEnd()V

    return-void
.end method
