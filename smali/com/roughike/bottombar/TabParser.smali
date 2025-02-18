.class Lcom/roughike/bottombar/TabParser;
.super Ljava/lang/Object;
.source "TabParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roughike/bottombar/TabParser$TabParserException;
    }
.end annotation


# static fields
.field private static final AVG_NUMBER_OF_TABS:I = 0x5

.field private static final COLOR_NOT_SET:I = -0x1

.field private static final RESOURCE_NOT_FOUND:I = 0x0

.field private static final TAB_TAG:Ljava/lang/String; = "tab"


# instance fields
.field private final context:Landroid/content/Context;

.field private final defaultTabConfig:Lcom/roughike/bottombar/BottomBarTab$Config;

.field private final parser:Landroid/content/res/XmlResourceParser;

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/roughike/bottombar/BottomBarTab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/roughike/bottombar/BottomBarTab$Config;I)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/roughike/bottombar/TabParser;->tabs:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/roughike/bottombar/TabParser;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/roughike/bottombar/TabParser;->defaultTabConfig:Lcom/roughike/bottombar/BottomBarTab$Config;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    iput-object p1, p0, Lcom/roughike/bottombar/TabParser;->parser:Landroid/content/res/XmlResourceParser;

    return-void
.end method

.method private getColorValue(Landroid/content/res/XmlResourceParser;I)I
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-interface {p1, p2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    :try_start_0
    invoke-interface {p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/roughike/bottombar/TabParser;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private getTitleValue(Landroid/content/res/XmlResourceParser;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-interface {p1, p2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-interface {p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/roughike/bottombar/TabParser;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private parseNewTab(Landroid/content/res/XmlResourceParser;I)Lcom/roughike/bottombar/BottomBarTab;
    .locals 7

    .line 99
    invoke-direct {p0}, Lcom/roughike/bottombar/TabParser;->tabWithDefaults()Lcom/roughike/bottombar/BottomBarTab;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p2}, Lcom/roughike/bottombar/BottomBarTab;->setIndexInContainer(I)V

    .line 102
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_5

    .line 105
    invoke-interface {p1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "inActiveColor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_1
    const-string v4, "badgeHidesWhenActive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_2
    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_3
    const-string v4, "icon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_4
    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_5
    const-string v4, "badgeBackgroundColor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_6
    const-string v4, "activeColor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_7
    const-string v4, "barColorWhenSelected"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 137
    :pswitch_0
    invoke-interface {p1, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v3

    .line 138
    invoke-virtual {v0, v3}, Lcom/roughike/bottombar/BottomBarTab;->setBadgeHidesWhenActive(Z)V

    goto :goto_3

    .line 132
    :pswitch_1
    invoke-direct {p0, p1, v2}, Lcom/roughike/bottombar/TabParser;->getColorValue(Landroid/content/res/XmlResourceParser;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    goto :goto_3

    .line 134
    :cond_1
    invoke-virtual {v0, v3}, Lcom/roughike/bottombar/BottomBarTab;->setBadgeBackgroundColor(I)V

    goto :goto_3

    .line 127
    :pswitch_2
    invoke-direct {p0, p1, v2}, Lcom/roughike/bottombar/TabParser;->getColorValue(Landroid/content/res/XmlResourceParser;I)I

    move-result v3

    if-ne v3, v6, :cond_2

    goto :goto_3

    .line 129
    :cond_2
    invoke-virtual {v0, v3}, Lcom/roughike/bottombar/BottomBarTab;->setBarColorWhenSelected(I)V

    goto :goto_3

    .line 122
    :pswitch_3
    invoke-direct {p0, p1, v2}, Lcom/roughike/bottombar/TabParser;->getColorValue(Landroid/content/res/XmlResourceParser;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    goto :goto_3

    .line 124
    :cond_3
    invoke-virtual {v0, v3}, Lcom/roughike/bottombar/BottomBarTab;->setActiveColor(I)V

    goto :goto_3

    .line 117
    :pswitch_4
    invoke-direct {p0, p1, v2}, Lcom/roughike/bottombar/TabParser;->getColorValue(Landroid/content/res/XmlResourceParser;I)I

    move-result v3

    if-ne v3, v6, :cond_4

    goto :goto_3

    .line 119
    :cond_4
    invoke-virtual {v0, v3}, Lcom/roughike/bottombar/BottomBarTab;->setInActiveColor(I)V

    goto :goto_3

    .line 114
    :pswitch_5
    invoke-direct {p0, p1, v2}, Lcom/roughike/bottombar/TabParser;->getTitleValue(Landroid/content/res/XmlResourceParser;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/roughike/bottombar/BottomBarTab;->setTitle(Ljava/lang/String;)V

    goto :goto_3

    .line 111
    :pswitch_6
    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/roughike/bottombar/BottomBarTab;->setIconResId(I)V

    goto :goto_3

    .line 108
    :pswitch_7
    invoke-interface {p1, v2}, Landroid/content/res/XmlResourceParser;->getIdAttributeResourceValue(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/roughike/bottombar/BottomBarTab;->setId(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x693444db -> :sswitch_7
        -0x4036cc03 -> :sswitch_6
        -0x1951074e -> :sswitch_5
        0xd1b -> :sswitch_4
        0x313c79 -> :sswitch_3
        0x6942258 -> :sswitch_2
        0x422e130e -> :sswitch_1
        0x45459598 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private tabWithDefaults()Lcom/roughike/bottombar/BottomBarTab;
    .locals 2

    .line 148
    new-instance v0, Lcom/roughike/bottombar/BottomBarTab;

    iget-object v1, p0, Lcom/roughike/bottombar/TabParser;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/roughike/bottombar/BottomBarTab;-><init>(Landroid/content/Context;)V

    .line 149
    iget-object v1, p0, Lcom/roughike/bottombar/TabParser;->defaultTabConfig:Lcom/roughike/bottombar/BottomBarTab$Config;

    invoke-virtual {v0, v1}, Lcom/roughike/bottombar/BottomBarTab;->setConfig(Lcom/roughike/bottombar/BottomBarTab$Config;)V

    return-object v0
.end method


# virtual methods
.method public parseTabs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/roughike/bottombar/BottomBarTab;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/roughike/bottombar/TabParser;->tabs:Ljava/util/List;

    if-nez v0, :cond_2

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/roughike/bottombar/TabParser;->tabs:Ljava/util/List;

    .line 82
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/roughike/bottombar/TabParser;->parser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v1, "tab"

    .line 83
    iget-object v2, p0, Lcom/roughike/bottombar/TabParser;->parser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/roughike/bottombar/TabParser;->parser:Landroid/content/res/XmlResourceParser;

    iget-object v2, p0, Lcom/roughike/bottombar/TabParser;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/roughike/bottombar/TabParser;->parseNewTab(Landroid/content/res/XmlResourceParser;I)Lcom/roughike/bottombar/BottomBarTab;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/roughike/bottombar/TabParser;->tabs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 89
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    new-instance v0, Lcom/roughike/bottombar/TabParser$TabParserException;

    invoke-direct {v0}, Lcom/roughike/bottombar/TabParser$TabParserException;-><init>()V

    throw v0

    .line 94
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/roughike/bottombar/TabParser;->tabs:Ljava/util/List;

    return-object v0
.end method
