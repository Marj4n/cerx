.class public Lcom/jieli/stream/dv/running2/util/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/IConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/util/AppUtils$HiddenFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppUtils"

.field private static lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustRtsResolution(II)I
    .locals 1

    const/16 v0, 0x780

    if-ne p0, v0, :cond_0

    const/16 v0, 0x438

    if-ne p1, v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x280

    if-ne p0, v0, :cond_1

    const/16 p0, 0x1e0

    if-ne p1, p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static bitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 738
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    .line 744
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 745
    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, p2, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 752
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 753
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 755
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 748
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 752
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 753
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_2

    .line 752
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 753
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 755
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    :cond_2
    :goto_3
    throw p0

    :cond_3
    :goto_4
    return v0
.end method

.method public static browseFileWithOther(Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "AppUtils"

    if-eqz p0, :cond_a

    if-eqz p2, :cond_a

    .line 800
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->judgeFileType(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ".fileProvider"

    const-string v4, "file://"

    const/high16 v5, 0x10000000

    const/16 v6, 0x18

    const/4 v7, 0x1

    if-eq v2, v7, :cond_8

    const/4 v8, 0x2

    if-eq v2, v8, :cond_0

    .line 832
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65e0\u6cd5\u6253\u5f00\u6587\u4ef6\uff0c\u8def\u5f84\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    const-string v2, ""

    const-string v8, ".mov"

    .line 815
    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, ".MOV"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const-string v8, ".avi"

    .line 817
    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, ".AVI"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    const-string v8, ".mp4"

    .line 819
    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, ".MP4"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_3
    const-string v2, "mp4"

    goto :goto_2

    :cond_4
    :goto_0
    const-string v2, "avi"

    goto :goto_2

    :cond_5
    :goto_1
    const-string v2, "mov"

    .line 822
    :cond_6
    :goto_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "video/"

    if-lt p1, v6, :cond_7

    .line 823
    :try_start_2
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 824
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 825
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 827
    :cond_7
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 828
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 804
    :cond_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "image/*"

    if-lt p1, v6, :cond_9

    .line 805
    :try_start_3
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 806
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 807
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 809
    :cond_9
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 810
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    :goto_3
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 836
    invoke-virtual {p0, v1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 840
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " error  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_4
    return-void
.end method

.method public static bytesToFile([BLjava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 769
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 772
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 773
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 780
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 782
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 776
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 780
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 782
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :goto_2
    if-eqz v0, :cond_0

    .line 780
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 782
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 785
    :cond_0
    :goto_3
    throw p0

    :cond_1
    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method public static changeAppLanguage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 7

    const-string v0, "AppUtils"

    if-nez p0, :cond_0

    const-string p0, "context is null"

    .line 1597
    invoke-static {v0, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1600
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1601
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1602
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 1603
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/LangUtil;->getLanguage(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1605
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeAppLanguage index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    .line 1608
    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1609
    new-instance p1, Landroid/os/LocaleList;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    invoke-direct {p1, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 1610
    invoke-virtual {p0, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 1611
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_2

    .line 1612
    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 1614
    :cond_2
    iput-object v4, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1616
    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 1618
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No language match:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public static checkCameraDir(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 2086
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCameraType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    .line 2087
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "RMedia"

    goto :goto_0

    :cond_0
    const-string p0, "FMedia"

    :goto_0
    return-object p0
.end method

.method public static checkFileExist(Ljava/lang/String;)Z
    .locals 1

    .line 242
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkFrameType([B)I
    .locals 9

    const v0, 0xc2c2

    const v1, 0xa1a1

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    .line 2104
    array-length v3, p0

    const/4 v4, 0x5

    if-le v3, v4, :cond_3

    new-array v3, v4, [B

    .line 2106
    invoke-static {p0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2107
    aget-byte p0, v3, v2

    if-nez p0, :cond_3

    const/4 p0, 0x1

    aget-byte v4, v3, p0

    if-nez v4, :cond_3

    const/4 v4, 0x2

    .line 2108
    aget-byte v5, v3, v4

    const/16 v6, 0x41

    const/16 v7, 0x67

    const/4 v8, 0x3

    if-ne v5, p0, :cond_1

    .line 2109
    aget-byte p0, v3, v8

    if-ne p0, v7, :cond_0

    :goto_0
    const v0, 0xa1a1

    goto :goto_1

    .line 2111
    :cond_0
    aget-byte p0, v3, v8

    if-ne p0, v6, :cond_3

    goto :goto_1

    .line 2114
    :cond_1
    aget-byte v4, v3, v4

    if-nez v4, :cond_3

    aget-byte v4, v3, v8

    if-ne v4, p0, :cond_3

    const/4 p0, 0x4

    .line 2115
    aget-byte v4, v3, p0

    if-ne v4, v7, :cond_2

    goto :goto_0

    .line 2117
    :cond_2
    aget-byte p0, v3, p0

    if-ne p0, v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static checkIsEmptyFolder(Ljava/lang/String;)Z
    .locals 1

    .line 1780
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1781
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1782
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1783
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1784
    array-length p0, p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static checkNetworkIsAvailable()Z
    .locals 8

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "name"

    const-string v3, "baidu.com"

    .line 184
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "host"

    const-string v5, "111.13.101.208"

    .line 185
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x50

    .line 186
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "port"

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 189
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "123.125.114.144"

    .line 190
    invoke-virtual {v1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 194
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "180.149.132.47"

    .line 195
    invoke-virtual {v1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 199
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "220.181.57.217"

    .line 200
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "qq.com"

    .line 204
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "125.39.240.113"

    .line 205
    invoke-virtual {v1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 209
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "61.135.157.156"

    .line 210
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x3e8

    .line 214
    invoke-static {v0, v1}, Lcom/zh_jieli/juson/netcheck/OuterChecker;->check(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public static checkUpdateFilePath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 14

    const/4 v0, 0x0

    const-string v1, "AppUtils"

    if-nez p0, :cond_0

    const-string p0, "mContext is null"

    .line 1362
    invoke-static {v1, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1366
    :cond_0
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "mApplication is null"

    .line 1368
    invoke-static {v1, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1371
    :cond_1
    sget v2, Lcom/jieli/stream/dv/running2/R$raw;->app_desc:I

    invoke-static {p0, v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1372
    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->parseApplicationMsg(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/AppInfo;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p0, "appInfo is null"

    .line 1374
    invoke-static {v1, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1378
    :cond_2
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/AppInfo;->getAppVersion()I

    move-result v3

    if-nez v3, :cond_3

    .line 1380
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "currentAPK="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1384
    :cond_3
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "upgrade"

    invoke-static {v4, v5, v0, v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1385
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "version"

    invoke-static {v5, v6, v0, v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1387
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "android"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "version.json"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1388
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "firmware"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne p1, v9, :cond_4

    .line 1394
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->getInstance()Lcom/jieli/stream/dv/running2/util/FTPClientUtil;

    move-result-object v12

    .line 1395
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1396
    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1397
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1398
    invoke-virtual {v12, v13, v10}, Lcom/jieli/stream/dv/running2/util/FTPClientUtil;->downloadTxt(Ljava/util/List;Z)V

    :cond_4
    if-eq p1, v9, :cond_e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    goto/16 :goto_5

    .line 1447
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dev_desc.txt"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1448
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->readTxtFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1449
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p0, " SDK update >> descTxt is empty!"

    .line 1450
    invoke-static {v1, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1453
    :cond_6
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->parseDeviceDescTxt(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 1454
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getFirmware_version()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_2

    .line 1458
    :cond_7
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getProduct_type()Ljava/lang/String;

    move-result-object v2

    .line 1459
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string p0, " SDK update >> product is empty!"

    .line 1460
    invoke-static {v1, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1463
    :cond_8
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getFirmware_version()Ljava/lang/String;

    move-result-object v3

    .line 1464
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string p0, " SDK update >> currentSDK is empty!"

    .line 1465
    invoke-static {v1, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1468
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " SDK update >> currentSDK : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->setDeviceDesc(Lcom/jieli/stream/dv/running2/bean/DeviceDesc;)V

    .line 1470
    invoke-static {v8}, Lcom/jieli/stream/dv/running2/util/AppUtils;->readTxtFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1471
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string p0, " SDK update >> firmwareServerText is empty!"

    .line 1472
    invoke-static {v1, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1475
    :cond_a
    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->parseServerTxtInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/ServerInfo;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1477
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/ServerInfo;->getFirmwareVersionMap()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1479
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_b

    .line 1480
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 1481
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_b
    const-string p1, ""

    .line 1485
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " serverLatestSDKStr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_c

    .line 1488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SDK updatePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1490
    :cond_c
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    :goto_1
    move-object p1, v0

    goto/16 :goto_7

    :cond_d
    :goto_2
    const-string p0, " SDK update >> deviceInfo or Firmware_version is empty !"

    .line 1455
    invoke-static {v1, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1408
    :cond_e
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1410
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 1411
    array-length v4, p1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_11

    aget-object v8, p1, v5

    .line 1412
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".apk"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".APK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1413
    :cond_f
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_10

    .line 1414
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Delete failure:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1419
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-checkAndUpdate- serverAndroidPath : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    invoke-static {v6}, Lcom/jieli/stream/dv/running2/util/AppUtils;->readTxtFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1421
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    return-object v0

    .line 1424
    :cond_12
    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->parseServerTxtInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/ServerInfo;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 1426
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/ServerInfo;->getAndroidVersionMap()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1428
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_13

    .line 1429
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_13

    .line 1430
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4

    :cond_13
    const/4 p1, 0x0

    :goto_4
    if-lez p1, :cond_16

    if-le p1, v3, :cond_14

    .line 1435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " APK updatePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    if-ne p1, v3, :cond_15

    .line 1439
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-checkAndUpdate- currentAPK = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1441
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-checkAndUpdate- serverLatestAPK = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,currentAPK = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_5
    move-object p1, v0

    :goto_6
    const/4 v9, 0x0

    .line 1497
    :goto_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz v9, :cond_17

    .line 1499
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->latest_version:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    const-string p0, " update failure"

    .line 1501
    invoke-static {v1, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_18
    return-object p1
.end method

.method public static convertDataList(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/ItemBean;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 465
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 467
    invoke-static {p0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->descSortWay(Ljava/util/List;)V

    .line 469
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/jieli/stream/dv/running2/util/AppUtils$3;

    invoke-direct {v1}, Lcom/jieli/stream/dv/running2/util/AppUtils$3;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 481
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 482
    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->subDateFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 483
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 484
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 487
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 490
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 491
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 493
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz v6, :cond_3

    .line 495
    invoke-virtual {v6}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v7

    .line 496
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v4, 0x1

    .line 498
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_3

    .line 506
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 507
    new-instance v4, Lcom/jieli/stream/dv/running2/bean/ItemBean;

    invoke-direct {v4}, Lcom/jieli/stream/dv/running2/bean/ItemBean;-><init>()V

    .line 508
    invoke-virtual {v4, v2}, Lcom/jieli/stream/dv/running2/bean/ItemBean;->setData(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v4, v3}, Lcom/jieli/stream/dv/running2/bean/ItemBean;->setInfoList(Ljava/util/List;)V

    .line 510
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object v1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createFilenameWidthTime(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1825
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    goto :goto_0

    .line 1837
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppUtils"

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "EME"

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "REC"

    .line 1840
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 6

    if-eqz p0, :cond_6

    .line 892
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 895
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v1, "AppUtils"

    if-eqz v0, :cond_2

    .line 896
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "delete file success!"

    .line 897
    invoke-static {v1, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 901
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 902
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v2, "delete empty file success!"

    if-eqz v0, :cond_5

    .line 903
    array-length v3, v0

    if-nez v3, :cond_3

    goto :goto_1

    .line 909
    :cond_3
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 910
    invoke-static {v5}, Lcom/jieli/stream/dv/running2/util/AppUtils;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 912
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 913
    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 904
    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 905
    invoke-static {v1, v2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static descSort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 340
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 341
    new-instance v0, Lcom/jieli/stream/dv/running2/util/AppUtils$1;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method public static descSortWay(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 362
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 363
    new-instance v0, Lcom/jieli/stream/dv/running2/util/AppUtils$2;

    invoke-direct {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    int-to-float p1, p1

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 140
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static formatDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 537
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static formatUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 227
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 229
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static getAutoRearCameraKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2308
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_rear_camera"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getAvailableExternalMemorySize()J
    .locals 4

    .line 1630
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1631
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1634
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    .line 1635
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 1636
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    goto :goto_0

    .line 1638
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 1639
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    mul-long v2, v2, v0

    return-wide v2
.end method

.method public static getAvailableExternalMemorySize(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1682
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getAvailableExternalMemorySize()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCameraType(Ljava/lang/String;)I
    .locals 1

    .line 2300
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/DCIM/2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static getCrashVideoName()Ljava/lang/String;
    .locals 4

    .line 1817
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EME_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".mov"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadFilename(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 645
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 646
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 647
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getSource()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v0, v1

    goto :goto_1

    .line 650
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object p0

    const-string v2, "."

    .line 651
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "_"

    if-eqz v4, :cond_2

    const-string v4, "\\."

    .line 652
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 653
    array-length v4, v1

    if-le v4, v3, :cond_3

    .line 654
    array-length v0, v1

    sub-int/2addr v0, v3

    aget-object v0, v1, v0

    const/4 v4, 0x0

    const-string v6, ""

    .line 656
    :goto_0
    array-length v7, v1

    sub-int/2addr v7, v3

    if-ge v4, v7, :cond_1

    .line 657
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v4

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 659
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_1

    .line 662
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getExternalMemorySize()J
    .locals 4

    .line 1650
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1651
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1654
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    .line 1655
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 1656
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    goto :goto_0

    .line 1658
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 1659
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    mul-long v2, v2, v0

    return-wide v2
.end method

.method public static getExternalMemorySize(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1671
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getExternalMemorySize()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFiles(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/jieli/stream/dv/running2/bean/SDFileInfo;",
            ">;"
        }
    .end annotation

    .line 1716
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1717
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1722
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1724
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 1725
    new-instance v4, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    invoke-direct {v4}, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;-><init>()V

    .line 1726
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Name:Ljava/lang/String;

    .line 1727
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    iput-boolean v5, v4, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->IsDirectory:Z

    .line 1728
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Path:Ljava/lang/String;

    .line 1729
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Size:J

    .line 1730
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1734
    :cond_1
    new-instance p0, Lcom/jieli/stream/dv/running2/util/FileComparator;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/util/FileComparator;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static getFirmwareFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/jieli/stream/dv/running2/bean/SDFileInfo;",
            ">;"
        }
    .end annotation

    .line 1747
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1748
    new-instance p0, Lcom/jieli/stream/dv/running2/util/AppUtils$HiddenFilter;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/util/AppUtils$HiddenFilter;-><init>()V

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1753
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1755
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 1756
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1757
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".bfu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".BFU"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".BIN"

    .line 1758
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".bin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1759
    :cond_1
    new-instance v4, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    invoke-direct {v4}, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;-><init>()V

    .line 1760
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Name:Ljava/lang/String;

    .line 1761
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    iput-boolean v5, v4, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->IsDirectory:Z

    .line 1762
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Path:Ljava/lang/String;

    .line 1763
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Size:J

    .line 1764
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1769
    :cond_3
    new-instance p0, Lcom/jieli/stream/dv/running2/util/FileComparator;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/util/FileComparator;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2

    .line 1982
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 1986
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1987
    array-length v2, p0

    if-lez v2, :cond_2

    .line 1988
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 1990
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1991
    invoke-static {v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    goto :goto_1

    .line 1993
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1998
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-wide v0
.end method

.method public static getFormatSize(D)Ljava/lang/String;
    .locals 9

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double v2, p0, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    .line 2011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "Byte"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    div-double p0, v2, v0

    const/4 v6, 0x4

    const/4 v7, 0x2

    cmpg-double v8, p0, v4

    if-gez v8, :cond_1

    .line 2016
    new-instance p0, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2017
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    .line 2018
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "KB"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    div-double v2, p0, v0

    cmpg-double v8, v2, v4

    if-gez v8, :cond_2

    .line 2023
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2024
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    .line 2025
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    div-double p0, v2, v0

    cmpg-double v0, p0, v4

    if-gez v0, :cond_3

    .line 2030
    new-instance p0, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2031
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    .line 2032
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "GB"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2034
    :cond_3
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 2035
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "TB"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFromRaw(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 858
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 862
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-lez p1, :cond_2

    .line 865
    new-array v1, p1, [B

    .line 867
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lt v2, p1, :cond_2

    .line 869
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, p1

    :cond_2
    if-eqz p0, :cond_3

    .line 877
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 879
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p0, v0

    .line 873
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_3

    .line 877
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, p0

    :goto_3
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 879
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 882
    :cond_4
    :goto_4
    throw p1
.end method

.method public static getLocalPhotoName()Ljava/lang/String;
    .locals 4

    .line 1860
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JPG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2292
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "RMedia"

    goto :goto_0

    :cond_0
    const-string p0, "FMedia"

    :goto_0
    return-object p0
.end method

.method public static getRecordAviName()Ljava/lang/String;
    .locals 4

    .line 1852
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REC_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".avi"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordVideoName()Ljava/lang/String;
    .locals 4

    .line 1847
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REC_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".mov"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getRtsFormat()I
    .locals 2

    .line 2177
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2179
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getVideoType()I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "AppUtils"

    const-string v1, "getRtsFormat: settingInfo is null"

    .line 2181
    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static getRtsResolution(I)[I
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [I

    if-ne v0, p0, :cond_0

    const/16 p0, 0x780

    const/16 v0, 0x438

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/16 p0, 0x280

    const/16 v0, 0x1e0

    goto :goto_0

    :cond_1
    const/16 p0, 0x500

    const/16 v0, 0x2d0

    :goto_0
    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput v0, v1, p0

    return-object v1
.end method

.method public static getRtspResolutionLevel()I
    .locals 6

    .line 2191
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    .line 2192
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 2196
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "rtsp_front_res_level"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2197
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getRtspFrontSupport()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2199
    :cond_0
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "rtsp_rear_res_level"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2200
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getRtspRearSupport()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 2202
    array-length v4, v0

    if-lez v4, :cond_3

    const/4 v4, 0x0

    .line 2204
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 2205
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v1, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    .line 2212
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_3
    return v1
.end method

.method public static getRtspResolutions()[Ljava/lang/String;
    .locals 3

    .line 2263
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    .line 2264
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2267
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getRtspRearSupport()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2269
    :cond_0
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getRtspFrontSupport()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getRtspUrl()Ljava/lang/String;
    .locals 5

    .line 2237
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtspResolutionLevel()I

    move-result v0

    .line 2238
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v1

    .line 2239
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v2

    .line 2240
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getRtsFormat()I

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_1

    if-ne v2, v4, :cond_0

    .line 2244
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jieli/stream/dv/running2/R$array;->rtsp_h264_front_url:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2246
    :cond_0
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jieli/stream/dv/running2/R$array;->rtsp_h264_rear_url:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-ne v2, v4, :cond_2

    .line 2250
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jieli/stream/dv/running2/R$array;->rtsp_jpeg_front_url:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2252
    :cond_2
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jieli/stream/dv/running2/R$array;->rtsp_jpeg_rear_url:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2255
    :goto_0
    aget-object v0, v1, v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jieli/lib/dv/control/DeviceClient;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenBrightness(Landroid/app/Activity;)I
    .locals 2

    const/16 v0, 0x7d

    if-eqz p0, :cond_0

    .line 1562
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "screen_brightness"

    .line 1563
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    check-cast p0, Landroid/view/WindowManager;

    .line 128
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    return p0
.end method

.method public static getScreenMode(Landroid/app/Activity;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 1544
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :try_start_0
    const-string v0, "screen_brightness_mode"

    .line 1546
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1548
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    check-cast p0, Landroid/view/WindowManager;

    .line 117
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    return p0
.end method

.method public static getStreamResolutionLevel()I
    .locals 6

    .line 2131
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    .line 2132
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2136
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "rt_front_res_level"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2137
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getFront_support()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2139
    :cond_0
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "rt_rear_res_level"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2140
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getRear_support()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 2142
    array-length v3, v0

    if-lez v3, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2144
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 2146
    aget-object v5, v0, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2147
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v1, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    .line 2155
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_3
    return v1
.end method

.method public static getStreamResolutions()[Ljava/lang/String;
    .locals 3

    .line 2279
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    .line 2280
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2283
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getRear_support()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2285
    :cond_0
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceDesc()Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->getFront_support()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getVideoThumbName(Lcom/jieli/stream/dv/running2/bean/FileInfo;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 678
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 679
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 680
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    .line 681
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "_"

    if-eqz v4, :cond_2

    const-string v4, "\\."

    .line 682
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 683
    array-length v4, v1

    if-lez v4, :cond_3

    const-string v0, "jpg"

    const/4 v4, 0x0

    const-string v6, ""

    .line 686
    :goto_0
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_0

    .line 687
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v4

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 690
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getDuration()I

    move-result p0

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 693
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    move-object v0, p0

    goto :goto_2

    .line 697
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static getWindowParams(Landroid/content/Context;)[I
    .locals 5

    const-string v0, "window"

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    check-cast p0, Landroid/view/WindowManager;

    .line 101
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 102
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 p0, 0x3

    new-array p0, p0, [I

    .line 104
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    const/4 v2, 0x0

    aput v1, p0, v2

    .line 105
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    aget v3, p0, v2

    mul-int v1, v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-int v1, v1

    const/4 v4, 0x1

    aput v1, p0, v4

    .line 106
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    aget v1, p0, v2

    mul-int v0, v0, v1

    int-to-float v0, v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    const/4 v1, 0x2

    aput v0, p0, v1

    return-object p0
.end method

.method public static isAppInBackground(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "activity"

    .line 152
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 154
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    const/4 v4, 0x1

    if-le v2, v3, :cond_5

    .line 155
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 157
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 158
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v3, v5, :cond_2

    .line 159
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, 0x0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1

    .line 167
    :cond_5
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 169
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isFastDoubleClick(I)Z
    .locals 8

    .line 1798
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1799
    sget-wide v2, Lcom/jieli/stream/dv/running2/util/AppUtils;->lastClickTime:J

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_0

    .line 1800
    sput-wide v0, Lcom/jieli/stream/dv/running2/util/AppUtils;->lastClickTime:J

    return v4

    :cond_0
    sub-long v2, v0, v2

    int-to-long v5, p0

    cmp-long p0, v2, v5

    if-ltz p0, :cond_1

    .line 1804
    sput-wide v0, Lcom/jieli/stream/dv/running2/util/AppUtils;->lastClickTime:J

    return v4

    .line 1807
    :cond_1
    sput-wide v0, Lcom/jieli/stream/dv/running2/util/AppUtils;->lastClickTime:J

    const/4 p0, 0x1

    return p0
.end method

.method public static judgeFileType(Ljava/lang/String;)I
    .locals 1

    .line 621
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".png"

    .line 622
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".PNG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".JPEG"

    .line 623
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".jpg"

    .line 624
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".JPG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ".mov"

    .line 626
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".MOV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mp4"

    .line 627
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".MP4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".avi"

    .line 628
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".AVI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static mergeList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/ItemBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/ItemBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/ItemBean;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 428
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    if-eqz p1, :cond_6

    .line 430
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 431
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 432
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 434
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/ItemBean;

    .line 435
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/ItemBean;->getData()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 436
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jieli/stream/dv/running2/bean/ItemBean;

    .line 437
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/ItemBean;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 438
    invoke-interface {p0, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 441
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jieli/stream/dv/running2/bean/ItemBean;

    .line 442
    invoke-virtual {v4}, Lcom/jieli/stream/dv/running2/bean/ItemBean;->getData()Ljava/lang/String;

    move-result-object v5

    .line 443
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    .line 445
    invoke-virtual {v4}, Lcom/jieli/stream/dv/running2/bean/ItemBean;->getInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/ItemBean;->getInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    if-nez v2, :cond_2

    .line 450
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    :goto_1
    return-object p0
.end method

.method public static parseApplicationMsg(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/AppInfo;
    .locals 11

    const-string v0, "dev_list"

    const-string v1, "dev_type"

    .line 964
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 966
    :cond_0
    new-instance v2, Lcom/jieli/stream/dv/running2/bean/AppInfo;

    invoke-direct {v2}, Lcom/jieli/stream/dv/running2/bean/AppInfo;-><init>()V

    .line 967
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jieli/stream/dv/running2/bean/AppInfo;->setAppName(Ljava/lang/String;)V

    const-string v4, "0"

    .line 968
    invoke-virtual {v2, v4}, Lcom/jieli/stream/dv/running2/bean/AppInfo;->setAppPlatform(Ljava/lang/String;)V

    .line 969
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppVersion()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/jieli/stream/dv/running2/bean/AppInfo;->setAppVersion(I)V

    .line 970
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 972
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 973
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const/4 v6, 0x0

    if-eqz p0, :cond_3

    .line 974
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 975
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 976
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 977
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge p0, v7, :cond_2

    .line 978
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 979
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 980
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 983
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    .line 984
    invoke-virtual {v2, v4}, Lcom/jieli/stream/dv/running2/bean/AppInfo;->setDev_type(Ljava/util/List;)V

    .line 988
    :cond_3
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 989
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 990
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 991
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_9

    .line 992
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 993
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 994
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 995
    :cond_5
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 996
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 997
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 998
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 999
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 1000
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 1001
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1002
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1003
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1007
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 1008
    new-instance v7, Lcom/jieli/stream/dv/running2/util/AppUtils$4;

    invoke-direct {v7}, Lcom/jieli/stream/dv/running2/util/AppUtils$4;-><init>()V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1020
    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1025
    :cond_8
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1026
    invoke-virtual {v2, p0}, Lcom/jieli/stream/dv/running2/bean/AppInfo;->setDev_list(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-object v2

    :catch_0
    move-exception p0

    .line 1031
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v3
.end method

.method public static parseDeviceDescTxt(Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/DeviceDesc;
    .locals 20

    const-string v0, "match_android_ver"

    const-string v1, "app_list"

    const-string v2, "behind_record_support"

    const-string v3, "forward_record_support"

    const-string v4, "rtsp_behind_support"

    const-string v5, "rtsp_forward_support"

    const-string v6, "behind_support"

    const-string v7, "forward_support"

    const-string v8, "support_projection"

    const-string v9, "net_type"

    const-string v10, "rts_type"

    const-string v11, "support_bumping"

    const-string v12, "device_type"

    const-string v13, "firmware_version"

    const-string v14, "match_app_type"

    const-string v15, "product_type"

    move-object/from16 v16, v0

    const-string v0, "uuid"

    .line 1045
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_21

    move-object/from16 v17, v1

    .line 1046
    new-instance v1, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;

    invoke-direct {v1}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;-><init>()V

    move-object/from16 v18, v2

    .line 1048
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v19, v3

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1050
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1051
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1052
    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setUuid(Ljava/lang/String;)V

    .line 1055
    :cond_0
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1056
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1058
    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setProduct_type(Ljava/lang/String;)V

    .line 1061
    :cond_1
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1062
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1064
    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setMatch_app_type(Ljava/lang/String;)V

    .line 1067
    :cond_2
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1068
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1070
    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setFirmware_version(Ljava/lang/String;)V

    .line 1073
    :cond_3
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1074
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1076
    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setDevice_type(Ljava/lang/String;)V

    .line 1079
    :cond_4
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "1"

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_6

    .line 1080
    :try_start_1
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1082
    invoke-virtual {v1, v12}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setSupport_bumping(Z)V

    goto :goto_0

    .line 1084
    :cond_5
    invoke-virtual {v1, v13}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setSupport_bumping(Z)V

    .line 1087
    :cond_6
    :goto_0
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, "0"

    if-eqz v0, :cond_8

    .line 1088
    :try_start_2
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1090
    invoke-virtual {v1, v13}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setVideoType(I)V

    goto :goto_1

    .line 1092
    :cond_7
    invoke-virtual {v1, v12}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setVideoType(I)V

    .line 1095
    :cond_8
    :goto_1
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1096
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1097
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1098
    invoke-virtual {v1, v13}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setNetMode(I)V

    goto :goto_2

    .line 1099
    :cond_9
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1100
    invoke-virtual {v1, v12}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setNetMode(I)V

    .line 1104
    :cond_a
    :goto_2
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1105
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1106
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1107
    invoke-virtual {v1, v12}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setSupport_projection(Z)V

    goto :goto_3

    .line 1109
    :cond_b
    invoke-virtual {v1, v13}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setSupport_projection(Z)V

    .line 1112
    :cond_c
    :goto_3
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1113
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1115
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 1117
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_e

    .line 1118
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1119
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 1120
    aput-object v8, v0, v7

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1123
    :cond_e
    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setFront_support([Ljava/lang/String;)V

    .line 1126
    :cond_f
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1127
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1129
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 1131
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_11

    .line 1132
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1133
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 1134
    aput-object v7, v0, v6

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1137
    :cond_11
    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setRear_support([Ljava/lang/String;)V

    .line 1140
    :cond_12
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1141
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1143
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1145
    :goto_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_14

    .line 1146
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1147
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 1148
    aput-object v6, v0, v5

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1151
    :cond_14
    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setRtspFrontSupport([Ljava/lang/String;)V

    .line 1154
    :cond_15
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1155
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1157
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 1159
    :goto_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_17

    .line 1160
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1161
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 1162
    aput-object v5, v0, v4

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1165
    :cond_17
    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setRtspRearSupport([Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, v19

    .line 1168
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1169
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1171
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 1173
    :goto_8
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1a

    .line 1174
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1175
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 1176
    aput-object v5, v0, v4

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1179
    :cond_1a
    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setRecordFrontSupport([Ljava/lang/String;)V

    :cond_1b
    move-object/from16 v0, v18

    .line 1182
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1183
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1185
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 1187
    :goto_9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1d

    .line 1188
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1189
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 1190
    aput-object v5, v0, v4

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1193
    :cond_1d
    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setRecordRearSupport([Ljava/lang/String;)V

    :cond_1e
    move-object/from16 v0, v17

    .line 1196
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1197
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1199
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    .line 1200
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1201
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1203
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1205
    :goto_a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v13, v3, :cond_20

    .line 1206
    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1207
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1208
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 1211
    :cond_20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 1212
    new-instance v2, Lcom/jieli/stream/dv/running2/util/AppUtils$5;

    invoke-direct {v2}, Lcom/jieli/stream/dv/running2/util/AppUtils$5;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1224
    new-instance v2, Lcom/jieli/stream/dv/running2/bean/DeviceDesc$AppListBean;

    invoke-direct {v2}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc$AppListBean;-><init>()V

    .line 1225
    invoke-virtual {v2, v0}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc$AppListBean;->setMatch_android_ver(Ljava/util/List;)V

    .line 1226
    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/bean/DeviceDesc;->setApp_list(Lcom/jieli/stream/dv/running2/bean/DeviceDesc$AppListBean;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 1233
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_b

    :cond_21
    const/4 v1, 0x0

    :cond_22
    :goto_b
    return-object v1
.end method

.method private static parseServerTxtInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/jieli/stream/dv/running2/bean/ServerInfo;
    .locals 9

    .line 1247
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 1248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1250
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1253
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1254
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1255
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1256
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1257
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1258
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1259
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1260
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 1261
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1262
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v8, :cond_1

    .line 1265
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v7

    .line 1267
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v7, 0x0

    .line 1269
    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1272
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1273
    new-instance v4, Lcom/jieli/stream/dv/running2/util/AppUtils$6;

    invoke-direct {v4}, Lcom/jieli/stream/dv/running2/util/AppUtils$6;-><init>()V

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1285
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1292
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1295
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_4

    .line 1296
    new-instance p0, Lcom/jieli/stream/dv/running2/bean/ServerInfo;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/bean/ServerInfo;-><init>()V

    .line 1297
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/bean/ServerInfo;->setAndroidVersionMap(Ljava/util/Map;)V

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    .line 1301
    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1304
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1305
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1307
    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1308
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1309
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1310
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1311
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1312
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1313
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1314
    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_7

    .line 1315
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1316
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1317
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1320
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1321
    new-instance v4, Lcom/jieli/stream/dv/running2/util/AppUtils$7;

    invoke-direct {v4}, Lcom/jieli/stream/dv/running2/util/AppUtils$7;-><init>()V

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1333
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 1340
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1343
    :cond_8
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_a

    if-nez p0, :cond_9

    .line 1345
    new-instance p0, Lcom/jieli/stream/dv/running2/bean/ServerInfo;

    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/bean/ServerInfo;-><init>()V

    .line 1347
    :cond_9
    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/bean/ServerInfo;->setFirmwareVersionMap(Ljava/util/Map;)V

    :cond_a
    return-object p0
.end method

.method public static parseThumbPathForDuration(Ljava/lang/String;)I
    .locals 3

    .line 1956
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "."

    .line 1957
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1959
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "_"

    .line 1961
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1962
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1963
    array-length v0, p0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 1965
    :try_start_0
    array-length v0, p0

    sub-int/2addr v0, v2

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1967
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public static queryAllLocalFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 390
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 392
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->queryLocalFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    .line 397
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 399
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 400
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 401
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->queryAllLocalFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 402
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 403
    invoke-interface {p0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 412
    invoke-static {p0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->descSortWay(Ljava/util/List;)V

    :cond_3
    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static queryLocalFileList(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v1, 0x0

    .line 258
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 259
    new-instance v2, Ljava/io/File;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 261
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "1"

    const-string v5, "RMedia"

    const-string v6, "0"

    const-string v7, "EME"

    const/4 v9, 0x2

    if-eqz v1, :cond_6

    .line 263
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 264
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v2, v11, v13

    if-lez v2, :cond_a

    .line 265
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 266
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 267
    array-length v12, v1

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_4

    aget-object v14, v1, v13

    if-eqz v14, :cond_3

    .line 268
    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 269
    new-instance v15, Ljava/util/Date;

    move-object/from16 v16, v11

    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-direct {v15, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 270
    new-instance v11, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-direct {v11}, Lcom/jieli/stream/dv/running2/bean/FileInfo;-><init>()V

    .line 271
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 272
    invoke-virtual {v11, v9}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setType(I)V

    goto :goto_1

    :cond_0
    const/4 v15, 0x1

    .line 274
    invoke-virtual {v11, v15}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setType(I)V

    .line 276
    :goto_1
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setName(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setPath(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSize(J)V

    .line 279
    invoke-virtual {v11, v10}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setCreateTime(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jieli/stream/dv/running2/util/AppUtils;->judgeFileType(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v11, v8}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setVideo(Z)V

    const/4 v8, 0x1

    .line 281
    invoke-virtual {v11, v8}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSource(I)V

    .line 282
    invoke-virtual {v11}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v11}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 283
    invoke-virtual {v11, v4}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setCameraType(Ljava/lang/String;)V

    goto :goto_3

    .line 285
    :cond_2
    invoke-virtual {v11, v6}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setCameraType(Ljava/lang/String;)V

    .line 289
    :goto_3
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, v16

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    move-object v9, v11

    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object v11, v9

    const/4 v9, 0x2

    goto/16 :goto_0

    :cond_4
    move-object v9, v11

    .line 293
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 294
    invoke-static {v9}, Lcom/jieli/stream/dv/running2/util/AppUtils;->descSort(Ljava/util/List;)V

    .line 295
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 296
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 297
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz v1, :cond_5

    .line 299
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 306
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/TimeFormate;->formatYMD_HMS(J)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 308
    new-instance v1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    invoke-direct {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;-><init>()V

    .line 309
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x2

    .line 310
    invoke-virtual {v1, v7}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setType(I)V

    goto :goto_6

    :cond_7
    const/4 v7, 0x1

    .line 312
    invoke-virtual {v1, v7}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setType(I)V

    .line 314
    :goto_6
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setName(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setPath(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSize(J)V

    .line 317
    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setCreateTime(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->judgeFileType(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    const/4 v8, 0x1

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    :goto_7
    invoke-virtual {v1, v8}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setVideo(Z)V

    const/4 v0, 0x1

    .line 319
    invoke-virtual {v1, v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSource(I)V

    .line 320
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 321
    invoke-virtual {v1, v4}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setCameraType(Ljava/lang/String;)V

    goto :goto_8

    .line 323
    :cond_9
    invoke-virtual {v1, v6}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setCameraType(Ljava/lang/String;)V

    .line 325
    :goto_8
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_a
    move-object v1, v3

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_9

    :catch_1
    move-exception v0

    .line 331
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_a
    return-object v1
.end method

.method public static queryThumbDirPath(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1871
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1872
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1873
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1874
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1875
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1876
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".thumbnail"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1877
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1879
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1880
    array-length v1, v0

    if-lez v1, :cond_3

    .line 1881
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 1882
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1883
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/util/AppUtils;->queryThumbDirPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1884
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1885
    invoke-interface {p0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static queryThumbInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1904
    invoke-static {p0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->queryThumbDirPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1905
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1906
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1907
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1908
    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->queryLocalFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1910
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1913
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    .line 1914
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->descSortWay(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static queryThumbPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1928
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "."

    .line 1930
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 1932
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1936
    :cond_0
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->queryThumbInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1938
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 1939
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1940
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static readTxtFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, " IOException : "

    const-string v1, "AppUtils"

    const-string v2, ""

    if-eqz p0, :cond_5

    .line 923
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "UTF-8"

    .line 929
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 930
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 931
    new-instance p0, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 935
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 936
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 938
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, p0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_2
    :try_start_2
    const-string p0, "Cannot find the specified file"

    .line 940
    invoke-static {v1, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v3, :cond_3

    .line 948
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 950
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v7, v3

    move-object v3, p0

    move-object p0, v7

    .line 943
    :goto_3
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " err : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p0, :cond_3

    .line 948
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 950
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_3
    :goto_4
    return-object v2

    :catchall_1
    move-exception v2

    move-object v3, p0

    :goto_5
    if-eqz v3, :cond_4

    .line 948
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception p0

    .line 950
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 954
    :cond_4
    :goto_6
    throw v2

    :cond_5
    :goto_7
    return-object v2
.end method

.method public static saveRtspResolutionLevel(I)V
    .locals 3

    .line 2223
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    .line 2224
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "rtsp_rear_res_level"

    .line 2226
    invoke-static {v0, v1, p0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v1, "rtsp_front_res_level"

    .line 2228
    invoke-static {v0, v1, p0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static saveStreamResolutionLevel(I)V
    .locals 3

    .line 2166
    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    .line 2167
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getDeviceSettingInfo()Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/DeviceSettingInfo;->getCameraType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "rt_rear_res_level"

    .line 2169
    invoke-static {v0, v1, p0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v1, "rt_front_res_level"

    .line 2171
    invoke-static {v0, v1, p0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1698
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1699
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float p1, p1

    int-to-float v0, v3

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v4

    div-float/2addr p2, v0

    .line 1702
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1703
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 1704
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1705
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1706
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object p1
.end method

.method public static selectTypeList(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/FileInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 711
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 714
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 715
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz v1, :cond_1

    if-nez p1, :cond_2

    .line 718
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 720
    :cond_2
    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 721
    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->judgeFileType(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 722
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static setBrightness(Landroid/app/Activity;I)V
    .locals 4

    if-eqz p0, :cond_0

    .line 1577
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1579
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    int-to-float v2, p1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    .line 1581
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1582
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1583
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static setScreenManualMode(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1515
    invoke-static {p0, v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->setScreenMode(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setScreenMode(Landroid/app/Activity;I)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1526
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1527
    invoke-static {p0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getScreenMode(Landroid/app/Activity;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    if-eq p0, p1, :cond_0

    const-string p0, "screen_brightness_mode"

    .line 1530
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 555
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 556
    sget-object v0, Lcom/jieli/stream/dv/running2/util/AppUtils;->ROOT_PATH:Ljava/lang/String;

    .line 557
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "create root dir success! path : "

    const-string v3, "AppUtils"

    if-eqz v1, :cond_1

    .line 558
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 559
    array-length v1, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, p0, v4

    .line 560
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 561
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 564
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 565
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 571
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 574
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 575
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    .line 582
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 583
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 585
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "create one dir success!"

    .line 586
    invoke-static {v3, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object p0

    .line 592
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 593
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_6

    .line 595
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "create two dir success!"

    .line 596
    invoke-static {v3, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    .line 602
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 603
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_8

    .line 605
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "create three sub dir success!"

    .line 606
    invoke-static {v3, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object p0

    .line 611
    :cond_9
    sget-object p0, Lcom/jieli/stream/dv/running2/util/AppUtils;->ROOT_PATH:Ljava/lang/String;

    return-object p0
.end method

.method private static subDateFlag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 524
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 525
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
