.class public Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BluetoothDeviceInfoRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;,
        Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLayoutId:I

.field private final mListener:Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$OnItemClickListener;

.field private final mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$OnItemClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0, p2}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;-><init>(ILjava/util/List;Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$OnItemClickListener;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;",
            ">;",
            "Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 67
    iput p1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mLayoutId:I

    if-eqz p2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mValues:Ljava/util/List;

    .line 69
    iput-object p3, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mListener:Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;)Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$OnItemClickListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mListener:Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public add(ILcom/serenegiant/bluetooth/BluetoothDeviceInfo;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 126
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public add(Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItem(I)Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 40
    check-cast p1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->onBindViewHolder(Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;I)V
    .locals 2

    .line 83
    iput p2, p1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;->position:I

    .line 84
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;

    iput-object v0, p1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;->mItem:Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;

    .line 85
    iget-object v0, p1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;->addressTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;->addressTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mValues:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;

    iget-object v1, v1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    iget-object v0, p1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mValues:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;

    iget-object p2, p2, Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_1
    iget-object p2, p1, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;->mView:Landroid/view/View;

    new-instance v0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$1;-><init>(Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;
    .locals 2

    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mLayoutId:I

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 77
    new-instance p2, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter$ViewHolder;-><init>(Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public remove(I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public remove(Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 146
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 151
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Lcom/serenegiant/bluetooth/BluetoothDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->mValues:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 161
    invoke-virtual {p0}, Lcom/serenegiant/bluetooth/BluetoothDeviceInfoRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method
