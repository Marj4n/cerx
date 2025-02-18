.class public Lcom/gizthon/camera/view/MyContextWrapper;
.super Landroid/content/ContextWrapper;
.source "MyContextWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static wrap(Landroid/content/Context;Ljava/util/Locale;)Lcom/gizthon/camera/view/MyContextWrapper;
    .locals 4

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 24
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 25
    new-instance v1, Landroid/os/LocaleList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Locale;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 26
    invoke-static {v1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 30
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 32
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    .line 37
    :cond_1
    :goto_0
    new-instance p1, Lcom/gizthon/camera/view/MyContextWrapper;

    invoke-direct {p1, p0}, Lcom/gizthon/camera/view/MyContextWrapper;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
