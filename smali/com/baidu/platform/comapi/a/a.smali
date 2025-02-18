.class public Lcom/baidu/platform/comapi/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x2505c087


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/baidu/platform/comapi/a/a;->c(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.baidu.BaiduMap"

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->hashCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/baidu/platform/comapi/a/a;->b(Landroid/content/Context;)I

    move-result p0

    sget v0, Lcom/baidu/platform/comapi/a/a;->a:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
