.class Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;
.super Ljava/lang/Thread;
.source "BrowseFileDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MovingDirThread"
.end annotation


# instance fields
.field private destPath:Ljava/lang/String;

.field private softReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private srcPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 360
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;->srcPath:Ljava/lang/String;

    .line 361
    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;->destPath:Ljava/lang/String;

    .line 362
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;->softReference:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 367
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 368
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;->softReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    const v3, 0xa0a0

    .line 370
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 371
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;->srcPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;->destPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/FileUtil;->moveDirectory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;->destPath:Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 374
    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;->srcPath:Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method
