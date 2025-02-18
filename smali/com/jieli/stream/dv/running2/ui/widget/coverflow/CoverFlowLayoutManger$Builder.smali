.class public Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;
.super Ljava/lang/Object;
.source "CoverFlowLayoutManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field cstIntervalRatio:F

.field isAlphaItem:Z

.field isFlat:Z

.field isGreyItem:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 587
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->isFlat:Z

    .line 588
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->isGreyItem:Z

    .line 589
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->isAlphaItem:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 590
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->cstIntervalRatio:F

    return-void
.end method


# virtual methods
.method public build()Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;
    .locals 5

    .line 613
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->isFlat:Z

    iget-boolean v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->isGreyItem:Z

    iget-boolean v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->isAlphaItem:Z

    iget v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->cstIntervalRatio:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger;-><init>(ZZZF)V

    return-object v0
.end method

.method public setAlphaItem(Z)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;
    .locals 0

    .line 603
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->isAlphaItem:Z

    return-object p0
.end method

.method public setFlat(Z)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;
    .locals 0

    .line 593
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->isFlat:Z

    return-object p0
.end method

.method public setGreyItem(Z)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;
    .locals 0

    .line 598
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->isGreyItem:Z

    return-object p0
.end method

.method public setIntervalRatio(F)Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;
    .locals 0

    .line 608
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/coverflow/CoverFlowLayoutManger$Builder;->cstIntervalRatio:F

    return-object p0
.end method
