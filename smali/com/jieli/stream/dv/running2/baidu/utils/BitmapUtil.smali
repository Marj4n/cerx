.class public Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field public static bmArrowPoint:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field public static bmEnd:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field public static bmGcoding:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field public static bmGeo:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field public static bmStart:Lcom/baidu/mapapi/map/BitmapDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 37
    sget-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;->bmArrowPoint:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->recycle()V

    .line 38
    sget-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;->bmStart:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->recycle()V

    .line 39
    sget-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;->bmEnd:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->recycle()V

    .line 40
    sget-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;->bmGeo:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->recycle()V

    return-void
.end method

.method public static getMark(Landroid/content/Context;I)Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 4

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "mipmap"

    const/16 v2, 0xa

    if-gt p1, v2, :cond_0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon_mark"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "icon_markx"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 51
    :goto_0
    invoke-static {p0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromResource(I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static init()V
    .locals 1

    .line 26
    sget v0, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_start_point:I

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromResource(I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    sput-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;->bmArrowPoint:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 27
    sget v0, Lcom/jieli/stream/dv/running2/R$mipmap;->icon_start:I

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromResource(I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    sput-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;->bmStart:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 28
    sget v0, Lcom/jieli/stream/dv/running2/R$mipmap;->icon_end:I

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromResource(I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    sput-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;->bmEnd:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 29
    sget v0, Lcom/jieli/stream/dv/running2/R$mipmap;->icon_geo:I

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromResource(I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    sput-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;->bmGeo:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 30
    sget v0, Lcom/jieli/stream/dv/running2/R$mipmap;->icon_gcoding:I

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromResource(I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    sput-object v0, Lcom/jieli/stream/dv/running2/baidu/utils/BitmapUtil;->bmGcoding:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-void
.end method
