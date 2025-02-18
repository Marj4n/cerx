.class public Lcom/baidu/platform/comapi/map/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/platform/comjni/map/basemap/b;


# static fields
.field private static N:I

.field private static O:I

.field private static ai:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;",
            ">;"
        }
    .end annotation
.end field

.field static k:J

.field private static final o:Ljava/lang/String;


# instance fields
.field private A:Landroid/content/Context;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/d;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/baidu/platform/comapi/map/A;

.field private D:Lcom/baidu/platform/comapi/map/g;

.field private E:Lcom/baidu/platform/comapi/map/o;

.field private F:Lcom/baidu/platform/comapi/map/H;

.field private G:Lcom/baidu/platform/comapi/map/K;

.field private H:Lcom/baidu/platform/comapi/map/s;

.field private I:Lcom/baidu/platform/comapi/map/n;

.field private J:Lcom/baidu/platform/comapi/map/p;

.field private K:Lcom/baidu/platform/comapi/map/a;

.field private L:Lcom/baidu/platform/comapi/map/q;

.field private M:Lcom/baidu/platform/comapi/map/I;

.field private P:I

.field private Q:I

.field private R:I

.field private S:Lcom/baidu/platform/comapi/map/j$a;

.field private T:Landroid/view/VelocityTracker;

.field private U:J

.field private V:J

.field private W:J

.field private X:J

.field private Y:I

.field private Z:F

.field public a:F

.field private aa:F

.field private ab:Z

.field private ac:J

.field private ad:J

.field private ae:Lcom/baidu/platform/comapi/map/f;

.field private af:Ljava/lang/String;

.field private ag:Lcom/baidu/platform/comapi/map/b;

.field private ah:Lcom/baidu/platform/comapi/map/c;

.field public b:F

.field public c:F

.field d:Z

.field e:Z

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/l;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/baidu/platform/comjni/map/basemap/a;

.field h:J

.field i:Z

.field public j:I

.field l:Z

.field m:Z

.field n:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Lcom/baidu/platform/comapi/map/M;

.field private z:Lcom/baidu/platform/comapi/map/L;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/baidu/platform/comapi/map/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/map/e;->o:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/platform/comapi/map/e;->k:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41b00000    # 22.0f

    iput v0, p0, Lcom/baidu/platform/comapi/map/e;->a:F

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/baidu/platform/comapi/map/e;->b:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/e;->c:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->r:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/e;->s:Z

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/e;->t:Z

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/e;->u:Z

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->v:Z

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->d:Z

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->e:Z

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->w:Z

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/e;->x:Z

    new-instance v0, Lcom/baidu/platform/comapi/map/j$a;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/j$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/e;->A:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/e;->af:Ljava/lang/String;

    return-void
.end method

