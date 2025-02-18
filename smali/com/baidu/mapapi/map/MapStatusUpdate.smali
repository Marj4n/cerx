.class public final Lcom/baidu/mapapi/map/MapStatusUpdate;
.super Ljava/lang/Object;


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field a:I

.field b:Lcom/baidu/mapapi/map/MapStatus;

.field c:Lcom/baidu/mapapi/model/LatLng;

.field d:Lcom/baidu/mapapi/model/LatLngBounds;

.field e:I

.field f:I

.field g:F

.field h:I

.field i:I

.field j:F

.field k:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/mapapi/map/MapStatusUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->l:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->a:I

    return-void
.end method


# virtual methods
.method a(Lcom/baidu/platform/comapi/map/e;Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatus;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    iget v2, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->a:I

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    return-object v1

    :pswitch_0
    iget-object v2, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->d:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v2, v2, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->d:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v3, v3, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v3}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v3

    invoke-virtual {v2}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v6

    invoke-virtual {v3}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v9

    invoke-virtual {v2}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    double-to-int v4, v4

    double-to-int v5, v6

    double-to-int v6, v9

    double-to-int v7, v2

    iget v9, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->e:I

    iget v10, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->f:I

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v9

    move v7, v10

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/platform/comapi/map/e;->a(IIIIII)F

    move-result v15

    iget-object v1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->d:Lcom/baidu/mapapi/model/LatLngBounds;

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLngBounds;->getCenter()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v13

    new-instance v1, Lcom/baidu/mapapi/map/MapStatus;

    iget v12, v8, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget v14, v8, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iget-object v2, v8, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    const/16 v17, 0x0

    move-object v11, v1

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v17}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v1

    :pswitch_1
    new-instance v1, Lcom/baidu/mapapi/map/MapStatus;

    iget v2, v8, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget-object v3, v8, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    iget v4, v8, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iget v5, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->g:F

    iget-object v6, v8, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/map/MapStatus;->a()D

    move-result-wide v24

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/map/MapStatus;->b()D

    move-result-wide v26

    const/16 v28, 0x0

    move-object/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    invoke-direct/range {v18 .. v28}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;DDLcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v1

    :pswitch_2
    iget-object v2, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->k:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->k:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comapi/map/e;->b(II)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    new-instance v1, Lcom/baidu/mapapi/map/MapStatus;

    iget v3, v8, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget v5, v8, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iget v2, v8, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    iget v6, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->j:F

    add-float/2addr v6, v2

    iget-object v7, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->k:Landroid/graphics/Point;

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v1

    :pswitch_3
    new-instance v1, Lcom/baidu/mapapi/map/MapStatus;

    iget v10, v8, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget-object v11, v8, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    iget v12, v8, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iget v2, v8, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    iget v3, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->j:F

    add-float v13, v2, v3

    iget-object v14, v8, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/map/MapStatus;->a()D

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/map/MapStatus;->b()D

    move-result-wide v17

    const/16 v19, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v19}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;DDLcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v1

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/platform/comapi/map/e;->F()I

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/platform/comapi/map/e;->F()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->h:I

    add-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/platform/comapi/map/e;->G()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->i:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comapi/map/e;->b(II)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    new-instance v13, Lcom/baidu/mapapi/map/MapStatus;

    iget v3, v8, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget v5, v8, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iget v6, v8, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    iget-object v7, v8, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v8

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v10

    const/4 v12, 0x0

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;DDLcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v13

    :pswitch_5
    new-instance v1, Lcom/baidu/mapapi/map/MapStatus;

    iget v15, v8, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget-object v2, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLng;

    iget v3, v8, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iget v4, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->g:F

    iget-object v5, v8, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    const/16 v20, 0x0

    move-object v14, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    invoke-direct/range {v14 .. v20}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v1

    :pswitch_6
    iget-object v2, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->d:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v2, v2, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->d:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v3, v3, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v3}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v3

    invoke-virtual {v2}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v6

    invoke-virtual {v3}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v9

    invoke-virtual {v2}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    double-to-int v4, v4

    double-to-int v5, v6

    double-to-int v6, v9

    double-to-int v7, v2

    iget-object v2, v8, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/platform/comapi/map/E;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v2, v2, Lcom/baidu/mapapi/map/WinRound;->right:I

    iget-object v3, v8, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/platform/comapi/map/E;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v3, v3, Lcom/baidu/mapapi/map/WinRound;->left:I

    sub-int v9, v2, v3

    iget-object v2, v8, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/platform/comapi/map/E;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v2, v2, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    iget-object v3, v8, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/platform/comapi/map/E;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v3, v3, Lcom/baidu/mapapi/map/WinRound;->top:I

    sub-int v10, v2, v3

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v9

    move v7, v10

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/platform/comapi/map/e;->a(IIIIII)F

    move-result v15

    iget-object v1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->d:Lcom/baidu/mapapi/model/LatLngBounds;

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLngBounds;->getCenter()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v13

    new-instance v1, Lcom/baidu/mapapi/map/MapStatus;

    iget v12, v8, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget v14, v8, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iget-object v2, v8, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    const/16 v17, 0x0

    move-object v11, v1

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v17}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v1

    :pswitch_7
    new-instance v1, Lcom/baidu/mapapi/map/MapStatus;

    iget v4, v8, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget-object v5, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLng;

    iget v6, v8, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iget v7, v8, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    iget-object v8, v8, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v1

    :pswitch_8
    iget-object v1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->b:Lcom/baidu/mapapi/map/MapStatus;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
