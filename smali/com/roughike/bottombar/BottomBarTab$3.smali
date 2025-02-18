.class Lcom/roughike/bottombar/BottomBarTab$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomBarTab.java"


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

    .line 468
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarTab$3;->this$0:Lcom/roughike/bottombar/BottomBarTab;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 471
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBarTab$3;->this$0:Lcom/roughike/bottombar/BottomBarTab;

    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab;->access$1000(Lcom/roughike/bottombar/BottomBarTab;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/roughike/bottombar/BottomBarTab$3;->this$0:Lcom/roughike/bottombar/BottomBarTab;

    iget-object p1, p1, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    if-eqz p1, :cond_0

    .line 472
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBarTab$3;->this$0:Lcom/roughike/bottombar/BottomBarTab;

    iget-object p1, p1, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarTab$3;->this$0:Lcom/roughike/bottombar/BottomBarTab;

    invoke-virtual {p1, v0}, Lcom/roughike/bottombar/BottomBarBadge;->adjustPositionAndSize(Lcom/roughike/bottombar/BottomBarTab;)V

    .line 473
    iget-object p1, p0, Lcom/roughike/bottombar/BottomBarTab$3;->this$0:Lcom/roughike/bottombar/BottomBarTab;

    iget-object p1, p1, Lcom/roughike/bottombar/BottomBarTab;->badge:Lcom/roughike/bottombar/BottomBarBadge;

    invoke-virtual {p1}, Lcom/roughike/bottombar/BottomBarBadge;->show()V

    :cond_0
    return-void
.end method
