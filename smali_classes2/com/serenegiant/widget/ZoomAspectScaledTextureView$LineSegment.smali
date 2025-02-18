.class final Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;
.super Ljava/lang/Object;
.source "ZoomAspectScaledTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/ZoomAspectScaledTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LineSegment"
.end annotation


# instance fields
.field public final p1:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

.field public final p2:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    new-instance v0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    invoke-direct {v0, p1, p2}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->p1:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    .line 770
    new-instance p1, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    invoke-direct {p1, p3, p4}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;-><init>(FF)V

    iput-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->p2:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    return-void
.end method


# virtual methods
.method public set(FFFF)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->p1:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->set(FF)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    .line 774
    iget-object p1, p0, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$LineSegment;->p2:Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    invoke-virtual {p1, p3, p4}, Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;->set(FF)Lcom/serenegiant/widget/ZoomAspectScaledTextureView$Vector;

    return-object p0
.end method
