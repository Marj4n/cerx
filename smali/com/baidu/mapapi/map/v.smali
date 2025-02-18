.class Lcom/baidu/mapapi/map/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/WearMapView;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/map/WearMapView;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/WearMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/WearMapView;

    invoke-static {p1}, Lcom/baidu/mapapi/map/WearMapView;->a(Lcom/baidu/mapapi/map/WearMapView;)Lcom/baidu/platform/comapi/map/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/j;->a()Lcom/baidu/platform/comapi/map/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/e;->D()Lcom/baidu/platform/comapi/map/E;

    move-result-object p1

    iget v0, p1, Lcom/baidu/platform/comapi/map/E;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/baidu/platform/comapi/map/E;->a:F

    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/WearMapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Lcom/baidu/mapapi/map/WearMapView;)Lcom/baidu/platform/comapi/map/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/j;->a()Lcom/baidu/platform/comapi/map/e;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, p1, v1}, Lcom/baidu/platform/comapi/map/e;->a(Lcom/baidu/platform/comapi/map/E;I)V

    return-void
.end method
