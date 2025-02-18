.class Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;
.super Ljava/lang/Object;
.source "BaseZoomableImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->scrollBy(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field old_x:F

.field old_y:F

.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;

.field final synthetic val$durationMs:F

.field final synthetic val$dx:F

.field final synthetic val$dy:F

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;FJFF)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;

    iput p2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->val$durationMs:F

    iput-wide p3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->val$startTime:J

    iput p5, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->val$dx:F

    iput p6, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->val$dy:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 618
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->old_x:F

    .line 619
    iput p1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->old_y:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 623
    iget v2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->val$durationMs:F

    iget-wide v3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->val$startTime:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 624
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;

    iget v2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->val$dx:F

    iget v3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->val$durationMs:F

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v2, v3}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->access$000(Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;FFFF)F

    move-result v1

    .line 625
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;

    iget v3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->val$dy:F

    iget v5, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->val$durationMs:F

    invoke-static {v2, v0, v4, v3, v5}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->access$000(Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;FFFF)F

    move-result v2

    .line 626
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;

    iget v4, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->old_x:F

    sub-float v4, v1, v4

    iget v5, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->old_y:F

    sub-float v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->postTranslate(FF)Z

    .line 627
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v4, v5}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->center(ZZZ)V

    .line 629
    iput v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->old_x:F

    .line 630
    iput v2, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->old_y:F

    .line 631
    iget v1, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->val$durationMs:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;

    invoke-virtual {v0, p0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->post(Ljava/lang/Runnable;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->access$102(Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;Z)Z

    goto :goto_0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView$5;->this$0:Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/View/BaseZoomableImageView;->stopFling()V

    :goto_0
    return-void
.end method
