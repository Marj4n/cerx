.class Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$1;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->tryToGetBitmap(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 266
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 267
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$1;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 268
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView$1;->this$0:Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;->access$000(Lcom/jieli/stream/dv/running2/ui/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on capture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/capture.yuv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 275
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 279
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 284
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-void
.end method
