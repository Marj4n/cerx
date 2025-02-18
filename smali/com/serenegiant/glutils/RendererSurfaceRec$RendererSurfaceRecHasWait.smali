.class Lcom/serenegiant/glutils/RendererSurfaceRec$RendererSurfaceRecHasWait;
.super Lcom/serenegiant/glutils/RendererSurfaceRec;
.source "RendererSurfaceRec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/RendererSurfaceRec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RendererSurfaceRecHasWait"
.end annotation


# instance fields
.field private final mIntervalsNs:J

.field private mNextDraw:J


# direct methods
.method private constructor <init>(Lcom/serenegiant/glutils/EGLBase;Ljava/lang/Object;I)V
    .locals 2

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/glutils/RendererSurfaceRec;-><init>(Lcom/serenegiant/glutils/EGLBase;Ljava/lang/Object;Lcom/serenegiant/glutils/RendererSurfaceRec$1;)V

    int-to-long p1, p3

    const-wide/32 v0, 0x3b9aca00

    .line 173
    div-long/2addr v0, p1

    iput-wide v0, p0, Lcom/serenegiant/glutils/RendererSurfaceRec$RendererSurfaceRecHasWait;->mIntervalsNs:J

    .line 174
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/serenegiant/glutils/RendererSurfaceRec$RendererSurfaceRecHasWait;->mIntervalsNs:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/serenegiant/glutils/RendererSurfaceRec$RendererSurfaceRecHasWait;->mNextDraw:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/glutils/EGLBase;Ljava/lang/Object;ILcom/serenegiant/glutils/RendererSurfaceRec$1;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/glutils/RendererSurfaceRec$RendererSurfaceRecHasWait;-><init>(Lcom/serenegiant/glutils/EGLBase;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public canDraw()Z
    .locals 5

    .line 179
    iget-boolean v0, p0, Lcom/serenegiant/glutils/RendererSurfaceRec$RendererSurfaceRecHasWait;->mEnable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/serenegiant/glutils/RendererSurfaceRec$RendererSurfaceRecHasWait;->mNextDraw:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Lcom/serenegiant/glutils/GLDrawer2D;I[F)V
    .locals 4

    .line 186
    invoke-static {}, Lcom/serenegiant/utils/Time;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/serenegiant/glutils/RendererSurfaceRec$RendererSurfaceRecHasWait;->mIntervalsNs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/serenegiant/glutils/RendererSurfaceRec$RendererSurfaceRecHasWait;->mNextDraw:J

    .line 187
    invoke-super {p0, p1, p2, p3}, Lcom/serenegiant/glutils/RendererSurfaceRec;->draw(Lcom/serenegiant/glutils/GLDrawer2D;I[F)V

    return-void
.end method
