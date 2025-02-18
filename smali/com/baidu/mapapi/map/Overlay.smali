.class public abstract Lcom/baidu/mapapi/map/Overlay;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/Overlay$a;
    }
.end annotation


# instance fields
.field protected listener:Lcom/baidu/mapapi/map/Overlay$a;

.field p:Ljava/lang/String;

.field q:I

.field r:Z

.field s:Landroid/os/Bundle;

.field public type:Lcom/baidu/platform/comapi/map/h;


# direct methods
.method protected constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->p:Ljava/lang/String;

    return-void
.end method

.method static a(ILandroid/os/Bundle;)V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    ushr-int/lit8 v1, p0, 0x18

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p0, p0, 0xff

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    const-string v5, "red"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    int-to-float v2, v3

    div-float/2addr v2, v4

    const-string v3, "green"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    int-to-float p0, p0

    div-float/2addr p0, v4

    const-string v2, "blue"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    int-to-float p0, v1

    div-float/2addr p0, v4

    const-string v1, "alpha"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "color"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static a(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [D

    new-array v2, v0, [D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    aput-wide v5, v1, v3

    invoke-virtual {v4}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "x_array"

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string p0, "y_array"

    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-void
.end method


# virtual methods
.method a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapapi/map/Overlay;->p:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/Overlay;->type:Lcom/baidu/platform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/h;->ordinal()I

    move-result v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->p:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->type:Lcom/baidu/platform/comapi/map/h;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h;->ordinal()I

    move-result v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Overlay;->r:Z

    const-string v1, "visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/baidu/mapapi/map/Overlay;->q:I

    const-string v1, "z_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->s:Landroid/os/Bundle;

    return-object v0
.end method

.method public getZIndex()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/map/Overlay;->q:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Overlay;->r:Z

    return v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->a(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setExtraInfo(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/map/Overlay;->s:Landroid/os/Bundle;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Overlay;->r:Z

    iget-object p1, p0, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setZIndex(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/map/Overlay;->q:I

    iget-object p1, p0, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method
