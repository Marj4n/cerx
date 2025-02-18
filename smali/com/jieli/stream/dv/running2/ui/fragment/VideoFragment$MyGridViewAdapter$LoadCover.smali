.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;
.super Landroid/os/AsyncTask;
.source "VideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadCover"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private imageUrl:Ljava/lang/String;

.field private info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

.field private position:I

.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;


# direct methods
.method private constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;)V
    .locals 0

    .line 1958
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$1;)V
    .locals 0

    .line 1958
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;)V

    return-void
.end method

.method static synthetic access$6102(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1958
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->bmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;)Lcom/jieli/stream/dv/running2/bean/FileInfo;
    .locals 0

    .line 1958
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    .line 1966
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->position:I

    .line 1967
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    invoke-virtual {v1, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1969
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getSource()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1971
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->imageUrl:Ljava/lang/String;

    goto :goto_0

    .line 1973
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    iget-object v3, v3, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v3, v3, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkCameraDir(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Download"

    invoke-static {v2, v3, v4, v5}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 1974
    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getDownloadFilename(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->imageUrl:Ljava/lang/String;

    .line 1976
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1977
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object v2

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->access$6000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->imageUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result v5

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result v6

    new-instance v7, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover$1;

    invoke-direct {v7, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;)V

    invoke-virtual/range {v2 .. v7}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->loadLocalVideoThumb(Landroid/content/Context;Ljava/lang/String;IILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;)V

    goto/16 :goto_1

    .line 1985
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    iget-object v3, v3, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v3, v3, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkCameraDir(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".thumbnail"

    invoke-static {v2, v3, v4, v5}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 1986
    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getVideoThumbName(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1987
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1989
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1990
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object p1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->access$6000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    iget-object v3, v3, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result v3

    invoke-virtual {p1, v1, v6, v2, v3}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->loadLocalThumbnail(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 1991
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    .line 1994
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->access$6300(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1f90

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->formatUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1995
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object v3

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->access$6000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;)Landroid/content/Context;

    move-result-object v4

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result v7

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result v8

    new-instance v9, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover$2;

    invoke-direct {v9, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;)V

    invoke-virtual/range {v3 .. v9}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;)V

    goto :goto_1

    .line 2004
    :cond_3
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->bmp:Landroid/graphics/Bitmap;

    .line 2009
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->bmp:Landroid/graphics/Bitmap;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->access$6400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;)Z

    move-result p1

    if-nez p1, :cond_6

    const-wide/16 v1, 0x5

    .line 2011
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x5

    const/16 p1, 0x7d0

    if-le v0, p1, :cond_4

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2017
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 2021
    :cond_5
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->bmp:Landroid/graphics/Bitmap;

    .line 2023
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->bmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1958
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2036
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->info:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Lcom/jieli/stream/dv/running2/bean/FileInfo;)V

    .line 2037
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;->access$6500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->imageUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1958
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$MyGridViewAdapter$LoadCover;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
