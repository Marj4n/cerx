.class public Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SubGridViewAdapter.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/IConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;,
        Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private gridView:Lcom/jieli/stream/dv/running2/ui/widget/NoScrollGridView;

.field private isCancelTask:Z

.field private isEditMode:Z

.field private mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIP:Ljava/lang/String;

.field private parentPost:I

.field private taskCollection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;",
            ">;"
        }
    .end annotation
.end field

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/jieli/stream/dv/running2/ui/widget/NoScrollGridView;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->parentPost:I

    .line 53
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->gridView:Lcom/jieli/stream/dv/running2/ui/widget/NoScrollGridView;

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->taskCollection:Ljava/util/Map;

    .line 57
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/DeviceClient;->getConnectedIP()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mIP:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    .line 60
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    .line 61
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->dp2px(Landroid/content/Context;I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    sub-int/2addr p1, p2

    div-int/2addr p1, v0

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->viewWidth:I

    mul-int/lit8 p1, p1, 0x9

    .line 62
    div-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->viewHeight:I

    return-void
.end method

.method static synthetic access$1000(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mIP:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->isCancelTask:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;)Lcom/jieli/stream/dv/running2/ui/widget/NoScrollGridView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->gridView:Lcom/jieli/stream/dv/running2/ui/widget/NoScrollGridView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;)Ljava/util/Map;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->taskCollection:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->viewWidth:I

    return p0
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->viewHeight:I

    return p0
.end method

.method static synthetic access$900(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;)Lcom/jieli/stream/dv/running2/ui/MainApplication;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    return-object p0
.end method

.method private getLoadVideoThumb(Ljava/lang/String;I)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->taskCollection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;-><init>(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$1;)V

    .line 223
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->taskCollection:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 224
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private getPictureThumb(Lcom/jieli/stream/dv/running2/bean/FileInfo;I)V
    .locals 5

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkCameraDir(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Download"

    invoke-static {v1, v2, v3, v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getDownloadFilename(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->taskCollection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;-><init>(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$1;)V

    .line 199
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->taskCollection:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 200
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private getVideoThumb(Landroid/widget/ImageView;Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 5

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkCameraDir(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".thumbnail"

    invoke-static {v1, v2, v3, v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-static {p2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getVideoThumbName(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 207
    invoke-static {p2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->viewWidth:I

    iget v3, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->viewHeight:I

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->loadLocalThumbnail(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 209
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 211
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 213
    :cond_0
    sget p2, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_default_picture:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 216
    :cond_1
    sget p2, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_default_picture:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelAllTasks()V
    .locals 4

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->isCancelTask:Z

    .line 233
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->taskCollection:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 234
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 235
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 236
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 237
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->taskCollection:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {v2, v0}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$LoadCover;->cancel(Z)Z

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->taskCollection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->isCancelTask:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mDataList:Ljava/util/List;

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

    .line 87
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

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

.method public getParentPost()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->parentPost:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 102
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/jieli/stream/dv/running2/R$layout;->item_media:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 103
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->gridView:Lcom/jieli/stream/dv/running2/ui/widget/NoScrollGridView;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/widget/NoScrollGridView;->isMeasure()Z

    move-result v1

    if-nez v1, :cond_8

    .line 108
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz v1, :cond_8

    .line 110
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getDownloadFilename(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 113
    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->judgeFileType(Ljava/lang/String;)I

    move-result v2

    .line 114
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getSource()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 117
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 119
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v6}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v7}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkCameraDir(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Download"

    invoke-static {v6, v7, v8, v9}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/16 v4, 0x8

    if-eq v2, v5, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    .line 153
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$300(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    sget v2, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_default_picture:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 138
    :cond_2
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$200(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$000(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 140
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$400(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 141
    invoke-static {v3}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$100(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$300(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 144
    invoke-direct {p0, v3, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->getLoadVideoThumb(Ljava/lang/String;I)V

    goto :goto_2

    .line 146
    :cond_3
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$100(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$300(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->getVideoThumb(Landroid/widget/ImageView;Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    .line 149
    :goto_2
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$400(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getDuration()I

    move-result v2

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->getTimeFormatValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 124
    :cond_4
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$000(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 125
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$100(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    invoke-static {v3}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 127
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$200(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object p1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->viewWidth:I

    iget v6, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->viewHeight:I

    invoke-virtual {p1, v2, v3, v5, v6}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->loadLocalThumbnail(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 129
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$300(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 131
    :cond_5
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$200(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$300(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 133
    invoke-direct {p0, v1, p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->getPictureThumb(Lcom/jieli/stream/dv/running2/bean/FileInfo;I)V

    .line 156
    :goto_3
    iget-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->isEditMode:Z

    if-eqz p1, :cond_7

    .line 157
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$500(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 159
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$500(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    sget p3, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_check_round_blue:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 161
    :cond_6
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$500(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    sget p3, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_uncheck_round:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 164
    :cond_7
    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    .line 165
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;->access$500(Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_4
    return-object p2
.end method

.method public setDataList(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->parentPost:I

    .line 67
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->mDataList:Ljava/util/List;

    .line 68
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/SubGridViewAdapter;->isEditMode:Z

    return-void
.end method
