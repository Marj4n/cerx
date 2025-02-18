.class public Lcom/xyzlf/share/library/channel/ShareByWeixin;
.super Lcom/xyzlf/share/library/channel/ShareBase;
.source "ShareByWeixin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;
    }
.end annotation


# static fields
.field private static final THUMB_SIZE:I = 0xfa


# instance fields
.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private channel:I

.field private data:Lcom/xyzlf/share/library/bean/ShareEntity;

.field private listener:Lcom/xyzlf/share/library/interfaces/OnShareListener;

.field private receiver:Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/xyzlf/share/library/channel/ShareBase;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->tag:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->context:Landroid/content/Context;

    .line 49
    iput p2, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->channel:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/xyzlf/share/library/util/ManifestUtil;->getWeixinKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-void
.end method

.method static synthetic access$100(Lcom/xyzlf/share/library/channel/ShareByWeixin;)Lcom/xyzlf/share/library/bean/ShareEntity;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xyzlf/share/library/channel/ShareByWeixin;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xyzlf/share/library/channel/ShareByWeixin;)Lcom/xyzlf/share/library/interfaces/OnShareListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->listener:Lcom/xyzlf/share/library/interfaces/OnShareListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xyzlf/share/library/channel/ShareByWeixin;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->send(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xyzlf/share/library/channel/ShareByWeixin;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->send()V

    return-void
.end method

.method static synthetic access$600(Lcom/xyzlf/share/library/channel/ShareByWeixin;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->channel:I

    return p0
.end method

.method private buildWXMediaMessage(Landroid/graphics/Bitmap;)Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .locals 4

    .line 179
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 180
    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v3}, Lcom/xyzlf/share/library/bean/ShareEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", description="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v3}, Lcom/xyzlf/share/library/bean/ShareEntity;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    new-instance p1, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;

    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p0, p1}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->getWxShareBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->setThumbImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/xyzlf/com/share/library/R$drawable;->share_default:I

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 191
    invoke-virtual {p0, p1}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->getWxShareBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 194
    :cond_2
    :goto_0
    new-instance p1, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;

    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    :goto_1
    return-object v0
.end method

.method private send()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, v0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->send(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private send(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bitmap w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 164
    invoke-direct {p0, p1}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->buildWXMediaMessage(Landroid/graphics/Bitmap;)Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 165
    iget p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->channel:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 166
    iput p1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 168
    iput v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 170
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void
.end method

.method private start()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v0}, Lcom/xyzlf/share/library/bean/ShareEntity;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->tag:Ljava/lang/String;

    const-string v2, "net pic"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v1, Lcom/xyzlf/share/library/request/BitmapAsyncTask;

    new-instance v2, Lcom/xyzlf/share/library/channel/ShareByWeixin$1;

    invoke-direct {v2, p0}, Lcom/xyzlf/share/library/channel/ShareByWeixin$1;-><init>(Lcom/xyzlf/share/library/channel/ShareByWeixin;)V

    invoke-direct {v1, v0, v2}, Lcom/xyzlf/share/library/request/BitmapAsyncTask;-><init>(Ljava/lang/String;Lcom/xyzlf/share/library/request/BitmapAsyncTask$OnBitmapListener;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 109
    invoke-virtual {v1, v0}, Lcom/xyzlf/share/library/request/BitmapAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locale pic: is big img="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v3}, Lcom/xyzlf/share/library/bean/ShareEntity;->isShareBigImg()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v1}, Lcom/xyzlf/share/library/bean/ShareEntity;->isShareBigImg()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {p0, v0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->getLoacalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->listener:Lcom/xyzlf/share/library/interfaces/OnShareListener;

    invoke-virtual {p0, v0, v1}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->shareImg(Landroid/graphics/Bitmap;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V

    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->getLoacalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->send(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v0}, Lcom/xyzlf/share/library/bean/ShareEntity;->getDrawableId()I

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->tag:Ljava/lang/String;

    const-string v1, "resource pic"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v2}, Lcom/xyzlf/share/library/bean/ShareEntity;->getDrawableId()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_3

    .line 127
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->send(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 129
    :cond_3
    invoke-direct {p0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->send()V

    goto :goto_1

    .line 134
    :cond_4
    invoke-direct {p0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->send()V

    goto :goto_1

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->listener:Lcom/xyzlf/share/library/interfaces/OnShareListener;

    if-eqz v0, :cond_6

    .line 138
    iget v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->channel:I

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    .line 140
    :cond_6
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->context:Landroid/content/Context;

    sget v1, Lcom/xyzlf/com/share/library/R$string;->share_no_weixin_client:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xyzlf/share/library/util/ToastUtil;->showToast(Landroid/content/Context;IZ)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getLoacalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 145
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/xyzlf/com/share/library/R$drawable;->share_default:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected getWxShareBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43160000    # 150.0f

    div-float v0, v1, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public registerWeixinReceiver()V
    .locals 3

    .line 57
    new-instance v0, Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;-><init>(Lcom/xyzlf/share/library/channel/ShareByWeixin;Lcom/xyzlf/share/library/channel/ShareByWeixin$1;)V

    iput-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->receiver:Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.financial360.nicaifu.share.action.WEIXIN_CALLBACK"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->receiver:Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public share(Lcom/xyzlf/share/library/bean/ShareEntity;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    .line 75
    iput-object p2, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->listener:Lcom/xyzlf/share/library/interfaces/OnShareListener;

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/xyzlf/share/library/channel/ShareByWeixin;->start()V

    return-void
.end method

.method public shareImg(Landroid/graphics/Bitmap;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V
    .locals 6

    const/4 v0, 0x2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 241
    iget p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->channel:I

    invoke-interface {p2, p1, v0}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    :cond_0
    return-void

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 246
    iget-object p2, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 247
    new-instance p2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {p2}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 248
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {v1, p1}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    :goto_0
    mul-int v4, v1, v3

    const v5, 0xf424

    if-le v4, v5, :cond_2

    .line 253
    div-int/lit8 v1, v1, 0x2

    .line 254
    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 256
    :cond_2
    invoke-static {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 258
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 259
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 260
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 261
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 266
    :goto_1
    new-instance p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {p1}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 268
    iput-object p2, p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 269
    iget p2, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->channel:I

    if-ne v2, p2, :cond_3

    const/4 p2, 0x0

    .line 270
    iput p2, p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_2

    :cond_3
    if-ne v0, p2, :cond_4

    .line 272
    iput v2, p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 274
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p2, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_6

    .line 278
    iget p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->channel:I

    invoke-interface {p2, p1, v0}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    .line 280
    :cond_6
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->context:Landroid/content/Context;

    sget p2, Lcom/xyzlf/com/share/library/R$string;->share_no_weixin_client:I

    invoke-static {p1, p2, v2}, Lcom/xyzlf/share/library/util/ToastUtil;->showToast(Landroid/content/Context;IZ)V

    :cond_7
    :goto_3
    return-void
.end method

.method public unregisterWeixinReceiver()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->receiver:Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByWeixin;->receiver:Lcom/xyzlf/share/library/channel/ShareByWeixin$WeixinShareReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
