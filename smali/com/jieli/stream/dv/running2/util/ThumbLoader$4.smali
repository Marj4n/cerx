.class Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;
.super Ljava/lang/Object;
.source "ThumbLoader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/util/ThumbLoader;->downloadWebImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;

.field final synthetic val$saveUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;Landroid/os/Handler;Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;->val$saveUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;->val$listener:Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4

    .line 404
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-downloadWebImage- onErrorResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;->val$handler:Landroid/os/Handler;

    new-instance p2, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnResultRunnable;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;->val$saveUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;->val$listener:Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;

    const/4 v3, 0x0

    invoke-direct {p2, v0, v3, v1, v2}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnResultRunnable;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;ZLjava/lang/String;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 411
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 413
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    .line 414
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadWebImage:saveUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;->val$saveUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;->val$saveUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->bytesToFile([BLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 416
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;->val$handler:Landroid/os/Handler;

    new-instance v0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnResultRunnable;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;->this$0:Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;->val$saveUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/util/ThumbLoader$4;->val$listener:Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnResultRunnable;-><init>(Lcom/jieli/stream/dv/running2/util/ThumbLoader;ZLjava/lang/String;Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    return-void
.end method
