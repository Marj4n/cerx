.class public Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;
.super Ljava/lang/Object;
.source "MediaStoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/mediastore/MediaStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaInfo"
.end annotation


# instance fields
.field public data:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public height:I

.field public id:J

.field public mediaType:I

.field public mime:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private mediaType()Ljava/lang/String;
    .locals 4

    .line 139
    iget v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->mediaType:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 151
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->mediaType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "unknown:%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "playlist"

    return-object v0

    :cond_1
    const-string v0, "video"

    return-object v0

    :cond_2
    const-string v0, "audio"

    return-object v0

    :cond_3
    const-string v0, "image"

    return-object v0

    :cond_4
    const-string v0, "none"

    return-object v0
.end method


# virtual methods
.method protected loadFromCursor(Landroid/database/Cursor;)Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 115
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->id:J

    const/4 v0, 0x4

    .line 116
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->data:Ljava/lang/String;

    const/4 v0, 0x1

    .line 117
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->title:Ljava/lang/String;

    const/4 v0, 0x3

    .line 118
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->mime:Ljava/lang/String;

    const/4 v0, 0x5

    .line 119
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->displayName:Ljava/lang/String;

    const/4 v0, 0x2

    .line 120
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->mediaType:I

    const/4 v0, 0x6

    .line 122
    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->width:I

    const/4 v0, 0x7

    .line 123
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->title:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->displayName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 135
    invoke-direct {p0}, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->mediaType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->mime:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->data:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "MediaInfo(title=%s,displayName=%s, mediaType=%s,mime=%s,data=%s)"

    .line 134
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
