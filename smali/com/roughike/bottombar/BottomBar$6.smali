.class Lcom/roughike/bottombar/BottomBar$6;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Lcom/roughike/bottombar/BatchTabPropertyApplier$TabPropertyUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roughike/bottombar/BottomBar;->setBadgesHideWhenActive(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roughike/bottombar/BottomBar;

.field final synthetic val$hideWhenSelected:Z


# direct methods
.method constructor <init>(Lcom/roughike/bottombar/BottomBar;Z)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar$6;->this$0:Lcom/roughike/bottombar/BottomBar;

    iput-boolean p2, p0, Lcom/roughike/bottombar/BottomBar$6;->val$hideWhenSelected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/roughike/bottombar/BottomBarTab;)V
    .locals 1

    .line 617
    iget-boolean v0, p0, Lcom/roughike/bottombar/BottomBar$6;->val$hideWhenSelected:Z

    invoke-virtual {p1, v0}, Lcom/roughike/bottombar/BottomBarTab;->setBadgeHidesWhenActive(Z)V

    return-void
.end method
