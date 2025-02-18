.class public Lcom/github/mikephil/charting/data/BarEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "BarEntry.java"


# instance fields
.field private mNegativeSum:F

.field private mPositiveSum:F

.field private mRanges:[Lcom/github/mikephil/charting/highlight/Range;

.field private mYVals:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FFLjava/lang/Object;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(F[F)V
    .locals 1

    .line 42
    invoke-static {p2}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 44
    iput-object p2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    .line 45
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcPosNegSum()V

    .line 46
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcRanges()V

    return-void
.end method

.method public constructor <init>(F[FLjava/lang/String;)V
    .locals 1

    .line 67
    invoke-static {p2}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    .line 69
    iput-object p2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    .line 70
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcPosNegSum()V

    .line 71
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcRanges()V

    return-void
.end method

.method private calcPosNegSum()V
    .locals 8

    .line 189
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 190
    iput v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    .line 191
    iput v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    return-void

    .line 198
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v6, v0, v3

    cmpg-float v7, v6, v1

    if-gtz v7, :cond_1

    .line 200
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v4, v6

    goto :goto_1

    :cond_1
    add-float/2addr v5, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    :cond_2
    iput v4, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    .line 206
    iput v5, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    return-void
.end method

.method private static calcSum([F)F
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 222
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    add-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method protected calcRanges()V
    .locals 8

    .line 230
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v0

    if-eqz v0, :cond_2

    .line 232
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 235
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Lcom/github/mikephil/charting/highlight/Range;

    iput-object v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    .line 237
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 240
    :goto_0
    iget-object v5, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 242
    aget v6, v0, v2

    cmpg-float v7, v6, v3

    if-gez v7, :cond_1

    .line 245
    new-instance v7, Lcom/github/mikephil/charting/highlight/Range;

    sub-float v6, v1, v6

    invoke-direct {v7, v1, v6}, Lcom/github/mikephil/charting/highlight/Range;-><init>(FF)V

    aput-object v7, v5, v2

    move v1, v6

    goto :goto_1

    .line 248
    :cond_1
    new-instance v7, Lcom/github/mikephil/charting/highlight/Range;

    add-float/2addr v6, v4

    invoke-direct {v7, v4, v6}, Lcom/github/mikephil/charting/highlight/Range;-><init>(FF)V

    aput-object v7, v5, v2

    move v4, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public copy()Lcom/github/mikephil/charting/data/BarEntry;
    .locals 4

    .line 90
    new-instance v0, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FFLjava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarEntry;->setVals([F)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->copy()Lcom/github/mikephil/charting/data/BarEntry;

    move-result-object v0

    return-object v0
.end method

.method public getBelowSum(I)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/BarEntry;->getSumBelow(I)F

    move-result p1

    return p1
.end method

.method public getNegativeSum()F
    .locals 1

    .line 184
    iget v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    return v0
.end method

.method public getPositiveSum()F
    .locals 1

    .line 175
    iget v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    return v0
.end method

.method public getRanges()[Lcom/github/mikephil/charting/highlight/Range;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    return-object v0
.end method

.method public getSumBelow(I)F
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, p1, :cond_1

    if-ltz v0, :cond_1

    .line 162
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getY()F
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v0

    return v0
.end method

.method public getYVals()[F
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    return-object v0
.end method

.method public isStacked()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setVals([F)V
    .locals 1

    .line 111
    invoke-static {p1}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BarEntry;->setY(F)V

    .line 112
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    .line 113
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcPosNegSum()V

    .line 114
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcRanges()V

    return-void
.end method
