.class public final Lcom/baidu/trace/bd;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/trace/bd$b;,
        Lcom/baidu/trace/bd$a;
    }
.end annotation


# static fields
.field protected static b:I

.field protected static c:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/baidu/trace/ar$a;",
            ">;"
        }
    .end annotation
.end field

.field protected static d:Z

.field protected static f:I

.field protected static g:Z

.field protected static h:Z

.field protected static i:I

.field private static q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue<",
            "Lcom/baidu/trace/ar$a;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lcom/baidu/trace/ar;

.field protected e:Z

.field private j:Landroid/content/Context;

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/trace/LBSTraceService;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/baidu/trace/bd$a;

.field private m:Lcom/baidu/trace/bd$b;

.field private n:Landroid/os/Handler;

.field private o:I

.field private p:J

.field private s:Z

.field private t:Z

.field private u:J

.field private v:J

.field private w:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/baidu/trace/ar;->b:I

    sput v0, Lcom/baidu/trace/bd;->b:I

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/trace/bd;->c:Ljava/util/Deque;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/trace/bd;->d:Z

    sput v0, Lcom/baidu/trace/bd;->f:I

    sput-boolean v0, Lcom/baidu/trace/bd;->g:Z

    sput-boolean v0, Lcom/baidu/trace/bd;->h:Z

    const/16 v0, 0x7530

    sput v0, Lcom/baidu/trace/bd;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/baidu/trace/LBSTraceService;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/bd;->j:Landroid/content/Context;

    iput-object v0, p0, Lcom/baidu/trace/bd;->k:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/baidu/trace/bd;->l:Lcom/baidu/trace/bd$a;

    iput-object v0, p0, Lcom/baidu/trace/bd;->m:Lcom/baidu/trace/bd$b;

    iput-object v0, p0, Lcom/baidu/trace/bd;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/trace/bd;->o:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/trace/bd;->p:J

    iput-object v0, p0, Lcom/baidu/trace/bd;->a:Lcom/baidu/trace/ar;

    iput-boolean v1, p0, Lcom/baidu/trace/bd;->s:Z

    iput-boolean v1, p0, Lcom/baidu/trace/bd;->t:Z

    iput-boolean v1, p0, Lcom/baidu/trace/bd;->e:Z

    iput-wide v2, p0, Lcom/baidu/trace/bd;->u:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/trace/bd;->v:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/trace/bd;->w:J

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/trace/bd;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {p1}, Lcom/baidu/trace/LBSTraceService;->getTraceHandler()Lcom/baidu/trace/LBSTraceService$a;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/trace/bd;->n:Landroid/os/Handler;

    iget-object p1, p0, Lcom/baidu/trace/bd;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {p1}, Lcom/baidu/trace/LBSTraceService;->getServiceContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/trace/bd;->j:Landroid/content/Context;

    new-instance p1, Lcom/baidu/trace/ar;

    iget-object v0, p0, Lcom/baidu/trace/bd;->k:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/baidu/trace/bd;->n:Landroid/os/Handler;

    invoke-direct {p1, v0, v2}, Lcom/baidu/trace/ar;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/baidu/trace/bd;->a:Lcom/baidu/trace/ar;

    new-instance p1, Lcom/baidu/trace/bd$b;

    invoke-direct {p1, p0, v1}, Lcom/baidu/trace/bd$b;-><init>(Lcom/baidu/trace/bd;B)V

    iput-object p1, p0, Lcom/baidu/trace/bd;->m:Lcom/baidu/trace/bd$b;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object p1, Lcom/baidu/trace/bd;->q:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object p1, Lcom/baidu/trace/bd;->r:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    sput-object p1, Lcom/baidu/trace/bd;->c:Ljava/util/Deque;

    return-void
.end method

.method static synthetic a(Lcom/baidu/trace/bd;I)I
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/trace/bd;->o:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/trace/bd;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/bd;->u:J

    return-wide p1
.end method

