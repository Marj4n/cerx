.class public final Lcom/baidu/trace/LBSTraceClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/trace/LBSTraceClient$ClientListener;,
        Lcom/baidu/trace/LBSTraceClient$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/baidu/trace/LBSTraceClient;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/Intent;

.field private d:Lcom/baidu/trace/IService;

.field private e:Lcom/baidu/trace/LBSTraceClient$ClientListener;

.field private f:Lcom/baidu/trace/LBSTraceClient$a;

.field private g:Lcom/baidu/trace/model/LocationMode;

.field private h:Lcom/baidu/trace/model/OnTraceListener;

.field private i:Lcom/baidu/trace/model/OnCustomAttributeListener;

.field private j:Z

.field private k:Lcom/baidu/trace/ar;

.field private l:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->c:Landroid/content/Intent;

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->d:Lcom/baidu/trace/IService;

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->e:Lcom/baidu/trace/LBSTraceClient$ClientListener;

    new-instance v1, Lcom/baidu/trace/LBSTraceClient$a;

    invoke-direct {v1, p0}, Lcom/baidu/trace/LBSTraceClient$a;-><init>(Lcom/baidu/trace/LBSTraceClient;)V

    iput-object v1, p0, Lcom/baidu/trace/LBSTraceClient;->f:Lcom/baidu/trace/LBSTraceClient$a;

    sget-object v1, Lcom/baidu/trace/model/LocationMode;->High_Accuracy:Lcom/baidu/trace/model/LocationMode;

    iput-object v1, p0, Lcom/baidu/trace/LBSTraceClient;->g:Lcom/baidu/trace/model/LocationMode;

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->i:Lcom/baidu/trace/model/OnCustomAttributeListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/trace/LBSTraceClient;->j:Z

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->k:Lcom/baidu/trace/ar;

    new-instance v0, Lcom/baidu/trace/ap;

    invoke-direct {v0, p0}, Lcom/baidu/trace/ap;-><init>(Lcom/baidu/trace/LBSTraceClient;)V

    iput-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->l:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    new-instance p1, Lcom/baidu/trace/LBSTraceClient$ClientListener;

    invoke-direct {p1, p0}, Lcom/baidu/trace/LBSTraceClient$ClientListener;-><init>(Lcom/baidu/trace/LBSTraceClient;)V

    iput-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->e:Lcom/baidu/trace/LBSTraceClient$ClientListener;

    invoke-direct {p0}, Lcom/baidu/trace/LBSTraceClient;->c()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/trace/LBSTraceClient;Lcom/baidu/trace/IService;)Lcom/baidu/trace/IService;
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->d:Lcom/baidu/trace/IService;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/LBSTraceClient$ClientListener;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/LBSTraceClient;->e:Lcom/baidu/trace/LBSTraceClient$ClientListener;

    return-object p0
.end method

