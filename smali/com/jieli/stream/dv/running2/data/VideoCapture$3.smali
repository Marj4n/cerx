.class Lcom/jieli/stream/dv/running2/data/VideoCapture$3;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Lcom/jieli/media/codec/FrameCodec$OnFrameCodecListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/data/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/data/VideoCapture;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/data/VideoCapture;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$3;->this$0:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted([BLcom/jieli/media/codec/bean/MediaMeta;)V
    .locals 3

    const-string p2, "MergeCamera"

    const-string v0, "Media"

    const-string v1, "Photo"

    const-string v2, "Screen"

    .line 177
    invoke-static {p2, v0, v1, v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getLocalPhotoName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 180
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->bytesToFile([BLjava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$3;->this$0:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->access$200(Lcom/jieli/stream/dv/running2/data/VideoCapture;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", outPath "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$3;->this$0:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->access$200(Lcom/jieli/stream/dv/running2/data/VideoCapture;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Codec error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$3;->this$0:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->access$100(Lcom/jieli/stream/dv/running2/data/VideoCapture;)Lcom/jieli/stream/dv/running2/data/OnVideoCaptureListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoCapture$3;->this$0:Lcom/jieli/stream/dv/running2/data/VideoCapture;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->access$300(Lcom/jieli/stream/dv/running2/data/VideoCapture;)Lcom/jieli/stream/dv/running2/data/VideoCapture$MyHandler;

    move-result-object p1

    new-instance v0, Lcom/jieli/stream/dv/running2/data/VideoCapture$3$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/data/VideoCapture$3$1;-><init>(Lcom/jieli/stream/dv/running2/data/VideoCapture$3;)V

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/data/VideoCapture$MyHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
