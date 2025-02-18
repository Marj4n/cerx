.class Lcom/jieli/stream/dv/running2/task/MediaTask$3;
.super Ljava/lang/Object;
.source "MediaTask.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/task/MediaTask;->tryToDelete(Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

.field final synthetic val$fileInfo:Lcom/jieli/stream/dv/running2/bean/FileInfo;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/task/MediaTask;Lcom/jieli/stream/dv/running2/bean/FileInfo;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$3;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$3;->val$fileInfo:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 3

    .line 391
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x54

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 392
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$3;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 393
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$3;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 394
    iput v0, p1, Landroid/os/Message;->what:I

    .line 395
    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 396
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$3;->val$fileInfo:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$3;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 398
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$3;->val$fileInfo:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 399
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$3;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$300(Lcom/jieli/stream/dv/running2/task/MediaTask;)Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$3;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    new-instance v1, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$400(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$302(Lcom/jieli/stream/dv/running2/task/MediaTask;Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;)Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$3;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$300(Lcom/jieli/stream/dv/running2/task/MediaTask;)Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/util/ScanFilesHelper;->updateToDeleteFile(Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$3;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 405
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$3;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 406
    iput v0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    .line 407
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 408
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$3;->val$fileInfo:Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/task/MediaTask$3;->this$0:Lcom/jieli/stream/dv/running2/task/MediaTask;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/task/MediaTask;->access$000(Lcom/jieli/stream/dv/running2/task/MediaTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 388
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/task/MediaTask$3;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
