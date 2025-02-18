.class public Lcom/baidu/platform/comapi/map/MapRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/map/MapRenderer$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private e:J

.field private f:Lcom/baidu/platform/comapi/map/MapRenderer$a;

.field private final g:Lcom/baidu/platform/comapi/map/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/platform/comapi/map/MapRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/map/MapRenderer;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/platform/comapi/map/j;Lcom/baidu/platform/comapi/map/MapRenderer$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->f:Lcom/baidu/platform/comapi/map/MapRenderer$a;

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->g:Lcom/baidu/platform/comapi/map/j;

    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    const/16 p1, 0x4100

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    const p1, 0x3f59999a    # 0.85f

    const v0, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x0

    invoke-static {p1, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    return-void
.end method

.method private a()Z
    .locals 5

    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static native nativeInit(J)V
.end method

.method public static native nativeRender(J)I
.end method

.method public static native nativeResize(JII)V
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->e:J

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapRenderer;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/MapRenderer;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->c:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->e:J

    iget v0, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->a:I

    iget v4, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->b:I

    invoke-static {v2, v3, v0, v4}, Lcom/baidu/platform/comapi/map/MapRenderer;->nativeResize(JII)V

    iget v0, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->c:I

    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->f:Lcom/baidu/platform/comapi/map/MapRenderer$a;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapRenderer$a;->e()V

    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->e:J

    invoke-static {v2, v3}, Lcom/baidu/platform/comapi/map/MapRenderer;->nativeRender(J)I

    move-result v0

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->g:Lcom/baidu/platform/comapi/map/j;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/j;->a()Lcom/baidu/platform/comapi/map/e;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/platform/comapi/map/l;

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->g:Lcom/baidu/platform/comapi/map/j;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/j;->a()Lcom/baidu/platform/comapi/map/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/e;->H()Lcom/baidu/platform/comapi/map/E;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/baidu/platform/comapi/map/l;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/baidu/platform/comapi/map/E;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->g:Lcom/baidu/platform/comapi/map/j;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/j;->requestRender()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/j;->a()Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/e;->c()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/j;->getRenderMode()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/j;->setRenderMode(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/j;->getRenderMode()I

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-virtual {p1, v1}, Lcom/baidu/platform/comapi/map/j;->setRenderMode(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4

    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->e:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-static {v0, v1, p2, p3}, Lcom/baidu/platform/comapi/map/MapRenderer;->nativeResize(JII)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    iget-wide p1, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->e:J

    invoke-static {p1, p2}, Lcom/baidu/platform/comapi/map/MapRenderer;->nativeInit(J)V

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapRenderer;->a()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapRenderer;->f:Lcom/baidu/platform/comapi/map/MapRenderer$a;

    invoke-interface {p1}, Lcom/baidu/platform/comapi/map/MapRenderer$a;->e()V

    return-void
.end method
