.class Lcom/roughike/bottombar/BatchTabPropertyApplier;
.super Ljava/lang/Object;
.source "BatchTabPropertyApplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roughike/bottombar/BatchTabPropertyApplier$TabPropertyUpdater;
    }
.end annotation


# instance fields
.field private final bottomBar:Lcom/roughike/bottombar/BottomBar;


# direct methods
.method constructor <init>(Lcom/roughike/bottombar/BottomBar;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/roughike/bottombar/BatchTabPropertyApplier;->bottomBar:Lcom/roughike/bottombar/BottomBar;

    return-void
.end method


# virtual methods
.method applyToAllTabs(Lcom/roughike/bottombar/BatchTabPropertyApplier$TabPropertyUpdater;)V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/roughike/bottombar/BatchTabPropertyApplier;->bottomBar:Lcom/roughike/bottombar/BottomBar;

    invoke-virtual {v0}, Lcom/roughike/bottombar/BottomBar;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 21
    iget-object v2, p0, Lcom/roughike/bottombar/BatchTabPropertyApplier;->bottomBar:Lcom/roughike/bottombar/BottomBar;

    invoke-virtual {v2, v1}, Lcom/roughike/bottombar/BottomBar;->getTabAtPosition(I)Lcom/roughike/bottombar/BottomBarTab;

    move-result-object v2

    .line 22
    invoke-interface {p1, v2}, Lcom/roughike/bottombar/BatchTabPropertyApplier$TabPropertyUpdater;->update(Lcom/roughike/bottombar/BottomBarTab;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
