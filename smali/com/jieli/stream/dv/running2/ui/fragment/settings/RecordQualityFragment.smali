.class public Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "RecordQualityFragment.java"


# instance fields
.field private isLastRecoding:Z

.field private isModified:Z

.field private isRearModified:Z

.field private isRecoding:Z

.field private mFrontRadioGroup:Landroid/widget/RadioGroup;

.field private mRearDeviceName:Landroid/widget/TextView;

.field private final mRearDeviceOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mRearRadioGroup:Landroid/widget/RadioGroup;

.field private mRearSelectedLevel:I

.field private mSelectedLevel:I

.field private final onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->isRecoding:Z

    .line 39
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->isLastRecoding:Z

    .line 40
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->isModified:Z

    .line 41
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->isRearModified:Z

    .line 95
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mRearDeviceOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 161
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Landroid/widget/RadioGroup;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mFrontRadioGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->showRearCameraUI()V

    return-void
.end method

.method static synthetic access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->hideRearCameraUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->isModified:Z

    return p0
.end method

.method static synthetic access$202(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->isModified:Z

    return p1
.end method

.method static synthetic access$302(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mSelectedLevel:I

    return p1
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->switchResolution()V

    return-void
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Landroid/widget/RadioGroup;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mRearRadioGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->isRearModified:Z

    return p0
.end method

.method static synthetic access$602(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->isRearModified:Z

    return p1
.end method

.method static synthetic access$702(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mRearSelectedLevel:I

    return p1
.end method

.method static synthetic access$800(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->isLastRecoding:Z

    return p0
.end method

.method static synthetic access$802(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->isLastRecoding:Z

    return p1
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->sendRecordParam()V

    return-void
.end method

.method private getCameraLevel(I)I
    .locals 2

    .line 126
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRearLevel()I

    move-result p1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getFrontLevel()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private hideRearCameraUI()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mRearDeviceName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mRearRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    return-void
.end method

.method private sendRecordParam()V
    .locals 10

    .line 222
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->isRearModified:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 223
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mRearSelectedLevel:I

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtsResolution(I)[I

    move-result-object v0

    .line 224
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRearFormat()I

    move-result v3

    .line 225
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v4

    aget v2, v0, v2

    aget v0, v0, v1

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$5;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$5;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)V

    invoke-virtual {v4, v2, v0, v3, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSetRearVideoParams(IIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->isModified:Z

    if-eqz v0, :cond_1

    .line 234
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mSelectedLevel:I

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtsResolution(I)[I

    move-result-object v0

    .line 235
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getFrontFormat()I

    move-result v7

    .line 236
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getFrontRate()I

    move-result v8

    .line 237
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v4

    aget v5, v0, v2

    aget v6, v0, v1

    new-instance v9, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$6;

    invoke-direct {v9, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$6;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)V

    invoke-virtual/range {v4 .. v9}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSetFrontVideoParams(IIIILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->tag:Ljava/lang/String;

    const-string v1, "Not supported"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showRearCameraUI()V
    .locals 6

    .line 256
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getRecordRearSupport()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 258
    array-length v2, v0

    if-lez v2, :cond_1

    .line 259
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    .line 260
    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mRearRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v4}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 266
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->getCameraLevel(I)I

    move-result v0

    .line 267
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mRearRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mRearRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mRearRadioGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mRearDeviceOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 270
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mRearDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private switchResolution()V
    .locals 3

    .line 109
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->isRecoding:Z

    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->isLastRecoding:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$3;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$3;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRecordVideo(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->sendRecordParam()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 139
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 140
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getRecordState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 143
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->isRecoding:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->isRecoding:Z

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 49
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_record_resolution:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->record_quality_radio_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mFrontRadioGroup:Landroid/widget/RadioGroup;

    .line 51
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->rear_record_res_radio_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mRearRadioGroup:Landroid/widget/RadioGroup;

    .line 52
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mRearDeviceOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 53
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->front_camera_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 54
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->rear_camera_name:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mRearDeviceName:Landroid/widget/TextView;

    .line 56
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 57
    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->isExistRearView()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->showRearCameraUI()V

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->hideRearCameraUI()V

    .line 63
    :goto_0
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getRecordFrontSupport()[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 65
    array-length v1, p3

    if-lez v1, :cond_2

    .line 66
    array-length p2, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v1, p2, :cond_3

    aget-object v3, p3, v1

    .line 67
    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mFrontRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 p3, 0x8

    .line 73
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    const/4 p2, 0x1

    .line 76
    invoke-direct {p0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->getCameraLevel(I)I

    move-result p3

    .line 77
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mFrontRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 78
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mFrontRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    invoke-virtual {p3, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 80
    :cond_4
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->mFrontRadioGroup:Landroid/widget/RadioGroup;

    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$1;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 151
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStart()V

    .line 152
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->registerNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 157
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onStop()V

    .line 158
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->onNotifyListener:Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;

    invoke-virtual {v0, v1}, Lcom/jieli/lib/dv/control/DeviceClient;->unregisterNotifyListener(Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;)V

    return-void
.end method
