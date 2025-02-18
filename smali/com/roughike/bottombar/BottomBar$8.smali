.class Lcom/roughike/bottombar/BottomBar$8;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Lcom/roughike/bottombar/BatchTabPropertyApplier$TabPropertyUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roughike/bottombar/BottomBar;->setTabTitleTypeface(Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roughike/bottombar/BottomBar;


# direct methods
.method constructor <init>(Lcom/roughike/bottombar/BottomBar;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar$8;->this$0:Lcom/roughike/bottombar/BottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/roughike/bottombar/BottomBarTab;)V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar$8;->this$0:Lcom/roughike/bottombar/BottomBar;

    invoke-static {v0}, Lcom/roughike/bottombar/BottomBar;->access$600(Lcom/roughike/bottombar/BottomBar;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roughike/bottombar/BottomBarTab;->setTitleTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
