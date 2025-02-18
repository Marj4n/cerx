.class Lcom/baidu/mapapi/map/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/platform/comapi/map/L;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/BaiduMap;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIILandroid/content/Context;)Landroid/os/Bundle;
    .locals 0

    iget-object p4, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p4}, Lcom/baidu/mapapi/map/BaiduMap;->z(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p4, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p4}, Lcom/baidu/mapapi/map/BaiduMap;->A(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/TileOverlay;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p4}, Lcom/baidu/mapapi/map/BaiduMap;->A(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/TileOverlay;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/baidu/mapapi/map/TileOverlay;->a(III)Lcom/baidu/mapapi/map/Tile;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Tile;->toBundle()Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p2}, Lcom/baidu/mapapi/map/BaiduMap;->z(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p1}, Lcom/baidu/mapapi/map/BaiduMap;->z(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/baidu/mapapi/map/d;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p2}, Lcom/baidu/mapapi/map/BaiduMap;->z(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
