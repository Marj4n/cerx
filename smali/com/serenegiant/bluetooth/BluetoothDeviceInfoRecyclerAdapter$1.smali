.class Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "BluetoothDeviceInfoRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->onBindViewHolder(Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;

.field final synthetic val$holder:Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$1;->this$0:Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;

    iput-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$1;->val$holder:Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 99
    iget-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$1;->this$0:Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;

    invoke-static {p1}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->access$000(Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;)Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$1;->this$0:Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;

    invoke-static {p1}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->access$000(Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;)Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$1;->val$holder:Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;

    iget v0, v0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;->position:I

    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$1;->val$holder:Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;

    iget-object v1, v1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;->mItem:Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;

    invoke-interface {p1, v0, v1}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$OnItemClickListener;->onClick(ILcom/serenegiant/bluetooth/BluetoothDeviceInfo;)V

    :cond_0
    return-void
.end method
