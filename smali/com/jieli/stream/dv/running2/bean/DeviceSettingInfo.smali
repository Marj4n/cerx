.class public Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;
.super Ljava/lang/Object;
.source "DeviceSettingInfo.java"


# instance fields
.field private antiTremor:Z

.field private autoShutdown:I

.field private batStatus:I

.field private burstShot:Z

.field private cameraType:I

.field private doubleVideo:Z

.field private frontFormat:I

.field private frontLevel:I

.field private frontRate:I

.field private frontRecordLevel:I

.field private frontSampleRate:I

.field private gravitySensor:I

.field private isExistRearView:Z

.field private isOpenBootSound:Z

.field private isOpenProjection:Z

.field private isRTVoice:Z

.field private keyVoice:Z

.field private lanIndex:I

.field private leftStorage:I

.field private lightFrequece:I

.field private moveCheck:Z

.field private photoDate:Z

.field private photoExp:I

.field private photoIso:I

.field private photoQualityIndex:I

.field private photoReso:I

.field private photoSharpness:I

.field private rearFormat:I

.field private rearLevel:I

.field private rearRate:I

.field private rearRecordLevel:I

.field private rearSampleRate:I

.field private recordState:I

.field private screenOn:I

.field private selfTime:I

.field private totalStorage:I

.field private tvMode:I

.field private videoDate:Z

.field private videoExp:I

.field private videoInv:I

.field private videoLoop:I

.field private videoMic:Z

.field private videoParCar:Z

.field private videoWdr:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 108
    iput v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->cameraType:I

    .line 120
    iput v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontFormat:I

    const/16 v1, 0x1e

    .line 123
    iput v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontRate:I

    .line 132
    iput v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearFormat:I

    .line 135
    iput v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearRate:I

    const/16 v0, 0x1f40

    .line 138
    iput v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearSampleRate:I

    .line 140
    iput v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontSampleRate:I

    return-void
.end method


# virtual methods
.method public getAutoShutdown()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->autoShutdown:I

    return v0
.end method

.method public getBatStatus()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->batStatus:I

    return v0
.end method

.method public getCameraType()I
    .locals 1

    .line 401
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->cameraType:I

    return v0
.end method

.method public getFrontFormat()I
    .locals 1

    .line 417
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontFormat:I

    return v0
.end method

.method public getFrontLevel()I
    .locals 1

    .line 409
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontLevel:I

    return v0
.end method

.method public getFrontRate()I
    .locals 1

    .line 425
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontRate:I

    return v0
.end method

.method public getFrontRecordLevel()I
    .locals 1

    .line 457
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontRecordLevel:I

    return v0
.end method

.method public getFrontSampleRate()I
    .locals 1

    .line 529
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontSampleRate:I

    return v0
.end method

.method public getGravitySensor()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->gravitySensor:I

    return v0
.end method

.method public getLanIndex()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->lanIndex:I

    return v0
.end method

.method public getLeftStorage()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->leftStorage:I

    return v0
.end method

.method public getLightFrequece()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->lightFrequece:I

    return v0
.end method

.method public getPhotoExp()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoExp:I

    return v0
.end method

.method public getPhotoIso()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoIso:I

    return v0
.end method

.method public getPhotoQualityIndex()I
    .locals 1

    .line 345
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoQualityIndex:I

    return v0
.end method

.method public getPhotoReso()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoReso:I

    return v0
.end method

.method public getPhotoSharpness()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoSharpness:I

    return v0
.end method

.method public getRearFormat()I
    .locals 1

    .line 441
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearFormat:I

    return v0
.end method

.method public getRearLevel()I
    .locals 1

    .line 433
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearLevel:I

    return v0
.end method

.method public getRearRate()I
    .locals 1

    .line 449
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearRate:I

    return v0
.end method

.method public getRearRecordLevel()I
    .locals 1

    .line 465
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearRecordLevel:I

    return v0
.end method

