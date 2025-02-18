.class Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$2;
.super Ljava/lang/Object;
.source "GLCoverFlowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->preLoadCache(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;

.field final synthetic val$endIndex:I

.field final synthetic val$startIndex:I


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;II)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;

    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$2;->val$startIndex:I

    iput p3, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$2;->val$endIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 622
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$2;->val$startIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->access$200(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 627
    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$2;->val$endIndex:I

    if-le v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-ge v0, v1, :cond_2

    .line 629
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->access$300(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 630
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$2;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->access$400(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;)Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;->access$500(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;ILjavax/microedition/khronos/opengles/GL10;)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
