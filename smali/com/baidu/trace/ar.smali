.class public Lcom/baidu/trace/ar;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/trace/ar$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/baidu/trace/aj; = null

.field public static b:I = 0x1388

.field public static c:I = 0x1

.field public static d:I = 0x927c0


# instance fields
.field private e:Landroid/content/Context;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/trace/LBSTraceService;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/baidu/trace/api/entity/LocRequest;

.field private h:Lcom/baidu/trace/y;

.field private i:Lcom/baidu/trace/p;

.field private j:Lcom/baidu/trace/ak;

.field private k:Lcom/baidu/trace/a/g;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/trace/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/baidu/trace/a/c;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:Landroid/os/Handler;

.field private t:Lcom/baidu/trace/api/entity/OnEntityListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    iput-object v0, p0, Lcom/baidu/trace/ar;->f:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/baidu/trace/ar;->g:Lcom/baidu/trace/api/entity/LocRequest;

    iput-object v0, p0, Lcom/baidu/trace/ar;->k:Lcom/baidu/trace/a/g;

    iput-object v0, p0, Lcom/baidu/trace/ar;->l:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/baidu/trace/ar;->m:Lcom/baidu/trace/a/c;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/trace/ar;->n:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/trace/ar;->o:Z

    iput-boolean v1, p0, Lcom/baidu/trace/ar;->p:Z

    iput-boolean v1, p0, Lcom/baidu/trace/ar;->q:Z

    sget-object v1, Lcom/baidu/trace/model/LocationMode;->High_Accuracy:Lcom/baidu/trace/model/LocationMode;

    invoke-virtual {v1}, Lcom/baidu/trace/model/LocationMode;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/baidu/trace/ar;->r:I

    iput-object v0, p0, Lcom/baidu/trace/ar;->s:Landroid/os/Handler;

    iput-object v0, p0, Lcom/baidu/trace/ar;->t:Lcom/baidu/trace/api/entity/OnEntityListener;

    iput-object p1, p0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    new-instance v0, Lcom/baidu/trace/y;

    invoke-direct {v0, p1}, Lcom/baidu/trace/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/trace/ar;->h:Lcom/baidu/trace/y;

    new-instance p1, Lcom/baidu/trace/p;

    iget-object v0, p0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/baidu/trace/p;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/trace/ar;->i:Lcom/baidu/trace/p;

    new-instance p1, Lcom/baidu/trace/ak;

    iget-object v0, p0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/baidu/trace/ak;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/trace/ar;->j:Lcom/baidu/trace/ak;

    iput-object p2, p0, Lcom/baidu/trace/ar;->s:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/trace/LBSTraceService;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    iput-object v0, p0, Lcom/baidu/trace/ar;->f:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/baidu/trace/ar;->g:Lcom/baidu/trace/api/entity/LocRequest;

    iput-object v0, p0, Lcom/baidu/trace/ar;->k:Lcom/baidu/trace/a/g;

    iput-object v0, p0, Lcom/baidu/trace/ar;->l:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/baidu/trace/ar;->m:Lcom/baidu/trace/a/c;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/trace/ar;->n:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/trace/ar;->o:Z

    iput-boolean v1, p0, Lcom/baidu/trace/ar;->p:Z

    iput-boolean v1, p0, Lcom/baidu/trace/ar;->q:Z

    sget-object v1, Lcom/baidu/trace/model/LocationMode;->High_Accuracy:Lcom/baidu/trace/model/LocationMode;

    invoke-virtual {v1}, Lcom/baidu/trace/model/LocationMode;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/baidu/trace/ar;->r:I

    iput-object v0, p0, Lcom/baidu/trace/ar;->s:Landroid/os/Handler;

    iput-object v0, p0, Lcom/baidu/trace/ar;->t:Lcom/baidu/trace/api/entity/OnEntityListener;

    iput-object p1, p0, Lcom/baidu/trace/ar;->f:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/trace/ar;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {p1}, Lcom/baidu/trace/LBSTraceService;->getServiceContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    iget-object p1, p0, Lcom/baidu/trace/ar;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {p1}, Lcom/baidu/trace/LBSTraceService;->getLocationMode()I

    move-result p1

    iput p1, p0, Lcom/baidu/trace/ar;->r:I

    :cond_0
    new-instance p1, Lcom/baidu/trace/y;

    iget-object v0, p0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/baidu/trace/y;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/trace/ar;->h:Lcom/baidu/trace/y;

    new-instance p1, Lcom/baidu/trace/p;

    iget-object v0, p0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/baidu/trace/p;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/trace/ar;->i:Lcom/baidu/trace/p;

    new-instance p1, Lcom/baidu/trace/ak;

    iget-object v0, p0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/baidu/trace/ak;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/trace/ar;->j:Lcom/baidu/trace/ak;

    iput-object p2, p0, Lcom/baidu/trace/ar;->s:Landroid/os/Handler;

    iget-object p1, p0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "same_process"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    const-class p2, Lcom/baidu/trace/LBSTraceClient;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    const-class p2, Lcom/baidu/trace/LBSTraceService;

    :goto_0
    invoke-static {p1, p2}, Lcom/baidu/trace/c/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p1, Lcom/baidu/trace/as;

    invoke-direct {p1, p0}, Lcom/baidu/trace/as;-><init>(Lcom/baidu/trace/ar;)V

    iput-object p1, p0, Lcom/baidu/trace/ar;->t:Lcom/baidu/trace/api/entity/OnEntityListener;

    return-void
