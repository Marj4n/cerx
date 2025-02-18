.class Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;
.super Ljava/lang/Object;
.source "ThumbLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/util/ThumbLoader;->loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;)V
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

.field final synthetic val$listener:Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;

.field final synthetic val$savePath:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Ljava/lang/String;Landroid/content/Context;IILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$width:I

    iput p5, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$height:I

    iput-object p6, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$listener:Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;

    iput-object p7, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$savePath:Ljava/lang/String;

    iput-object p8, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 7

    .line 178
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-loadThumbnail- error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", url = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$context:Landroid/content/Context;

    iget v4, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$width:I

    iget v5, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$height:I

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$listener:Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 184
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 185
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 188
    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 190
    iget v2, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$width:I

    iget v3, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$height:I

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 192
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->access$200(Lcom/jieli/stream/dv/running2/util/ThumbLoader;)Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$savePath:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Lcom/jieli/stream/dv/running2/util/AppUtils;->bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "save thumdNail ok"

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "save thumdNail fail"

    invoke-static {v2, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    iget-object v2, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;

    iget-object v4, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    iget-object v5, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$listener:Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;

    invoke-direct {v3, v4, v1, v5}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnCompleteRunnable;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Landroid/graphics/Bitmap;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 200
    :cond_1
    iget-object v6, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    iget-object v7, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$context:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$width:I

    iget v11, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$height:I

    iget-object v12, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$listener:Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;

    invoke-virtual/range {v6 .. v12}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;)V

    goto :goto_1

    .line 203
    :cond_2
    iget-object v13, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    iget-object v14, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$context:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget v1, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$width:I

    iget v2, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$height:I

    iget-object v3, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$listener:Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    invoke-virtual/range {v13 .. v19}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;)V

    goto :goto_1

    .line 206
    :cond_3
    iget-object v4, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    iget-object v5, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$context:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$width:I

    iget v9, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$height:I

    iget-object v10, v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$3;->val$listener:Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;

    invoke-virtual/range {v4 .. v10}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->loadWebThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/jieli/stream/dv/running2/util/ThumbLoader$OnLoadThumbListener;)V

    .line 208
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->close()V

    return-void
.end method
