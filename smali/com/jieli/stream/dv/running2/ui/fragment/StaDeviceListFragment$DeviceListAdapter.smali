.class Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StaDeviceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/jieli/stream/dv/running2/bean/DeviceBean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContextWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

.field private resourceId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 250
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 251
    iput p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->resourceId:I

    .line 252
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->mContextWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private checkDeviceConnected(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 299
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/DeviceClient;->getConnectedIP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 303
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 304
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    if-nez p1, :cond_1

    .line 305
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    :cond_1
    const/4 p1, 0x0

    .line 308
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->getInstance(Landroid/content/Context;)Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/util/WifiP2pHelper;->getConnectWifiDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 310
    iget-object p1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 312
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->mWifiHelper:Lcom/jieli/stream/dv/running2/util/WifiHelper;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->getWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 315
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/WifiHelper;->formatSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 318
    :cond_3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/DeviceClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->resourceId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 261
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;

    .line 265
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/DeviceBean;

    if-eqz p1, :cond_4

    .line 267
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->getWifiSSID()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;->access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->mContextWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 272
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;->access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->mContextWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->unknown_device_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->getMode()I

    move-result v0

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceBean;->getWifiSSID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter;->checkDeviceConnected(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 276
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;->access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    sget p3, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_device_selected:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 278
    :cond_3
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;->access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/StaDeviceListFragment$DeviceListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    sget p3, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_device_unselected:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_2
    return-object p2
.end method
