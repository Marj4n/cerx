.class public Lcom/jieli/stream/dv/running2/util/json/JSonManager;
.super Ljava/lang/Object;
.source "JSonManager.java"


# static fields
.field private static final TXT_CAMERA_TYPE:Ljava/lang/String; = "c"

.field private static final TXT_CREATE_TIME:Ljava/lang/String; = "t"

.field private static final TXT_DURATION:Ljava/lang/String; = "d"

.field private static final TXT_FILE_END_TIME:Ljava/lang/String; = "e"

.field private static final TXT_FILE_LIST:Ljava/lang/String; = "file_list"

.field private static final TXT_HEIGHT:Ljava/lang/String; = "h"

.field private static final TXT_PATH:Ljava/lang/String; = "f"

.field private static final TXT_RATE:Ljava/lang/String; = "p"

.field private static final TXT_SIZE:Ljava/lang/String; = "s"

.field private static final TXT_TYPE:Ljava/lang/String; = "y"

.field private static final TXT_WIDTH:Ljava/lang/String; = "w"

.field private static final dateFormat:Ljava/text/SimpleDateFormat;

.field private static instance:Lcom/jieli/stream/dv/running2/util/json/JSonManager; = null

.field private static mJSonData:Ljava/lang/String; = null

.field private static tag:Ljava/lang/String; = "JSonManager"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mList:Ljava/util/List;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/util/json/JSonManager;Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->parseJSon(Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/util/json/JSonManager;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mList:Ljava/util/List;

    return-object p0
.end method

.method public static convertJson(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 341
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "{\"file_list\": ["

    .line 343
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 344
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz v2, :cond_0

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{\n\"y\" : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getType()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" : \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\",\n\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "t"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "e"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getFileEndTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "d"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getDuration()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "h"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getHeight()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "w"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "p"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getRate()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "c"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCameraType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getSize()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\"\n}"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 363
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n]}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, "{\"file_list\": []}"

    goto :goto_1

    :cond_3
    const-string p0, ""

    .line 368
    :goto_1
    sput-object p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mJSonData:Ljava/lang/String;

    return-object p0
.end method

.method private dispatchParseJSonState(Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/util/json/JSonManager$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager$2;-><init>(Lcom/jieli/stream/dv/running2/util/json/JSonManager;Ljava/lang/Boolean;Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/jieli/stream/dv/running2/util/json/JSonManager;
    .locals 1

    .line 53
    sget-object v0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->instance:Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;-><init>()V

    sput-object v0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->instance:Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    .line 57
    :cond_0
    sget-object v0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->instance:Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    return-object v0
.end method

.method public static parseFileInfo(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/FileInfo;
    .locals 11

    const-string v0, "c"

    const-string v1, "t"

    const-string v2, "f"

    .line 259
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    .line 261
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 263
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "."

    .line 265
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 267
    new-instance v7, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-direct {v7}, Lcom/jieli/stream/dv/running2/bean/FileInfo;-><init>()V

    const/4 v8, -0x1

    .line 268
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x0

    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v9, "jpeg"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :sswitch_1
    const-string v9, "JPEG"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :sswitch_2
    const-string v9, "mov"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :sswitch_3
    const-string v9, "jpg"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    :sswitch_4
    const-string v9, "avi"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x6

    goto :goto_0

    :sswitch_5
    const-string v9, "MOV"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x5

    goto :goto_0

    :sswitch_6
    const-string v9, "JPG"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x3

    :cond_0
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 281
    sget-object p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->tag:Ljava/lang/String;

    goto/16 :goto_5

    .line 278
    :pswitch_0
    invoke-virtual {v7, v6}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setVideo(Z)V

    goto :goto_1

    .line 273
    :pswitch_1
    invoke-virtual {v7, v10}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setVideo(Z)V

    :goto_1
    const-string v5, "y"

    .line 284
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setType(I)V

    const-string v5, "d"

    .line 285
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setDuration(I)V

    const-string v5, "h"

    .line 286
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setHeight(I)V

    const-string v5, "w"

    .line 287
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setWidth(I)V

    const-string v5, "p"

    .line 288
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setRate(I)V

    const-string v5, "/"

    .line 289
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setName(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setPath(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setCreateTime(Ljava/lang/String;)V

    const-string p0, "e"

    .line 292
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setFileEndTime(Ljava/lang/String;)V

    const-string p0, "s"

    .line 293
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSize(J)V

    .line 294
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 295
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setCameraType(Ljava/lang/String;)V

    .line 298
    :cond_1
    invoke-virtual {v7}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isVideo()Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_4

    .line 301
    :try_start_1
    sget-object p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 303
    :try_start_2
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    move-object p0, v4

    .line 306
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p0, :cond_2

    .line 308
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 309
    invoke-virtual {v7, v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setStartTime(Ljava/util/Calendar;)V

    goto :goto_3

    .line 311
    :cond_2
    sget-object v0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->tag:Ljava/lang/String;

    const-string v1, "Parse start time string fail!"

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p0, :cond_3

    .line 317
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p0, 0xd

    .line 318
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v7}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getDuration()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 319
    invoke-virtual {v7, v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setEndTime(Ljava/util/Calendar;)V

    goto :goto_4

    .line 321
    :cond_3
    sget-object p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->tag:Ljava/lang/String;

    const-string v0, "Parse end time string fail!"

    invoke-static {p0, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-object v7

    .line 281
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v4

    :catch_1
    move-exception p0

    .line 327
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x11fc1 -> :sswitch_6
        0x12af4 -> :sswitch_5
        0x17ad4 -> :sswitch_4
        0x19be1 -> :sswitch_3
        0x1a714 -> :sswitch_2
        0x22d868 -> :sswitch_1
        0x31e068 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized parseJSon(Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 76
    :try_start_0
    sget-object v0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mJSonData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_d

    const/4 v4, 0x0

    .line 81
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    sget-object v5, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mJSonData:Ljava/lang/String;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    :try_start_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->dispatchParseJSonState(Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;Ljava/lang/Boolean;)V

    .line 84
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_c

    .line 91
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 93
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "file_list"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    :try_start_3
    const-string v0, "file_list"

    .line 96
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 98
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_2

    .line 105
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->dispatchParseJSonState(Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;Ljava/lang/Boolean;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 113
    :cond_2
    :try_start_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 117
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v10, 0x1

    if-ge v8, v0, :cond_b

    .line 119
    :try_start_6
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v11, v0

    .line 121
    :try_start_7
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    if-nez v9, :cond_3

    goto/16 :goto_9

    :cond_3
    const-string v0, "f"

    .line 127
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "."

    .line 130
    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v10

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 132
    new-instance v12, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-direct {v12}, Lcom/jieli/stream/dv/running2/bean/FileInfo;-><init>()V

    const/4 v13, -0x1

    .line 133
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, 0x3

    const/4 v3, 0x2

    sparse-switch v14, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v14, "jpeg"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v13, 0x0

    goto :goto_4

    :sswitch_1
    const-string v14, "mov"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v13, 0x2

    goto :goto_4

    :sswitch_2
    const-string v14, "jpg"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v13, 0x1

    goto :goto_4

    :sswitch_3
    const-string v14, "avi"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v13, 0x3

    :cond_4
    :goto_4
    if-eqz v13, :cond_6

    if-eq v13, v10, :cond_6

    if-eq v13, v3, :cond_5

    if-eq v13, v15, :cond_5

    .line 143
    sget-object v0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->dispatchParseJSonState(Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;Ljava/lang/Boolean;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 140
    :cond_5
    :try_start_8
    invoke-virtual {v12, v10}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setVideo(Z)V

    goto :goto_5

    .line 136
    :cond_6
    invoke-virtual {v12, v4}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setVideo(Z)V

    :goto_5
    const-string v3, "y"

    .line 147
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setType(I)V

    const-string v3, "d"

    .line 148
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setDuration(I)V

    const-string v3, "h"

    .line 149
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setHeight(I)V

    const-string v3, "w"

    .line 150
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setWidth(I)V

    const-string v3, "p"

    .line 151
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setRate(I)V

    const-string v3, "/"

    .line 152
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setName(Ljava/lang/String;)V

    const-string v0, "f"

    .line 153
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setPath(Ljava/lang/String;)V

    const-string v0, "t"

    .line 154
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setCreateTime(Ljava/lang/String;)V

    const-string v0, "e"

    .line 155
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setFileEndTime(Ljava/lang/String;)V

    const-string v0, "s"

    .line 156
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v12, v10, v11}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSize(J)V

    const-string v0, "c"

    .line 157
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "c"

    .line 158
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setCameraType(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 163
    :cond_7
    :try_start_9
    sget-object v0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v3, "t"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :catch_3
    move-exception v0

    .line 165
    :try_start_a
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v0, 0x0

    .line 168
    :goto_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    if-eqz v0, :cond_8

    .line 170
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 171
    invoke-virtual {v12, v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setStartTime(Ljava/util/Calendar;)V

    goto :goto_7

    .line 173
    :cond_8
    sget-object v3, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->tag:Ljava/lang/String;

    const-string v10, "Parse start time string fail!"

    invoke-static {v3, v10}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    if-eqz v0, :cond_9

    .line 179
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xd

    .line 180
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v12}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getDuration()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v3, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 181
    invoke-virtual {v12, v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setEndTime(Ljava/util/Calendar;)V

    goto :goto_8

    .line 183
    :cond_9
    sget-object v0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->tag:Ljava/lang/String;

    const-string v3, "Parse end time string fail!"

    invoke-static {v0, v3}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_8
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 187
    :cond_a
    sget-object v0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->tag:Ljava/lang/String;

    const-string v3, "Invalid path received from device"

    invoke-static {v0, v3}, Lcom/jieli/lib/dv/control/utils/Dlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->dispatchParseJSonState(Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;Ljava/lang/Boolean;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 192
    :cond_b
    :try_start_b
    invoke-direct {v1, v7}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->setFileInfos(Ljava/util/List;)V

    .line 193
    invoke-static {v7}, Lcom/jieli/stream/dv/running2/util/AppUtils;->descSortWay(Ljava/util/List;)V

    .line 194
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->dispatchParseJSonState(Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;Ljava/lang/Boolean;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 88
    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The data object maybe not JSON:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mJSonData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "JSon data is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17ad4 -> :sswitch_3
        0x19be1 -> :sswitch_2
        0x1a714 -> :sswitch_1
        0x31e068 -> :sswitch_0
    .end sparse-switch
.end method

.method private setFileInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mList:Ljava/util/List;

    monitor-enter v0

    .line 199
    :try_start_0
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mList:Ljava/util/List;

    .line 200
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public clearData()V
    .locals 1

    const/4 v0, 0x0

    .line 385
    sput-object v0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mJSonData:Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 387
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mList:Ljava/util/List;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 220
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPictureInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mList:Ljava/util/List;

    monitor-enter v0

    .line 240
    :try_start_0
    sget-object v1, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mJSonData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 244
    :goto_0
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isVideo()Z

    move-result v3

    if-nez v3, :cond_0

    .line 246
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    :cond_1
    monitor-exit v0

    return-object v1

    .line 241
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "JSon data is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 250
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVideoInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mList:Ljava/util/List;

    monitor-enter v0

    .line 225
    :try_start_0
    sget-object v1, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mJSonData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 229
    :goto_0
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 230
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_1
    monitor-exit v0

    return-object v1

    .line 226
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "JSon data is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVideosDescription()Ljava/lang/String;
    .locals 1

    .line 373
    sget-object v0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mJSonData:Ljava/lang/String;

    return-object v0
.end method

.method public parseJSonData(Ljava/lang/String;Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    sput-object p1, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mJSonData:Ljava/lang/String;

    .line 63
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/jieli/stream/dv/running2/util/json/JSonManager$1;

    invoke-direct {v0, p0, p2}, Lcom/jieli/stream/dv/running2/util/json/JSonManager$1;-><init>(Lcom/jieli/stream/dv/running2/util/json/JSonManager;Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 71
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->dispatchParseJSonState(Lcom/jieli/stream/dv/running2/util/json/listener/OnCompletedListener;Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 377
    sput-object v0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->instance:Lcom/jieli/stream/dv/running2/util/json/JSonManager;

    .line 378
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/util/json/JSonManager;->clearData()V

    return-void
.end method
