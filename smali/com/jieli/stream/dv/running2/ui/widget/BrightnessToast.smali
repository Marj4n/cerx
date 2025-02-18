.class public Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;
.super Ljava/lang/Object;
.source "BrightnessToast.java"


# static fields
.field private static final maxValue:I = 0xff


# instance fields
.field private context:Landroid/app/Activity;

.field private sbBrightness:Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->context:Landroid/app/Activity;

    return-void
.end method

.method public static getMaxValue()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method


# virtual methods
.method public show(I)V
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getScreenBrightness(Landroid/app/Activity;)I

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->toast:Landroid/widget/Toast;

    const/16 v2, 0xff

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Landroid/widget/Toast;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->context:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->toast:Landroid/widget/Toast;

    .line 38
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->context:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/jieli/stream/dv/running2/R$layout;->view_brightness:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 39
    sget v3, Lcom/jieli/stream/dv/running2/R$id;->view_brightness_seek_progress:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    iput-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->sbBrightness:Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    .line 40
    invoke-virtual {v3, v2}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->setMax(I)V

    .line 41
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->sbBrightness:Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    invoke-virtual {v3, v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    .line 42
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 43
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->toast:Landroid/widget/Toast;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 44
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setDuration(I)V

    :cond_0
    add-int/2addr p1, v0

    .line 47
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->sbBrightness:Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    .line 50
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->context:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->setBrightness(Landroid/app/Activity;I)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->sbBrightness:Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    .line 54
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showBrightnessProgress(I)V
    .locals 9

    .line 62
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 64
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 65
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->toast:Landroid/widget/Toast;

    const/16 v5, 0x64

    const/4 v6, 0x0

    if-nez v4, :cond_0

    .line 66
    new-instance v4, Landroid/widget/Toast;

    iget-object v7, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->context:Landroid/app/Activity;

    invoke-direct {v4, v7}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->toast:Landroid/widget/Toast;

    .line 67
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->context:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v7, Lcom/jieli/stream/dv/running2/R$layout;->view_brightness:I

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 68
    sget v7, Lcom/jieli/stream/dv/running2/R$id;->view_brightness_seek_progress:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    iput-object v7, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->sbBrightness:Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    .line 69
    invoke-virtual {v7, v5}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->setMax(I)V

    .line 70
    iget-object v7, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->sbBrightness:Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    invoke-virtual {v7, v2}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    .line 72
    iget-object v7, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v7, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 73
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->toast:Landroid/widget/Toast;

    const/16 v7, 0x11

    invoke-virtual {v4, v7, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 74
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v4, v6}, Landroid/widget/Toast;->setDuration(I)V

    :cond_0
    add-int/2addr v2, p1

    .line 77
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 79
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->sbBrightness:Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    invoke-virtual {v2, p1}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    move v6, p1

    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->sbBrightness:Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;

    invoke-virtual {p1, v6}, Lcom/jieli/stream/dv/running2/ui/widget/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    :goto_0
    int-to-float p1, v6

    div-float/2addr p1, v3

    .line 84
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 86
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/BrightnessToast;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
