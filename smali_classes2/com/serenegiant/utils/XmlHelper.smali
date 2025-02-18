.class public Lcom/serenegiant/utils/XmlHelper;
.super Ljava/lang/Object;
.source "XmlHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 48
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/serenegiant/utils/ResourceHelper;->get(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p4
.end method

.method public static final getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 110
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/serenegiant/utils/ResourceHelper;->get(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p4
.end method

.method public static final getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 90
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/serenegiant/utils/ResourceHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p4
.end method

.method public static final getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 70
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/serenegiant/utils/ResourceHelper;->get(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p4
.end method

.method public static final getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;[I)[I
    .locals 6

    const-string v0, ""

    .line 122
    invoke-static {p0, p1, p2, p3, v0}, Lcom/serenegiant/utils/XmlHelper;->getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    array-length v2, v0

    .line 127
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 129
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v3}, Lcom/serenegiant/utils/ResourceHelper;->get(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 135
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p4, p0, [I

    .line 137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    add-int/lit8 p2, v3, 0x1

    .line 138
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, p4, v3

    move v3, p2

    goto :goto_1

    :cond_1
    return-object p4
.end method

.method public static final getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;[Z)[Z
    .locals 6

    const-string v0, ""

    .line 151
    invoke-static {p0, p1, p2, p3, v0}, Lcom/serenegiant/utils/XmlHelper;->getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    array-length v2, v0

    .line 156
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 158
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v3}, Lcom/serenegiant/utils/ResourceHelper;->get(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 164
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p4, p0, [Z

    .line 166
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    add-int/lit8 p2, v3, 0x1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    aput-boolean p1, p4, v3

    move v3, p2

    goto :goto_1

    :cond_1
    return-object p4
.end method