.method public getRearSampleRate()I
    .locals 1

    .line 521
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearSampleRate:I

    return v0
.end method

.method public getRecordState()I
    .locals 1

    .line 369
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->recordState:I

    return v0
.end method

.method public getScreenOn()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->screenOn:I

    return v0
.end method

.method public getSelfTime()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->selfTime:I

    return v0
.end method

.method public getTotalStorage()I
    .locals 1

    .line 353
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->totalStorage:I

    return v0
.end method

.method public getTvMode()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->tvMode:I

    return v0
.end method

.method public getVideoExp()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoExp:I

    return v0
.end method

.method public getVideoInv()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoInv:I

    return v0
.end method

.method public getVideoLoop()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoLoop:I

    return v0
.end method

.method public isAntiTremor()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->antiTremor:Z

    return v0
.end method

.method public isBurstShot()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->burstShot:Z

    return v0
.end method

.method public isDoubleVideo()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->doubleVideo:Z

    return v0
.end method

.method public isExistRearView()Z
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isExistRearView:Z

    return v0
.end method

.method public isKeyVoice()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->keyVoice:Z

    return v0
.end method

.method public isMoveCheck()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->moveCheck:Z

    return v0
.end method

.method public isOpenBootSound()Z
    .locals 1

    .line 537
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isOpenBootSound:Z

    return v0
.end method

.method public isOpenProjection()Z
    .locals 1

    .line 377
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isOpenProjection:Z

    return v0
.end method

.method public isPhotoDate()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoDate:Z

    return v0
.end method

.method public isRTVoice()Z
    .locals 1

    .line 385
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isRTVoice:Z

    return v0
.end method

.method public isVideoDate()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoDate:Z

    return v0
.end method

.method public isVideoMic()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoMic:Z

    return v0
.end method

.method public isVideoParCar()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoParCar:Z

    return v0
.end method

.method public isVideoWdr()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoWdr:Z

    return v0
.end method

