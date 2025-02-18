.class public abstract Lcom/serenegiant/widget/CustomRecycleViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CustomRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/widget/CustomRecycleViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/serenegiant/widget/CustomRecycleViewAdapter$ViewHolder<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCustomRecycleViewListener:Lcom/serenegiant/widget/CustomRecycleViewListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/serenegiant/widget/CustomRecycleViewListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mItemViewId:I

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field protected final mOnClickListener:Landroid/view/View$OnClickListener;

.field protected final mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mUIHandler:Landroid/os/Handler;

    .line 157
    new-instance v0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/serenegiant/widget/CustomRecycleViewAdapter$1;-><init>(Lcom/serenegiant/widget/CustomRecycleViewAdapter;)V

    iput-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 195
    new-instance v0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$2;

    invoke-direct {v0, p0}, Lcom/serenegiant/widget/CustomRecycleViewAdapter$2;-><init>(Lcom/serenegiant/widget/CustomRecycleViewAdapter;)V

    iput-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 58
    iput p1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItemViewId:I

    .line 59
    iput-object p2, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    .line 60
    monitor-enter p2

    .line 61
    :try_start_0
    iget-object p1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->registerDataSetObserver(Ljava/util/List;)V

    .line 62
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic access$000(Lcom/serenegiant/widget/CustomRecycleViewAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/serenegiant/widget/CustomRecycleViewAdapter;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/serenegiant/widget/CustomRecycleViewAdapter;)Lcom/serenegiant/widget/CustomRecycleViewListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mCustomRecycleViewListener:Lcom/serenegiant/widget/CustomRecycleViewListener;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->unregisterDataSetObserver(Ljava/util/List;)V

    .line 133
    iget-object v1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 134
    iget-object v1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    iget-object p1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->registerDataSetObserver(Ljava/util/List;)V

    .line 136
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->unregisterDataSetObserver(Ljava/util/List;)V

    .line 125
    iget-object v1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->unregisterDataSetObserver(Ljava/util/List;)V

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v1

    .line 69
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 148
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public getParent()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 76
    iput-object p1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method protected onCreateItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    .line 98
    iget p3, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItemViewId:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/serenegiant/widget/CustomRecycleViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/view/View;)Lcom/serenegiant/widget/CustomRecycleViewAdapter$ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/serenegiant/widget/CustomRecycleViewAdapter$ViewHolder<",
            "TT;>;"
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$ViewHolder;

    invoke-direct {v0, p1}, Lcom/serenegiant/widget/CustomRecycleViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/serenegiant/widget/CustomRecycleViewAdapter$ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/serenegiant/widget/CustomRecycleViewAdapter$ViewHolder<",
            "TT;>;"
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 89
    invoke-virtual {p0, v0, p1, p2}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->onCreateItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 90
    iget-object p2, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p2, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->onCreateViewHolder(Landroid/view/View;)Lcom/serenegiant/widget/CustomRecycleViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method protected abstract registerDataSetObserver(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public setOnItemClickListener(Lcom/serenegiant/widget/CustomRecycleViewListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/serenegiant/widget/CustomRecycleViewListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mCustomRecycleViewListener:Lcom/serenegiant/widget/CustomRecycleViewListener;

    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter;->mItems:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract unregisterDataSetObserver(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method