.method static synthetic b(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/IService;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/LBSTraceClient;->d:Lcom/baidu/trace/IService;

    return-object p0
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/trace/LBSTraceClient;->c:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/trace/LBSTraceClient;->c:Landroid/content/Intent;

    iget-object v3, p0, Lcom/baidu/trace/LBSTraceClient;->l:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "start and bind service failed, Exception : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/trace/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    if-eqz v1, :cond_0

    const-string v2, "\u5931\u8d25"

    invoke-interface {v1, v0, v2}, Lcom/baidu/trace/model/OnTraceListener;->onBindServiceCallback(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnTraceListener;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/trace/LBSTraceClient;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/trace/LBSTraceClient;->j:Z

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/trace/av;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    move-result-object v0

    sput-object v0, Lcom/baidu/trace/d;->b:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    sget-object v1, Lcom/baidu/trace/d;->b:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    invoke-static {v0, v1}, Lcom/baidu/trace/q;->a(Landroid/content/Context;Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/trace/c/e;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    const-class v1, Lcom/baidu/trace/LBSTraceClient;

    invoke-static {v0, v1}, Lcom/baidu/trace/c/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/trace/am;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/baidu/trace/c/e;->c:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/trace/c/h;->b()V

    invoke-static {}, Lcom/baidu/trace/d;->a()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/trace/LBSTraceClient;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/LBSTraceClient;->l:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic e(Lcom/baidu/trace/LBSTraceClient;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/baidu/trace/LBSTraceClient;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/LBSTraceClient;->c:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic g(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/model/OnCustomAttributeListener;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/LBSTraceClient;->i:Lcom/baidu/trace/model/OnCustomAttributeListener;

    return-object p0
.end method

.method static synthetic h(Lcom/baidu/trace/LBSTraceClient;)Lcom/baidu/trace/LBSTraceClient$a;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/LBSTraceClient;->f:Lcom/baidu/trace/LBSTraceClient$a;

    return-object p0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->d:Lcom/baidu/trace/IService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/trace/IService;->handleExtendedOperate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final addEntity(Lcom/baidu/trace/api/entity/AddEntityRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 1

    const-string v0, "addEntity"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/entity/AddEntityRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V

    :cond_0
    return-void
.end method

.method public final addPoint(Lcom/baidu/trace/api/track/AddPointRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V
    .locals 1

    const-string v0, "addPoint"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/track/AddPointRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V

    :cond_0
    return-void
.end method

.method public final addPoints(Lcom/baidu/trace/api/track/AddPointsRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V
    .locals 1

    const-string v0, "addPoints"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/track/AddPointsRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V

    :cond_0
    return-void
.end method

.method public final aroundSearchEntity(Lcom/baidu/trace/api/entity/AroundSearchRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 1

    const-string v0, "aroundSearchEntity"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/entity/AroundSearchRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V

    :cond_0
    return-void
.end method

.method public final boundSearchEntity(Lcom/baidu/trace/api/entity/BoundSearchRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 1

    const-string v0, "boundSearchEntity"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/entity/BoundSearchRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 2

    invoke-static {}, Lcom/baidu/trace/am;->a()V

    invoke-static {}, Lcom/baidu/trace/c/a;->a()V

    invoke-static {}, Lcom/baidu/trace/d;->b()V

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->k:Lcom/baidu/trace/ar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/trace/ar;->c()V

    iput-object v1, p0, Lcom/baidu/trace/LBSTraceClient;->k:Lcom/baidu/trace/ar;

    :cond_0
    sput-object v1, Lcom/baidu/trace/LBSTraceClient;->a:Lcom/baidu/trace/LBSTraceClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/trace/LBSTraceClient;->j:Z

    return-void
.end method

.method public final clearCacheTrack(Lcom/baidu/trace/api/track/ClearCacheTrackRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V
    .locals 8

    const-string v0, "clearCacheTrack"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/trace/LBSTraceClient;->f:Lcom/baidu/trace/LBSTraceClient$a;

    new-instance v5, Lcom/baidu/trace/api/track/ClearCacheTrackResponse;

    invoke-virtual {p1}, Lcom/baidu/trace/api/track/ClearCacheTrackRequest;->getTag()I

    move-result v0

    const/4 v1, 0x0

    const-string v3, "\u6210\u529f"

    invoke-direct {v5, v0, v1, v3}, Lcom/baidu/trace/api/track/ClearCacheTrackResponse;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/trace/api/track/ClearCacheTrackRequest;->getEntityNames()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/trace/api/track/ClearCacheTrackRequest;->getCacheTrackInfos()Ljava/util/List;

    move-result-object v4

    sget-object p1, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/baidu/trace/bg;

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/baidu/trace/bg;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/baidu/trace/api/track/ClearCacheTrackResponse;Landroid/os/Handler;Lcom/baidu/trace/api/track/OnTrackListener;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final createFence(Lcom/baidu/trace/api/fence/CreateFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 3

    const-string v0, "createFence"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceClient;->d:Lcom/baidu/trace/IService;

    iget-object v2, p0, Lcom/baidu/trace/LBSTraceClient;->f:Lcom/baidu/trace/LBSTraceClient$a;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/baidu/trace/a;->a(Landroid/content/Context;Lcom/baidu/trace/IService;Landroid/os/Handler;Lcom/baidu/trace/api/fence/CreateFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    :cond_0
    return-void
.end method

.method public final deleteEntity(Lcom/baidu/trace/api/entity/DeleteEntityRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 1

    const-string v0, "deleteEntity"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/entity/DeleteEntityRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V

    :cond_0
    return-void
.end method

.method public final deleteFence(Lcom/baidu/trace/api/fence/DeleteFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 3

    const-string v0, "deleteFence"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceClient;->d:Lcom/baidu/trace/IService;

    iget-object v2, p0, Lcom/baidu/trace/LBSTraceClient;->f:Lcom/baidu/trace/LBSTraceClient$a;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/baidu/trace/a;->a(Landroid/content/Context;Lcom/baidu/trace/IService;Landroid/os/Handler;Lcom/baidu/trace/api/fence/DeleteFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    :cond_0
    return-void
.end method

.method public final districtSearchEntity(Lcom/baidu/trace/api/entity/DistrictSearchRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 1

    const-string v0, "districtSearchRequest"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/entity/DistrictSearchRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V

    :cond_0
    return-void
.end method

.method public final generatePresignedUrl(Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;Lcom/baidu/trace/api/bos/OnBosListener;)V
    .locals 1

    const-string v0, "generatePresignedUrl"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/bos/BosGeneratePresignedUrlRequest;Lcom/baidu/trace/api/bos/OnBosListener;)V

    :cond_0
    return-void
.end method

.method public final getObject(Lcom/baidu/trace/api/bos/BosGetObjectRequest;Lcom/baidu/trace/api/bos/OnBosListener;)V
    .locals 1

    const-string v0, "getObject"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/bos/BosGetObjectRequest;Lcom/baidu/trace/api/bos/OnBosListener;)V

    :cond_0
    return-void
.end method

.method public final initThreadPoolConfig(III)Z
    .locals 2

    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Lcom/baidu/trace/c/a;->a(IIJ)Z

    move-result p1

    return p1
.end method

.method public final polygonSearchEntity(Lcom/baidu/trace/api/entity/PolygonSearchRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 1

    const-string v0, "polygonSearchRequest"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/entity/PolygonSearchRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V

    :cond_0
    return-void
.end method

.method public final putObject(Lcom/baidu/trace/api/bos/BosPutObjectRequest;Lcom/baidu/trace/api/bos/OnBosListener;)V
    .locals 1

    const-string v0, "putObject"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/bos/BosPutObjectRequest;Lcom/baidu/trace/api/bos/OnBosListener;)V

    :cond_0
    return-void
.end method

.method public final queryCacheTrack(Lcom/baidu/trace/api/track/QueryCacheTrackRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V
    .locals 8

    const-string v0, "queryCacheTrack"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/trace/LBSTraceClient;->f:Lcom/baidu/trace/LBSTraceClient$a;

    new-instance v4, Lcom/baidu/trace/api/track/QueryCacheTrackResponse;

    invoke-virtual {p1}, Lcom/baidu/trace/api/track/QueryCacheTrackRequest;->getTag()I

    move-result v0

    const/4 v1, 0x0

    const-string v3, "\u6210\u529f"

    invoke-direct {v4, v0, v1, v3}, Lcom/baidu/trace/api/track/QueryCacheTrackResponse;-><init>(IILjava/lang/String;)V

    sget-object v0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/baidu/trace/be;

    move-object v1, v7

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/baidu/trace/be;-><init>(Landroid/content/Context;Lcom/baidu/trace/api/track/QueryCacheTrackRequest;Lcom/baidu/trace/api/track/QueryCacheTrackResponse;Landroid/os/Handler;Lcom/baidu/trace/api/track/OnTrackListener;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final queryDistance(Lcom/baidu/trace/api/track/DistanceRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V
    .locals 1

    const-string v0, "queryDistance"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/track/DistanceRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V

    :cond_0
    return-void
.end method

.method public final queryDrivingBehavior(Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;Lcom/baidu/trace/api/analysis/OnAnalysisListener;)V
    .locals 1

    const-string v0, "queryDrivingBehavior"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/analysis/DrivingBehaviorRequest;Lcom/baidu/trace/api/analysis/OnAnalysisListener;)V

    :cond_0
    return-void
.end method

.method public final queryEntityList(Lcom/baidu/trace/api/entity/EntityListRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 1

    const-string v0, "queryEntityList"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/entity/EntityListRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V

    :cond_0
    return-void
.end method

.method public final queryFenceHistoryAlarmInfo(Lcom/baidu/trace/api/fence/HistoryAlarmRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 2

    const-string v0, "queryFenceHistoryAlarmInfo"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceClient;->f:Lcom/baidu/trace/LBSTraceClient$a;

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/trace/a;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/HistoryAlarmRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    :cond_0
    return-void
.end method

.method public final queryFenceList(Lcom/baidu/trace/api/fence/FenceListRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 2

    const-string v0, "queryFenceList"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceClient;->f:Lcom/baidu/trace/LBSTraceClient$a;

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/trace/a;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/FenceListRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    :cond_0
    return-void
.end method

.method public final queryHistoryTrack(Lcom/baidu/trace/api/track/HistoryTrackRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V
    .locals 1

    const-string v0, "queryHistoryTrack"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/track/HistoryTrackRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V

    :cond_0
    return-void
.end method

.method public final queryLatestPoint(Lcom/baidu/trace/api/track/LatestPointRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V
    .locals 1

    const-string v0, "queryLatestPoint"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/track/LatestPointRequest;Lcom/baidu/trace/api/track/OnTrackListener;)V

    :cond_0
    return-void
.end method

.method public final queryMonitoredStatus(Lcom/baidu/trace/api/fence/MonitoredStatusRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 2

    const-string v0, "queryMonitoredStatus"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceClient;->f:Lcom/baidu/trace/LBSTraceClient$a;

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/trace/a;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/MonitoredStatusRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    :cond_0
    return-void
.end method

.method public final queryMonitoredStatusByLocation(Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 2

    const-string v0, "queryMonitoredStatusByLocation"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceClient;->f:Lcom/baidu/trace/LBSTraceClient$a;

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/trace/a;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/api/fence/MonitoredStatusByLocationRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    :cond_0
    return-void
.end method

.method public final queryRealTimeLoc(Lcom/baidu/trace/api/entity/LocRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "queryRealTimeLoc"

    invoke-static {v3, v0, v2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v1, Lcom/baidu/trace/LBSTraceClient;->k:Lcom/baidu/trace/ar;

    if-nez v3, :cond_2

    const-class v3, Lcom/baidu/trace/LBSTraceClient;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lcom/baidu/trace/LBSTraceClient;->k:Lcom/baidu/trace/ar;

    if-nez v4, :cond_1

    new-instance v4, Lcom/baidu/trace/ar;

    iget-object v5, v1, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    iget-object v6, v1, Lcom/baidu/trace/LBSTraceClient;->f:Lcom/baidu/trace/LBSTraceClient$a;

    invoke-direct {v4, v5, v6}, Lcom/baidu/trace/ar;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, v1, Lcom/baidu/trace/LBSTraceClient;->k:Lcom/baidu/trace/ar;

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    :goto_0
    new-instance v3, Lcom/baidu/trace/model/TraceLocation;

    move-object v4, v3

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/trace/api/entity/LocRequest;->getTag()I

    move-result v5

    const/4 v6, 0x0

    const-string v7, "\u6210\u529f"

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    sget-object v15, Lcom/baidu/trace/model/CoordType;->bd09ll:Lcom/baidu/trace/model/CoordType;

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, ""

    invoke-direct/range {v4 .. v21}, Lcom/baidu/trace/model/TraceLocation;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDLcom/baidu/trace/model/CoordType;DFFILjava/lang/String;)V

    iget-object v4, v1, Lcom/baidu/trace/LBSTraceClient;->k:Lcom/baidu/trace/ar;

    iget-object v5, v1, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    iget-object v6, v1, Lcom/baidu/trace/LBSTraceClient;->f:Lcom/baidu/trace/LBSTraceClient$a;

    invoke-virtual {v4, v5, v6, v3}, Lcom/baidu/trace/ar;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/baidu/trace/model/TraceLocation;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/trace/api/entity/LocRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/baidu/trace/model/LocType;->GPS:Lcom/baidu/trace/model/LocType;

    invoke-virtual {v3, v0}, Lcom/baidu/trace/model/TraceLocation;->setLocType(Lcom/baidu/trace/model/LocType;)V

    invoke-virtual {v2, v3}, Lcom/baidu/trace/api/entity/OnEntityListener;->onReceiveLocation(Lcom/baidu/trace/model/TraceLocation;)V

    return-void

    :cond_3
    iget-object v3, v1, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/baidu/trace/aa;->a(Landroid/content/Context;Lcom/baidu/trace/api/entity/LocRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V

    :cond_4
    return-void
.end method

.method public final queryStayPoint(Lcom/baidu/trace/api/analysis/StayPointRequest;Lcom/baidu/trace/api/analysis/OnAnalysisListener;)V
    .locals 1

    const-string v0, "queryStayPoint"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/analysis/StayPointRequest;Lcom/baidu/trace/api/analysis/OnAnalysisListener;)V

    :cond_0
    return-void
.end method

.method public final searchEntity(Lcom/baidu/trace/api/entity/SearchRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 1

    const-string v0, "searchEntity"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/entity/SearchRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V

    :cond_0
    return-void
.end method

.method public final setCacheSize(I)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x32

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/trace/LBSTraceClient;->d:Lcom/baidu/trace/IService;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/baidu/trace/Trace;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/baidu/trace/am;->a(I)V

    return v2

    :cond_1
    return v0

    :cond_2
    :try_start_0
    invoke-interface {v1, p1}, Lcom/baidu/trace/IService;->setCacheSize(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/baidu/trace/am;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    :cond_3
    return v0
.end method

.method public final setInterval(II)Z
    .locals 3

    const/4 v0, 0x0

    if-lez p1, :cond_2

    const/16 v1, 0x12c

    if-gt p1, v1, :cond_2

    if-lt p2, p1, :cond_2

    const/4 v2, 0x2

    if-lt p2, v2, :cond_2

    if-gt p2, v1, :cond_2

    rem-int v1, p2, p1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/baidu/trace/Trace;->a(II)Z

    move-result v1

    iget-object v2, p0, Lcom/baidu/trace/LBSTraceClient;->d:Lcom/baidu/trace/IService;

    if-nez v2, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/baidu/trace/IService;->setInterval(II)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public final setLocTimeOffset(I)Z
    .locals 3

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/baidu/trace/Trace;->b(I)Z

    move-result v1

    iget-object v2, p0, Lcom/baidu/trace/LBSTraceClient;->d:Lcom/baidu/trace/IService;

    if-nez v2, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-interface {v2, p1}, Lcom/baidu/trace/IService;->setLocTimeOffset(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public final setLocationMode(Lcom/baidu/trace/model/LocationMode;)Lcom/baidu/trace/LBSTraceClient;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/baidu/trace/model/LocationMode;->High_Accuracy:Lcom/baidu/trace/model/LocationMode;

    :cond_0
    iput-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->g:Lcom/baidu/trace/model/LocationMode;

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->d:Lcom/baidu/trace/IService;

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/trace/model/LocationMode;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/baidu/trace/IService;->setLocationMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public final setOnCustomAttributeListener(Lcom/baidu/trace/model/OnCustomAttributeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->i:Lcom/baidu/trace/model/OnCustomAttributeListener;

    return-void
.end method

.method public final setOnTraceListener(Lcom/baidu/trace/model/OnTraceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    return-void
.end method

.method public final setProtocolType(Lcom/baidu/trace/model/ProtocolType;)Lcom/baidu/trace/LBSTraceClient;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/baidu/trace/model/ProtocolType;->HTTPS:Lcom/baidu/trace/model/ProtocolType;

    :cond_0
    sput-object p1, Lcom/baidu/trace/c/a;->b:Lcom/baidu/trace/model/ProtocolType;

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->d:Lcom/baidu/trace/IService;

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/baidu/trace/c/a;->b:Lcom/baidu/trace/model/ProtocolType;

    invoke-virtual {v0}, Lcom/baidu/trace/model/ProtocolType;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/baidu/trace/IService;->setProtocolType(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public final startGather(Lcom/baidu/trace/model/OnTraceListener;)V
    .locals 4

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    :cond_0
    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->d:Lcom/baidu/trace/IService;

    const-string v0, "\u670d\u52a1\u672a\u5f00\u542f"

    const/16 v1, 0x2ee2

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    const-class v2, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/baidu/trace/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->c:Landroid/content/Intent;

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    const-class v1, Lcom/baidu/trace/LBSTraceService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->c:Landroid/content/Intent;

    :cond_1
    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->c:Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "operateType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/baidu/trace/LBSTraceClient;->b()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    if-eqz p1, :cond_3

    invoke-interface {p1, v1, v0}, Lcom/baidu/trace/model/OnTraceListener;->onStartGatherCallback(ILjava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :try_start_0
    invoke-interface {p1}, Lcom/baidu/trace/IService;->startGather()I

    move-result p1

    iget-object v2, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    if-nez v2, :cond_5

    return-void

    :cond_5
    const/16 v2, 0x34

    if-ne v2, p1, :cond_6

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    const/4 v2, 0x0

    const-string v3, "\u6210\u529f"

    :goto_0
    invoke-interface {p1, v2, v3}, Lcom/baidu/trace/model/OnTraceListener;->onStartGatherCallback(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    const/16 v2, 0x36

    if-ne v2, p1, :cond_7

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    const/16 v2, 0x2ee3

    const-string v3, "\u91c7\u96c6\u5df2\u5f00\u542f"

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    const/16 v2, 0x2ee1

    const-string v3, "\u91c7\u96c6\u5f00\u542f\u5931\u8d25"

    invoke-interface {p1, v2, v3}, Lcom/baidu/trace/model/OnTraceListener;->onStartGatherCallback(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    if-nez p1, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    const-class v2, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/baidu/trace/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    invoke-interface {p1, v1, v0}, Lcom/baidu/trace/model/OnTraceListener;->onStartGatherCallback(ILjava/lang/String;)V

    return-void

    :cond_9
    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    const/16 v0, 0x2ee0

    const-string v1, "\u8bf7\u6c42\u53d1\u9001\u5931\u8d25"

    invoke-interface {p1, v0, v1}, Lcom/baidu/trace/model/OnTraceListener;->onStartGatherCallback(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final startTrace(Lcom/baidu/trace/Trace;Lcom/baidu/trace/model/OnTraceListener;)V
    .locals 6

    const-string v0, "BaiduTraceSDK"

    if-nez p1, :cond_0

    const-string p1, "Trace instance is null"

    invoke-static {v0, p1}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/trace/LBSTraceClient;->c()V

    sget-object p2, Lcom/baidu/trace/LBSTraceClient;->a:Lcom/baidu/trace/LBSTraceClient;

    if-nez p2, :cond_2

    sput-object p0, Lcom/baidu/trace/LBSTraceClient;->a:Lcom/baidu/trace/LBSTraceClient;

    :cond_2
    invoke-virtual {p1}, Lcom/baidu/trace/Trace;->getServiceId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/16 p2, 0x2712

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    const-string v1, "service_id\u53c2\u6570\u9519\u8bef"

    invoke-interface {p1, p2, v1}, Lcom/baidu/trace/model/OnTraceListener;->onStartTraceCallback(ILjava/lang/String;)V

    const-string p1, "serviceId is invalid"

    :goto_0
    invoke-static {v0, p1}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    sput-wide v1, Lcom/baidu/trace/z;->b:J

    sget-object v3, Lcom/baidu/trace/d;->b:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    invoke-virtual {v3}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    const-string v1, "ak\u53c2\u6570\u9519\u8bef"

    invoke-interface {p1, p2, v1}, Lcom/baidu/trace/model/OnTraceListener;->onStartTraceCallback(ILjava/lang/String;)V

    const-string p1, "ak is empty string or null"

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/baidu/trace/Trace;->getEntityName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/trace/c/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    const-string v1, "entity_name\u53c2\u6570\u9519\u8bef"

    invoke-interface {p1, p2, v1}, Lcom/baidu/trace/model/OnTraceListener;->onStartTraceCallback(ILjava/lang/String;)V

    const-string p1, "entityName is empty string or null"

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/baidu/trace/LBSTraceClient;->c:Landroid/content/Intent;

    if-nez p2, :cond_6

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    const-class v5, Lcom/baidu/trace/LBSTraceService;

    invoke-direct {p2, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/baidu/trace/LBSTraceClient;->c:Landroid/content/Intent;

    :cond_6
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "locationMode"

    iget-object v5, p0, Lcom/baidu/trace/LBSTraceClient;->g:Lcom/baidu/trace/model/LocationMode;

    invoke-virtual {v5}, Lcom/baidu/trace/model/LocationMode;->ordinal()I

    move-result v5

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "protocolType"

    sget-object v5, Lcom/baidu/trace/c/a;->b:Lcom/baidu/trace/model/ProtocolType;

    invoke-virtual {v5}, Lcom/baidu/trace/model/ProtocolType;->ordinal()I

    move-result v5

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "gatherInterval"

    sget v5, Lcom/baidu/trace/Trace;->a:I

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "packInterval"

    sget v5, Lcom/baidu/trace/Trace;->b:I

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "locTimeOffset"

    sget v5, Lcom/baidu/trace/Trace;->d:I

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "serviceId"

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "isNeedObjectStorage"

    invoke-virtual {p1}, Lcom/baidu/trace/Trace;->isNeedObjectStorage()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "ak"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "entityName"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mcode"

    sget-object v1, Lcom/baidu/trace/d;->b:Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;

    invoke-virtual {v1}, Lcom/baidu/lbsapi/auth/tracesdk/LBSAuthManager;->getMCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pcn"

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/trace/c/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x32

    sget v1, Lcom/baidu/trace/Trace;->c:I

    if-gt v0, v1, :cond_7

    const-string v0, "cacheSize"

    sget v1, Lcom/baidu/trace/Trace;->c:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    invoke-virtual {p1}, Lcom/baidu/trace/Trace;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "notification"

    invoke-virtual {p1}, Lcom/baidu/trace/Trace;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_8
    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->c:Landroid/content/Intent;

    const-string v0, "initData"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->c:Landroid/content/Intent;

    const-string p2, "operateType"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->c:Landroid/content/Intent;

    const-string p2, "processID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/baidu/trace/LBSTraceClient;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    if-eqz p1, :cond_9

    const/16 p2, 0x2710

    const-string v0, "\u8bf7\u6c42\u53d1\u9001\u5931\u8d25"

    invoke-interface {p1, p2, v0}, Lcom/baidu/trace/model/OnTraceListener;->onStartTraceCallback(ILjava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public final stopGather(Lcom/baidu/trace/model/OnTraceListener;)V
    .locals 4

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    :cond_0
    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->d:Lcom/baidu/trace/IService;

    const-string v0, "\u670d\u52a1\u672a\u5f00\u542f"

    const/16 v1, 0x32ca

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    const-class v2, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/baidu/trace/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->c:Landroid/content/Intent;

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    const-class v1, Lcom/baidu/trace/LBSTraceService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->c:Landroid/content/Intent;

    :cond_1
    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->c:Landroid/content/Intent;

    const/4 v0, 0x2

    const-string v1, "operateType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/baidu/trace/LBSTraceClient;->b()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    if-eqz p1, :cond_3

    invoke-interface {p1, v1, v0}, Lcom/baidu/trace/model/OnTraceListener;->onStopGatherCallback(ILjava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :try_start_0
    invoke-interface {p1}, Lcom/baidu/trace/IService;->stopGather()I

    move-result p1

    iget-object v2, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    if-nez v2, :cond_5

    return-void

    :cond_5
    const/16 v2, 0x37

    if-ne v2, p1, :cond_6

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    const/4 v2, 0x0

    const-string v3, "\u6210\u529f"

    :goto_0
    invoke-interface {p1, v2, v3}, Lcom/baidu/trace/model/OnTraceListener;->onStopGatherCallback(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    const/16 v2, 0x39

    if-ne v2, p1, :cond_7

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    const/16 v2, 0x32cb

    const-string v3, "\u91c7\u96c6\u5df2\u505c\u6b62"

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    const/16 v2, 0x32c9

    const-string v3, "\u91c7\u96c6\u505c\u6b62\u5931\u8d25"

    invoke-interface {p1, v2, v3}, Lcom/baidu/trace/model/OnTraceListener;->onStopGatherCallback(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    if-nez p1, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    const-class v2, Lcom/baidu/trace/LBSTraceService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/baidu/trace/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    invoke-interface {p1, v1, v0}, Lcom/baidu/trace/model/OnTraceListener;->onStopGatherCallback(ILjava/lang/String;)V

    return-void

    :cond_9
    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    const/16 v0, 0x32c8

    const-string v1, "\u8bf7\u6c42\u53d1\u9001\u5931\u8d25"

    invoke-interface {p1, v0, v1}, Lcom/baidu/trace/model/OnTraceListener;->onStartGatherCallback(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final stopRealTimeLoc()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->k:Lcom/baidu/trace/ar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/trace/ar;->b()V

    :cond_0
    return-void
.end method

.method public final stopTrace(Lcom/baidu/trace/Trace;Lcom/baidu/trace/model/OnTraceListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "BaiduTraceSDK"

    const-string p2, "Trace instance is null"

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    :cond_1
    iget-object p2, p0, Lcom/baidu/trace/LBSTraceClient;->d:Lcom/baidu/trace/IService;

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    if-eqz p1, :cond_2

    const/16 p2, 0x2afa

    const-string v0, "\u670d\u52a1\u672a\u5f00\u542f"

    invoke-interface {p1, p2, v0}, Lcom/baidu/trace/model/OnTraceListener;->onStopTraceCallback(ILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/trace/Trace;->getServiceId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/baidu/trace/Trace;->getEntityName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, v1, p1}, Lcom/baidu/trace/IService;->stopTrace(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    iget-object p1, p0, Lcom/baidu/trace/LBSTraceClient;->h:Lcom/baidu/trace/model/OnTraceListener;

    if-eqz p1, :cond_4

    const/16 p2, 0x2af8

    const-string v0, "\u8bf7\u6c42\u53d1\u9001\u5931\u8d25"

    invoke-interface {p1, p2, v0}, Lcom/baidu/trace/model/OnTraceListener;->onStopTraceCallback(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final updateEntity(Lcom/baidu/trace/api/entity/UpdateEntityRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V
    .locals 1

    const-string v0, "updateEntity"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/baidu/trace/a;->a(Lcom/baidu/trace/api/entity/UpdateEntityRequest;Lcom/baidu/trace/api/entity/OnEntityListener;)V

    :cond_0
    return-void
.end method

.method public final updateFence(Lcom/baidu/trace/api/fence/UpdateFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V
    .locals 3

    const-string v0, "updateFence"

    invoke-static {v0, p1, p2}, Lcom/baidu/trace/a;->a(Ljava/lang/String;Lcom/baidu/trace/model/BaseRequest;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/LBSTraceClient;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/trace/LBSTraceClient;->d:Lcom/baidu/trace/IService;

    iget-object v2, p0, Lcom/baidu/trace/LBSTraceClient;->f:Lcom/baidu/trace/LBSTraceClient$a;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/baidu/trace/a;->a(Landroid/content/Context;Lcom/baidu/trace/IService;Landroid/os/Handler;Lcom/baidu/trace/api/fence/UpdateFenceRequest;Lcom/baidu/trace/api/fence/OnFenceListener;)V

    :cond_0
    return-void
.end method
