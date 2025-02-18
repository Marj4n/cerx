.class public Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "DeviceVolumeFragment.java"


# instance fields
.field private final onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field private seekBar:Landroid/widget/SeekBar;

.field private tag:Ljava/lang/String;

.field private volumeDownImageButton:Landroid/widget/ImageButton;

.field private volumePlusImageButton:Landroid/widget/ImageButton;

.field private volumeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->tag:Ljava/lang/String;

    .line 93
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$5;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$5;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;)Landroid/widget/SeekBar;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->seekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->volumeTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->tag:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 39
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_device_setting_volume:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->volume_seek_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->seekBar:Landroid/widget/SeekBar;

    .line 41
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->volume_down_img_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->volumeDownImageButton:Landroid/widget/ImageButton;

    .line 42
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->volume_plus_img_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->volumePlusImageButton:Landroid/widget/ImageButton;

    .line 43
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->device_volume_value_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->volumeTextView:Landroid/widget/TextView;

    .line 44
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    const-string v1, "volume"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 45
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->volumeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->device_volume_value:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->seekBar:Landroid/widget/SeekBar;

    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$1;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 56
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->volumeDownImageButton:Landroid/widget/ImageButton;

    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$2;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->volumePlusImageButton:Landroid/widget/ImageButton;

    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$3;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->seekBar:Landroid/widget/SeekBar;

    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$4;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment$4;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 108
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStart()V

    .line 109
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 114
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    .line 115
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method
