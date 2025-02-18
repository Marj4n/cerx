.class public Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;
.super Ljava/lang/Object;
.source "VolumeToast.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private maxVol:I

.field private sbVolume:Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 34
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->maxVol:I

    return-void
.end method


# virtual methods
.method public getMaxVol()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->maxVol:I

    return v0
.end method

.method public show(I)V
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 39
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->toast:Landroid/widget/Toast;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 40
    new-instance v2, Landroid/widget/Toast;

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->toast:Landroid/widget/Toast;

    .line 41
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/jieli/stream/dv/running2/R$layout;->view_volume:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 42
    sget v4, Lcom/jieli/stream/dv/running2/R$id;->view_volume_seek_progress:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    iput-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->sbVolume:Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    .line 43
    iget v5, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->maxVol:I

    invoke-virtual {v4, v5}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->setMax(I)V

    .line 44
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->sbVolume:Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    invoke-virtual {v4, v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    .line 45
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 46
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->toast:Landroid/widget/Toast;

    const/16 v4, 0x11

    invoke-virtual {v2, v4, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 47
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setDuration(I)V

    :cond_0
    add-int/2addr p1, v0

    .line 50
    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->maxVol:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->sbVolume:Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    .line 53
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, p1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->sbVolume:Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    .line 57
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/VolumeToast;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
