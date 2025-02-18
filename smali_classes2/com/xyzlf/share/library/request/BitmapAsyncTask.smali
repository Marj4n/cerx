.class public Lcom/xyzlf/share/library/request/BitmapAsyncTask;
.super Lcom/xyzlf/share/library/request/AbstractAsyncTask;
.source "BitmapAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyzlf/share/library/request/BitmapAsyncTask$OnBitmapListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xyzlf/share/library/request/AbstractAsyncTask<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/xyzlf/share/library/request/BitmapAsyncTask$OnBitmapListener;

.field private urlStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xyzlf/share/library/request/BitmapAsyncTask$OnBitmapListener;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xyzlf/share/library/request/AbstractAsyncTask;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xyzlf/share/library/request/BitmapAsyncTask;->urlStr:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/xyzlf/share/library/request/BitmapAsyncTask;->listener:Lcom/xyzlf/share/library/request/BitmapAsyncTask$OnBitmapListener;

    return-void
.end method

.method static calculateInSampleSize(IIIILandroid/graphics/BitmapFactory$Options;Z)V
    .locals 2

    if-gt p3, p1, :cond_1

    if-le p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    int-to-float p1, p2

    int-to-float p0, p0

    div-float/2addr p1, p0

    float-to-double p0, p1

    .line 63
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    :goto_1
    double-to-int p0, p0

    goto :goto_2

    :cond_2
    if-nez p0, :cond_3

    int-to-float p0, p3

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 65
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    goto :goto_1

    :cond_3
    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    float-to-double v0, p3

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-float p2, p2

    int-to-float p0, p0

    div-float/2addr p2, p0

    float-to-double p2, p2

    .line 68
    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p0, p2

    if-eqz p5, :cond_4

    .line 70
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_2

    .line 71
    :cond_4
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 74
    :goto_2
    iput p0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p0, 0x0

    .line 75
    iput-boolean p0, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return-void
.end method

.method static calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Z)V
    .locals 6

    .line 52
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/xyzlf/share/library/request/BitmapAsyncTask;->calculateInSampleSize(IIIILandroid/graphics/BitmapFactory$Options;Z)V

    return-void
.end method

.method private getSampleBitmap(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 38
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x1000

    .line 39
    invoke-virtual {v0, p1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 40
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 41
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    .line 42
    invoke-static {v0, v2, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 43
    invoke-static {p2, p3, p1, v1}, Lcom/xyzlf/share/library/request/BitmapAsyncTask;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Z)V

    .line 45
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    invoke-static {v0, v2, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected doLoadData()Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/xyzlf/share/library/request/BitmapAsyncTask;->urlStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x280

    .line 30
    invoke-direct {p0, v0, v1, v1}, Lcom/xyzlf/share/library/request/BitmapAsyncTask;->getSampleBitmap(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 31
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1
.end method

.method protected bridge synthetic doLoadData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/xyzlf/share/library/request/BitmapAsyncTask;->doLoadData()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->onException(Ljava/lang/Exception;)V

    .line 89
    iget-object v0, p0, Lcom/xyzlf/share/library/request/BitmapAsyncTask;->listener:Lcom/xyzlf/share/library/request/BitmapAsyncTask$OnBitmapListener;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p1}, Lcom/xyzlf/share/library/request/BitmapAsyncTask$OnBitmapListener;->onException(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onFinally()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->onFinally()V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->onSuccess(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/xyzlf/share/library/request/BitmapAsyncTask;->listener:Lcom/xyzlf/share/library/request/BitmapAsyncTask$OnBitmapListener;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1}, Lcom/xyzlf/share/library/request/BitmapAsyncTask$OnBitmapListener;->onSuccess(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/xyzlf/share/library/request/BitmapAsyncTask;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
