.class public Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "DevicePhotoQualityFragment.java"


# instance fields
.field private final onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field private photoQulityTextView:Landroid/widget/TextView;

.field private radioGroup:Landroid/widget/RadioGroup;

.field private tag:Ljava/lang/String;

.field private timeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->tag:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;)Landroid/widget/RadioGroup;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->radioGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->photoQulityTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->tag:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 42
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_device_setting_photo_qulity:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->photo_qulity_radio_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->radioGroup:Landroid/widget/RadioGroup;

    .line 44
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->photo_qulity_value:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->photoQulityTextView:Landroid/widget/TextView;

    .line 45
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->recording_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->timeTextView:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/jieli/stream/dv/running2/R$array;->photo_qulity:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 48
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getPhotoQualityIndex()I

    move-result p3

    .line 49
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 50
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->photo_qulity_value:I

    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, p2, p3

    aput-object v4, v3, v0

    add-int/lit8 v4, p3, 0x1

    mul-int/lit16 v4, v4, 0xf0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 51
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->photoQulityTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->recorded_time:I

    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "12:12:12"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;[Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStart()V

    .line 82
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 87
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    .line 88
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method