.method private N()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->t:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->p:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->u:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/baidu/platform/comapi/map/e;->c:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/e;->a:F

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/baidu/platform/comapi/map/e;->a:F

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iput v1, p0, Lcom/baidu/platform/comapi/map/e;->a:F

    :cond_2
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/e;->D()Lcom/baidu/platform/comapi/map/E;

    move-result-object v0

    iget v0, v0, Lcom/baidu/platform/comapi/map/E;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/e;->D()Lcom/baidu/platform/comapi/map/E;

    move-result-object v0

    iput v1, v0, Lcom/baidu/platform/comapi/map/E;->a:F

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/e;->a(Lcom/baidu/platform/comapi/map/E;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/app/Activity;

    return-object p1

    :cond_1
    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/e;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private e(Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->e(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method private f(Landroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->d(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/e;->c(Z)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->y:Lcom/baidu/platform/comapi/map/M;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/M;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->b(J)V

    :cond_2
    return p1
.end method

.method private g(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "param"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "layer_addr"

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/baidu/platform/comapi/map/h;->d:Lcom/baidu/platform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/h;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/baidu/platform/comapi/map/h;->f:Lcom/baidu/platform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/h;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/baidu/platform/comapi/map/h;->b:Lcom/baidu/platform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/h;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/baidu/platform/comapi/map/h;->d:Lcom/baidu/platform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/h;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->E:Lcom/baidu/platform/comapi/map/o;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/o;->a:J

    :goto_1
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_4

    :cond_3
    sget-object v1, Lcom/baidu/platform/comapi/map/h;->f:Lcom/baidu/platform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/h;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->I:Lcom/baidu/platform/comapi/map/n;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/n;->a:J

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/baidu/platform/comapi/map/h;->b:Lcom/baidu/platform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/h;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    :goto_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->H:Lcom/baidu/platform/comapi/map/s;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/s;->a:J

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->G:Lcom/baidu/platform/comapi/map/K;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/K;->a:J

    goto :goto_1

    :goto_4
    return-void
.end method

.method public static j(Z)V
    .locals 5

    invoke-static {}, Lcom/baidu/platform/comjni/map/basemap/a;->d()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/map/e;->ai:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/platform/comapi/map/e;->ai:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v0, v0, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->a:J

    invoke-static {v0, v1, p0}, Lcom/baidu/platform/comjni/map/basemap/a;->b(JZ)V

    sget-object p0, Lcom/baidu/platform/comapi/map/e;->ai:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, v0, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->a:J

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ClearLayer(JJ)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0}, Lcom/baidu/platform/comjni/map/basemap/a;->b(JZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method A()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->m:Z

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->l:Z

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/l;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/e;->D()Lcom/baidu/platform/comapi/map/E;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/platform/comapi/map/l;->c(Lcom/baidu/platform/comapi/map/E;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public B()Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->F:Lcom/baidu/platform/comapi/map/H;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/H;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public C()Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->ah:Lcom/baidu/platform/comapi/map/c;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/c;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public D()Lcom/baidu/platform/comapi/map/E;
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->j()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/baidu/platform/comapi/map/E;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/map/E;-><init>()V

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/map/E;->a(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public E()Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 10

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->k()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    const-string v2, "maxCoorx"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "minCoorx"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "maxCoory"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "minCoory"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v5, Lcom/baidu/mapapi/model/inner/GeoPoint;

    int-to-double v6, v0

    int-to-double v8, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    invoke-static {v5}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    move-result-object v0

    new-instance v2, Lcom/baidu/mapapi/model/inner/GeoPoint;

    int-to-double v4, v4

    int-to-double v6, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    return-object v0
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lcom/baidu/platform/comapi/map/e;->P:I

    return v0
.end method

.method public G()I
    .locals 1

    iget v0, p0, Lcom/baidu/platform/comapi/map/e;->Q:I

    return v0
.end method

.method public H()Lcom/baidu/platform/comapi/map/E;
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->l()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/baidu/platform/comapi/map/E;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/map/E;-><init>()V

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/map/E;->a(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public I()D
    .locals 2

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/e;->D()Lcom/baidu/platform/comapi/map/E;

    move-result-object v0

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/E;->m:D

    return-wide v0
.end method

.method J()V
    .locals 3

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->m:Z

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/l;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/e;->D()Lcom/baidu/platform/comapi/map/E;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/platform/comapi/map/l;->a(Lcom/baidu/platform/comapi/map/E;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method K()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->l:Z

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/l;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/e;->D()Lcom/baidu/platform/comapi/map/E;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/platform/comapi/map/l;->c(Lcom/baidu/platform/comapi/map/E;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method L()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platform/comapi/map/e;->R:I

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/j$a;->e:Z

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/j$a;->h:D

    return-void
.end method

.method M()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->b()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    :cond_0
    return-void
.end method

.method public a(IIIIII)F
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->i:Z

    if-nez v0, :cond_0

    const/high16 p1, 0x41400000    # 12.0f

    return p1

    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "left"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "right"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bottom"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "top"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    const-string p2, "hasHW"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "width"

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "height"

    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comjni/map/basemap/a;->c(Landroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method a(III)I
    .locals 2

    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/e;->h:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/a;->a(JIII)I

    move-result p1

    return p1
.end method

.method public a(Landroid/os/Bundle;JILandroid/os/Bundle;)I
    .locals 6

    iget-object p4, p0, Lcom/baidu/platform/comapi/map/e;->D:Lcom/baidu/platform/comapi/map/g;

    iget-wide v0, p4, Lcom/baidu/platform/comapi/map/g;->a:J

    const-string p4, "jsondata"

    const-string v2, "param"

    cmp-long v3, p2, v0

    if-nez v3, :cond_0

    iget-object p2, p0, Lcom/baidu/platform/comapi/map/e;->D:Lcom/baidu/platform/comapi/map/g;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/platform/comapi/map/e;->D:Lcom/baidu/platform/comapi/map/g;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/g;->b()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->D:Lcom/baidu/platform/comapi/map/g;

    iget p1, p1, Lcom/baidu/platform/comapi/map/g;->g:I

    return p1

    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->C:Lcom/baidu/platform/comapi/map/A;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/A;->a:J

    cmp-long v3, p2, v0

    if-nez v3, :cond_1

    iget-object p2, p0, Lcom/baidu/platform/comapi/map/e;->C:Lcom/baidu/platform/comapi/map/A;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/A;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/platform/comapi/map/e;->C:Lcom/baidu/platform/comapi/map/A;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/A;->b()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->C:Lcom/baidu/platform/comapi/map/A;

    iget p1, p1, Lcom/baidu/platform/comapi/map/A;->g:I

    return p1

    :cond_1
    iget-object p4, p0, Lcom/baidu/platform/comapi/map/e;->J:Lcom/baidu/platform/comapi/map/p;

    iget-wide v0, p4, Lcom/baidu/platform/comapi/map/p;->a:J

    const-string p4, "zoom"

    const-string v3, "y"

    const-string v4, "x"

    cmp-long v5, p2, v0

    if-nez v5, :cond_2

    invoke-virtual {p5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p5, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p4

    iget-object p5, p0, Lcom/baidu/platform/comapi/map/e;->L:Lcom/baidu/platform/comapi/map/q;

    invoke-interface {p5, p2, p3, p4}, Lcom/baidu/platform/comapi/map/q;->a(III)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->J:Lcom/baidu/platform/comapi/map/p;

    iget p1, p1, Lcom/baidu/platform/comapi/map/p;->g:I

    return p1

    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->y:Lcom/baidu/platform/comapi/map/M;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/M;->a:J

    cmp-long v5, p2, v0

    if-nez v5, :cond_3

    invoke-virtual {p5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p5, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p4

    iget-object p5, p0, Lcom/baidu/platform/comapi/map/e;->z:Lcom/baidu/platform/comapi/map/L;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->A:Landroid/content/Context;

    invoke-interface {p5, p2, p3, p4, v0}, Lcom/baidu/platform/comapi/map/L;->a(IIILandroid/content/Context;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->y:Lcom/baidu/platform/comapi/map/M;

    iget p1, p1, Lcom/baidu/platform/comapi/map/M;->g:I

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/baidu/mapapi/model/inner/GeoPoint;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->M:Lcom/baidu/platform/comapi/map/I;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/I;->a(Lcom/baidu/mapapi/model/inner/GeoPoint;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method a()V
    .locals 22

    move-object/from16 v0, p0

    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-direct {v1}, Lcom/baidu/platform/comjni/map/basemap/a;-><init>()V

    iput-object v1, v0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a()Z

    iget-object v1, v0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v1}, Lcom/baidu/platform/comjni/map/basemap/a;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/e;->h:J

    const-string v3, "com.baidu.platform.comapi.wnplatform.walkmap.WNaviBaiduMap"

    const-string v4, "setId"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/baidu/platform/comapi/map/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v1

    const/16 v2, 0xb4

    if-ge v1, v2, :cond_0

    const/16 v1, 0x12

    :goto_0
    iput v1, v0, Lcom/baidu/platform/comapi/map/e;->j:I

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v1

    const/16 v3, 0xf0

    if-ge v1, v3, :cond_1

    const/16 v1, 0x19

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v1

    const/16 v3, 0x140

    if-ge v1, v3, :cond_2

    const/16 v1, 0x25

    goto :goto_0

    :cond_2
    const/16 v1, 0x32

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getAppSDCardPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getAppCachePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getAppSecondCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getMapTmpStgMax()I

    move-result v18

    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getDomTmpStgMax()I

    move-result v19

    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getItsTmpStgMax()I

    move-result v20

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v6

    if-lt v6, v2, :cond_3

    const-string v2, "/h/"

    goto :goto_2

    :cond_3
    const-string v2, "/l/"

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cfg"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/vmp"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/a/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/idrres/"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lcom/baidu/platform/comapi/map/e;->A:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/e;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v15

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v16

    iget-object v6, v0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v13, v0, Lcom/baidu/platform/comapi/map/e;->af:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v17

    const/16 v21, 0x0

    invoke-virtual/range {v6 .. v21}, Lcom/baidu/platform/comjni/map/basemap/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIII)Z

    iget-object v1, v0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v1}, Lcom/baidu/platform/comjni/map/basemap/a;->f()V

    return-void

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Please give the right context."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(FF)V
    .locals 0

    iput p1, p0, Lcom/baidu/platform/comapi/map/e;->a:F

    iput p1, p0, Lcom/baidu/platform/comapi/map/e;->c:F

    iput p2, p0, Lcom/baidu/platform/comapi/map/e;->b:F

    return-void
.end method

.method a(II)V
    .locals 0

    iput p1, p0, Lcom/baidu/platform/comapi/map/e;->P:I

    iput p2, p0, Lcom/baidu/platform/comapi/map/e;->Q:I

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 8

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "type"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "x"

    sget v5, Lcom/baidu/platform/comapi/map/e;->N:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "y"

    sget v5, Lcom/baidu/platform/comapi/map/e;->O:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "hidetime"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto/16 :goto_2

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/baidu/mapapi/model/ParcelItem;

    invoke-direct {v4}, Lcom/baidu/mapapi/model/ParcelItem;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v6, v6, v7

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const-string v7, "imgdata"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const-string v7, "imgindex"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const-string v7, "imgH"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    const-string v6, "imgW"

    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "hasIcon"

    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/model/ParcelItem;->setBundle(Landroid/os/Bundle;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/baidu/mapapi/model/ParcelItem;

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/ParcelItem;

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "icondata"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_3
    move-object p1, v1

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/baidu/platform/comapi/map/e;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->D:Lcom/baidu/platform/comapi/map/g;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/g;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(J)V

    return-void
.end method

.method a(Landroid/os/Handler;)V
    .locals 2

    const/16 v0, 0xfa0

    invoke-static {v0, p1}, Lcom/baidu/platform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x27

    invoke-static {v0, p1}, Lcom/baidu/platform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x29

    invoke-static {v0, p1}, Lcom/baidu/platform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x31

    invoke-static {v0, p1}, Lcom/baidu/platform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    const v0, 0xff09

    invoke-static {v0, p1}, Lcom/baidu/platform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x32

    invoke-static {v0, p1}, Lcom/baidu/platform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x3e7

    invoke-static {v0, p1}, Lcom/baidu/platform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/e;->h:J

    invoke-static {v0, v1, p0}, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->addLayerDataInterface(JLcom/baidu/platform/comjni/map/basemap/b;)V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/model/LatLngBounds;)V
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-object p1, p1, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object p1

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v3

    double-to-int p1, v3

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    double-to-int v0, v3

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "maxCoorx"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "minCoory"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "minCoorx"

    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "maxCoory"

    invoke-virtual {v3, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comjni/map/basemap/a;->b(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method a(Lcom/baidu/platform/comapi/map/C;)V
    .locals 7

    new-instance v0, Lcom/baidu/platform/comapi/map/E;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/E;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Lcom/baidu/platform/comapi/map/C;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/map/C;-><init>()V

    :cond_0
    iget-object v0, p1, Lcom/baidu/platform/comapi/map/C;->a:Lcom/baidu/platform/comapi/map/E;

    iget-boolean v1, p1, Lcom/baidu/platform/comapi/map/C;->f:Z

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/e;->v:Z

    iget-boolean v1, p1, Lcom/baidu/platform/comapi/map/C;->d:Z

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/e;->w:Z

    iget-boolean v1, p1, Lcom/baidu/platform/comapi/map/C;->e:Z

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/e;->d:Z

    iget-boolean v1, p1, Lcom/baidu/platform/comapi/map/C;->g:Z

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/e;->e:Z

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/e;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/basemap/a;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    sget-object v1, Lcom/baidu/platform/comapi/map/B;->a:Lcom/baidu/platform/comapi/map/B;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/B;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(I)I

    iget-boolean v0, p1, Lcom/baidu/platform/comapi/map/C;->b:Z

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->r:Z

    iget-boolean v0, p1, Lcom/baidu/platform/comapi/map/C;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/e;->D:Lcom/baidu/platform/comapi/map/g;

    iget-wide v3, v3, Lcom/baidu/platform/comapi/map/g;->a:J

    invoke-virtual {v0, v3, v4, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(JZ)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensity()F

    move-result v0

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v0, v0, v3

    float-to-int v0, v0

    sput v0, Lcom/baidu/platform/comapi/map/e;->N:I

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensity()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sput v0, Lcom/baidu/platform/comapi/map/e;->O:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "x"

    sget v6, Lcom/baidu/platform/comapi/map/e;->N:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "y"

    sget v6, Lcom/baidu/platform/comapi/map/e;->O:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "hidetime"

    const/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v4, "data"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/e;->D:Lcom/baidu/platform/comapi/map/g;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/platform/comapi/map/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/e;->D:Lcom/baidu/platform/comapi/map/g;

    iget-wide v3, v3, Lcom/baidu/platform/comapi/map/g;->a:J

    invoke-virtual {v0, v3, v4, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(JZ)V

    :goto_1
    iget p1, p1, Lcom/baidu/platform/comapi/map/C;->c:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/baidu/platform/comapi/map/e;->a(Z)V

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->ae:Lcom/baidu/platform/comapi/map/f;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/f;->a:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(JZ)V

    :cond_3
    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/E;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/e;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "animation"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "animatime"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/E;I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lcom/baidu/platform/comapi/map/E;->a(Lcom/baidu/platform/comapi/map/e;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "animation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "animatime"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/e;->z()V

    iget-object p2, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {p2, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/L;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/e;->z:Lcom/baidu/platform/comapi/map/L;

    return-void
.end method

.method a(Lcom/baidu/platform/comapi/map/d;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Lcom/baidu/platform/comapi/map/d;->c:I

    iget v2, p1, Lcom/baidu/platform/comapi/map/d;->d:I

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/baidu/platform/comapi/map/d;->a:J

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/l;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/q;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/e;->L:Lcom/baidu/platform/comapi/map/q;

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->C:Lcom/baidu/platform/comapi/map/A;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/A;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->C:Lcom/baidu/platform/comapi/map/A;

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/map/A;->a(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object p2, p0, Lcom/baidu/platform/comapi/map/e;->C:Lcom/baidu/platform/comapi/map/A;

    iget-wide v0, p2, Lcom/baidu/platform/comapi/map/A;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(J)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Bundle;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-direct {p0, v3}, Lcom/baidu/platform/comapi/map/e;->g(Landroid/os/Bundle;)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {p1, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->a([Landroid/os/Bundle;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->ae:Lcom/baidu/platform/comapi/map/f;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/f;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->ae:Lcom/baidu/platform/comapi/map/f;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/f;->a:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/a;->a(JZ)V

    :cond_1
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/e;->q:Z

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/e;->N()V

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->q:Z

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comjni/map/basemap/a;->a(Z)V

    return-void
.end method

.method public a(J)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/d;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/d;->a:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/graphics/Point;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_2

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ltz v1, :cond_2

    iget v0, p1, Landroid/graphics/Point;->x:I

    sput v0, Lcom/baidu/platform/comapi/map/e;->N:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sput p1, Lcom/baidu/platform/comapi/map/e;->O:I

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "x"

    sget v3, Lcom/baidu/platform/comapi/map/e;->N:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "y"

    sget v3, Lcom/baidu/platform/comapi/map/e;->O:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "hidetime"

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->D:Lcom/baidu/platform/comapi/map/g;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/g;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->D:Lcom/baidu/platform/comapi/map/g;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/g;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(J)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 6

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/baidu/platform/comapi/map/M;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/M;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/e;->y:Lcom/baidu/platform/comapi/map/M;

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget v0, v0, Lcom/baidu/platform/comapi/map/M;->c:I

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/e;->y:Lcom/baidu/platform/comapi/map/M;

    iget v3, v3, Lcom/baidu/platform/comapi/map/M;->d:I

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/e;->y:Lcom/baidu/platform/comapi/map/M;

    iget-object v4, v4, Lcom/baidu/platform/comapi/map/M;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/a;->a(IILjava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->y:Lcom/baidu/platform/comapi/map/M;

    iput-wide v2, v0, Lcom/baidu/platform/comapi/map/M;->a:J

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->B:Ljava/util/List;

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/e;->y:Lcom/baidu/platform/comapi/map/M;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "sdktileaddr"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/e;->e(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/e;->f(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method a(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v6, v7}, Lcom/baidu/platform/comapi/map/e;->c(II)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v6, v7}, Lcom/baidu/platform/comapi/map/e;->c(II)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    if-ne v2, v4, :cond_21

    iget v2, v0, Lcom/baidu/platform/comapi/map/e;->Q:I

    int-to-float v2, v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v2, v6

    iget v6, v0, Lcom/baidu/platform/comapi/map/e;->Q:I

    int-to-float v6, v6

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_5

    const/4 v10, 0x6

    if-eq v9, v10, :cond_4

    const/16 v10, 0x105

    if-eq v9, v10, :cond_3

    const/16 v10, 0x106

    if-eq v9, v10, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/baidu/platform/comapi/map/e;->W:J

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/baidu/platform/comapi/map/e;->U:J

    goto :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/baidu/platform/comapi/map/e;->X:J

    :goto_0
    iget v9, v0, Lcom/baidu/platform/comapi/map/e;->Y:I

    add-int/2addr v9, v5

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/baidu/platform/comapi/map/e;->V:J

    :goto_1
    iget v9, v0, Lcom/baidu/platform/comapi/map/e;->Y:I

    sub-int/2addr v9, v5

    :goto_2
    iput v9, v0, Lcom/baidu/platform/comapi/map/e;->Y:I

    :goto_3
    iget-object v9, v0, Lcom/baidu/platform/comapi/map/e;->T:Landroid/view/VelocityTracker;

    if-nez v9, :cond_6

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, v0, Lcom/baidu/platform/comapi/map/e;->T:Landroid/view/VelocityTracker;

    :cond_6
    iget-object v9, v0, Lcom/baidu/platform/comapi/map/e;->T:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v9

    iget-object v10, v0, Lcom/baidu/platform/comapi/map/e;->T:Landroid/view/VelocityTracker;

    const/16 v11, 0x3e8

    int-to-float v9, v9

    invoke-virtual {v10, v11, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v9, v0, Lcom/baidu/platform/comapi/map/e;->T:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v9

    iget-object v10, v0, Lcom/baidu/platform/comapi/map/e;->T:Landroid/view/VelocityTracker;

    invoke-virtual {v10, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v10

    iget-object v11, v0, Lcom/baidu/platform/comapi/map/e;->T:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v11

    iget-object v12, v0, Lcom/baidu/platform/comapi/map/e;->T:Landroid/view/VelocityTracker;

    invoke-virtual {v12, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v12

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    int-to-float v1, v1

    cmpl-float v9, v9, v1

    if-gtz v9, :cond_a

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v1

    if-gtz v9, :cond_a

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v1

    if-gtz v9, :cond_a

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v1, v9, v1

    if-lez v1, :cond_7

    goto :goto_5

    :cond_7
    iget v1, v0, Lcom/baidu/platform/comapi/map/e;->R:I

    if-nez v1, :cond_1e

    iget v1, v0, Lcom/baidu/platform/comapi/map/e;->Y:I

    if-nez v1, :cond_1e

    iget-wide v9, v0, Lcom/baidu/platform/comapi/map/e;->W:J

    iget-wide v11, v0, Lcom/baidu/platform/comapi/map/e;->X:J

    cmp-long v1, v9, v11

    if-lez v1, :cond_8

    goto :goto_4

    :cond_8
    move-wide v9, v11

    :goto_4
    iput-wide v9, v0, Lcom/baidu/platform/comapi/map/e;->W:J

    iget-wide v9, v0, Lcom/baidu/platform/comapi/map/e;->U:J

    iget-wide v11, v0, Lcom/baidu/platform/comapi/map/e;->V:J

    cmp-long v1, v9, v11

    if-gez v1, :cond_9

    move-wide v9, v11

    :cond_9
    iput-wide v9, v0, Lcom/baidu/platform/comapi/map/e;->U:J

    iget-wide v11, v0, Lcom/baidu/platform/comapi/map/e;->W:J

    sub-long/2addr v11, v9

    const-wide/16 v9, 0xc8

    cmp-long v1, v11, v9

    if-gez v1, :cond_1e

    iget-boolean v1, v0, Lcom/baidu/platform/comapi/map/e;->e:Z

    if-eqz v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/e;->D()Lcom/baidu/platform/comapi/map/E;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget v3, v1, Lcom/baidu/platform/comapi/map/E;->a:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v3, v9

    iput v3, v1, Lcom/baidu/platform/comapi/map/E;->a:F

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v3}, Lcom/baidu/platform/comapi/map/e;->a(Lcom/baidu/platform/comapi/map/E;I)V

    goto/16 :goto_c

    :cond_a
    :goto_5
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget-boolean v1, v1, Lcom/baidu/platform/comapi/map/j$a;->e:Z

    if-ne v1, v5, :cond_1e

    iget v1, v0, Lcom/baidu/platform/comapi/map/e;->R:I

    const-wide v15, 0x4066800000000000L    # 180.0

    const-wide v17, 0x40c3880000000000L    # 10000.0

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    const/4 v12, 0x0

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v1, v1, Lcom/baidu/platform/comapi/map/j$a;->c:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v12

    if-lez v1, :cond_b

    iget-object v1, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v1, v1, Lcom/baidu/platform/comapi/map/j$a;->d:F

    sub-float/2addr v1, v6

    cmpl-float v1, v1, v12

    if-gtz v1, :cond_c

    :cond_b
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v1, v1, Lcom/baidu/platform/comapi/map/j$a;->c:F

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v12

    if-gez v1, :cond_10

    iget-object v1, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v1, v1, Lcom/baidu/platform/comapi/map/j$a;->d:F

    sub-float/2addr v1, v6

    cmpg-float v1, v1, v12

    if-gez v1, :cond_10

    :cond_c
    sub-float v1, v6, v2

    move/from16 v21, v6

    float-to-double v5, v1

    sub-float v3, v8, v7

    float-to-double v12, v3

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    iget-object v12, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v12, v12, Lcom/baidu/platform/comapi/map/j$a;->d:F

    iget-object v13, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v13, v13, Lcom/baidu/platform/comapi/map/j$a;->c:F

    sub-float/2addr v12, v13

    float-to-double v12, v12

    iget-object v14, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v14, v14, Lcom/baidu/platform/comapi/map/j$a;->b:F

    iget-object v4, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v4, v4, Lcom/baidu/platform/comapi/map/j$a;->a:F

    sub-float/2addr v14, v4

    float-to-double v9, v14

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    sub-double/2addr v5, v9

    mul-float v3, v3, v3

    mul-float v1, v1, v1

    add-float/2addr v3, v1

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    iget-object v1, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget-wide v11, v1, Lcom/baidu/platform/comapi/map/j$a;->h:D

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    mul-double v11, v11, v17

    double-to-int v1, v11

    mul-double v5, v5, v15

    const-wide v11, 0x400921ff2e48e8a7L    # 3.1416

    div-double/2addr v5, v11

    double-to-int v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v11, v9, v5

    if-lez v11, :cond_d

    const/16 v5, 0xbb8

    if-gt v1, v5, :cond_e

    const/16 v5, -0xbb8

    if-lt v1, v5, :cond_e

    :cond_d
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0xa

    if-lt v1, v3, :cond_f

    :cond_e
    const/4 v1, 0x2

    iput v1, v0, Lcom/baidu/platform/comapi/map/e;->R:I

    const/4 v3, 0x1

    goto :goto_6

    :cond_f
    const/4 v1, 0x2

    const/4 v3, 0x1

    iput v3, v0, Lcom/baidu/platform/comapi/map/e;->R:I

    goto :goto_6

    :cond_10
    move/from16 v21, v6

    const/4 v1, 0x2

    const/4 v3, 0x1

    iput v1, v0, Lcom/baidu/platform/comapi/map/e;->R:I

    :goto_6
    iget v1, v0, Lcom/baidu/platform/comapi/map/e;->R:I

    if-nez v1, :cond_12

    return v3

    :cond_11
    move/from16 v21, v6

    const/4 v3, 0x1

    :cond_12
    iget v1, v0, Lcom/baidu/platform/comapi/map/e;->R:I

    if-ne v1, v3, :cond_14

    iget-boolean v1, v0, Lcom/baidu/platform/comapi/map/e;->v:Z

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v1, v1, Lcom/baidu/platform/comapi/map/j$a;->c:F

    sub-float/2addr v1, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_13

    iget-object v1, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v1, v1, Lcom/baidu/platform/comapi/map/j$a;->d:F

    sub-float v1, v1, v21

    cmpl-float v1, v1, v3

    if-lez v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/e;->J()V

    const/16 v1, 0x53

    :goto_7
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v3}, Lcom/baidu/platform/comapi/map/e;->a(III)I

    goto :goto_8

    :cond_13
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v1, v1, Lcom/baidu/platform/comapi/map/j$a;->c:F

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_15

    iget-object v1, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v1, v1, Lcom/baidu/platform/comapi/map/j$a;->d:F

    sub-float v1, v1, v21

    cmpg-float v1, v1, v3

    if-gez v1, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/e;->J()V

    const/16 v1, 0x57

    goto :goto_7

    :cond_14
    iget v1, v0, Lcom/baidu/platform/comapi/map/e;->R:I

    const/4 v3, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_16

    if-eq v1, v3, :cond_16

    if-ne v1, v5, :cond_15

    goto :goto_9

    :cond_15
    :goto_8
    move-object v5, v0

    goto/16 :goto_d

    :cond_16
    :goto_9
    sub-float v6, v21, v2

    float-to-double v9, v6

    sub-float v1, v8, v7

    float-to-double v11, v1

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    iget-object v11, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v11, v11, Lcom/baidu/platform/comapi/map/j$a;->d:F

    iget-object v12, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v12, v12, Lcom/baidu/platform/comapi/map/j$a;->c:F

    sub-float/2addr v11, v12

    float-to-double v11, v11

    iget-object v13, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v13, v13, Lcom/baidu/platform/comapi/map/j$a;->b:F

    iget-object v14, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v14, v14, Lcom/baidu/platform/comapi/map/j$a;->a:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    sub-double/2addr v9, v11

    mul-float v1, v1, v1

    mul-float v6, v6, v6

    add-float/2addr v1, v6

    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    iget-object v1, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget-wide v13, v1, Lcom/baidu/platform/comapi/map/j$a;->h:D

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->log(D)D

    move-result-wide v19

    div-double v13, v13, v19

    mul-double v13, v13, v17

    double-to-int v1, v13

    iget-object v6, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v6, v6, Lcom/baidu/platform/comapi/map/j$a;->g:F

    iget-object v13, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v13, v13, Lcom/baidu/platform/comapi/map/j$a;->c:F

    sub-float/2addr v6, v13

    float-to-double v13, v6

    iget-object v6, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v6, v6, Lcom/baidu/platform/comapi/map/j$a;->f:F

    iget-object v4, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v4, v4, Lcom/baidu/platform/comapi/map/j$a;->a:F

    sub-float/2addr v6, v4

    float-to-double v3, v6

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    iget-object v6, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v6, v6, Lcom/baidu/platform/comapi/map/j$a;->f:F

    iget-object v13, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v13, v13, Lcom/baidu/platform/comapi/map/j$a;->a:F

    sub-float/2addr v6, v13

    iget-object v13, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v13, v13, Lcom/baidu/platform/comapi/map/j$a;->f:F

    iget-object v14, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v14, v14, Lcom/baidu/platform/comapi/map/j$a;->a:F

    sub-float/2addr v13, v14

    mul-float v6, v6, v13

    iget-object v13, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v13, v13, Lcom/baidu/platform/comapi/map/j$a;->g:F

    iget-object v14, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v14, v14, Lcom/baidu/platform/comapi/map/j$a;->c:F

    sub-float/2addr v13, v14

    iget-object v14, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v14, v14, Lcom/baidu/platform/comapi/map/j$a;->g:F

    iget-object v5, v0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v5, v5, Lcom/baidu/platform/comapi/map/j$a;->c:F

    sub-float/2addr v14, v5

    mul-float v13, v13, v14

    add-float/2addr v6, v13

    float-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    add-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v13, v13, v5

    mul-double v13, v13, v11

    move/from16 v19, v1

    float-to-double v0, v7

    add-double/2addr v13, v0

    double-to-float v0, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v5, v5, v3

    mul-double v5, v5, v11

    float-to-double v3, v2

    add-double/2addr v5, v3

    double-to-float v1, v5

    mul-double v9, v9, v15

    const-wide v3, 0x400921ff2e48e8a7L    # 3.1416

    div-double/2addr v9, v3

    double-to-int v3, v9

    const/16 v4, 0x2001

    const-wide/16 v5, 0x0

    cmpl-double v9, v11, v5

    move-object/from16 v5, p0

    if-lez v9, :cond_1b

    iget v6, v5, Lcom/baidu/platform/comapi/map/e;->R:I

    const/4 v9, 0x3

    if-eq v9, v6, :cond_17

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v10, 0x7d0

    if-le v6, v10, :cond_1b

    iget v6, v5, Lcom/baidu/platform/comapi/map/e;->R:I

    const/4 v10, 0x2

    if-ne v10, v6, :cond_1b

    :cond_17
    iput v9, v5, Lcom/baidu/platform/comapi/map/e;->R:I

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/e;->D()Lcom/baidu/platform/comapi/map/E;

    move-result-object v3

    iget v3, v3, Lcom/baidu/platform/comapi/map/E;->a:F

    iget-boolean v6, v5, Lcom/baidu/platform/comapi/map/e;->e:Z

    if-eqz v6, :cond_1d

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v11, v9

    if-lez v6, :cond_19

    iget v6, v5, Lcom/baidu/platform/comapi/map/e;->a:F

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_18

    const/4 v6, 0x0

    return v6

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/e;->J()V

    move/from16 v9, v19

    const/4 v10, 0x3

    goto :goto_a

    :cond_19
    move/from16 v9, v19

    const/4 v6, 0x0

    const/4 v10, 0x3

    iget v11, v5, Lcom/baidu/platform/comapi/map/e;->b:F

    cmpg-float v3, v3, v11

    if-gtz v3, :cond_1a

    return v6

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/e;->J()V

    :goto_a
    invoke-virtual {v5, v4, v10, v9}, Lcom/baidu/platform/comapi/map/e;->a(III)I

    goto :goto_b

    :cond_1b
    if-eqz v3, :cond_1d

    iget v6, v5, Lcom/baidu/platform/comapi/map/e;->R:I

    const/4 v9, 0x4

    if-eq v9, v6, :cond_1c

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v10, 0xa

    if-le v6, v10, :cond_1d

    iget v6, v5, Lcom/baidu/platform/comapi/map/e;->R:I

    const/4 v10, 0x2

    if-ne v10, v6, :cond_1d

    :cond_1c
    iput v9, v5, Lcom/baidu/platform/comapi/map/e;->R:I

    iget-boolean v6, v5, Lcom/baidu/platform/comapi/map/e;->w:Z

    if-eqz v6, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/e;->J()V

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6, v3}, Lcom/baidu/platform/comapi/map/e;->a(III)I

    :cond_1d
    :goto_b
    iget-object v3, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iput v0, v3, Lcom/baidu/platform/comapi/map/j$a;->f:F

    iget-object v0, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iput v1, v0, Lcom/baidu/platform/comapi/map/j$a;->g:F

    goto :goto_d

    :cond_1e
    :goto_c
    move-object v5, v0

    move/from16 v21, v6

    :goto_d
    iget v0, v5, Lcom/baidu/platform/comapi/map/e;->R:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_1f

    iget-object v0, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iput v2, v0, Lcom/baidu/platform/comapi/map/j$a;->c:F

    iget-object v0, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    move/from16 v6, v21

    iput v6, v0, Lcom/baidu/platform/comapi/map/j$a;->d:F

    iget-object v0, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iput v7, v0, Lcom/baidu/platform/comapi/map/j$a;->a:F

    iget-object v0, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iput v8, v0, Lcom/baidu/platform/comapi/map/j$a;->b:F

    :cond_1f
    iget-object v0, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/j$a;->e:Z

    if-nez v0, :cond_20

    iget-object v0, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v1, v5, Lcom/baidu/platform/comapi/map/e;->P:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/baidu/platform/comapi/map/j$a;->f:F

    iget-object v0, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v1, v5, Lcom/baidu/platform/comapi/map/e;->Q:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lcom/baidu/platform/comapi/map/j$a;->g:F

    iget-object v0, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/platform/comapi/map/j$a;->e:Z

    iget-object v0, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/j$a;->h:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v2, v0

    if-nez v4, :cond_20

    iget-object v0, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v0, v0, Lcom/baidu/platform/comapi/map/j$a;->b:F

    iget-object v1, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v1, v1, Lcom/baidu/platform/comapi/map/j$a;->a:F

    sub-float/2addr v0, v1

    iget-object v1, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v1, v1, Lcom/baidu/platform/comapi/map/j$a;->b:F

    iget-object v2, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v2, v2, Lcom/baidu/platform/comapi/map/j$a;->a:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    iget-object v1, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v1, v1, Lcom/baidu/platform/comapi/map/j$a;->d:F

    iget-object v2, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v2, v2, Lcom/baidu/platform/comapi/map/j$a;->c:F

    sub-float/2addr v1, v2

    iget-object v2, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v2, v2, Lcom/baidu/platform/comapi/map/j$a;->d:F

    iget-object v3, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget v3, v3, Lcom/baidu/platform/comapi/map/j$a;->c:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-object v2, v5, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iput-wide v0, v2, Lcom/baidu/platform/comapi/map/j$a;->h:D

    :cond_20
    const/4 v0, 0x1

    return v0

    :cond_21
    move-object v5, v0

    const/4 v0, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_24

    if-eq v2, v0, :cond_23

    const/4 v3, 0x2

    if-eq v2, v3, :cond_22

    const/4 v2, 0x0

    return v2

    :cond_22
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/platform/comapi/map/e;->c(Landroid/view/MotionEvent;)Z

    goto :goto_e

    :cond_23
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/platform/comapi/map/e;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_24
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/platform/comapi/map/e;->b(Landroid/view/MotionEvent;)V

    :goto_e
    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(II)Lcom/baidu/mapapi/model/inner/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->M:Lcom/baidu/platform/comapi/map/I;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/map/I;->a(II)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object p1

    return-object p1
.end method

.method b()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/e;->B:Ljava/util/List;

    new-instance v0, Lcom/baidu/platform/comapi/map/f;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/f;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/e;->ae:Lcom/baidu/platform/comapi/map/f;

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/e;->a(Lcom/baidu/platform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/platform/comapi/map/b;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/e;->ag:Lcom/baidu/platform/comapi/map/b;

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/e;->a(Lcom/baidu/platform/comapi/map/d;)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->e(Z)V

    :cond_0
    new-instance v0, Lcom/baidu/platform/comapi/map/o;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/o;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/e;->E:Lcom/baidu/platform/comapi/map/o;

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/e;->a(Lcom/baidu/platform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/platform/comapi/map/p;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/p;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/e;->J:Lcom/baidu/platform/comapi/map/p;

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/e;->a(Lcom/baidu/platform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/platform/comapi/map/a;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/e;->K:Lcom/baidu/platform/comapi/map/a;

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/e;->a(Lcom/baidu/platform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/platform/comapi/map/r;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/r;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/e;->a(Lcom/baidu/platform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/platform/comapi/map/H;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/H;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/e;->F:Lcom/baidu/platform/comapi/map/H;

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/e;->a(Lcom/baidu/platform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/platform/comapi/map/c;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/c;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/e;->ah:Lcom/baidu/platform/comapi/map/c;

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/e;->a(Lcom/baidu/platform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/platform/comapi/map/n;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/n;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/e;->I:Lcom/baidu/platform/comapi/map/n;

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/e;->a(Lcom/baidu/platform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/platform/comapi/map/K;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/K;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/e;->G:Lcom/baidu/platform/comapi/map/K;

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/e;->a(Lcom/baidu/platform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/platform/comapi/map/g;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/g;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/e;->D:Lcom/baidu/platform/comapi/map/g;

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/e;->a(Lcom/baidu/platform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/platform/comapi/map/A;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/A;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/e;->C:Lcom/baidu/platform/comapi/map/A;

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/e;->a(Lcom/baidu/platform/comapi/map/d;)V

    new-instance v0, Lcom/baidu/platform/comapi/map/s;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/s;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/e;->H:Lcom/baidu/platform/comapi/map/s;

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/e;->a(Lcom/baidu/platform/comapi/map/d;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/e;->g(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->f(Landroid/os/Bundle;)V

    return-void
.end method

.method b(Landroid/os/Handler;)V
    .locals 2

    const/16 v0, 0xfa0

    invoke-static {v0, p1}, Lcom/baidu/platform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x29

    invoke-static {v0, p1}, Lcom/baidu/platform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x31

    invoke-static {v0, p1}, Lcom/baidu/platform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x27

    invoke-static {v0, p1}, Lcom/baidu/platform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    const v0, 0xff09

    invoke-static {v0, p1}, Lcom/baidu/platform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x32

    invoke-static {v0, p1}, Lcom/baidu/platform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    const/16 v0, 0x3e7

    invoke-static {v0, p1}, Lcom/baidu/platform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/e;->h:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->removeLayerDataInterface(J)V

    return-void
.end method

.method b(Landroid/view/MotionEvent;)V
    .locals 7

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/j$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/e;->ad:J

    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/e;->ac:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x190

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/baidu/platform/comapi/map/e;->Z:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42f00000    # 120.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/baidu/platform/comapi/map/e;->aa:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/e;->ad:J

    :cond_2
    :goto_0
    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/e;->ac:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/baidu/platform/comapi/map/e;->Z:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/baidu/platform/comapi/map/e;->aa:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    invoke-virtual {p0, v1, v2, p1}, Lcom/baidu/platform/comapi/map/e;->a(III)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/e;->ab:Z

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->D:Lcom/baidu/platform/comapi/map/g;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/g;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->D:Lcom/baidu/platform/comapi/map/g;

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/map/g;->a(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object p2, p0, Lcom/baidu/platform/comapi/map/e;->D:Lcom/baidu/platform/comapi/map/g;

    iget-wide v0, p2, Lcom/baidu/platform/comapi/map/g;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(J)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/e;->x:Z

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/e;->g(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->g(Landroid/os/Bundle;)V

    return-void
.end method

.method public c(Z)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->y:Lcom/baidu/platform/comapi/map/M;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/M;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(JZ)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->x:Z

    return v0
.end method

.method c(II)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    iget v1, p0, Lcom/baidu/platform/comapi/map/e;->P:I

    add-int/2addr v1, v0

    if-gt p1, v1, :cond_1

    if-ltz p2, :cond_1

    iget p1, p0, Lcom/baidu/platform/comapi/map/e;->Q:I

    add-int/2addr p1, v0

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method c(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/j$a;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/baidu/platform/comapi/map/e;->k:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->n:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/l;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/baidu/platform/comapi/map/e;->b(II)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/baidu/platform/comapi/map/l;->d(Lcom/baidu/mapapi/model/inner/GeoPoint;)V

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/baidu/platform/comapi/map/e;->Z:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/baidu/platform/comapi/map/e;->aa:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensity()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    cmpl-double v7, v3, v5

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensity()F

    move-result v3

    float-to-double v3, v3

    if-lez v7, :cond_4

    mul-double v3, v3, v5

    :cond_4
    double-to-float v3, v3

    iget-boolean v4, p0, Lcom/baidu/platform/comapi/map/e;->ab:Z

    if-eqz v4, :cond_5

    div-float/2addr v0, v3

    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_5

    div-float/2addr v2, v3

    cmpg-float v0, v2, v4

    if-gtz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->ab:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :cond_6
    if-gez p1, :cond_7

    const/4 p1, 0x0

    :cond_7
    iget-boolean v2, p0, Lcom/baidu/platform/comapi/map/e;->d:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/e;->J()V

    const/4 v2, 0x3

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v1

    invoke-virtual {p0, v2, v0, p1}, Lcom/baidu/platform/comapi/map/e;->a(III)I

    :cond_8
    return v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/e;->g(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->h(Landroid/os/Bundle;)V

    return-void
.end method

.method public d(Z)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->ae:Lcom/baidu/platform/comapi/map/f;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/f;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(JZ)V

    return-void
.end method

.method public d()Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->y:Lcom/baidu/platform/comapi/map/M;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/baidu/platform/comapi/map/M;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/a;->c(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method d(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->n:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/platform/comapi/map/l;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/baidu/platform/comapi/map/e;->b(II)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/baidu/platform/comapi/map/l;->e(Lcom/baidu/mapapi/model/inner/GeoPoint;)V

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/e;->n:Z

    return v1

    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->S:Lcom/baidu/platform/comapi/map/j$a;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/j$a;->e:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/baidu/platform/comapi/map/e;->ad:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x190

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/baidu/platform/comapi/map/e;->Z:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/baidu/platform/comapi/map/e;->aa:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/e;->L()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    if-nez v0, :cond_5

    if-gez v3, :cond_3

    const/4 v3, 0x0

    :cond_3
    if-gez p1, :cond_4

    const/4 p1, 0x0

    :cond_4
    const/4 v0, 0x5

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v3

    invoke-virtual {p0, v0, v2, p1}, Lcom/baidu/platform/comapi/map/e;->a(III)I

    return v1

    :cond_5
    return v2
.end method

.method e()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/baidu/platform/comapi/map/I;

    invoke-direct {v1, v0}, Lcom/baidu/platform/comapi/map/I;-><init>(Lcom/baidu/platform/comjni/map/basemap/a;)V

    iput-object v1, p0, Lcom/baidu/platform/comapi/map/e;->M:Lcom/baidu/platform/comapi/map/I;

    return-void
.end method

.method public e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/e;->u:Z

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->b(Z)V

    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/e;->p:Z

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->c(Z)V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->p:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->D:Lcom/baidu/platform/comapi/map/g;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/g;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->d(Z)V

    return-void
.end method

.method public h(Z)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/e;->r:Z

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->D:Lcom/baidu/platform/comapi/map/g;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/g;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(JZ)V

    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->u:Z

    return v0
.end method

.method public i(Z)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->e(Z)V

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->ag:Lcom/baidu/platform/comapi/map/b;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/b;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->d(J)V

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->ah:Lcom/baidu/platform/comapi/map/c;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/c;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/a;->d(J)V

    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->m()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->q:Z

    return v0
.end method

.method public k(Z)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/e;->s:Z

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->C:Lcom/baidu/platform/comapi/map/A;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/A;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(JZ)V

    return-void
.end method

.method public k()Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->ae:Lcom/baidu/platform/comapi/map/f;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/f;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->a(J)Z

    move-result v0

    return v0
.end method

.method public l(Z)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/e;->t:Z

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->J:Lcom/baidu/platform/comapi/map/p;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/p;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(JZ)V

    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->q()Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->E:Lcom/baidu/platform/comapi/map/o;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/o;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->d(J)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->I:Lcom/baidu/platform/comapi/map/n;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/n;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->d(J)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->G:Lcom/baidu/platform/comapi/map/K;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/K;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->d(J)V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->H:Lcom/baidu/platform/comapi/map/s;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/s;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->d(J)V

    return-void
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/e;->d:Z

    return-void
.end method

.method public n()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->r()V

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->J:Lcom/baidu/platform/comapi/map/p;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/p;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->b(J)V

    return-void
.end method

.method public n(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/e;->e:Z

    return-void
.end method

.method public o()Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->s()Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;

    move-result-object v0

    return-object v0
.end method

.method public o(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/e;->w:Z

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/e;->v:Z

    return-void
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->t()Z

    move-result v0

    return v0
.end method

.method public q(Z)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->F:Lcom/baidu/platform/comapi/map/H;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/H;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(JZ)V

    :cond_0
    return-void
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->r:Z

    return v0
.end method

.method public r(Z)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->ah:Lcom/baidu/platform/comapi/map/c;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/c;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/a;->a(JZ)V

    :cond_0
    return-void
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->s:Z

    return v0
.end method

.method public s()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/e;->J:Lcom/baidu/platform/comapi/map/p;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/p;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/a;->b(J)V

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->g()V

    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->g:Lcom/baidu/platform/comjni/map/basemap/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/a;->h()V

    return-void
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->d:Z

    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->e:Z

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->w:Z

    return v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->v:Z

    return v0
.end method

.method z()V
    .locals 3

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/e;->m:Z

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/l;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/e;->D()Lcom/baidu/platform/comapi/map/E;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/platform/comapi/map/l;->a(Lcom/baidu/platform/comapi/map/E;)V

    goto :goto_0

    :cond_0
    return-void
.end method
