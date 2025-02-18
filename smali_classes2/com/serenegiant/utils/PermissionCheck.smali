.class public final Lcom/serenegiant/utils/PermissionCheck;
.super Ljava/lang/Object;
.source "PermissionCheck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpPermissions(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object p0

    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionGroupInfo;

    const-string v1, "PermissionCheck"

    .line 46
    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, ""

    .line 49
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public static hasAccessCoarseLocation(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 140
    invoke-static {p0, v0}, Lcom/serenegiant/utils/PermissionCheck;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasAccessFineLocation(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 149
    invoke-static {p0, v0}, Lcom/serenegiant/utils/PermissionCheck;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasAccessLocation(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 130
    invoke-static {p0, v0}, Lcom/serenegiant/utils/PermissionCheck;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 131
    invoke-static {p0, v0}, Lcom/serenegiant/utils/PermissionCheck;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasAudio(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 90
    invoke-static {p0, v0}, Lcom/serenegiant/utils/PermissionCheck;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasCamera(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.CAMERA"

    .line 158
    invoke-static {p0, v0}, Lcom/serenegiant/utils/PermissionCheck;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasNetwork(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.INTERNET"

    .line 99
    invoke-static {p0, v0}, Lcom/serenegiant/utils/PermissionCheck;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 65
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isMarshmallow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, ""

    .line 79
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v0
.end method

.method public static hasReadExternalStorage(Landroid/content/Context;)Z
    .locals 1

    .line 118
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isAndroid4()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 119
    invoke-static {p0, v0}, Lcom/serenegiant/utils/PermissionCheck;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 121
    invoke-static {p0, v0}, Lcom/serenegiant/utils/PermissionCheck;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasWriteExternalStorage(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 108
    invoke-static {p0, v0}, Lcom/serenegiant/utils/PermissionCheck;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static missingPermissions(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 195
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 197
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 198
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static missingPermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/serenegiant/utils/PermissionCheck;->missingPermissions(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static openSettings(Landroid/content/Context;)V
    .locals 4

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
