.class public Lcom/serenegiant/math/SphereBounds;
.super Lcom/serenegiant/math/CircleBounds;
.source "SphereBounds.java"


# static fields
.field private static final serialVersionUID:J = 0x4a94b80a84261856L


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/math/CircleBounds;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/serenegiant/math/CircleBounds;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/math/Vector;F)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/math/CircleBounds;-><init>(Lcom/serenegiant/math/Vector;F)V

    return-void
.end method
