.class Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;
.super Ljava/lang/Object;
.source "ThumbLoader.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/interfaces/OnAviThumbListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getThumbForAvi(Landroid/content/Context;Ljava/lang/String;IILandroid/os/Handler;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$height:I

.field final synthetic val$listener:Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;IILjava/lang/String;Landroid/os/Handler;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;Landroid/content/Context;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    iput p2, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$width:I

    iput p3, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$height:I

    iput-object p4, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$path:Ljava/lang/String;

    iput-object p5, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$handler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$listener:Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;

    iput-object p7, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted([BLcom/jieli/media/codec/bean/MediaMeta;)V
    .locals 7

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 557
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThumbForAvi -onCompleted- bytes size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n mediaMeta : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jieli/media/codec/bean/MediaMeta;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 561
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 568
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 570
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 564
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 568
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    .line 575
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget v1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$width:I

    if-gt p1, v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget v1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$height:I

    if-le p1, v1, :cond_4

    .line 576
    :cond_1
    iget p1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$width:I

    iget v1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$height:I

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 578
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->access$200(Lcom/jieli/stream/dv/running2/util/ThumbLoader;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-virtual {p2}, Lcom/jieli/media/codec/bean/MediaMeta;->getDuration()I

    move-result p2

    .line 580
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-getThumbForAvi- duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->access$300(Lcom/jieli/stream/dv/running2/util/ThumbLoader;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$path:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbRunnable;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$listener:Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbRunnable;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Landroid/graphics/Bitmap;ILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-lez p2, :cond_4

    .line 584
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->access$400(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 585
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-getThumbForAvi- saveThumbPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    .line 586
    invoke-static {p1, p2, v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z

    goto :goto_4

    .line 590
    :cond_2
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    iget v4, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$width:I

    iget v5, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$height:I

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$listener:Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;

    invoke-virtual/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->loadLocalVideoThumb(Landroid/content/Context;Ljava/lang/String;IILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;)V

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 568
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 570
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 573
    :cond_3
    :goto_3
    throw p1

    :cond_4
    :goto_4
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 6

    .line 597
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$width:I

    iget v4, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$height:I

    iget-object v5, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$5;->val$listener:Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->loadLocalVideoThumb(Landroid/content/Context;Ljava/lang/String;IILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadVideoThumbListener;)V

    return-void
.end method
