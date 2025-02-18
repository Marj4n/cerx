.class public Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CoverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$OnItemClickListener;,
        Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private contentFlag:I

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$OnItemClickListener;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->tag:Ljava/lang/String;

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->contentFlag:I

    .line 59
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$OnItemClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mOnItemClickListener:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public addData(Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 63
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->getStartTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    if-gez p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$1;-><init>(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    return-void

    .line 64
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add data failed. info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearContentThumbnail()V
    .locals 3

    .line 47
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->contentFlag:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->contentFlag:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 49
    iput v1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->contentFlag:I

    :cond_0
    return-void
.end method

.method public getItem(I)Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 33
    check-cast p1, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->onBindViewHolder(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;I)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 108
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;->access$000(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;->access$000(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_0
    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;->access$000(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 115
    :cond_1
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v2, Lcom/jieli/stream/dv/running2/R$mipmap;->bg_thumbnail_default:I

    .line 116
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    .line 117
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->getSaveUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 118
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 119
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;->access$000(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 121
    :goto_1
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mOnItemClickListener:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$OnItemClickListener;

    if-eqz p2, :cond_2

    .line 122
    iget-object p2, p1, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$2;-><init>(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object p2, p1, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$3;-><init>(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;
    .locals 2

    .line 99
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/jieli/stream/dv/running2/R$layout;->cover_flow_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 100
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public remove(I)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataList del file -> name= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setContentThumbnailFlag(I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 42
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->contentFlag:I

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$OnItemClickListener;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->mOnItemClickListener:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$OnItemClickListener;

    return-void
.end method
