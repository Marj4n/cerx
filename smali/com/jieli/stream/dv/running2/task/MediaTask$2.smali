.class Lcom/jieli/stream/dv/running2/task/MediaTask$2;
.super Ljava/lang/Object;
.source "MediaTask.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/ThumbLoader$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/task/MediaTask;->tryToDownload(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$saveUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/task/MediaTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->val$saveUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;)V
    .locals 4

    const-string p2, "download image failed, delete file success!"

    const-string v0, "MediaTask"

    const/16 v1, 0x53

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 307
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$200(Lcom/jieli/stream/dv/running2/task/MediaTask;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p1, v2}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$202(Lcom/jieli/stream/dv/running2/task/MediaTask;Z)Z

    .line 309
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->val$saveUrl:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 312
    invoke-static {v0, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 317
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 318
    iput v1, p1, Landroid/os/Message;->what:I

    const/4 p2, 0x1

    .line 319
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 320
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->val$saveUrl:Ljava/lang/String;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 321
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 322
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$300(Lcom/jieli/stream/dv/running2/task/MediaTask;)Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    move-result-object p1

    if-nez p1, :cond_1

    .line 323
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    new-instance p2, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$400(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$302(Lcom/jieli/stream/dv/running2/task/MediaTask;Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;)Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    .line 324
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$300(Lcom/jieli/stream/dv/running2/task/MediaTask;)Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->val$saveUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->scanFiles(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_2
    new-instance p1, Ljava/io/File;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->val$saveUrl:Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 329
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 330
    invoke-static {v0, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 334
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 335
    iput v1, p1, Landroid/os/Message;->what:I

    .line 336
    iput v2, p1, Landroid/os/Message;->arg1:I

    .line 337
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->val$filename:Ljava/lang/String;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 338
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$2;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_0
    return-void
.end method
