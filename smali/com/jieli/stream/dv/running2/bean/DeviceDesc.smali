.class public Lcom/jieli/stream/dv/running2/bean/DeviceDesc;
.super Ljava/lang/Object;
.source "DeviceDesc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/bean/DeviceDesc$AppListBean;
    }
.end annotation


# instance fields
.field private app_list:Lcom/jieli/stream/dv/running2/bean/DeviceDesc$AppListBean;

.field private device_type:Ljava/lang/String;

.field private firmware_version:Ljava/lang/String;

.field private front_support:[Ljava/lang/String;

.field private match_app_type:Ljava/lang/String;

.field private netMode:I

.field private product_type:Ljava/lang/String;

.field private rear_support:[Ljava/lang/String;

.field private recordFrontSupport:[Ljava/lang/String;

.field private recordRearSupport:[Ljava/lang/String;

.field private rtspFrontSupport:[Ljava/lang/String;

.field private rtspRearSupport:[Ljava/lang/String;

.field private support_bumping:Z

.field private support_projection:Z

.field private uuid:Ljava/lang/String;

.field private videoType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    .line 30
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->device_type:Ljava/lang/String;

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->videoType:I

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->netMode:I

    return-void
.end method


# virtual methods
.method public getApp_list()Lcom/jieli/stream/dv/running2/bean/DeviceDesc$AppListBean;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->app_list:Lcom/jieli/stream/dv/running2/bean/DeviceDesc$AppListBean;

    return-object v0
.end method

.method public getDevice_type()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->device_type:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmware_version()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->firmware_version:Ljava/lang/String;

    return-object v0
.end method

.method public getFront_support()[Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->front_support:[Ljava/lang/String;

    return-object v0
.end method

.method public getMatch_app_type()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->match_app_type:Ljava/lang/String;

    return-object v0
.end method

.method public getNetMode()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->netMode:I

    return v0
.end method

.method public getProduct_type()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->product_type:Ljava/lang/String;

    return-object v0
.end method

.method public getRear_support()[Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->rear_support:[Ljava/lang/String;

    return-object v0
.end method

.method public getRecordFrontSupport()[Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->recordFrontSupport:[Ljava/lang/String;

    return-object v0
.end method

.method public getRecordRearSupport()[Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->recordRearSupport:[Ljava/lang/String;

    return-object v0
.end method

.method public getRtspFrontSupport()[Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->rtspFrontSupport:[Ljava/lang/String;

    return-object v0
.end method

.method public getRtspRearSupport()[Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->rtspRearSupport:[Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoType()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->videoType:I

    return v0
.end method

.method public isSupport_bumping()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->support_bumping:Z

    return v0
.end method

.method public isSupport_projection()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->support_projection:Z

    return v0
.end method

.method public setApp_list(Lcom/jieli/stream/dv/running2/bean/DeviceDesc$AppListBean;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->app_list:Lcom/jieli/stream/dv/running2/bean/DeviceDesc$AppListBean;

    return-void
.end method

.method public setDevice_type(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->device_type:Ljava/lang/String;

    return-void
.end method

.method public setFirmware_version(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->firmware_version:Ljava/lang/String;

    return-void
.end method

.method public setFront_support([Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->front_support:[Ljava/lang/String;

    return-void
.end method

.method public setMatch_app_type(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->match_app_type:Ljava/lang/String;

    return-void
.end method

.method public setNetMode(I)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->netMode:I

    return-void
.end method

.method public setProduct_type(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->product_type:Ljava/lang/String;

    return-void
.end method

.method public setRear_support([Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->rear_support:[Ljava/lang/String;

    return-void
.end method

.method public setRecordFrontSupport([Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->recordFrontSupport:[Ljava/lang/String;

    return-void
.end method

.method public setRecordRearSupport([Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->recordRearSupport:[Ljava/lang/String;

    return-void
.end method

.method public setRtspFrontSupport([Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->rtspFrontSupport:[Ljava/lang/String;

    return-void
.end method

.method public setRtspRearSupport([Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->rtspRearSupport:[Ljava/lang/String;

    return-void
.end method

.method public setSupport_bumping(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->support_bumping:Z

    return-void
.end method

.method public setSupport_projection(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->support_projection:Z

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVideoType(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->videoType:I

    return-void
.end method
