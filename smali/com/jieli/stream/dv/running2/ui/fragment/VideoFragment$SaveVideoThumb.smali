.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;
.super Ljava/lang/Thread;
.source "VideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveVideoThumb"
.end annotation


# instance fields
.field private data:[B

.field private softReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;[BLandroid/os/Handler;)V
    .locals 0

    .line 2079
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2080
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->data:[B

    .line 2081
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->softReference:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "Close Video thumbnail failed"

    const-string v1, "mVideoThumbnail close - 004"

    .line 2086
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2087
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->softReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 2089
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->data:[B

    if-eqz v3, :cond_b

    array-length v4, v3

    if-lez v4, :cond_b

    const/4 v4, 0x0

    .line 2091
    :try_start_0
    array-length v5, v3

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    .line 2096
    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v6}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v6}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 2097
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v5}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    :cond_0
    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    .line 2100
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v4, v4, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v4}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2101
    invoke-virtual {v5}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCameraType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getMediaDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2102
    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v6}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-SaveVideoThumb- cameraDir : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v7, v7, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v7}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object v8, v8, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v8}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getUUID()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".thumbnail"

    invoke-static {v7, v8, v4, v9}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2104
    invoke-static {v5}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getVideoThumbName(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2105
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v5}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v6}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    move-result v6

    const/4 v7, 0x2

    invoke-static {v3, v5, v6, v7}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2107
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_1

    .line 2109
    new-instance v3, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb$1;

    invoke-direct {v3, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2119
    :cond_1
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-SaveVideoThumb- savePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->data:[B

    invoke-static {v3, v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->bytesToFile([BLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2121
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "save bitmap ok!"

    invoke-static {v3, v4}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2123
    :cond_2
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "save bitmap failed!"

    invoke-static {v3, v4}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 2129
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 2131
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb$2;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2140
    :cond_4
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->close()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :catch_0
    move-exception v3

    .line 2093
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2096
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 2097
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 2128
    :cond_5
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 2129
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_6

    .line 2131
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb$2;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2140
    :cond_6
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->close()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2141
    :goto_1
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    :cond_7
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 2096
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v5}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v5}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 2097
    iget-object v5, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v5}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 2128
    :cond_8
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_a

    .line 2129
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_9

    .line 2131
    new-instance v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb$2;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb$2;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2140
    :cond_9
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$3200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/lib/dv/control/player/VideoThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/player/VideoThumbnail;->close()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2141
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    :cond_a
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$SaveVideoThumb;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$5400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2145
    throw v3

    :cond_b
    :goto_2
    return-void
.end method
