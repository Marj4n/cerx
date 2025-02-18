.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$TurnRearViewAnim;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TurnRearViewAnim"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;


# direct methods
.method private constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 2535
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$TurnRearViewAnim;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 2548
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$TurnRearViewAnim;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