.end method

.method static synthetic a(Lcom/baidu/trace/ar;)Lcom/baidu/trace/ak;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/ar;->j:Lcom/baidu/trace/ak;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/trace/ar;Lcom/baidu/trace/ak;)Lcom/baidu/trace/ak;
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/ar;->j:Lcom/baidu/trace/ak;

    return-object p1
.end method

.method private a(J)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/trace/a/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/trace/ar;->f:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/trace/ar;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {v0}, Lcom/baidu/trace/LBSTraceService;->getClientListener()Lcom/baidu/trace/IListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/baidu/trace/ar;->f:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/trace/ar;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/trace/ar;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {v2}, Lcom/baidu/trace/LBSTraceService;->getClientListener()Lcom/baidu/trace/IListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/baidu/trace/IListener;->gatherAttribute(J)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    new-instance v1, Lcom/baidu/trace/a/e;

    invoke-direct {v1}, Lcom/baidu/trace/a/e;-><init>()V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "_entity_name"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/trace/c/d;->a(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/trace/a/e;->a:[B

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/baidu/trace/c/d;->a(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, v1, Lcom/baidu/trace/a/e;->b:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    return-object v1
.end method

.method static synthetic a(Lcom/baidu/trace/ar;Lcom/baidu/trace/model/LatLng;JLcom/baidu/trace/model/CoordType;D)V
    .locals 11

    sget-object v0, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/baidu/trace/bi;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p4

    move-wide v4, p2

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/baidu/trace/bi;-><init>(Lcom/baidu/trace/model/LatLng;Lcom/baidu/trace/model/CoordType;JD)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {v0}, Lcom/baidu/trace/bi;->getLocation()Lcom/baidu/trace/model/LatLng;

    move-result-object v1

    iget-wide v2, v1, Lcom/baidu/trace/model/LatLng;->latitude:D

    invoke-virtual {v0}, Lcom/baidu/trace/bi;->getLocation()Lcom/baidu/trace/model/LatLng;

    move-result-object v1

    iget-wide v4, v1, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-virtual {v0}, Lcom/baidu/trace/bi;->getRadius()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/baidu/trace/bi;->getLocTime()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/baidu/trace/bi;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/trace/model/CoordType;->ordinal()I

    move-result v10

    invoke-static/range {v2 .. v10}, Lcom/baidu/trace/TraceJniInterface;->processTrackPoint(DDDJI)[D

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    array-length v4, v1

    const/4 v5, 0x3

    if-le v4, v5, :cond_1

    new-instance v4, Lcom/baidu/trace/model/LatLng;

    aget-wide v6, v1, v3

    aget-wide v8, v1, v2

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/baidu/trace/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v4}, Lcom/baidu/trace/bi;->setLocation(Lcom/baidu/trace/model/LatLng;)V

    const/4 v3, 0x2

    aget-wide v3, v1, v3

    double-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/baidu/trace/bi;->setLocTime(J)V

    aget-wide v3, v1, v5

    invoke-virtual {v0, v3, v4}, Lcom/baidu/trace/bi;->setRadius(D)V

    sget-object v1, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {v0, v1}, Lcom/baidu/trace/bi;->setCoordType(Lcom/baidu/trace/model/CoordType;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    sget-object v1, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    move-object v2, p0

    iget-object v2, v2, Lcom/baidu/trace/ar;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Lcom/baidu/trace/aj;->a(Lcom/baidu/trace/bi;Landroid/os/Handler;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/trace/TraceJniInterface;->clearCustomData()V

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/trace/TraceJniInterface;->clearWifiData()V

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/trace/TraceJniInterface;->clearBluetoothData()V

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/trace/TraceJniInterface;->clearNearbyCells()V

    sget-object v1, Lcom/baidu/trace/model/LocationMode;->Battery_Saving:Lcom/baidu/trace/model/LocationMode;

    invoke-virtual {v1}, Lcom/baidu/trace/model/LocationMode;->ordinal()I

    move-result v1

    iget v2, v0, Lcom/baidu/trace/ar;->r:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    sget v1, Lcom/baidu/trace/ar;->b:I

    div-int/lit8 v2, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    new-instance v5, Lcom/baidu/trace/a/g;

    invoke-direct {v5}, Lcom/baidu/trace/a/g;-><init>()V

    iget-object v6, v0, Lcom/baidu/trace/ar;->j:Lcom/baidu/trace/ak;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/trace/c/e;->e(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/baidu/trace/ar;->j:Lcom/baidu/trace/ak;

    invoke-virtual {v6, v2}, Lcom/baidu/trace/ak;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/baidu/trace/ar;->j:Lcom/baidu/trace/ak;

    invoke-virtual {v2, v5, v1}, Lcom/baidu/trace/ak;->a(Lcom/baidu/trace/a/g;I)V

    iget-boolean v1, v5, Lcom/baidu/trace/a/g;->a:Z

    if-eqz v1, :cond_1

    iput-boolean v4, v0, Lcom/baidu/trace/ar;->p:Z

    iput-boolean v4, v0, Lcom/baidu/trace/ar;->q:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/trace/ar;->o:Z

    goto :goto_0

    :cond_0
    iput-boolean v4, v0, Lcom/baidu/trace/ar;->o:Z

    iput-boolean v4, v5, Lcom/baidu/trace/a/g;->a:Z

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/trace/ar;->d()V

    :goto_0
    iput-object v5, v0, Lcom/baidu/trace/ar;->k:Lcom/baidu/trace/a/g;

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    if-eqz v5, :cond_3

    iget-boolean v1, v5, Lcom/baidu/trace/a/g;->a:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v6

    iget-byte v7, v5, Lcom/baidu/trace/a/g;->c:B

    iget-short v8, v5, Lcom/baidu/trace/a/g;->d:S

    iget-byte v9, v5, Lcom/baidu/trace/a/g;->e:B

    iget-short v10, v5, Lcom/baidu/trace/a/g;->f:S

    iget-short v11, v5, Lcom/baidu/trace/a/g;->g:S

    iget v12, v5, Lcom/baidu/trace/a/g;->h:I

    iget v13, v5, Lcom/baidu/trace/a/g;->i:I

    invoke-virtual/range {v6 .. v13}, Lcom/baidu/trace/TraceJniInterface;->setGPSData(BSBSSII)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v14 .. v21}, Lcom/baidu/trace/TraceJniInterface;->setGPSData(BSBSSII)V

    :goto_2
    sget-object v1, Lcom/baidu/trace/model/LocationMode;->Device_Sensors:Lcom/baidu/trace/model/LocationMode;

    invoke-virtual {v1}, Lcom/baidu/trace/model/LocationMode;->ordinal()I

    move-result v1

    iget v2, v0, Lcom/baidu/trace/ar;->r:I

    if-eq v1, v2, :cond_6

    iget-boolean v1, v0, Lcom/baidu/trace/ar;->p:Z

    if-nez v1, :cond_4

    move-object v1, v3

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/trace/c/e;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/baidu/trace/ar;->h:Lcom/baidu/trace/y;

    invoke-virtual {v2}, Lcom/baidu/trace/y;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/baidu/trace/ar;->h:Lcom/baidu/trace/y;

    invoke-virtual {v2, v1}, Lcom/baidu/trace/y;->a(Ljava/util/ArrayList;)V

    :cond_5
    :goto_3
    iput-object v1, v0, Lcom/baidu/trace/ar;->l:Ljava/util/ArrayList;

    goto :goto_4

    :cond_6
    move-object v1, v3

    :goto_4
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/trace/a/j;

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v7

    iget-object v8, v6, Lcom/baidu/trace/a/j;->a:[B

    iget-byte v9, v6, Lcom/baidu/trace/a/j;->b:B

    iget-object v10, v6, Lcom/baidu/trace/a/j;->c:[B

    iget-byte v6, v6, Lcom/baidu/trace/a/j;->d:B

    invoke-virtual {v7, v8, v9, v10, v6}, Lcom/baidu/trace/TraceJniInterface;->addWifiData([BB[BB)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    sget-object v2, Lcom/baidu/trace/model/LocationMode;->Device_Sensors:Lcom/baidu/trace/model/LocationMode;

    invoke-virtual {v2}, Lcom/baidu/trace/model/LocationMode;->ordinal()I

    move-result v2

    iget v6, v0, Lcom/baidu/trace/ar;->r:I

    if-eq v2, v6, :cond_a

    iget-boolean v2, v0, Lcom/baidu/trace/ar;->q:Z

    if-nez v2, :cond_8

    goto :goto_7

    :cond_8
    new-instance v2, Lcom/baidu/trace/a/c;

    invoke-direct {v2}, Lcom/baidu/trace/a/c;-><init>()V

    iget-object v3, v0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/trace/c/e;->g(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/baidu/trace/ar;->i:Lcom/baidu/trace/p;

    invoke-virtual {v3}, Lcom/baidu/trace/p;->a()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/baidu/trace/ar;->i:Lcom/baidu/trace/p;

    invoke-virtual {v3, v2}, Lcom/baidu/trace/p;->a(Lcom/baidu/trace/a/c;)V

    goto :goto_6

    :cond_9
    iput-boolean v4, v2, Lcom/baidu/trace/a/c;->a:Z

    :goto_6
    move-object v3, v2

    :goto_7
    iput-object v3, v0, Lcom/baidu/trace/ar;->m:Lcom/baidu/trace/a/c;

    :cond_a
    if-eqz v3, :cond_b

    iget-boolean v2, v3, Lcom/baidu/trace/a/c;->a:Z

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v6

    iget-byte v7, v3, Lcom/baidu/trace/a/c;->b:B

    iget-byte v8, v3, Lcom/baidu/trace/a/c;->c:B

    iget-short v9, v3, Lcom/baidu/trace/a/c;->d:S

    iget-short v10, v3, Lcom/baidu/trace/a/c;->e:S

    iget v11, v3, Lcom/baidu/trace/a/c;->f:I

    iget v12, v3, Lcom/baidu/trace/a/c;->g:I

    invoke-virtual/range {v6 .. v12}, Lcom/baidu/trace/TraceJniInterface;->setCellData(BBSSII)V

    const/4 v2, 0x0

    :goto_8
    iget-object v6, v3, Lcom/baidu/trace/a/c;->h:[I

    array-length v6, v6

    if-ge v2, v6, :cond_c

    iget-object v6, v3, Lcom/baidu/trace/a/c;->i:[I

    array-length v6, v6

    if-ge v2, v6, :cond_c

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v6

    iget-object v7, v3, Lcom/baidu/trace/a/c;->h:[I

    aget v7, v7, v2

    iget-object v8, v3, Lcom/baidu/trace/a/c;->i:[I

    aget v8, v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/baidu/trace/TraceJniInterface;->addNearbyCell(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/baidu/trace/TraceJniInterface;->setCellData(BBSSII)V

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz v5, :cond_d

    iget-boolean v6, v5, Lcom/baidu/trace/a/g;->a:Z

    if-eqz v6, :cond_d

    iget-wide v6, v5, Lcom/baidu/trace/a/g;->b:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "L-GPS local time is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v5, Lcom/baidu/trace/a/g;->b:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/trace/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v5, Lcom/baidu/trace/a/g;->b:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sget v8, Lcom/baidu/trace/ar;->d:I

    int-to-long v8, v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_d

    iget-wide v2, v5, Lcom/baidu/trace/a/g;->b:J

    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "L-GPS locTime is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/trace/a;->a(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "locTimeOffset : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/baidu/trace/ar;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v6

    const-string v7, "_entity_name"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    sget-object v8, Lcom/baidu/trace/z;->c:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/baidu/trace/TraceJniInterface;->addCustomData([B[B)V

    invoke-direct {v0, v2, v3}, Lcom/baidu/trace/ar;->a(J)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_e

    const/4 v7, 0x0

    :goto_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_e

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/trace/a/e;

    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v9

    iget-object v10, v8, Lcom/baidu/trace/a/e;->a:[B

    iget-object v8, v8, Lcom/baidu/trace/a/e;->b:[B

    invoke-virtual {v9, v10, v8}, Lcom/baidu/trace/TraceJniInterface;->addCustomData([B[B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_e
    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->a()Lcom/baidu/trace/TraceJniInterface;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    long-to-int v8, v2

    invoke-virtual {v7, v8}, Lcom/baidu/trace/TraceJniInterface;->buildLocationData(I)[B

    move-result-object v7

    if-nez v7, :cond_f

    return-void

    :cond_f
    sget v8, Lcom/baidu/trace/ar;->b:I

    const/16 v9, 0x1388

    if-gt v8, v9, :cond_10

    iget-boolean v8, v0, Lcom/baidu/trace/ar;->n:Z

    if-eqz v8, :cond_10

    if-eqz v5, :cond_10

    iget-boolean v8, v5, Lcom/baidu/trace/a/g;->a:Z

    if-eqz v8, :cond_10

    iput-boolean v4, v0, Lcom/baidu/trace/ar;->n:Z

    return-void

    :cond_10
    new-instance v4, Lcom/baidu/trace/ar$a;

    sget-object v8, Lcom/baidu/trace/z;->c:Ljava/lang/String;

    invoke-direct {v4, v8, v7, v2, v3}, Lcom/baidu/trace/ar$a;-><init>(Ljava/lang/String;[BJ)V

    sget-object v2, Lcom/baidu/trace/bd;->c:Ljava/util/Deque;

    if-eqz v2, :cond_11

    sget-object v2, Lcom/baidu/trace/bd;->c:Ljava/util/Deque;

    invoke-interface {v2, v4}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    :cond_11
    sget-object v2, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/baidu/trace/aj;->a()Z

    move-result v2

    if-nez v2, :cond_16

    iget-wide v2, v4, Lcom/baidu/trace/ar$a;->c:J

    if-eqz v5, :cond_14

    iget-boolean v4, v5, Lcom/baidu/trace/a/g;->a:Z

    if-nez v4, :cond_12

    goto :goto_a

    :cond_12
    sget-object v4, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v4, :cond_13

    goto :goto_b

    :cond_13
    sget-object v4, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/baidu/trace/at;

    invoke-direct {v7, v0, v5, v2, v3}, Lcom/baidu/trace/at;-><init>(Lcom/baidu/trace/ar;Lcom/baidu/trace/a/g;J)V

    invoke-interface {v4, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_14
    :goto_a
    iget-object v2, v0, Lcom/baidu/trace/ar;->g:Lcom/baidu/trace/api/entity/LocRequest;

    if-nez v2, :cond_15

    new-instance v2, Lcom/baidu/trace/api/entity/LocRequest;

    sget-wide v3, Lcom/baidu/trace/z;->b:J

    invoke-direct {v2, v3, v4}, Lcom/baidu/trace/api/entity/LocRequest;-><init>(J)V

    iput-object v2, v0, Lcom/baidu/trace/ar;->g:Lcom/baidu/trace/api/entity/LocRequest;

    :cond_15
    iget-object v2, v0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    iget-object v3, v0, Lcom/baidu/trace/ar;->g:Lcom/baidu/trace/api/entity/LocRequest;

    iget-object v4, v0, Lcom/baidu/trace/ar;->t:Lcom/baidu/trace/api/entity/OnEntityListener;

    invoke-static {v2, v3, v4}, Lcom/baidu/trace/aa;->a(Landroid/content/Context;Lcom/baidu/trace/api/entity/LocRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V

    :cond_16
    :goto_b
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_17
    if-eqz v6, :cond_18

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_18
    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/trace/ar;->r:I

    return-void
.end method

.method protected final a(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/model/TraceLocation;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/trace/ar;->j:Lcom/baidu/trace/ak;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/baidu/trace/ar;->o:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance p1, Lcom/baidu/trace/a/g;

    invoke-direct {p1}, Lcom/baidu/trace/a/g;-><init>()V

    iget-object p2, p0, Lcom/baidu/trace/ar;->j:Lcom/baidu/trace/ak;

    const/16 v0, 0x2710

    invoke-virtual {p2, p1, v0}, Lcom/baidu/trace/ak;->a(Lcom/baidu/trace/a/g;I)V

    iget-boolean p2, p1, Lcom/baidu/trace/a/g;->a:Z

    if-eqz p2, :cond_2

    iget p2, p1, Lcom/baidu/trace/a/g;->i:I

    int-to-double v0, p2

    const-wide v2, 0x41224f8000000000L    # 600000.0

    div-double/2addr v0, v2

    invoke-virtual {p3, v0, v1}, Lcom/baidu/trace/model/TraceLocation;->setLatitude(D)V

    iget p2, p1, Lcom/baidu/trace/a/g;->h:I

    int-to-double v0, p2

    div-double/2addr v0, v2

    invoke-virtual {p3, v0, v1}, Lcom/baidu/trace/model/TraceLocation;->setLongitude(D)V

    iget-short p2, p1, Lcom/baidu/trace/a/g;->d:S

    int-to-double v0, p2

    invoke-virtual {p3, v0, v1}, Lcom/baidu/trace/model/TraceLocation;->setRadius(D)V

    iget-short p2, p1, Lcom/baidu/trace/a/g;->g:S

    invoke-virtual {p3, p2}, Lcom/baidu/trace/model/TraceLocation;->setAltitude(I)V

    iget-byte p2, p1, Lcom/baidu/trace/a/g;->e:B

    shl-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Lcom/baidu/trace/model/TraceLocation;->setDirection(F)V

    iget-short p2, p1, Lcom/baidu/trace/a/g;->f:S

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    invoke-virtual {p3, p2}, Lcom/baidu/trace/model/TraceLocation;->setSpeed(F)V

    invoke-static {}, Lcom/baidu/trace/c/e;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/baidu/trace/model/TraceLocation;->setTime(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/baidu/trace/c/e;->a(Lcom/baidu/trace/model/TraceLocation;)V

    :cond_2
    iget-boolean p1, p1, Lcom/baidu/trace/a/g;->a:Z

    return p1

    :cond_3
    :goto_0
    const-class p3, Lcom/baidu/trace/ar;

    monitor-enter p3

    :try_start_0
    new-instance v0, Lcom/baidu/trace/au;

    invoke-direct {v0, p0, p1}, Lcom/baidu/trace/au;-><init>(Lcom/baidu/trace/ar;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p3

    throw p1
.end method

.method protected final b()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/ar;->j:Lcom/baidu/trace/ak;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/trace/ak;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/ar;->j:Lcom/baidu/trace/ak;

    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 3

    invoke-virtual {p0}, Lcom/baidu/trace/ar;->b()V

    sget-object v0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "same_process"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FinalizableDelegatedExecutorService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/trace/c/a;->a()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/trace/ar;->h:Lcom/baidu/trace/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/baidu/trace/y;->b()V

    iput-object v1, p0, Lcom/baidu/trace/ar;->h:Lcom/baidu/trace/y;

    :cond_2
    iget-object v0, p0, Lcom/baidu/trace/ar;->i:Lcom/baidu/trace/p;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/baidu/trace/p;->b()V

    iput-object v1, p0, Lcom/baidu/trace/ar;->i:Lcom/baidu/trace/p;

    :cond_3
    iget-object v0, p0, Lcom/baidu/trace/ar;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/baidu/trace/ar;->l:Ljava/util/ArrayList;

    :cond_4
    iget-object v0, p0, Lcom/baidu/trace/ar;->m:Lcom/baidu/trace/a/c;

    if-eqz v0, :cond_5

    iput-object v1, p0, Lcom/baidu/trace/ar;->m:Lcom/baidu/trace/a/c;

    :cond_5
    iget-object v0, p0, Lcom/baidu/trace/ar;->k:Lcom/baidu/trace/a/g;

    if-eqz v0, :cond_6

    iput-object v1, p0, Lcom/baidu/trace/ar;->k:Lcom/baidu/trace/a/g;

    :cond_6
    iget-object v0, p0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    if-eqz v0, :cond_7

    iput-object v1, p0, Lcom/baidu/trace/ar;->e:Landroid/content/Context;

    :cond_7
    iget-object v0, p0, Lcom/baidu/trace/ar;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v1, p0, Lcom/baidu/trace/ar;->f:Ljava/lang/ref/WeakReference;

    :cond_8
    iget-object v0, p0, Lcom/baidu/trace/ar;->s:Landroid/os/Handler;

    if-eqz v0, :cond_9

    iput-object v1, p0, Lcom/baidu/trace/ar;->s:Landroid/os/Handler;

    :cond_9
    sget-object v0, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/baidu/trace/aj;->b()V

    sput-object v1, Lcom/baidu/trace/ar;->a:Lcom/baidu/trace/aj;

    :cond_a
    invoke-static {}, Lcom/baidu/trace/TraceJniInterface;->clearTrackData()V

    return-void
.end method

.method protected final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/trace/ar;->q:Z

    iput-boolean v0, p0, Lcom/baidu/trace/ar;->p:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/ar;->o:Z

    return-void
.end method
