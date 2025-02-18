.class public Lcom/serenegiant/usb/encoder/RecordParams;
.super Ljava/lang/Object;
.source "RecordParams.java"


# instance fields
.field private isAutoSave:Z

.field private isSupportOverlay:Z

.field private recordDuration:I

.field private recordPath:Ljava/lang/String;

.field private voiceClose:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecordDuration()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/serenegiant/usb/encoder/RecordParams;->recordDuration:I

    return v0
.end method

.method public getRecordPath()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/serenegiant/usb/encoder/RecordParams;->recordPath:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoSave()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/serenegiant/usb/encoder/RecordParams;->isAutoSave:Z

    return v0
.end method

.method public isSupportOverlay()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/serenegiant/usb/encoder/RecordParams;->isSupportOverlay:Z

    return v0
.end method

.method public isVoiceClose()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/serenegiant/usb/encoder/RecordParams;->voiceClose:Z

    return v0
.end method

.method public setAutoSave(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/serenegiant/usb/encoder/RecordParams;->isAutoSave:Z

    return-void
.end method

.method public setRecordDuration(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/serenegiant/usb/encoder/RecordParams;->recordDuration:I

    return-void
.end method

.method public setRecordPath(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/serenegiant/usb/encoder/RecordParams;->recordPath:Ljava/lang/String;

    return-void
.end method

.method public setSupportOverlay(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/serenegiant/usb/encoder/RecordParams;->isSupportOverlay:Z

    return-void
.end method

.method public setVoiceClose(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/serenegiant/usb/encoder/RecordParams;->voiceClose:Z

    return-void
.end method
