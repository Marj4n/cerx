.class public Lcom/xyzlf/share/library/util/ChannelUtil;
.super Ljava/lang/Object;
.source "ChannelUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 25
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 26
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method public static isQQInstall(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.tencent.mobileqq"

    .line 48
    invoke-static {p0, v0}, Lcom/xyzlf/share/library/util/ChannelUtil;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isWeiboInstall(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.sina.weibo"

    .line 57
    invoke-static {p0, v0}, Lcom/xyzlf/share/library/util/ChannelUtil;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isWeiboLiteInstall(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.sina.weibolite"

    .line 64
    invoke-static {p0, v0}, Lcom/xyzlf/share/library/util/ChannelUtil;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isWeixinInstall(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.tencent.mm"

    .line 40
    invoke-static {p0, v0}, Lcom/xyzlf/share/library/util/ChannelUtil;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
