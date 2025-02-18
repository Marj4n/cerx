.class public Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BluetoothDeviceInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    iput p2, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter;->mLayoutId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    iput p2, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter;->mLayoutId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    iput p2, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter;->mLayoutId:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 72
    iget-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter;->mLayoutId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance p3, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter$ViewHolder;-><init>(Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter$1;)V

    .line 74
    sget v0, Lcom/serenegiant/common/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/serenegiant/common/R$id;->address:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter$ViewHolder;->addressTv:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/serenegiant/common/R$id;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter$ViewHolder;

    .line 82
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;

    if-eqz p1, :cond_2

    .line 84
    iget-object v0, p3, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p3, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_1
    iget-object v0, p3, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter$ViewHolder;->addressTv:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 88
    iget-object p3, p3, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter$ViewHolder;->addressTv:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->address:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    sget-object p3, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoAdapter;->TAG:Ljava/lang/String;

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-object p2
.end method
