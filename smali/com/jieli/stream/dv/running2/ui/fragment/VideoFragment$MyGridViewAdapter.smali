.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGridViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;,
        Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isCancelTask:Z

.field private mContext:Landroid/content/Context;

.field private mIP:Ljava/lang/String;

.field private taskCollection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Landroid/content/Context;)V
    .locals 0

    .line 1757
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1751
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->dataList:Ljava/util/ArrayList;

    .line 1752
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->taskCollection:Ljava/util/Map;

    .line 1758
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->mContext:Landroid/content/Context;

    .line 1759
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->mIP:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;)Landroid/content/Context;
    .locals 0

    .line 1750
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;)Ljava/lang/String;
    .locals 0

    .line 1750
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->mIP:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;)Z
    .locals 0

    .line 1750
    iget-boolean p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->isCancelTask:Z

    return p0
.end method

.method static synthetic access$6500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;)Ljava/util/Map;
    .locals 0

    .line 1750
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->taskCollection:Ljava/util/Map;

    return-object p0
.end method

.method private cancelAllTasks()V
    .locals 4

    const/4 v0, 0x1

    .line 1942
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->isCancelTask:Z

    .line 1943
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->taskCollection:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 1944
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1945
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1946
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

    .line 1947
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->taskCollection:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;

    if-eqz v2, :cond_0

    .line 1949
    invoke-virtual {v2, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->cancel(Z)Z

    goto :goto_0

    .line 1953
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->taskCollection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 1955
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->isCancelTask:Z

    return-void
.end method

.method private checkIsBtn(I)Z
    .locals 2

    .line 1780
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->dataList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    goto :goto_0

    .line 1785
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private clearDataList()V
    .locals 1

    .line 1774
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->dataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1775
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private getLoadVideoThumb(Lcom/jieli/stream/dv/running2/bean/FileInfo;I)V
    .locals 5

    .line 1912
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getDownloadFilename(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v3, v3, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkCameraDir(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "Download"

    invoke-static {v2, v3, p1, v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1915
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->taskCollection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1916
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;)V

    .line 1917
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->taskCollection:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 1918
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private getPictureThumb(Lcom/jieli/stream/dv/running2/bean/FileInfo;I)V
    .locals 5

    .line 1882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

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

    .line 1883
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getDownloadFilename(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1885
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->taskCollection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1886
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;)V

    .line 1887
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->taskCollection:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 1888
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private getVideoThumb(Landroid/widget/ImageView;Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 5

    .line 1894
    invoke-static {p2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkCameraDir(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v3, v3, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".thumbnail"

    invoke-static {v2, v3, v0, v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    invoke-static {p2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getVideoThumbName(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1897
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1898
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1899
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->loadLocalThumbnail(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 1900
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1902
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1904
    :cond_0
    sget v0, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_default_picture:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1906
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    goto :goto_1

    .line 1907
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideo Thumb: new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1794
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->dataList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    :goto_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1800
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->dataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1801
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 1815
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/jieli/stream/dv/running2/R$layout;->item_image:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1816
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$ViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$ViewHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 1818
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$ViewHolder;

    :goto_0
    return-object p2
.end method

.method setDataList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1763
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->dataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1764
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1766
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->dataList:Ljava/util/ArrayList;

    :goto_0
    if-eqz p1, :cond_1

    .line 1769
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method
