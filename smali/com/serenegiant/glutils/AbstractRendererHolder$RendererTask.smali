.class public abstract Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;
.super Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;
.source "AbstractRendererHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/glutils/AbstractRendererHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "RendererTask"
.end annotation


# instance fields
.field protected mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;


# direct methods
.method public constructor <init>(Lcom/serenegiant/glutils/AbstractRendererHolder;II)V
    .locals 0

    .line 1209
    invoke-direct {p0, p1, p2, p3}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;-><init>(Lcom/serenegiant/glutils/AbstractRendererHolder;II)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/glutils/AbstractRendererHolder;IIILcom/serenegiant/glutils/EGLBase$IContext;I)V
    .locals 0

    .line 1217
    invoke-direct/range {p0 .. p6}, Lcom/serenegiant/glutils/AbstractRendererHolder$BaseRendererTask;-><init>(Lcom/serenegiant/glutils/AbstractRendererHolder;IIILcom/serenegiant/glutils/EGLBase$IContext;I)V

    return-void
.end method


# virtual methods
.method protected internalOnStart()V
    .locals 2

    .line 1222
    new-instance v0, Lcom/serenegiant/glutils/GLDrawer2D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/serenegiant/glutils/GLDrawer2D;-><init>(Z)V

    iput-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    return-void
.end method

.method protected internalOnStop()V
    .locals 1

    .line 1227
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    if-eqz v0, :cond_0

    .line 1228
    invoke-virtual {v0}, Lcom/serenegiant/glutils/GLDrawer2D;->release()V

    const/4 v0, 0x0

    .line 1229
    iput-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    :cond_0
    return-void
.end method

.method protected onDrawClient(Lcom/serenegiant/glutils/RendererSurfaceRec;I[F)V
    .locals 1

    .line 1241
    iget-object v0, p0, Lcom/serenegiant/glutils/AbstractRendererHolder$RendererTask;->mDrawer:Lcom/serenegiant/glutils/GLDrawer2D;

    invoke-virtual {p1, v0, p2, p3}, Lcom/serenegiant/glutils/RendererSurfaceRec;->draw(Lcom/serenegiant/glutils/GLDrawer2D;I[F)V

    return-void
.end method

.method protected preprocess()V
    .locals 0

    return-void
.end method
