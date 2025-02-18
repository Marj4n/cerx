.class public Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;
.super Ljava/lang/Object;
.source "GLCoverFlowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoverFlowRecord"
.end annotation


# instance fields
.field private gl:Ljavax/microedition/khronos/opengles/GL10;

.field private mTexture:I


# direct methods
.method public constructor <init>(ILjavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;->mTexture:I

    .line 652
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;->gl:Ljavax/microedition/khronos/opengles/GL10;

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;)I
    .locals 0

    .line 646
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;->mTexture:I

    return p0
.end method


# virtual methods
.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 657
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;->mTexture:I

    if-eqz v0, :cond_0

    .line 658
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/GLCoverFlowView$CoverFlowRecord;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 661
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
