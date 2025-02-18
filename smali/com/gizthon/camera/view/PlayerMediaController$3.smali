.class Lcom/gizthon/camera/view/PlayerMediaController$3;
.super Ljava/lang/Object;
.source "PlayerMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gizthon/camera/view/PlayerMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/view/PlayerMediaController;


# direct methods
.method constructor <init>(Lcom/gizthon/camera/view/PlayerMediaController;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$3;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 412
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$3;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-virtual {p1}, Lcom/gizthon/camera/view/PlayerMediaController;->doPauseResume()V

    .line 413
    iget-object p1, p0, Lcom/gizthon/camera/view/PlayerMediaController$3;->this$0:Lcom/gizthon/camera/view/PlayerMediaController;

    invoke-static {p1}, Lcom/gizthon/camera/view/PlayerMediaController;->access$700(Lcom/gizthon/camera/view/PlayerMediaController;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gizthon/camera/view/PlayerMediaController;->show(I)V

    return-void
.end method
