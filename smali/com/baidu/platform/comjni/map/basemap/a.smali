.class public Lcom/baidu/platform/comjni/map/basemap/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:J

.field private c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/platform/comjni/map/basemap/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comjni/map/basemap/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/platform/comjni/map/basemap/a;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    new-instance v0, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    return-void
.end method

.method public static a(JIII)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->MapProc(JIII)I

    move-result p0

    return p0
.end method

.method public static b(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->SetMapCustomEnable(JZ)V

    return-void
.end method

.method public static d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/platform/comjni/map/basemap/a;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->SetMapControlMode(JI)I

    move-result p1

    return p1
.end method

.method public a(IILjava/lang/String;)J
    .locals 6

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->AddLayer(JIILjava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(II)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ScrPtToGeoPoint(JII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(IIII)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    int-to-long v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->GetNearlyObjID(JJIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnSchcityGet(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(JZ)V
    .locals 6

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ShowLayers(JJZ)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->SetMapStatus(JLandroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->SaveScreenToLocal(JLjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ShowSatelliteMap(JZ)V

    return-void
.end method

.method public a([Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    array-length v3, p1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->addOverlayItems(J[Landroid/os/Bundle;I)V

    return-void
.end method

.method public a()Z
    .locals 4

    sget-object v0, Lcom/baidu/platform/comjni/map/basemap/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->Create()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    sget-object v1, Lcom/baidu/platform/comjni/map/basemap/a;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, v1, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->CreateDuplicate(J)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    iput-wide v1, v0, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->a:J

    sget-object v0, Lcom/baidu/platform/comjni/map/basemap/a;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->SetCallback(JLcom/baidu/platform/comjni/map/basemap/BaseMapCallback;)I

    const/4 v0, 0x1

    return v0
.end method

.method public a(IZ)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordReload(JIZ)Z

    move-result p1

    return p1
.end method

.method public a(IZI)Z
    .locals 6

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordStart(JIZI)Z

    move-result p1

    return p1
.end method

.method public a(J)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->LayersIsShow(JJ)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->SwitchBaseIndoorMapFloor(JLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIII)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    iget-object v1, v0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v2, v0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual/range {v1 .. v18}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->Init(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIII)Z

    move-result v1

    return v1
.end method

.method public a(ZZ)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordImport(JZZ)Z

    move-result p1

    return p1
.end method

.method public a([III)[I
    .locals 6

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->GetScreenBuf(J[III)[I

    move-result-object p1

    return-object p1
.end method

.method public b(II)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->GeoPtToScrPoint(JII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(J)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->UpdateLayers(JJ)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->setMapStatusLimits(JLandroid/os/Bundle;)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ShowHotMap(JZ)V

    return-void
.end method

.method public b()Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->Release(J)I

    sget-object v0, Lcom/baidu/platform/comjni/map/basemap/a;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public b(I)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordAdd(JI)Z

    move-result p1

    return p1
.end method

.method public b(IZ)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordRemove(JIZ)Z

    move-result p1

    return p1
.end method

.method public b(IZI)Z
    .locals 6

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordSuspend(JIZI)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/os/Bundle;)F
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->GetZoomToBound(JLandroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    return-wide v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordGetAt(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ShowTrafficMap(JZ)V

    return-void
.end method

.method public c(J)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->cleanSDKTileDataCache(JJ)Z

    move-result p1

    return p1
.end method

.method public d(J)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ClearLayer(JJ)V

    return-void
.end method

.method public d(Z)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->enableDrawHouseHeight(JZ)V

    return-void
.end method

.method public d(Landroid/os/Bundle;)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->updateSDKTile(JLandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public e(J)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->getCompassPosition(JJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnPause(J)V

    return-void
.end method

.method public e(Z)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ShowBaseIndoorMap(JZ)V

    return-void
.end method

.method public e(Landroid/os/Bundle;)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->addtileOverlay(JLandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnResume(J)V

    return-void
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->addOneOverlayItem(JLandroid/os/Bundle;)V

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnBackground(J)V

    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->updateOneOverlayItem(JLandroid/os/Bundle;)V

    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnForeground(J)V

    return-void
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->removeOneOverlayItem(JLandroid/os/Bundle;)V

    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ResetImageRes(J)V

    return-void
.end method

.method public j()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->GetMapStatus(J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->getMapStatusLimits(J)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetMapStatusLimits, maddr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "bundle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "test"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public l()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->getDrawingMapStatus(J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->GetBaiduHotMapCityInfo(J)Z

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordGetAll(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnHotcityGet(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->PostStatInfo(J)V

    return-void
.end method

.method public q()Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->isDrawHouseHeightEnable(J)Z

    move-result v0

    return v0
.end method

.method public r()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->clearHeatMapLayerCache(J)V

    return-void
.end method

.method public s()Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;
    .locals 6

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->getfocusedBaseIndoorMapInfo(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, ""

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "focusindoorid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "curfloor"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "floorlist"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    new-instance v0, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;

    invoke-direct {v0, v2, v3, v4}, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public t()Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->IsBaseIndoorMapMode(J)Z

    move-result v0

    return v0
.end method
