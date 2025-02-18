.class final Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;
.super Ljava/lang/Object;
.source "ZoomAspectScaledTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/ZoomAspectScaledTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Vector"
.end annotation


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->set(FF)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    return-void
.end method


# virtual methods
.method public dec(FF)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;
    .locals 1

    .line 758
    iget v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->x:F

    .line 759
    iget p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->y:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->y:F

    return-object p0
.end method

.method public set(FF)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;
    .locals 0

    .line 721
    iput p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->x:F

    .line 722
    iput p2, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->y:F

    return-object p0
.end method

.method public sub(Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;
    .locals 3

    .line 747
    new-instance v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    iget v1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->x:F

    iget v2, p1, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->y:F

    iget p1, p1, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->y:F

    sub-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;-><init>(FF)V

    return-object v0
.end method
