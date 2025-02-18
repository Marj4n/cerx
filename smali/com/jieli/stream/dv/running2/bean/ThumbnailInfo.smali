.class public Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;
.super Lcom/jieli/stream/dv/running2/bean/FileInfo;
.source "ThumbnailInfo.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private saveUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSaveUrl()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->saveUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setSaveUrl(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/bean/ThumbnailInfo;->saveUrl:Ljava/lang/String;

    return-void
.end method
