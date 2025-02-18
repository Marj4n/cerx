.class public Lcom/serenegiant/utils/PrefHelper;
.super Ljava/lang/Object;
.source "PrefHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/SharedPreferences;Ljava/lang/String;D)D
    .locals 1

    if-eqz p0, :cond_0

    .line 96
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/serenegiant/utils/PrefHelper;->getObject(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 100
    invoke-static {p0, p2, p3}, Lcom/serenegiant/utils/ObjectHelper;->asDouble(Ljava/lang/Object;D)D

    move-result-wide p2

    :cond_0
    :goto_0
    return-wide p2
.end method

.method public static get(Landroid/content/SharedPreferences;Ljava/lang/String;F)F
    .locals 1

    if-eqz p0, :cond_0

    .line 81
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/serenegiant/utils/PrefHelper;->getObject(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 85
    invoke-static {p0, p2}, Lcom/serenegiant/utils/ObjectHelper;->asFloat(Ljava/lang/Object;F)F

    move-result p2

    :cond_0
    :goto_0
    return p2
.end method

.method public static get(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 1

    if-eqz p0, :cond_0

    .line 51
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/serenegiant/utils/PrefHelper;->getObject(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 55
    invoke-static {p0, p2}, Lcom/serenegiant/utils/ObjectHelper;->asInt(Ljava/lang/Object;I)I

    move-result p2

    :cond_0
    :goto_0
    return p2
.end method

.method public static get(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    .locals 1

    if-eqz p0, :cond_0

    .line 66
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/serenegiant/utils/PrefHelper;->getObject(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 70
    invoke-static {p0, p2, p3}, Lcom/serenegiant/utils/ObjectHelper;->asLong(Ljava/lang/Object;J)J

    move-result-wide p2

    :cond_0
    :goto_0
    return-wide p2
.end method

.method public static get(Landroid/content/SharedPreferences;Ljava/lang/String;S)S
    .locals 1

    if-eqz p0, :cond_0

    .line 36
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-short p2, p0

    goto :goto_0

    .line 41
    :catch_0
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/serenegiant/utils/PrefHelper;->getObject(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 40
    invoke-static {p0, p2}, Lcom/serenegiant/utils/ObjectHelper;->asShort(Ljava/lang/Object;S)S

    move-result p2

    :cond_0
    :goto_0
    return p2
.end method

.method public static get(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 111
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/PrefHelper;->get(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 115
    invoke-static {p0, p2}, Lcom/serenegiant/utils/ObjectHelper;->asBoolean(Ljava/lang/Object;Z)Z

    move-result p2

    :cond_0
    :goto_0
    return p2
.end method

.method public static final getObject(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-static {p0, p1, v0}, Lcom/serenegiant/utils/PrefHelper;->getObject(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final getObject(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    .line 132
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .line 134
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    return-object p2
.end method
