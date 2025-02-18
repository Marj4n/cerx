.class public Lcom/xyzlf/share/library/channel/ShareByQQ;
.super Lcom/xyzlf/share/library/channel/ShareBase;
.source "ShareByQQ.java"


# instance fields
.field protected mTencent:Lcom/tencent/tauth/Tencent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/xyzlf/share/library/channel/ShareBase;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xyzlf/share/library/util/ManifestUtil;->getTencentQQAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    iput-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByQQ;->mTencent:Lcom/tencent/tauth/Tencent;

    return-void
.end method


# virtual methods
.method public share(Lcom/xyzlf/share/library/bean/ShareEntity;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/xyzlf/share/library/channel/ShareByQQ;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 44
    :cond_1
    new-instance v0, Lcom/xyzlf/share/library/channel/ShareByQQ$1;

    invoke-direct {v0, p0, p2}, Lcom/xyzlf/share/library/channel/ShareByQQ$1;-><init>(Lcom/xyzlf/share/library/channel/ShareByQQ;Lcom/xyzlf/share/library/interfaces/OnShareListener;)V

    .line 72
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->isShareBigImg()Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "req_type"

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    const-string v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 74
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "imageLocalUrl"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 75
    invoke-virtual {p2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "cflag"

    .line 76
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByQQ;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByQQ;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1, v1, p2, v0}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto/16 :goto_1

    .line 79
    :cond_2
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 80
    iget-object p2, p0, Lcom/xyzlf/share/library/channel/ShareByQQ;->context:Landroid/content/Context;

    instance-of p2, p2, Landroid/app/Activity;

    if-nez p2, :cond_3

    return-void

    .line 83
    :cond_3
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 84
    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "summary"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "targetUrl"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 89
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "imageUrl"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_4
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByQQ;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/xyzlf/share/library/channel/ShareByQQ;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1, v1, p2, v0}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_1

    .line 94
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/plain"

    .line 95
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v5, p0, Lcom/xyzlf/share/library/channel/ShareByQQ;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "com.tencent.mobileqq"

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 98
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 99
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v0, ""

    .line 103
    :goto_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v5, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 107
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->getContent()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object p1, p0, Lcom/xyzlf/share/library/channel/ShareByQQ;->context:Landroid/content/Context;

    invoke-static {p1, v5}, Lcom/xyzlf/share/library/util/ShareUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_8

    if-eqz p2, :cond_9

    .line 112
    invoke-interface {p2, v0, v4}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    goto :goto_1

    :cond_8
    if-eqz p2, :cond_9

    .line 116
    invoke-interface {p2, v0, v2}, Lcom/xyzlf/share/library/interfaces/OnShareListener;->onShare(II)V

    :cond_9
    :goto_1
    return-void
.end method
