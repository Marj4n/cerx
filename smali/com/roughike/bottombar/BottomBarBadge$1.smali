.class Lcom/roughike/bottombar/BottomBarBadge$1;
.super Ljava/lang/Object;
.source "BottomBarBadge.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roughike/bottombar/BottomBarBadge;->wrapTabAndBadgeInSameContainer(Lcom/roughike/bottombar/BottomBarTab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roughike/bottombar/BottomBarBadge;

.field final synthetic val$badgeContainer:Lcom/roughike/bottombar/BadgeContainer;

.field final synthetic val$tab:Lcom/roughike/bottombar/BottomBarTab;


# direct methods
.method constructor <init>(Lcom/roughike/bottombar/BottomBarBadge;Lcom/roughike/bottombar/BadgeContainer;Lcom/roughike/bottombar/BottomBarTab;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarBadge$1;->this$0:Lcom/roughike/bottombar/BottomBarBadge;

    iput-object p2, p0, Lcom/roughike/bottombar/BottomBarBadge$1;->val$badgeContainer:Lcom/roughike/bottombar/BadgeContainer;

    iput-object p3, p0, Lcom/roughike/bottombar/BottomBarBadge$1;->val$tab:Lcom/roughike/bottombar/BottomBarTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarBadge$1;->val$badgeContainer:Lcom/roughike/bottombar/BadgeContainer;

    invoke-virtual {v0}, Lcom/roughike/bottombar/BadgeContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 131
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarBadge$1;->this$0:Lcom/roughike/bottombar/BottomBarBadge;

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBarBadge$1;->val$tab:Lcom/roughike/bottombar/BottomBarTab;

    invoke-virtual {v0, v1}, Lcom/roughike/bottombar/BottomBarBadge;->adjustPositionAndSize(Lcom/roughike/bottombar/BottomBarTab;)V

    return-void
.end method
