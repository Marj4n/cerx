.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$38;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClick:Z

.field private startX:I

.field private startY:I

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V
    .locals 0

    .line 2459
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$38;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2462
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$38;->isClick:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2466
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 2467
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 2468
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 2475
    :cond_0
    iget p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$38;->startX:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$38;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$8300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$38;->startY:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$38;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$8300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 2476
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$38;->isClick:Z

    .line 2478
    :cond_2
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$38;->isClick:Z

    if-eqz p1, :cond_3

    .line 2479
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$38;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$8400(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    .line 2481
    :cond_3
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$38;->isClick:Z

    goto :goto_0

    :cond_4
    float-to-int p1, p1

    .line 2470
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$38;->startX:I

    float-to-int p1, v0

    .line 2471
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$38;->startY:I

    :goto_0
    return v1
.end method
