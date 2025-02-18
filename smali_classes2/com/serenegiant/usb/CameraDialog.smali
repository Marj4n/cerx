.class public Lcom/serenegiant/usb/CameraDialog;
.super Landroid/app/DialogFragment;
.source "CameraDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/usb/CameraDialog$DeviceListAdapter;,
        Lcom/serenegiant/usb/CameraDialog$CameraDialogParent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeviceListAdapter:Lcom/serenegiant/usb/CameraDialog$DeviceListAdapter;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSpinner:Landroid/widget/Spinner;

.field protected mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/serenegiant/usb/CameraDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/usb/CameraDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 154
    new-instance v0, Lcom/serenegiant/usb/CameraDialog$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/usb/CameraDialog$1;-><init>(Lcom/serenegiant/usb/CameraDialog;)V

    iput-object v0, p0, Lcom/serenegiant/usb/CameraDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 165
    new-instance v0, Lcom/serenegiant/usb/CameraDialog$2;

    invoke-direct {v0, p0}, Lcom/serenegiant/usb/CameraDialog$2;-><init>(Lcom/serenegiant/usb/CameraDialog;)V

    iput-object v0, p0, Lcom/serenegiant/usb/CameraDialog;->mOnDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/usb/CameraDialog;)Landroid/widget/Spinner;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/serenegiant/usb/CameraDialog;->mSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method private final initView()Landroid/view/View;
    .locals 3

    .line 136
    invoke-virtual {p0}, Lcom/serenegiant/usb/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/jiangdg/libusbcamera/R$layout;->dialog_camera:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 137
    sget v1, Lcom/jiangdg/libusbcamera/R$id;->spinner1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/serenegiant/usb/CameraDialog;->mSpinner:Landroid/widget/Spinner;

    const v1, 0x1020004

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/serenegiant/usb/CameraDialog;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setEmptyView(Landroid/view/View;)V

    return-object v0
.end method

.method public static newInstance()Lcom/serenegiant/usb/CameraDialog;
    .locals 2

    .line 72
    new-instance v0, Lcom/serenegiant/usb/CameraDialog;

    invoke-direct {v0}, Lcom/serenegiant/usb/CameraDialog;-><init>()V

    .line 73
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 75
    invoke-virtual {v0, v1}, Lcom/serenegiant/usb/CameraDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static showDialog(Landroid/app/Activity;)Lcom/serenegiant/usb/CameraDialog;
    .locals 2

    .line 62
    invoke-static {}, Lcom/serenegiant/usb/CameraDialog;->newInstance()Lcom/serenegiant/usb/CameraDialog;

    move-result-object v0

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    sget-object v1, Lcom/serenegiant/usb/CameraDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/serenegiant/usb/CameraDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 90
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    iget-object v0, p0, Lcom/serenegiant/usb/CameraDialog;->mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;

    if-nez v0, :cond_0

    .line 93
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/serenegiant/usb/CameraDialog$CameraDialogParent;

    invoke-interface {v0}, Lcom/serenegiant/usb/CameraDialog$CameraDialogParent;->getUSBMonitor()Lcom/serenegiant/usb/USBMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/usb/CameraDialog;->mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/usb/CameraDialog;->mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;

    if-eqz v0, :cond_1

    return-void

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement CameraDialogParent#getUSBController"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 185
    invoke-virtual {p0}, Lcom/serenegiant/usb/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/CameraDialog$CameraDialogParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/serenegiant/usb/CameraDialog$CameraDialogParent;->onDialogResult(Z)V

    .line 186
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/serenegiant/usb/CameraDialog;->getArguments()Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 119
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/serenegiant/usb/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-direct {p0}, Lcom/serenegiant/usb/CameraDialog;->initView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 121
    sget v0, Lcom/jiangdg/libusbcamera/R$string;->select:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 122
    iget-object v0, p0, Lcom/serenegiant/usb/CameraDialog;->mOnDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    iget-object v0, p0, Lcom/serenegiant/usb/CameraDialog;->mOnDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    sget v0, Lcom/jiangdg/libusbcamera/R$string;->refresh:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 127
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 146
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 147
    invoke-virtual {p0}, Lcom/serenegiant/usb/CameraDialog;->updateDevices()V

    .line 148
    invoke-virtual {p0}, Lcom/serenegiant/usb/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x102001b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/serenegiant/usb/CameraDialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/serenegiant/usb/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 114
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public updateDevices()V
    .locals 5

    .line 191
    invoke-virtual {p0}, Lcom/serenegiant/usb/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/jiangdg/libusbcamera/R$xml;->device_filter:I

    invoke-static {v0, v1}, Lcom/serenegiant/usb/DeviceFilter;->getDeviceFilters(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/serenegiant/usb/CameraDialog$DeviceListAdapter;

    invoke-virtual {p0}, Lcom/serenegiant/usb/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/serenegiant/usb/CameraDialog;->mUSBMonitor:Lcom/serenegiant/usb/USBMonitor;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/usb/DeviceFilter;

    invoke-virtual {v3, v0}, Lcom/serenegiant/usb/USBMonitor;->getDeviceList(Lcom/serenegiant/usb/DeviceFilter;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/serenegiant/usb/CameraDialog$DeviceListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/serenegiant/usb/CameraDialog;->mDeviceListAdapter:Lcom/serenegiant/usb/CameraDialog$DeviceListAdapter;

    .line 193
    iget-object v0, p0, Lcom/serenegiant/usb/CameraDialog;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method
