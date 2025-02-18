.class public Lcom/gizthon/camera/adapter/BindAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BindAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gizthon/camera/adapter/BindAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/gizthon/camera/adapter/BindAdapter$ViewHolder<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public dataModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public layoutId:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/gizthon/camera/adapter/BindAdapter;->dataModelList:Ljava/util/List;

    .line 26
    iput p2, p0, Lcom/gizthon/camera/adapter/BindAdapter;->layoutId:I

    return-void
.end method

.method public static localSrc(Landroid/widget/ImageView;Lcom/gizthon/camera/model/PhotoBean;)V
    .locals 4

    .line 78
    invoke-virtual {p1}, Lcom/gizthon/camera/model/PhotoBean;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "avi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/gizthon/camera/model/PhotoBean;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const-wide/16 v2, 0x1

    .line 86
    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->frame(J)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/gizthon/camera/model/PhotoBean;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 90
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 79
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lcom/gizthon/camera/model/PhotoBean;->getAviPngName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 81
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :goto_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/gizthon/camera/adapter/BindAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/gizthon/camera/adapter/BindAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/gizthon/camera/adapter/BindAdapter;->onBindViewHolder(Lcom/gizthon/camera/adapter/BindAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/gizthon/camera/adapter/BindAdapter$ViewHolder;I)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/gizthon/camera/adapter/BindAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 48
    invoke-virtual {p1, p2, p0}, Lcom/gizthon/camera/adapter/BindAdapter$ViewHolder;->bind(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/gizthon/camera/adapter/BindAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/gizthon/camera/adapter/BindAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/gizthon/camera/adapter/BindAdapter$ViewHolder;
    .locals 2

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/gizthon/camera/adapter/BindAdapter;->layoutId:I

    const/4 v1, 0x0

    .line 38
    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/gizthon/camera/adapter/BindAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/gizthon/camera/adapter/BindAdapter$ViewHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p2
.end method

.method public setDataModelList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/gizthon/camera/adapter/BindAdapter;->dataModelList:Ljava/util/List;

    .line 31
    invoke-virtual {p0}, Lcom/gizthon/camera/adapter/BindAdapter;->notifyDataSetChanged()V

    return-void
.end method
