.class public Lcom/serenegiant/math/CircleBounds;
.super Lcom/serenegiant/math/BaseBounds;
.source "CircleBounds.java"


# static fields
.field private static final serialVersionUID:J = -0x5b331eb927a25c1cL


# direct methods
.method public constructor <init>(FFF)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/serenegiant/math/CircleBounds;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/serenegiant/math/BaseBounds;-><init>()V

    .line 32
    iget-object v0, p0, Lcom/serenegiant/math/CircleBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->set(FFF)Lcom/serenegiant/math/Vector;

    .line 33
    iput p4, p0, Lcom/serenegiant/math/CircleBounds;->radius:F

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/math/Vector;F)V
    .locals 2

    .line 41
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    iget p1, p1, Lcom/serenegiant/math/Vector;->y:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/serenegiant/math/CircleBounds;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public ptInBounds(FFF)Z
    .locals 1

    .line 46
    iget v0, p0, Lcom/serenegiant/math/CircleBounds;->radius:F

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/serenegiant/math/CircleBounds;->ptInBoundsSphere(FFFF)Z

    move-result p1

    return p1
.end method
