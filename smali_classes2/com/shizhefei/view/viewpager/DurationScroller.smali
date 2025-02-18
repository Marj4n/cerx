.class public Lcom/shizhefei/view/viewpager/DurationScroller;
.super Landroid/widget/Scroller;
.source "DurationScroller.java"


# instance fields
.field private mScrollDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x320

    .line 11
    iput p1, p0, Lcom/shizhefei/view/viewpager/DurationScroller;->mScrollDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x320

    .line 11
    iput p1, p0, Lcom/shizhefei/view/viewpager/DurationScroller;->mScrollDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    const/16 p1, 0x320

    .line 11
    iput p1, p0, Lcom/shizhefei/view/viewpager/DurationScroller;->mScrollDuration:I

    return-void
.end method


# virtual methods
.method public getScrollDuration()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/shizhefei/view/viewpager/DurationScroller;->mScrollDuration:I

    return v0
.end method

.method public setScrollDuration(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/shizhefei/view/viewpager/DurationScroller;->mScrollDuration:I

    return-void
.end method

.method public startScroll(IIII)V
    .locals 6

    .line 34
    iget v5, p0, Lcom/shizhefei/view/viewpager/DurationScroller;->mScrollDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    .line 29
    iget v5, p0, Lcom/shizhefei/view/viewpager/DurationScroller;->mScrollDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
