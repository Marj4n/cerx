.class public Lcom/baidu/mapapi/map/offline/OfflineMapUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSearchRecordFromLocalCityInfo(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;-><init>()V

    iget v1, p0, Lcom/baidu/platform/comapi/map/t;->a:I

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;->cityID:I

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/t;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;->cityName:Ljava/lang/String;

    iget v1, p0, Lcom/baidu/platform/comapi/map/t;->d:I

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;->cityType:I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/t;->a()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/t;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/platform/comapi/map/t;

    invoke-static {v4}, Lcom/baidu/mapapi/map/offline/OfflineMapUtil;->getSearchRecordFromLocalCityInfo(Lcom/baidu/platform/comapi/map/t;)Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v4, Lcom/baidu/platform/comapi/map/t;->c:I

    add-int/2addr v1, v4

    iput-object v2, v0, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;->childCities:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;->cityType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;->size:I

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/baidu/platform/comapi/map/t;->c:I

    iput p0, v0, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;->size:I

    :goto_1
    return-object v0
.end method

.method public static getUpdatElementFromLocalMapElement(Lcom/baidu/platform/comapi/map/w;)Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;-><init>()V

    iget v1, p0, Lcom/baidu/platform/comapi/map/w;->a:I

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->cityID:I

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/w;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->cityName:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/w;->g:Lcom/baidu/mapapi/model/inner/GeoPoint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/w;->g:Lcom/baidu/mapapi/model/inner/GeoPoint;

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->geoPt:Lcom/baidu/mapapi/model/LatLng;

    :cond_1
    iget v1, p0, Lcom/baidu/platform/comapi/map/w;->e:I

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->level:I

    iget v1, p0, Lcom/baidu/platform/comapi/map/w;->i:I

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->ratio:I

    iget v1, p0, Lcom/baidu/platform/comapi/map/w;->h:I

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->serversize:I

    iget v1, p0, Lcom/baidu/platform/comapi/map/w;->i:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/baidu/platform/comapi/map/w;->h:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/baidu/platform/comapi/map/w;->h:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/platform/comapi/map/w;->i:I

    mul-int v1, v1, v2

    :goto_0
    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->size:I

    iget v1, p0, Lcom/baidu/platform/comapi/map/w;->l:I

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->status:I

    iget-boolean p0, p0, Lcom/baidu/platform/comapi/map/w;->j:Z

    iput-boolean p0, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->update:Z

    return-object v0
.end method
