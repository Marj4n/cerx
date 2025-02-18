.class public Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceCameraModeFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "DeviceCameraModeFragment.java"


# instance fields
.field private radioGroup:Landroid/widget/RadioGroup;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceCameraModeFragment;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 27
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_device_setting_camera_mode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 28
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->camera_mode_radiogroup:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceCameraModeFragment;->radioGroup:Landroid/widget/RadioGroup;

    .line 29
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceCameraModeFragment$1;

    invoke-direct {p3, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceCameraModeFragment$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceCameraModeFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-object p1
.end method