.method public setAntiTremor(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->antiTremor:Z

    return-void
.end method

.method public setAutoShutdown(I)V
    .locals 0

    .line 273
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->autoShutdown:I

    return-void
.end method

.method public setBatStatus(I)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->batStatus:I

    return-void
.end method

.method public setBurstShot(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->burstShot:Z

    return-void
.end method

.method public setCameraType(I)V
    .locals 0

    .line 405
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->cameraType:I

    return-void
.end method

.method public setDoubleVideo(Z)V
    .locals 0

    .line 253
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->doubleVideo:Z

    return-void
.end method

.method public setExistRearView(Z)V
    .locals 0

    .line 397
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isExistRearView:Z

    return-void
.end method

.method public setFrontFormat(I)V
    .locals 0

    .line 421
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontFormat:I

    return-void
.end method

.method public setFrontLevel(I)V
    .locals 0

    .line 413
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontLevel:I

    return-void
.end method

.method public setFrontRate(I)V
    .locals 0

    .line 429
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontRate:I

    return-void
.end method

.method public setFrontRecordLevel(I)V
    .locals 0

    .line 461
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontRecordLevel:I

    return-void
.end method

.method public setFrontSampleRate(I)V
    .locals 0

    .line 533
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontSampleRate:I

    return-void
.end method

.method public setGravitySensor(I)V
    .locals 0

    .line 325
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->gravitySensor:I

    return-void
.end method

.method public setKeyVoice(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->keyVoice:Z

    return-void
.end method

.method public setLanIndex(I)V
    .locals 0

    .line 341
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->lanIndex:I

    return-void
.end method

.method public setLeftStorage(I)V
    .locals 0

    .line 365
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->leftStorage:I

    return-void
.end method

.method public setLightFrequece(I)V
    .locals 0

    .line 281
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->lightFrequece:I

    return-void
.end method

.method public setMoveCheck(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->moveCheck:Z

    return-void
.end method

.method public setOpenBootSound(Z)V
    .locals 0

    .line 541
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isOpenBootSound:Z

    return-void
.end method

.method public setOpenProjection(Z)V
    .locals 0

    .line 381
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isOpenProjection:Z

    return-void
.end method

.method public setPhotoDate(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoDate:Z

    return-void
.end method

.method public setPhotoExp(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoExp:I

    return-void
.end method

.method public setPhotoIso(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoIso:I

    return-void
.end method

.method public setPhotoQualityIndex(I)V
    .locals 0

    .line 349
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoQualityIndex:I

    return-void
.end method

.method public setPhotoReso(I)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoReso:I

    return-void
.end method

.method public setPhotoSharpness(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoSharpness:I

    return-void
.end method

.method public setRTVoice(Z)V
    .locals 0

    .line 389
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isRTVoice:Z

    return-void
.end method

.method public setRearFormat(I)V
    .locals 0

    .line 445
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearFormat:I

    return-void
.end method

.method public setRearLevel(I)V
    .locals 0

    .line 437
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearLevel:I

    return-void
.end method

.method public setRearRate(I)V
    .locals 0

    .line 453
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearRate:I

    return-void
.end method

.method public setRearRecordLevel(I)V
    .locals 0

    .line 469
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearRecordLevel:I

    return-void
.end method

.method public setRearSampleRate(I)V
    .locals 0

    .line 525
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearSampleRate:I

    return-void
.end method

.method public setRecordState(I)V
    .locals 0

    .line 373
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->recordState:I

    return-void
.end method

.method public setScreenOn(I)V
    .locals 0

    .line 265
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->screenOn:I

    return-void
.end method

.method public setSelfTime(I)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->selfTime:I

    return-void
.end method

.method public setTotalStorage(I)V
    .locals 0

    .line 357
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->totalStorage:I

    return-void
.end method

.method public setTvMode(I)V
    .locals 0

    .line 257
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->tvMode:I

    return-void
.end method

.method public setVideoDate(Z)V
    .locals 0

    .line 317
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoDate:Z

    return-void
.end method

.method public setVideoExp(I)V
    .locals 0

    .line 225
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoExp:I

    return-void
.end method

.method public setVideoInv(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoInv:I

    return-void
.end method

.method public setVideoLoop(I)V
    .locals 0

    .line 241
    iput p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoLoop:I

    return-void
.end method

.method public setVideoMic(Z)V
    .locals 0

    .line 333
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoMic:Z

    return-void
.end method

.method public setVideoParCar(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoParCar:Z

    return-void
.end method

.method public setVideoWdr(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoWdr:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"lanIndex\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->lanIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"photoQualityIndex\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoQualityIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"videoMic\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoMic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"totalStorage\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->totalStorage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"leftStorage\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->leftStorage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"videoParCar\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoParCar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"videoDate\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoDate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"gravitySensor\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->gravitySensor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"keyVoice\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->keyVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"batStatus\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->batStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"lightFrequece\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->lightFrequece:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"autoShutdown\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->autoShutdown:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"screenOn\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->screenOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"tvMode\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->tvMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"doubleVideo\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->doubleVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"videoLoop\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoLoop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"videoWdr\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoWdr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"videoExp\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoExp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"moveCheck\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->moveCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"videoInv\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->videoInv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"photoReso\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoReso:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"selfTime\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->selfTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"burstShot\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->burstShot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"photoSharpness\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoSharpness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"photoIso\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoIso:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"photoExp\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoExp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"antiTremor\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->antiTremor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"photoDate\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->photoDate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"recordState\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->recordState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"isOpenProjection\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isOpenProjection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"isRTVoice\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isRTVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"isExistRearView\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isExistRearView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"cameraType\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->cameraType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"frontRecordLevel\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontRecordLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\"frontLevel\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"frontFormat\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"frontRate\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"rearRecordLevel\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearRecordLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\"rearLevel\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"rearFormat\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"rearRate\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\"rearSampleRate\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->rearSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\"frontSampleRate\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->frontSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
