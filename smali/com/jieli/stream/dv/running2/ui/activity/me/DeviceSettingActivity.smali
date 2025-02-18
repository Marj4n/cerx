.class public Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;
.source "DeviceSettingActivity.java"


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->tag:Ljava/lang/String;

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->finish()V

    goto :goto_0

    .line 162
    :cond_0
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget p1, Lcom/jieli/stream/dv/running2/R$layout;->activity_generic:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->toDeviceSettingFragment()V

    return-void
.end method

.method public returnBtnClick(Landroid/view/View;)V
    .locals 0

    .line 154
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->onBackPressed()V

    return-void
.end method

.method public toDeviceAdvancedSettingFragment()V
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 121
    instance-of v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    if-nez v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;-><init>()V

    .line 127
    :cond_0
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public toDeviceCameraModeFragment()V
    .locals 3

    .line 108
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 109
    instance-of v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceCameraModeFragment;

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceCameraModeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceCameraModeFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceCameraModeFragment;-><init>()V

    .line 115
    :cond_0
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public toDeviceNameFragment()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->tag:Ljava/lang/String;

    const-string v1, "toDeviceNameFragment"

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 53
    instance-of v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceNameFragment;-><init>()V

    .line 59
    :cond_0
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public toDevicePictureQualityFragment()V
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;-><init>()V

    .line 93
    :cond_0
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public toDevicePwdFragment()V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 64
    instance-of v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePwdFragment;-><init>()V

    .line 70
    :cond_0
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public toDeviceRecordQualityFragment()V
    .locals 3

    .line 97
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 98
    instance-of v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;-><init>()V

    .line 104
    :cond_0
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public toDeviceSettingFragment()V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 41
    instance-of v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    if-nez v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceSettingFragment;-><init>()V

    .line 47
    :cond_0
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {p0, v1, v0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->changeFragment(ILandroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public toDeviceStaModeFragment()V
    .locals 3

    .line 143
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 144
    instance-of v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    if-nez v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;-><init>()V

    .line 150
    :cond_0
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public toDeviceStorageManageFragment()V
    .locals 3

    .line 132
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 133
    instance-of v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;

    if-nez v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStorageManageFragment;-><init>()V

    .line 139
    :cond_0
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public toDeviceVolumeFragment()V
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 76
    instance-of v1, v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceVolumeFragment;-><init>()V

    .line 82
    :cond_0
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->generic_fragment_layout:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/jieli/stream/dv/running2/ui/activity/me/DeviceSettingActivity;->changeFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method
