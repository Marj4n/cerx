.class public Lcom/baidu/platform/comapi/util/e;
.super Ljava/lang/Object;


# static fields
.field private static final A:Ljava/lang/String;

.field private static B:Lcom/baidu/platform/comjni/util/a;

.field private static C:Z

.field private static D:I

.field private static E:I

.field private static F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:I

.field static g:I

.field static h:I

.field static i:I

.field static j:I

.field static k:I

.field static l:Ljava/lang/String;

.field static m:Ljava/lang/String;

.field static n:Ljava/lang/String;

.field static o:Ljava/lang/String;

.field static p:Ljava/lang/String;

.field static q:Ljava/lang/String;

.field static r:Ljava/lang/String;

.field static s:Ljava/lang/String;

.field static t:Ljava/lang/String;

.field static u:Ljava/lang/String;

.field static v:Ljava/lang/String;

.field public static w:Landroid/content/Context;

.field public static final x:I

.field public static y:F

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/platform/comapi/util/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/util/e;->A:Ljava/lang/String;

    new-instance v0, Lcom/baidu/platform/comjni/util/a;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/util/a;-><init>()V

    sput-object v0, Lcom/baidu/platform/comapi/util/e;->B:Lcom/baidu/platform/comjni/util/a;

    const-string v0, "02"

    sput-object v0, Lcom/baidu/platform/comapi/util/e;->a:Ljava/lang/String;

    const-string v0, "baidu"

    sput-object v0, Lcom/baidu/platform/comapi/util/e;->n:Ljava/lang/String;

    sput-object v0, Lcom/baidu/platform/comapi/util/e;->o:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/platform/comapi/util/e;->p:Ljava/lang/String;

    sput-object v0, Lcom/baidu/platform/comapi/util/e;->q:Ljava/lang/String;

    sput-object v0, Lcom/baidu/platform/comapi/util/e;->r:Ljava/lang/String;

    const-string v0, "-1"

    sput-object v0, Lcom/baidu/platform/comapi/util/e;->u:Ljava/lang/String;

    sput-object v0, Lcom/baidu/platform/comapi/util/e;->v:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/platform/comapi/util/e;->x:I

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/baidu/platform/comapi/util/e;->y:F

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/platform/comapi/util/e;->C:Z

    const/4 v0, 0x0

    sput v0, Lcom/baidu/platform/comapi/util/e;->D:I

    sput v0, Lcom/baidu/platform/comapi/util/e;->E:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 0

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->d()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/baidu/platform/comapi/util/e;->l:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->f()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/baidu/platform/comapi/util/e;->u:Ljava/lang/String;

    sput-object p0, Lcom/baidu/platform/comapi/util/e;->v:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->f()V

    return-void
.end method

