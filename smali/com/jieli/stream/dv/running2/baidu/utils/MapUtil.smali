.class public Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;
.super Ljava/lang/Object;
.source "MapUtil.java"


# static fields
.field private static INSTANCE:Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;


# instance fields
.field public baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

.field public lastPoint:Lcom/baidu/mapapi/model/LatLng;

.field private mMoveMarker:Lcom/baidu/mapapi/map/Marker;

.field private mapStatus:Lcom/baidu/mapapi/map/MapStatus;

.field public mapView:Lcom/baidu/mapapi/map/MapView;

.field public polylineOverlay:Lcom/baidu/mapapi/map/Overlay;

.field tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;-><init>()V

    sput-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->INSTANCE:Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mapStatus:Lcom/baidu/mapapi/map/MapStatus;

    .line 38
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mMoveMarker:Lcom/baidu/mapapi/map/Marker;

    .line 40
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mapView:Lcom/baidu/mapapi/map/MapView;

    .line 42
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 44
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->lastPoint:Lcom/baidu/mapapi/model/LatLng;

    .line 49
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->polylineOverlay:Lcom/baidu/mapapi/map/Overlay;

    return-void
.end method

.method public static convertMap2Trace(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/trace/model/LatLng;
    .locals 5

    .line 132
    new-instance v0, Lcom/baidu/trace/model/LatLng;

    iget-wide v1, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v3, p0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/trace/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public static convertTrace2Map(Lcom/baidu/trace/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;
    .locals 5

    .line 143
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, p0, Lcom/baidu/trace/model/LatLng;->latitude:D

    iget-wide v3, p0, Lcom/baidu/trace/model/LatLng;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public static convertTraceLocation2Map(Lcom/baidu/trace/model/TraceLocation;)Lcom/baidu/mapapi/model/LatLng;
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/trace/model/TraceLocation;->getLatitude()D

    move-result-wide v1

    .line 109
    invoke-virtual {p0}, Lcom/baidu/trace/model/TraceLocation;->getLongitude()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    sub-double v7, v1, v5

    .line 110
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v11, v7, v9

    if-gez v11, :cond_1

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v7, v5, v9

    if-gez v7, :cond_1

    return-object v0

    .line 113
    :cond_1
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 114
    sget-object v1, Lcom/baidu/trace/model/CoordType;->wgs84:Lcom/baidu/trace/model/CoordType;

    invoke-virtual {p0}, Lcom/baidu/trace/model/TraceLocation;->getCoordType()Lcom/baidu/trace/model/CoordType;

    move-result-object p0

    if-ne v1, p0, :cond_2

    .line 116
    new-instance p0, Lcom/baidu/mapapi/utils/CoordinateConverter;

    invoke-direct {p0}, Lcom/baidu/mapapi/utils/CoordinateConverter;-><init>()V

    .line 117
    sget-object v1, Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;->GPS:Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;

    invoke-virtual {p0, v1}, Lcom/baidu/mapapi/utils/CoordinateConverter;->from(Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;)Lcom/baidu/mapapi/utils/CoordinateConverter;

    .line 118
    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/utils/CoordinateConverter;->coord(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/utils/CoordinateConverter;

    .line 119
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/CoordinateConverter;->convert()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static getInstance()Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;
    .locals 1

    .line 55
    sget-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->INSTANCE:Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;

    return-object v0
.end method


# virtual methods
.method public addEndPointOverlay(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 330
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 331
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/model/LatLng;

    .line 332
    new-instance v0, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p1

    sget-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;->bmEnd:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->draggable(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p1

    .line 333
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    :cond_0
    return-void
.end method

.method public addMarker(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mMoveMarker:Lcom/baidu/mapapi/map/Marker;

    if-nez v0, :cond_0

    .line 209
    sget-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;->bmArrowPoint:Lcom/baidu/mapapi/map/BitmapDescriptor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->addOverlay(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/map/BitmapDescriptor;Landroid/os/Bundle;)Lcom/baidu/mapapi/map/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mMoveMarker:Lcom/baidu/mapapi/map/Marker;

    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->lastPoint:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->moveLooper(Lcom/baidu/mapapi/model/LatLng;)V

    goto :goto_0

    .line 216
    :cond_1
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->lastPoint:Lcom/baidu/mapapi/model/LatLng;

    .line 217
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Marker;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    :goto_0
    return-void
.end method

.method public addOverlay(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/map/BitmapDescriptor;Landroid/os/Bundle;)Lcom/baidu/mapapi/map/Marker;
    .locals 1

    .line 195
    new-instance v0, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p1

    .line 196
    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/map/MarkerOptions;->draggable(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p1

    .line 197
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {p2, p1}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/map/Marker;

    if-eqz p3, :cond_0

    .line 199
    invoke-virtual {p1, p3}, Lcom/baidu/mapapi/map/Marker;->setExtraInfo(Landroid/os/Bundle;)V

    :cond_0
    return-object p1
.end method

.method public animateMapStatus(Lcom/baidu/mapapi/model/LatLng;F)V
    .locals 1

    .line 312
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    .line 313
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->target(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/map/MapStatus$Builder;->zoom(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mapStatus:Lcom/baidu/mapapi/map/MapStatus;

    .line 314
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    :cond_0
    return-void
.end method

.method public animateMapStatus(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 299
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 303
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    .line 304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    .line 305
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object p1

    .line 308
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    :cond_2
    return-void

    .line 300
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->tag:Ljava/lang/String;

    const-string v0, "animateMapStatus:null error"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->lastPoint:Lcom/baidu/mapapi/model/LatLng;

    .line 78
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mMoveMarker:Lcom/baidu/mapapi/map/Marker;

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/Marker;->remove()V

    .line 80
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mMoveMarker:Lcom/baidu/mapapi/map/Marker;

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->polylineOverlay:Lcom/baidu/mapapi/map/Overlay;

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/Overlay;->remove()V

    .line 84
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->polylineOverlay:Lcom/baidu/mapapi/map/Overlay;

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BaiduMap;->clear()V

    .line 88
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 90
    :cond_2
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mapStatus:Lcom/baidu/mapapi/map/MapStatus;

    .line 91
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mapView:Lcom/baidu/mapapi/map/MapView;

    if-eqz v1, :cond_3

    .line 92
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView;->onDestroy()V

    .line 93
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mapView:Lcom/baidu/mapapi/map/MapView;

    :cond_3
    return-void
.end method

.method public clearMap()V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->clear()V

    :cond_0
    return-void
.end method

.method public drawHistoryTrack(Ljava/util/List;Lcom/baidu/trace/model/SortType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;",
            "Lcom/baidu/trace/model/SortType;",
            ")V"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->clear()V

    if-eqz p1, :cond_3

    .line 253
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 261
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 262
    new-instance p2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {p2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p2

    sget-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;->bmStart:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->draggable(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p2

    .line 263
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p2}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 264
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/model/LatLng;

    const/high16 p2, 0x41900000    # 18.0f

    invoke-virtual {p0, p1, p2}, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->animateMapStatus(Lcom/baidu/mapapi/model/LatLng;F)V

    return-void

    .line 270
    :cond_1
    sget-object v0, Lcom/baidu/trace/model/SortType;->asc:Lcom/baidu/trace/model/SortType;

    if-ne p2, v0, :cond_2

    .line 271
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/baidu/mapapi/model/LatLng;

    goto :goto_0

    .line 274
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/baidu/mapapi/model/LatLng;

    .line 279
    :goto_0
    new-instance v0, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v0, p2}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p2

    sget-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;->bmStart:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->draggable(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p2

    .line 284
    new-instance v0, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    const/16 v1, 0x1e

    const/16 v4, 0x90

    const/16 v5, 0xff

    invoke-static {v1, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, p2}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 288
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object p2

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->polylineOverlay:Lcom/baidu/mapapi/map/Overlay;

    .line 290
    new-instance p2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {p2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {p2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->flat(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p2

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p2, v0, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p2

    sget-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;->bmArrowPoint:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p2

    .line 291
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p2

    .line 292
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/baidu/utils/CommonUtil;->getAngle(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object p2

    .line 293
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p2}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object p2

    check-cast p2, Lcom/baidu/mapapi/map/Marker;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mMoveMarker:Lcom/baidu/mapapi/map/Marker;

    .line 295
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->animateMapStatus(Ljava/util/List;)V

    return-void

    .line 254
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->polylineOverlay:Lcom/baidu/mapapi/map/Overlay;

    if-eqz p1, :cond_4

    .line 255
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Overlay;->remove()V

    const/4 p1, 0x0

    .line 256
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->polylineOverlay:Lcom/baidu/mapapi/map/Overlay;

    :cond_4
    return-void
.end method

.method public init(Lcom/baidu/mapapi/map/MapView;)V
    .locals 1

    .line 59
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mapView:Lcom/baidu/mapapi/map/MapView;

    .line 60
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 61
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mapView:Lcom/baidu/mapapi/map/MapView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/MapView;->showZoomControls(Z)V

    return-void
.end method

.method public moveLooper(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 14

    .line 226
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mMoveMarker:Lcom/baidu/mapapi/map/Marker;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->lastPoint:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/Marker;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    .line 227
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mMoveMarker:Lcom/baidu/mapapi/map/Marker;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->lastPoint:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1, p1}, Lcom/jieli/stream/dv/running2/baidu/utils/CommonUtil;->getAngle(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/Marker;->setRotate(F)V

    .line 229
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->lastPoint:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/baidu/utils/CommonUtil;->getSlope(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v0

    .line 231
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->lastPoint:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmpl-double v8, v2, v4

    if-lez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 232
    :goto_0
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->lastPoint:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0, v1, v3}, Lcom/jieli/stream/dv/running2/baidu/utils/CommonUtil;->getInterception(DLcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v3

    if-eqz v2, :cond_1

    .line 233
    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/baidu/utils/CommonUtil;->getXMoveDistance(D)D

    move-result-wide v8

    goto :goto_1

    :cond_1
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/baidu/utils/CommonUtil;->getXMoveDistance(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    .line 235
    :goto_1
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->lastPoint:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v10, v5, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    :goto_2
    iget-wide v12, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v5, v10, v12

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    if-ne v5, v2, :cond_4

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v5, v0, v12

    if-eqz v5, :cond_3

    .line 239
    new-instance v5, Lcom/baidu/mapapi/model/LatLng;

    sub-double v12, v10, v3

    div-double/2addr v12, v0

    invoke-direct {v5, v10, v11, v12, v13}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    goto :goto_4

    .line 241
    :cond_3
    new-instance v5, Lcom/baidu/mapapi/model/LatLng;

    iget-object v12, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->lastPoint:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v12, v12, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v5, v10, v11, v12, v13}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 243
    :goto_4
    iget-object v12, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mMoveMarker:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v12, v5}, Lcom/baidu/mapapi/map/Marker;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    sub-double/2addr v10, v8

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mapView:Lcom/baidu/mapapi/map/MapView;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mapView:Lcom/baidu/mapapi/map/MapView;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onResume()V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    .line 325
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    .line 326
    invoke-virtual {p0, v0, v1}, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->setMapStatus(Lcom/baidu/mapapi/model/LatLng;F)V

    return-void
.end method

.method public setMapStatus(Lcom/baidu/mapapi/model/LatLng;F)V
    .locals 1

    .line 318
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    .line 319
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->target(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/map/MapStatus$Builder;->zoom(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->mapStatus:Lcom/baidu/mapapi/map/MapStatus;

    .line 320
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/baidu/utils/MapUtil;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    :cond_0
    return-void
.end method
