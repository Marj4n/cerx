.class public Lcom/serenegiant/graphics/PathShape;
.super Lcom/serenegiant/graphics/BaseShape;
.source "PathShape.java"


# instance fields
.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;FF)V
    .locals 0

    .line 41
    invoke-direct {p0, p2, p3}, Lcom/serenegiant/graphics/BaseShape;-><init>(FF)V

    .line 30
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/serenegiant/graphics/PathShape;->mPath:Landroid/graphics/Path;

    .line 42
    invoke-virtual {p0, p1}, Lcom/serenegiant/graphics/PathShape;->setPath(Landroid/graphics/Path;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/serenegiant/graphics/PathShape;->clone()Lcom/serenegiant/graphics/PathShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/serenegiant/graphics/BaseShape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/serenegiant/graphics/PathShape;->clone()Lcom/serenegiant/graphics/PathShape;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/serenegiant/graphics/PathShape;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 52
    invoke-super {p0}, Lcom/serenegiant/graphics/BaseShape;->clone()Lcom/serenegiant/graphics/BaseShape;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/graphics/PathShape;

    .line 53
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/serenegiant/graphics/PathShape;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lcom/serenegiant/graphics/PathShape;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/serenegiant/graphics/PathShape;->clone()Lcom/serenegiant/graphics/PathShape;

    move-result-object v0

    return-object v0
.end method

.method protected doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/serenegiant/graphics/PathShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/serenegiant/graphics/PathShape;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public setPath(Landroid/graphics/Path;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/serenegiant/graphics/PathShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/serenegiant/graphics/PathShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method
