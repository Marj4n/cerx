.class public Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;
.super Landroid/widget/BaseAdapter;
.source "TimeLineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;,
        Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private isCancelTask:Z

.field private isEditMode:Z

.field private listener:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/ItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->listener:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;

    return-object p0
.end method


# virtual methods
.method public cancelTasks()V
    .locals 1

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->isCancelTask:Z

    .line 119
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->cancelTasks()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->mDataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/ItemBean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 89
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/ItemBean;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 92
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/jieli/stream/dv/running2/R$layout;->item_time_line:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 93
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;

    :goto_0
    if-eqz v0, :cond_3

    .line 98
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/ItemBean;->getData()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 100
    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->access$000(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/ItemBean;->getInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 105
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->access$100(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;)Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->setDataList(ILjava/util/List;)V

    .line 108
    :cond_2
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->access$100(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;)Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;

    move-result-object p1

    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->isEditMode:Z

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->setEditMode(Z)V

    .line 110
    :cond_3
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->isCancelTask:Z

    if-eqz p1, :cond_4

    .line 111
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;->access$100(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$ViewHolder;)Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->cancelAllTasks()V

    .line 112
    iput-boolean v1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->isCancelTask:Z

    :cond_4
    return-object p2
.end method

.method public isEditMode()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->isEditMode:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 84
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/ItemBean;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->mDataList:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->mergeList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->mDataList:Ljava/util/List;

    .line 40
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->isEditMode:Z

    return-void
.end method

.method public setOnSubViewItemClickListener(Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->listener:Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter$OnSubViewItemClickListener;

    return-void
.end method
