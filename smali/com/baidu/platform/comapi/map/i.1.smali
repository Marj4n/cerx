.class public Lcom/baidu/platform/comapi/map/i;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/map/i;->b:Landroid/content/Context;

    invoke-static {}, Lcom/baidu/mapapi/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/platform/comapi/map/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/platform/comapi/NativeLoader;->getInstance()Lcom/baidu/platform/comapi/NativeLoader;

    move-result-object v0

    invoke-static {}, Lcom/baidu/platform/comapi/map/VersionInfo;->getKitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    invoke-static {}, Lcom/baidu/platform/comjni/engine/AppEngine;->InitClass()V

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/i;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/SysUpdateObservable;->getInstance()Lcom/baidu/platform/comapi/util/SysUpdateObservable;

    move-result-object v0

    new-instance v1, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/SysUpdateObservable;->addObserver(Lcom/baidu/platform/comapi/util/SysUpdateObserver;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/SysUpdateObservable;->getInstance()Lcom/baidu/platform/comapi/util/SysUpdateObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysUpdateObservable;->init()V

    return-void

    :cond_0
    new-instance v0, Lcom/baidu/mapapi/common/BaiduMapSDKException;

    const-string v1, "the version of map is not match with base"

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/common/BaiduMapSDKException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()V
    .locals 2

    sget v0, Lcom/baidu/platform/comapi/map/i;->a:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/platform/comapi/map/i;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/vi/VMsg;->init()V

    sget-object v0, Lcom/baidu/platform/comapi/map/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/platform/comjni/engine/AppEngine;->InitEngine(Landroid/content/Context;)Z

    invoke-static {}, Lcom/baidu/platform/comjni/engine/AppEngine;->StartSocketProc()Z

    sget-object v0, Lcom/baidu/platform/comapi/map/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mapapi/NetworkUtil;->updateNetworkProxy(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you have not supplyed the global app context info from SDKInitializer.initialize(Context) function."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget v0, Lcom/baidu/platform/comapi/map/i;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/platform/comapi/map/i;->a:I

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 21

    move-object/from16 v0, p0

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    const-string v3, "cfg/a/ResPack.cfg"

    const-string v4, "cfg/idrres/baseindoormap.sty"

    const-string v5, "cfg/idrres/DVIndoor.cfg"

    const-string v6, "cfg/idrres/ResPack.cfg"

    const-string v7, "cfg/h/DVHotcity.cfg"

    const-string v8, "cfg/l/DVHotcity.cfg"

    const-string v9, "cfg/h/DVHotMap.cfg"

    const-string v10, "cfg/l/DVHotMap.cfg"

    const-string v11, "cfg/l/DVDirectory.cfg"

    const-string v12, "cfg/l/DVVersion.cfg"

    const-string v13, "cfg/h/DVDirectory.cfg"

    const-string v14, "cfg/h/DVVersion.cfg"

    const-string v15, "cfg/a/mapstyle.sty"

    const-string v16, "cfg/a/satellitestyle.sty"

    const-string v17, "cfg/a/trafficstyle.sty"

    const-string v18, "cfg/a/CustomIndex"

    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "cfg/a/CustomIndex"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    const-string v5, "cfg/a/ResPack.rs"

    const-string v6, "cfg/idrres/baseindoormap.sty"

    const-string v7, "cfg/idrres/DVIndoor.cfg"

    const-string v8, "cfg/idrres/ResPackIndoorMap.rs"

    const-string v9, "cfg/h/DVHotcity.cfg"

    const-string v10, "cfg/l/DVHotcity.cfg"

    const-string v11, "cfg/h/DVHotMap.cfg"

    const-string v12, "cfg/l/DVHotMap.cfg"

    const-string v13, "cfg/l/DVDirectory.cfg"

    const-string v14, "cfg/l/DVVersion.cfg"

    const-string v15, "cfg/h/DVDirectory.cfg"

    const-string v16, "cfg/h/DVVersion.cfg"

    const-string v17, "cfg/a/mapstyle.sty"

    const-string v18, "cfg/a/satellitestyle.sty"

    const-string v19, "cfg/a/trafficstyle.sty"

    const-string v20, "cfg/a/CustomIndex"

    filled-new-array/range {v5 .. v20}, [Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    :try_start_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/ver.dat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x6

    new-array v7, v7, [B

    const/4 v8, 0x4

    const/4 v9, 0x0

    aput-byte v8, v7, v9

    const/4 v10, 0x1

    aput-byte v9, v7, v10

    const/4 v11, 0x2

    aput-byte v9, v7, v11

    const/4 v11, 0x3

    aput-byte v9, v7, v11

    aput-byte v9, v7, v8

    const/4 v8, 0x5

    aput-byte v9, v7, v8

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v11

    new-array v11, v11, [B

    invoke-virtual {v8, v11}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    invoke-static {v11, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/cfg/a/mapstyle.sty"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-lez v8, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    :goto_0
    if-eqz v8, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v11, v7}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/cfg/a"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/cfg/h"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_4
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/cfg/l"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_5
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/cfg/idrres"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v10, :cond_7

    aget-object v7, v3, v6

    aget-object v11, v2, v6

    invoke-static {v7, v11, v0}, Lcom/baidu/platform/comapi/commonutils/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    if-eqz v8, :cond_8

    :goto_2
    if-ge v9, v4, :cond_8

    aget-object v2, v1, v9

    aget-object v3, v5, v9

    invoke-static {v2, v3, v0}, Lcom/baidu/platform/comapi/commonutils/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/platform/comapi/map/e;->j(Z)V

    return-void
.end method

.method public static b()V
    .locals 1

    sget v0, Lcom/baidu/platform/comapi/map/i;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/baidu/platform/comapi/map/i;->a:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/platform/comjni/engine/AppEngine;->UnInitEngine()Z

    invoke-static {}, Lcom/baidu/vi/VMsg;->destroy()V

    :cond_0
    return-void
.end method
