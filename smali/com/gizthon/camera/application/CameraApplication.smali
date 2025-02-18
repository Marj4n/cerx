.class public Lcom/gizthon/camera/application/CameraApplication;
.super Lcom/jieli/stream/dv/running2/ui/MainApplication;
.source "CameraApplication.java"


# static fields
.field public static final DIRECTORY_NAME:Ljava/lang/String; = "/MergeCamera/Media/Photo/Screen/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public closeAndroid10Dialog()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "android.content.pm.PackageParser$Package"

    .line 21
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 22
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    :try_start_1
    const-string v2, "android.app.ActivityThread"

    .line 28
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentActivityThread"

    new-array v4, v0, [Ljava/lang/Class;

    .line 29
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "mHiddenApiWarningShown"

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 34
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 14
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->onCreate()V

    .line 16
    invoke-virtual {p0}, Lcom/gizthon/camera/application/CameraApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "319a06884a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 17
    invoke-virtual {p0}, Lcom/gizthon/camera/application/CameraApplication;->closeAndroid10Dialog()V

    return-void
.end method