.method public static a(Landroid/content/Context;)[B
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->p:Ljava/lang/String;

    const-string v2, "cpu"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->a:Ljava/lang/String;

    const-string v2, "resid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->n:Ljava/lang/String;

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->q:Ljava/lang/String;

    const-string v2, "glr"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->r:Ljava/lang/String;

    const-string v2, "glv"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mb"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sv"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "os"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->l()I

    move-result v1

    const-string v2, "dpi_x"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->l()I

    move-result v1

    const-string v2, "dpi_y"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->l:Ljava/lang/String;

    const-string v2, "net"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cuid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->w:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/platform/comapi/util/e;->a(Landroid/content/Context;)[B

    move-result-object v1

    const-string v2, "signature"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->w:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pcn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->h()I

    move-result v1

    const-string v2, "screen_x"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->j()I

    move-result v1

    const-string v2, "screen_y"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->B:Lcom/baidu/platform/comjni/util/a;

    const-string v2, "phoneInfo"

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/util/a;->a(Ljava/lang/Object;)V

    const-string v1, "mAppSysOSAPI not null"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 15

    const-string v0, "screen"

    const-string v1, "pcn"

    const-string v2, "cuid"

    const-string v3, "dpi"

    const-string v4, "os"

    const-string v5, "sv"

    const-string v6, "mb"

    const-string v7, "channel"

    const-string v8, "resid"

    const-string v9, "%d,%d"

    sput-object p0, Lcom/baidu/platform/comapi/util/e;->w:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/baidu/platform/comapi/util/e;->s:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/baidu/platform/comapi/util/e;->t:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v10, Lcom/baidu/platform/comapi/util/e;->c:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Android"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/baidu/platform/comapi/util/e;->d:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/baidu/platform/comapi/util/e;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/e;->c(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/e;->d(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/e;->e(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/e;->f(Landroid/content/Context;)V

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_0
    const-string v13, "location"

    invoke-virtual {p0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v13, "gps"

    invoke-virtual {p0, v13}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    sput v13, Lcom/baidu/platform/comapi/util/e;->D:I

    const-string v13, "network"

    invoke-virtual {p0, v13}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    sput p0, Lcom/baidu/platform/comapi/util/e;->E:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    sget-object v13, Lcom/baidu/platform/comapi/util/e;->a:Ljava/lang/String;

    invoke-static {v13}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {p0, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->m()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->g()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->i()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->l()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->l()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    sget-object v2, Lcom/baidu/platform/comapi/util/e;->w:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    :try_start_1
    const-string p0, "baidumapsdk"

    const-string v13, "LocationManager error"

    invoke-static {p0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    sget-object v13, Lcom/baidu/platform/comapi/util/e;->a:Ljava/lang/String;

    invoke-static {v13}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {p0, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->m()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->g()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->i()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->l()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->l()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    sget-object v2, Lcom/baidu/platform/comapi/util/e;->w:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/baidu/platform/comapi/util/e;->B:Lcom/baidu/platform/comjni/util/a;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/baidu/platform/comjni/util/a;->a()V

    :cond_2
    return-void

    :goto_3
    sget-object v13, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    sget-object v14, Lcom/baidu/platform/comapi/util/e;->a:Ljava/lang/String;

    invoke-static {v14}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->m()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->g()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->i()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->k()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->l()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->l()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->o()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    sget-object v3, Lcom/baidu/platform/comapi/util/e;->w:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw p0
.end method

.method public static c()Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long v5, v1, v3

    long-to-double v5, v5

    rem-long/2addr v1, v3

    long-to-double v0, v1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    add-double/2addr v5, v0

    sget-object v0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ctm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-static {}, Lcom/baidu/mapapi/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/util/e;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/platform/comapi/util/e;->e:Ljava/lang/String;

    const/16 v1, 0x5f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/util/e;->e:Ljava/lang/String;

    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput p0, Lcom/baidu/platform/comapi/util/e;->f:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "1.0.0"

    sput-object p0, Lcom/baidu/platform/comapi/util/e;->e:Ljava/lang/String;

    const/4 p0, 0x1

    sput p0, Lcom/baidu/platform/comapi/util/e;->f:I

    :goto_0
    return-void
.end method

.method public static d()V
    .locals 0

    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 3

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/baidu/platform/comapi/util/e;->g:I

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Lcom/baidu/platform/comapi/util/e;->h:I

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_1
    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/baidu/platform/comapi/util/e;->y:F

    iget p0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int p0, p0

    sput p0, Lcom/baidu/platform/comapi/util/e;->i:I

    iget p0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-int p0, p0

    sput p0, Lcom/baidu/platform/comapi/util/e;->j:I

    sget p0, Lcom/baidu/platform/comapi/util/e;->x:I

    const/4 v1, 0x3

    const/16 v2, 0xa0

    if-le p0, v1, :cond_2

    iget p0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p0, Lcom/baidu/platform/comapi/util/e;->k:I

    goto :goto_1

    :cond_2
    sput v2, Lcom/baidu/platform/comapi/util/e;->k:I

    :goto_1
    sget p0, Lcom/baidu/platform/comapi/util/e;->k:I

    if-nez p0, :cond_3

    sput v2, Lcom/baidu/platform/comapi/util/e;->k:I

    :cond_3
    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/util/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/platform/comapi/util/e;->m:Ljava/lang/String;

    return-void
.end method

.method public static f()V
    .locals 5

    sget-object v0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "net"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->u:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/platform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "appid"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/platform/comapi/util/e;->F:Ljava/util/Map;

    const-string v1, "bduid"

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/platform/comapi/util/e;->B:Lcom/baidu/platform/comjni/util/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->p:Ljava/lang/String;

    const-string v4, "cpu"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->a:Ljava/lang/String;

    const-string v4, "resid"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->n:Ljava/lang/String;

    const-string v4, "channel"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->q:Ljava/lang/String;

    const-string v4, "glr"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->r:Ljava/lang/String;

    const-string v4, "glv"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->g()Ljava/lang/String;

    move-result-object v1

    const-string v4, "mb"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->i()Ljava/lang/String;

    move-result-object v1

    const-string v4, "sv"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->k()Ljava/lang/String;

    move-result-object v1

    const-string v4, "os"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->l()I

    move-result v1

    const-string v4, "dpi_x"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->l()I

    move-result v1

    const-string v4, "dpi_y"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cuid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->w:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pcn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->h()I

    move-result v1

    const-string v2, "screen_x"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/e;->j()I

    move-result v1

    const-string v2, "screen_y"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->u:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->v:Ljava/lang/String;

    const-string v2, "duid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/baidu/platform/comapi/util/e;->z:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/baidu/platform/comapi/util/e;->B:Lcom/baidu/platform/comjni/util/a;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/util/a;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/SysUpdateObservable;->getInstance()Lcom/baidu/platform/comapi/util/SysUpdateObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysUpdateObservable;->updatePhoneInfo()V

    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 0

    const-string p0, "0"

    sput-object p0, Lcom/baidu/platform/comapi/util/e;->l:Ljava/lang/String;

    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/util/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static h()I
    .locals 1

    sget v0, Lcom/baidu/platform/comapi/util/e;->g:I

    return v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/util/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static j()I
    .locals 1

    sget v0, Lcom/baidu/platform/comapi/util/e;->h:I

    return v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/util/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static l()I
    .locals 1

    sget v0, Lcom/baidu/platform/comapi/util/e;->k:I

    return v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/util/e;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/util/e;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/baidu/platform/comapi/util/e;->w:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/bbalbs/common/util/CommonParam;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0
.end method
