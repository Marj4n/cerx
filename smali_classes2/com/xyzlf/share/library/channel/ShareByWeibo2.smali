.class public Lcom/xyzlf/share/library/channel/ShareByWeibo2;
.super Lcom/xyzlf/share/library/channel/ShareBase;
.source "ShareByWeibo2.java"


# instance fields
.field private data:Lcom/xyzlf/share/library/bean/ShareEntity;

.field private listener:Lcom/xyzlf/share/library/interfaces/OnShareListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/xyzlf/share/library/channel/ShareBase;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/xyzlf/share/library/channel/ShareByWeibo2;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->localSyncTask(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xyzlf/share/library/channel/ShareByWeibo2;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/xyzlf/share/library/channel/ShareByWeibo2;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->weiboShare(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xyzlf/share/library/channel/ShareByWeibo2;)Lcom/xyzlf/share/library/bean/ShareEntity;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    return-object p0
.end method

.method private getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .line 171
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 174
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 175
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/xyzlf/com/share/library/R$drawable;->share_default:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private localSyncTask()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v0}, Lcom/xyzlf/share/library/bean/ShareEntity;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v0}, Lcom/xyzlf/share/library/bean/ShareEntity;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/xyzlf/share/library/channel/ShareByWeibo2$3;

    invoke-direct {v0, p0}, Lcom/xyzlf/share/library/channel/ShareByWeibo2$3;-><init>(Lcom/xyzlf/share/library/channel/ShareByWeibo2;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 114
    invoke-virtual {v0, v1}, Lcom/xyzlf/share/library/channel/ShareByWeibo2$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0}, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->localSyncTask(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method private localSyncTask(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 91
    new-instance v0, Lcom/xyzlf/share/library/channel/ShareByWeibo2$2;

    invoke-direct {v0, p0, p1}, Lcom/xyzlf/share/library/channel/ShareByWeibo2$2;-><init>(Lcom/xyzlf/share/library/channel/ShareByWeibo2;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 103
    invoke-virtual {v0, p1}, Lcom/xyzlf/share/library/channel/ShareByWeibo2$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private weiboShare(Ljava/lang/String;)V
    .locals 8

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/*"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "text/plain"

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x4

    :try_start_0
    const-string v3, ""

    .line 130
    iget-object v4, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    .line 131
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 133
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 134
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.sina.weibo"

    .line 135
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.sina.weibolite"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    move-object v3, v6

    goto :goto_1

    :cond_2
    :goto_2
    move-object v5, v3

    move-object v3, v6

    :cond_3
    if-eqz v5, :cond_8

    .line 142
    iget-object v4, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    iget-object v4, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v4}, Lcom/xyzlf/share/library/bean/ShareEntity;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 146
    iget-object v4, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v4}, Lcom/xyzlf/share/library/bean/ShareEntity;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_4
    iget-object v4, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v4}, Lcom/xyzlf/share/library/bean/ShareEntity;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, " "

    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    invoke-virtual {v4}, Lcom/xyzlf/share/library/bean/ShareEntity;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "android.intent.extra.TEXT"

    .line 152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "android.intent.extra.STREAM"

    .line 156
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 158
    :cond_7
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 159
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->listener:Lcom/xyzlf/share/library/interfaces/OnShareListener;

    const/4 v0, 0x1

    invoke-interface {p1, v2, v0}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    goto :goto_3

    .line 161
    :cond_8
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->listener:Lcom/xyzlf/share/library/interfaces/OnShareListener;

    invoke-interface {p1, v2, v1}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 164
    :catch_0
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->listener:Lcom/xyzlf/share/library/interfaces/OnShareListener;

    invoke-interface {p1, v2, v1}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    :goto_3
    return-void
.end method


# virtual methods
.method public share(Lcom/xyzlf/share/library/bean/ShareEntity;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xyzlf/share/library/util/ChannelUtil;->isWeiboInstall(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 45
    iget-object v2, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/xyzlf/share/library/util/ChannelUtil;->isWeiboLiteInstall(Landroid/content/Context;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x4

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 48
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->context:Landroid/content/Context;

    sget v0, Lcom/xyzlf/com/share/library/R$string;->share_no_weibo_client:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/xyzlf/share/library/util/ToastUtil;->showToast(Landroid/content/Context;IZ)V

    .line 49
    invoke-interface {p2, v4, v3}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 53
    invoke-interface {p2, v4, v3}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    return-void

    .line 56
    :cond_2
    iput-object p2, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->listener:Lcom/xyzlf/share/library/interfaces/OnShareListener;

    .line 57
    iput-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->data:Lcom/xyzlf/share/library/bean/ShareEntity;

    .line 58
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getImgUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 59
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getImgUrl()Ljava/lang/String;

    move-result-object p2

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 60
    new-instance p2, Lcom/xyzlf/share/library/request/BitmapAsyncTask;

    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/xyzlf/share/library/channel/ShareByWeibo2$1;

    invoke-direct {v0, p0}, Lcom/xyzlf/share/library/channel/ShareByWeibo2$1;-><init>(Lcom/xyzlf/share/library/channel/ShareByWeibo2;)V

    invoke-direct {p2, p1, v0}, Lcom/xyzlf/share/library/request/BitmapAsyncTask;-><init>(Ljava/lang/String;Lcom/xyzlf/share/library/request/BitmapAsyncTask$OnBitmapListener;)V

    new-array p1, v1, [Ljava/lang/Void;

    .line 70
    invoke-virtual {p2, p1}, Lcom/xyzlf/share/library/request/BitmapAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 72
    :cond_3
    invoke-direct {p0}, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->localSyncTask()V

    goto :goto_2

    .line 74
    :cond_4
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getDrawableId()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 77
    :try_start_0
    iget-object p2, p0, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getDrawableId()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_5

    .line 81
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->localSyncTask(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 83
    :cond_5
    invoke-direct {p0, v0}, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->localSyncTask(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 86
    :cond_6
    invoke-direct {p0, v0}, Lcom/xyzlf/share/library/channel/ShareByWeibo2;->localSyncTask(Landroid/graphics/Bitmap;)V

    :goto_2
    return-void
.end method
