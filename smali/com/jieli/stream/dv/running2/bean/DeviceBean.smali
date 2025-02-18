.class public Lcom/jieli/stream/dv/running2/bean/DeviceBean;
.super Ljava/lang/Object;
.source "DeviceBean.java"


# instance fields
.field private mode:I

.field private version:D

.field private versionName:Ljava/lang/String;

.field private wifiIP:Ljava/lang/String;

.field private wifiSSID:Ljava/lang/String;

.field private wifiType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->mode:I

    return v0
.end method

.method public getVersion()D
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->version:D

    return-wide v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiIP()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->wifiIP:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSSID()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->wifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiType()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->wifiType:Ljava/lang/String;

    return-object v0
.end method

.method public setMode(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->mode:I

    return-void
.end method

.method public setVersion(D)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->version:D

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->versionName:Ljava/lang/String;

    return-void
.end method

.method public setWifiIP(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->wifiIP:Ljava/lang/String;

    return-void
.end method

.method public setWifiSSID(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->wifiSSID:Ljava/lang/String;

    return-void
.end method

.method public setWifiType(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->wifiType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->wifiSSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\",\n"

    const-string v2, ""

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"wifiSSID\" : \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->wifiSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->wifiIP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"wifiIP\" : \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->wifiIP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->wifiType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"wifiType\" : \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->wifiType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"mode\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->mode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->versionName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"versionName\" : \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"version\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->version:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
