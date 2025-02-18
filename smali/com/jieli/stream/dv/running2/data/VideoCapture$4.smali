.class Lcom/jieli/stream/dv/running2/data/VideoCapture$4;
.super Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$SimpleTask;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/data/VideoCapture;->saveFile(Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$SimpleTask<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/data/VideoCapture;

.field final synthetic val$newPath:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$selectedHeight:I

.field final synthetic val$selectedWidth:I


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/data/VideoCapture;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;->this$0:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;->val$newPath:Ljava/lang/String;

    iput p4, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;->val$selectedWidth:I

    iput p5, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;->val$selectedHeight:I

    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$SimpleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 210
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;->val$path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/BitmapUtils;->getBitmapFromSDCard(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;->val$newPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;->val$selectedWidth:I

    iget v4, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;->val$selectedHeight:I

    invoke-static {v0, v2, v3, v4}, Lcom/generalplus/GoPlusDrone/Fragment/BitmapUtils;->compressSize(Landroid/graphics/Bitmap;Ljava/io/File;II)V

    .line 220
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;->val$path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 221
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/16 v1, 0xc8

    .line 213
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;->doInBackground()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;->this$0:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->access$100(Lcom/jieli/stream/dv/running2/data/VideoCapture;)Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 231
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->access$402(Z)Z

    .line 232
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;->this$0:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->access$100(Lcom/jieli/stream/dv/running2/data/VideoCapture;)Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;->val$newPath:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;->onCompleted(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 203
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/data/VideoCapture$4;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