.method protected static a(I)V
    .locals 2

    sget-object v0, Lcom/baidu/trace/bd;->r:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/trace/bd;->q:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static a(ILjava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Queue<",
            "Lcom/baidu/trace/ar$a;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/baidu/trace/bd;->r:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/baidu/trace/bd;->q:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static a(Landroid/os/Handler;)V
    .locals 2

    sget v0, Lcom/baidu/trace/c/e;->d:I

    if-lez v0, :cond_0

    sget-byte v0, Lcom/baidu/trace/z;->s:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v0

    sget v1, Lcom/baidu/trace/c/e;->d:I

    sub-int/2addr v0, v1

    const/16 v1, 0x3c

    if-le v0, v1, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method protected static a(Z)V
    .locals 8

    sget-object v0, Lcom/baidu/trace/bd;->r:Ljava/util/Map;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/baidu/trace/bd;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/baidu/trace/bd;->q:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v4

    if-eqz p0, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v4, v3

    int-to-long v3, v4

    sget-wide v5, Lcom/baidu/trace/aw;->b:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_5

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    return-void

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/trace/ar$a;

    sget-object v4, Lcom/baidu/trace/aw;->a:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    :try_start_0
    sget-object v2, Lcom/baidu/trace/bd;->q:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/baidu/trace/bd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/trace/bd;->s:Z

    return p0
.end method

.method static synthetic b(Lcom/baidu/trace/bd;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/bd;->p:J

    return-wide p1
.end method

.method protected static b()V
    .locals 2

    sget-object v0, Lcom/baidu/trace/bd;->q:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sput-object v1, Lcom/baidu/trace/bd;->q:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/baidu/trace/bd;->r:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sput-object v1, Lcom/baidu/trace/bd;->r:Ljava/util/Map;

    :cond_1
    sget-object v0, Lcom/baidu/trace/bd;->c:Ljava/util/Deque;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    sput-object v1, Lcom/baidu/trace/bd;->c:Ljava/util/Deque;

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/baidu/trace/bd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/trace/bd;->t:Z

    return p0
.end method

.method static synthetic c(Lcom/baidu/trace/bd;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/bd;->w:J

    return-wide p1
.end method

.method static synthetic c(Lcom/baidu/trace/bd;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/bd;->n:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/baidu/trace/bd;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/bd;->u:J

    return-wide v0
.end method

.method static synthetic d(Lcom/baidu/trace/bd;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/trace/bd;->v:J

    return-wide p1
.end method

.method protected static d()V
    .locals 4

    sget v0, Lcom/baidu/trace/bd;->i:I

    sget v1, Lcom/baidu/trace/ar;->b:I

    div-int/2addr v0, v1

    sget v1, Lcom/baidu/trace/ar;->b:I

    sget-byte v2, Lcom/baidu/trace/z;->p:B

    mul-int/lit16 v2, v2, 0x3e8

    if-gt v1, v2, :cond_0

    sget v1, Lcom/baidu/trace/ar;->b:I

    :goto_0
    sput v1, Lcom/baidu/trace/bd;->b:I

    goto :goto_1

    :cond_0
    sget v1, Lcom/baidu/trace/ar;->b:I

    const/16 v2, 0x1388

    div-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x1388

    sput v1, Lcom/baidu/trace/ar;->b:I

    sget-byte v3, Lcom/baidu/trace/z;->p:B

    mul-int/lit16 v3, v3, 0x3e8

    rem-int/2addr v1, v3

    if-nez v1, :cond_1

    sget-byte v1, Lcom/baidu/trace/z;->p:B

    mul-int/lit16 v1, v1, 0x3e8

    goto :goto_0

    :cond_1
    sput v2, Lcom/baidu/trace/bd;->b:I

    :goto_1
    sget v1, Lcom/baidu/trace/ar;->b:I

    mul-int v1, v1, v0

    sput v1, Lcom/baidu/trace/bd;->i:I

    return-void
.end method

.method protected static e()I
    .locals 2

    sget-object v0, Lcom/baidu/trace/bd;->c:Ljava/util/Deque;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    sget-object v0, Lcom/baidu/trace/aw;->a:Ljava/util/Deque;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/trace/aw;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method static synthetic e(Lcom/baidu/trace/bd;)I
    .locals 2

    iget v0, p0, Lcom/baidu/trace/bd;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/baidu/trace/bd;->o:I

    return v0
.end method

.method static synthetic f(Lcom/baidu/trace/bd;)I
    .locals 0

    iget p0, p0, Lcom/baidu/trace/bd;->o:I

    return p0
.end method

.method static synthetic g(Lcom/baidu/trace/bd;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/bd;->p:J

    return-wide v0
.end method

.method static synthetic h(Lcom/baidu/trace/bd;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/bd;->j:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/baidu/trace/bd;)Lcom/baidu/trace/bd$a;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/bd;->l:Lcom/baidu/trace/bd$a;

    return-object p0
.end method

.method static synthetic j(Lcom/baidu/trace/bd;)Z
    .locals 3

    invoke-static {}, Lcom/baidu/trace/c/e;->a()I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v1, v0}, Lcom/baidu/trace/ax;->a(SI)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    invoke-static {v0}, Lcom/baidu/trace/aw;->a(I)V

    iget-object p0, p0, Lcom/baidu/trace/bd;->n:Landroid/os/Handler;

    invoke-static {v1, p0}, Lcom/baidu/trace/b/a;->a([BLandroid/os/Handler;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/baidu/trace/aw;->c()V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic k(Lcom/baidu/trace/bd;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/bd;->w:J

    return-wide v0
.end method

.method static synthetic l(Lcom/baidu/trace/bd;)V
    .locals 1

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/trace/TraceJniInterface;->buildHeartbeatData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/baidu/trace/bd;->n:Landroid/os/Handler;

    invoke-static {v0, p0}, Lcom/baidu/trace/b/a;->a([BLandroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/baidu/trace/bd;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/trace/bd;->v:J

    return-wide v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/baidu/trace/bd;->f:I

    sput-boolean v0, Lcom/baidu/trace/bd;->g:Z

    sput-boolean v0, Lcom/baidu/trace/bd;->h:Z

    sput-boolean v0, Lcom/baidu/trace/bd;->d:Z

    iput-boolean v0, p0, Lcom/baidu/trace/bd;->t:Z

    iput-boolean v0, p0, Lcom/baidu/trace/bd;->s:Z

    iput-boolean v0, p0, Lcom/baidu/trace/bd;->e:Z

    return-void
.end method

.method protected final a(J)V
    .locals 0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/baidu/trace/bd;->p:J

    return-void
.end method

.method protected final a(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/trace/bd;->t:Z

    iput-boolean p2, p0, Lcom/baidu/trace/bd;->s:Z

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/trace/bd;->o:I

    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/trace/bd;->l:Lcom/baidu/trace/bd$a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/trace/bd;->m:Lcom/baidu/trace/bd$b;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/baidu/trace/bd$a;->removeCallbacks(Ljava/lang/Runnable;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/bd;->l:Lcom/baidu/trace/bd$a;

    invoke-virtual {v0}, Lcom/baidu/trace/bd$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/trace/bd;->l:Lcom/baidu/trace/bd$a;

    invoke-virtual {v0}, Lcom/baidu/trace/bd$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/bd;->m:Lcom/baidu/trace/bd$b;

    iput-object v0, p0, Lcom/baidu/trace/bd;->l:Lcom/baidu/trace/bd$a;

    return-void
.end method

.method public final run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/baidu/trace/bd$a;

    invoke-direct {v0}, Lcom/baidu/trace/bd$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/trace/bd;->l:Lcom/baidu/trace/bd$a;

    iget-object v1, p0, Lcom/baidu/trace/bd;->m:Lcom/baidu/trace/bd$b;

    invoke-virtual {v0, v1}, Lcom/baidu/trace/bd$a;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
