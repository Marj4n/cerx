.class public final Lcom/baidu/platform/comapi/util/d;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/baidu/platform/comapi/util/d;


# instance fields
.field private b:Z

.field private c:Z

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/util/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/baidu/platform/comapi/util/c;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/util/d;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/util/d;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/util/d;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/util/d;->e:Lcom/baidu/platform/comapi/util/c;

    return-void
.end method

.method public static a()Lcom/baidu/platform/comapi/util/d;
    .locals 2

    sget-object v0, Lcom/baidu/platform/comapi/util/d;->a:Lcom/baidu/platform/comapi/util/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/baidu/platform/comapi/util/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/platform/comapi/util/d;->a:Lcom/baidu/platform/comapi/util/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/platform/comapi/util/d;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/util/d;-><init>()V

    sput-object v1, Lcom/baidu/platform/comapi/util/d;->a:Lcom/baidu/platform/comapi/util/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/baidu/platform/comapi/util/d;->a:Lcom/baidu/platform/comapi/util/d;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/test.0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "BaiduMapSDKNew"

    :try_start_0
    const-string v3, "storage"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getVolumeList"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "getVolumeState"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v6

    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v7, "android.os.storage.StorageVolume"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v9, "isRemovable"

    new-array v10, v6, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const-string v10, "getPath"

    new-array v11, v6, [Ljava/lang/Class;

    invoke-virtual {v7, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v10, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    if-eqz v4, :cond_b

    array-length v10, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x0

    :goto_0
    const-string v12, "\u5916\u7f6e\u5b58\u50a8\u5361"

    if-ge v11, v10, :cond_5

    :try_start_1
    aget-object v14, v4, v11

    new-array v15, v6, [Ljava/lang/Object;

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_3

    const-string v13, "mounted"

    move-object/from16 v17, v4

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v15, v4, v6

    invoke-virtual {v5, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v9, v14, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x13

    if-gt v13, v14, :cond_2

    invoke-direct {v1, v15}, Lcom/baidu/platform/comapi/util/d;->a(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v1, Lcom/baidu/platform/comapi/util/d;->d:Ljava/util/List;

    new-instance v14, Lcom/baidu/platform/comapi/util/c;

    xor-int/lit8 v8, v4, 0x1

    if-eqz v4, :cond_1

    const-string v12, "\u5185\u7f6e\u5b58\u50a8\u5361"

    :cond_1
    invoke-direct {v14, v15, v8, v12, v0}, Lcom/baidu/platform/comapi/util/c;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v4, v8, :cond_4

    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "map_pref"

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v8, "PREFFERED_SD_CARD"

    const-string v12, ""

    invoke-interface {v4, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/platform/comapi/util/d;->f:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object/from16 v17, v4

    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v17

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_b

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lcom/baidu/platform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    :goto_3
    array-length v5, v2

    if-ge v4, v5, :cond_a

    aget-object v5, v2, v4

    if-nez v5, :cond_6

    goto :goto_6

    :cond_6
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Lcom/baidu/platform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/platform/comapi/util/c;

    invoke-virtual {v8}, Lcom/baidu/platform/comapi/util/c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_9

    if-nez v7, :cond_9

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    new-instance v7, Lcom/baidu/platform/comapi/util/c;

    const/4 v8, 0x1

    invoke-direct {v7, v5, v8, v12, v0}, Lcom/baidu/platform/comapi/util/c;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    const/4 v8, 0x1

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    :goto_6
    iget-object v0, v1, Lcom/baidu/platform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v1, Lcom/baidu/platform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_7
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 12

    const-string v0, ":"

    const-string v1, "Auto"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/proc/mounts"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v7, " "

    const/16 v8, 0x20

    const/16 v9, 0x9

    if-eqz v6, :cond_2

    :try_start_1
    new-instance v6, Ljava/util/Scanner;

    invoke-direct {v6, v5}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v6}, Ljava/util/Scanner;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v6}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    const-string v10, "/dev/block/vold/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v10, v5

    if-lez v10, :cond_0

    const/4 v10, 0x1

    aget-object v5, v5, v10

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v4, v6

    goto/16 :goto_5

    :catch_0
    move-exception p1

    move-object v4, v6

    goto/16 :goto_4

    :cond_2
    :goto_1
    :try_start_3
    new-instance v5, Ljava/io/File;

    const-string v6, "/system/etc/vold.fstab"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v10, 0x0

    if-eqz v6, :cond_6

    new-instance v6, Ljava/util/Scanner;

    invoke-direct {v6, v5}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Ljava/util/Scanner;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v6}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    const-string v11, "dev_mount"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v11, v5

    if-lez v11, :cond_3

    const/4 v11, 0x2

    aget-object v5, v5, v11

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :try_start_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/baidu/platform/comapi/util/d;->d:Ljava/util/List;

    new-instance v6, Lcom/baidu/platform/comapi/util/c;

    invoke-direct {v6, v0, v10, v1, p1}, Lcom/baidu/platform/comapi/util/c;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/baidu/platform/comapi/util/d;->d:Ljava/util/List;

    new-instance v7, Lcom/baidu/platform/comapi/util/c;

    invoke-direct {v7, v5, v10, v1, p1}, Lcom/baidu/platform/comapi/util/c;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_4
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    :cond_8
    return-void

    :goto_5
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    :cond_9
    throw p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 8

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/util/d;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/util/d;->b:Z

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/util/d;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/util/d;->d(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/baidu/platform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/platform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/platform/comapi/util/c;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/util/c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    move-object v2, v5

    goto :goto_1

    :cond_3
    if-nez v4, :cond_5

    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/util/d;->b(Landroid/content/Context;)Lcom/baidu/platform/comapi/util/c;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platform/comapi/util/d;->e:Lcom/baidu/platform/comapi/util/c;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/util/c;

    invoke-virtual {p0, p1, v2}, Lcom/baidu/platform/comapi/util/d;->a(Landroid/content/Context;Lcom/baidu/platform/comapi/util/c;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    iput-object v2, p0, Lcom/baidu/platform/comapi/util/d;->e:Lcom/baidu/platform/comapi/util/c;

    goto :goto_3

    :cond_5
    if-ne v4, v0, :cond_6

    invoke-virtual {p0, p1, v2}, Lcom/baidu/platform/comapi/util/d;->a(Landroid/content/Context;Lcom/baidu/platform/comapi/util/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/util/d;->b(Landroid/content/Context;)Lcom/baidu/platform/comapi/util/c;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platform/comapi/util/d;->e:Lcom/baidu/platform/comapi/util/c;

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/util/d;->e:Lcom/baidu/platform/comapi/util/c;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/util/c;

    iput-object v0, p0, Lcom/baidu/platform/comapi/util/d;->e:Lcom/baidu/platform/comapi/util/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_4
    :try_start_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/util/d;->e:Lcom/baidu/platform/comapi/util/c;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/d;->e:Lcom/baidu/platform/comapi/util/c;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/platform/comapi/util/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/d;->e:Lcom/baidu/platform/comapi/util/c;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_9
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/d;->e:Lcom/baidu/platform/comapi/util/c;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_a
    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_5

    :cond_b
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/util/d;->c:Z

    new-instance v0, Lcom/baidu/platform/comapi/util/c;

    invoke-direct {v0, p1}, Lcom/baidu/platform/comapi/util/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/util/d;->e:Lcom/baidu/platform/comapi/util/c;

    iget-object p1, p0, Lcom/baidu/platform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/baidu/platform/comapi/util/d;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/d;->e:Lcom/baidu/platform/comapi/util/c;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_5
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/platform/comapi/util/c;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/util/c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/baidu/platform/comapi/util/d;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "map_pref"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PREFFERED_SD_CARD"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public b()Lcom/baidu/platform/comapi/util/c;
    .locals 1

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/d;->e:Lcom/baidu/platform/comapi/util/c;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Lcom/baidu/platform/comapi/util/c;
    .locals 3

    const-string v0, "map_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "PREFFERED_SD_CARD"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/platform/comapi/util/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/util/c;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
