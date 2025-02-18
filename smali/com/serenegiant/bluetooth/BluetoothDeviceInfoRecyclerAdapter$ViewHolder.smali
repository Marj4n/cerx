.class public Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BluetoothDeviceInfoRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public final addressTv:Landroid/widget/TextView;

.field public final icon:Landroid/widget/ImageView;

.field public mItem:Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;

.field public final mView:Landroid/view/View;

.field public final nameTv:Landroid/widget/TextView;

.field public position:I

.field final synthetic this$0:Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;Landroid/view/View;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;->this$0:Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;

    .line 173
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 174
    iput-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;->mView:Landroid/view/View;

    .line 175
    sget p1, Lcom/serenegiant/common/R$id;->name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    .line 176
    sget p1, Lcom/serenegiant/common/R$id;->address:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;->addressTv:Landroid/widget/TextView;

    .line 177
    sget p1, Lcom/serenegiant/common/R$id;->icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    return-void
.end method
