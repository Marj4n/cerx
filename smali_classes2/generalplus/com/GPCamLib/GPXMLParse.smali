.class public Lgeneralplus/com/GPCamLib/GPXMLParse;
.super Ljava/lang/Object;
.source "GPXMLParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;,
        Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;,
        Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;
    }
.end annotation


# static fields
.field public static CaptureResolution_Setting_ID:I = 0x100

.field public static CategoryLevel:I = 0xc

.field private static GPTag:Ljava/lang/String; = null

.field public static RecordResolution_Setting_ID:I = 0x0

.field public static SettingLevel:I = 0x6

.field public static ValueLevel:I = 0x0

.field public static Version_Setting_ID:I = 0x209

.field public static Version_Value_Index:I

.field private static m_aryListGPXMLCategroies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static m_aryListGPXMLSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;",
            ">;"
        }
    .end annotation
.end field

.field private static m_aryListGPXMLValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_GPXMLCategory:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

.field private m_GPXMLSetting:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

.field private m_GPXMLValue:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLCategroies:Ljava/util/ArrayList;

    const-string v0, "GPXMLParseLog"

    .line 32
    sput-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->GPTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLValues:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLValues:Ljava/util/ArrayList;

    .line 37
    :cond_0
    sget-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLSettings:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 39
    :cond_1
    sget-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLCategroies:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLCategroies:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method


# virtual methods
.method public GetCategories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    sget-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    sget-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLCategroies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 48
    sget-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLCategroies:Ljava/util/ArrayList;

    return-object v0
.end method

.method public GetGPXMLInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    const-string v0, "ID"

    const-string v11, "Name"

    .line 111
    :try_start_0
    new-instance v1, Ljava/io/File;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 115
    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    const-string v2, "Categories"

    .line 119
    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 122
    sget-object v1, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLCategroies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 125
    :goto_0
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v14, v1, :cond_10

    .line 127
    invoke-interface {v12, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 129
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v15, 0x1

    if-ne v2, v15, :cond_f

    .line 130
    check-cast v1, Lorg/w3c/dom/Element;

    const-string v2, "Category"

    .line 134
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    const/4 v8, 0x0

    .line 137
    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v8, v1, :cond_f

    .line 140
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 142
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v15, :cond_e

    .line 143
    check-cast v1, Lorg/w3c/dom/Element;

    .line 144
    sget-object v2, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLSettings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 148
    invoke-interface {v1, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 149
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v16, ""

    if-lez v3, :cond_0

    .line 151
    :try_start_1
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 152
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_2

    :cond_0
    move-object/from16 v7, v16

    :goto_2
    const-string v2, "Settings"

    .line 158
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v5, 0x0

    .line 161
    :goto_3
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v5, v1, :cond_d

    .line 163
    invoke-interface {v6, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 164
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v15, :cond_c

    .line 165
    check-cast v1, Lorg/w3c/dom/Element;

    const-string v2, "Setting"

    .line 169
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v2, 0x0

    .line 172
    :goto_4
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v2, v1, :cond_c

    .line 174
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 175
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v15, :cond_b

    .line 176
    check-cast v1, Lorg/w3c/dom/Element;

    .line 177
    sget-object v4, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 181
    invoke-interface {v1, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 183
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    if-lez v17, :cond_1

    .line 185
    invoke-interface {v4, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 186
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 187
    invoke-interface {v4, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 188
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_1
    move-object/from16 v4, v16

    .line 194
    :goto_5
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 195
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    if-lez v18, :cond_2

    .line 197
    invoke-interface {v15, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 198
    invoke-interface {v15}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 199
    invoke-interface {v15, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 200
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    goto :goto_6

    :cond_2
    move-object/from16 v15, v16

    :goto_6
    const-string v13, "Type"

    .line 206
    invoke-interface {v1, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 208
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    if-lez v19, :cond_3

    move-object/from16 v19, v3

    const/4 v3, 0x0

    .line 210
    invoke-interface {v13, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    .line 211
    invoke-interface {v13}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 212
    invoke-interface {v13, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 213
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto :goto_7

    :cond_3
    move-object/from16 v19, v3

    move-object/from16 v13, v16

    :goto_7
    const-string v3, "Reflash"

    .line 219
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 221
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    if-lez v20, :cond_4

    move/from16 v20, v5

    const/4 v5, 0x0

    .line 223
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 224
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 225
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 226
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_8

    :cond_4
    move/from16 v20, v5

    move-object/from16 v21, v16

    :goto_8
    const-string v3, "Default"

    .line 232
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 234
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_5

    const/4 v5, 0x0

    .line 236
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 237
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 238
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 239
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    goto :goto_9

    :cond_5
    move-object/from16 v22, v16

    :goto_9
    const-string v3, "Values"

    .line 245
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v3, 0x0

    .line 248
    :goto_a
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 250
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object/from16 v23, v1

    .line 251
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    move-object/from16 v24, v6

    const/4 v6, 0x1

    if-ne v1, v6, :cond_9

    .line 252
    check-cast v5, Lorg/w3c/dom/Element;

    const-string v1, "Value"

    .line 256
    invoke-interface {v5, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v5, 0x0

    .line 258
    :goto_b
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 260
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object/from16 v25, v1

    .line 262
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    move-object/from16 v26, v7

    const/4 v7, 0x1

    if-ne v1, v7, :cond_8

    .line 263
    check-cast v6, Lorg/w3c/dom/Element;

    .line 267
    invoke-interface {v6, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 269
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_6

    const/4 v7, 0x0

    .line 271
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 272
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 273
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 274
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_6
    move-object/from16 v1, v16

    .line 280
    :goto_c
    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 282
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_7

    const/4 v7, 0x0

    .line 284
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 285
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 286
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 287
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    :cond_7
    const/4 v7, 0x0

    move-object/from16 v6, v16

    .line 291
    :goto_d
    new-instance v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    sget v27, Lgeneralplus/com/GPCamLib/GPXMLParse;->CategoryLevel:I

    const/16 v17, 0x1

    shl-int v27, v17, v27

    mul-int v27, v27, v8

    sget v28, Lgeneralplus/com/GPCamLib/GPXMLParse;->SettingLevel:I

    shl-int v28, v17, v28

    mul-int v28, v28, v2

    add-int v27, v27, v28

    sget v28, Lgeneralplus/com/GPCamLib/GPXMLParse;->ValueLevel:I

    shl-int v28, v17, v28

    mul-int v28, v28, v5

    move-object/from16 v29, v0

    add-int v0, v27, v28

    invoke-direct {v7, v10, v1, v6, v0}, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;-><init>(Lgeneralplus/com/GPCamLib/GPXMLParse;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v7, v10, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_GPXMLValue:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    .line 297
    sget-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLValues:Ljava/util/ArrayList;

    .line 298
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 299
    iput-object v0, v10, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_GPXMLValue:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    goto :goto_e

    :cond_8
    move-object/from16 v29, v0

    const/4 v0, 0x0

    const/16 v17, 0x1

    :goto_e
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v25

    move-object/from16 v7, v26

    move-object/from16 v0, v29

    goto/16 :goto_b

    :cond_9
    move-object/from16 v29, v0

    move-object/from16 v26, v7

    const/4 v0, 0x0

    const/16 v17, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v23

    move-object/from16 v6, v24

    move-object/from16 v7, v26

    move-object/from16 v0, v29

    goto/16 :goto_a

    :cond_a
    move-object/from16 v29, v0

    move-object/from16 v24, v6

    move-object/from16 v26, v7

    const/4 v0, 0x0

    const/16 v17, 0x1

    .line 305
    new-instance v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    sget v1, Lgeneralplus/com/GPCamLib/GPXMLParse;->CategoryLevel:I

    shl-int v1, v8, v1

    sget v3, Lgeneralplus/com/GPCamLib/GPXMLParse;->SettingLevel:I

    shl-int v3, v2, v3

    or-int v23, v1, v3

    sget-object v25, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLValues:Ljava/util/ArrayList;

    move-object v1, v7

    move/from16 v27, v2

    move-object/from16 v2, p0

    move-object v3, v4

    move-object v4, v15

    move/from16 v15, v20

    move-object v5, v13

    move-object/from16 v13, v24

    move-object/from16 v6, v21

    move-object v0, v7

    move-object/from16 v30, v26

    const/16 v18, 0x0

    move-object/from16 v7, v22

    move/from16 v20, v8

    move/from16 v8, v23

    move-object/from16 v21, v9

    move-object/from16 v9, v25

    invoke-direct/range {v1 .. v9}, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;-><init>(Lgeneralplus/com/GPCamLib/GPXMLParse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    iput-object v0, v10, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_GPXMLSetting:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    .line 313
    sget-object v1, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 314
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 315
    iput-object v0, v10, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_GPXMLSetting:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    goto :goto_f

    :cond_b
    move-object/from16 v29, v0

    move/from16 v27, v2

    move-object/from16 v19, v3

    move v15, v5

    move-object v13, v6

    move-object/from16 v30, v7

    move/from16 v20, v8

    move-object/from16 v21, v9

    const/16 v17, 0x1

    const/16 v18, 0x0

    :goto_f
    add-int/lit8 v2, v27, 0x1

    move-object v6, v13

    move v5, v15

    move-object/from16 v3, v19

    move/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v0, v29

    move-object/from16 v7, v30

    const/4 v13, 0x0

    const/4 v15, 0x1

    goto/16 :goto_4

    :cond_c
    move-object/from16 v29, v0

    move v15, v5

    move-object v13, v6

    move-object/from16 v30, v7

    move/from16 v20, v8

    move-object/from16 v21, v9

    const/16 v17, 0x1

    const/16 v18, 0x0

    add-int/lit8 v5, v15, 0x1

    move-object v6, v13

    move/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v0, v29

    move-object/from16 v7, v30

    const/4 v13, 0x0

    const/4 v15, 0x1

    goto/16 :goto_3

    :cond_d
    move-object/from16 v29, v0

    move-object/from16 v30, v7

    move/from16 v20, v8

    move-object/from16 v21, v9

    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 320
    new-instance v0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    sget v1, Lgeneralplus/com/GPCamLib/GPXMLParse;->CategoryLevel:I

    shl-int v1, v20, v1

    sget-object v2, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLSettings:Ljava/util/ArrayList;

    move-object/from16 v3, v30

    invoke-direct {v0, v10, v3, v1, v2}, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;-><init>(Lgeneralplus/com/GPCamLib/GPXMLParse;Ljava/lang/String;ILjava/util/ArrayList;)V

    iput-object v0, v10, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_GPXMLCategory:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    .line 324
    sget-object v1, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLCategroies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 325
    iput-object v0, v10, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_GPXMLCategory:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_10

    :cond_e
    move-object/from16 v29, v0

    move/from16 v20, v8

    move-object/from16 v21, v9

    const/16 v17, 0x1

    const/16 v18, 0x0

    :goto_10
    add-int/lit8 v8, v20, 0x1

    move-object/from16 v9, v21

    move-object/from16 v0, v29

    const/4 v13, 0x0

    const/4 v15, 0x1

    goto/16 :goto_1

    :cond_f
    move-object/from16 v29, v0

    const/16 v18, 0x0

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v29

    const/4 v13, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 331
    sget-object v1, Lgeneralplus/com/GPCamLib/GPXMLParse;->GPTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_10
    sget-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLCategroies:Ljava/util/ArrayList;

    return-object v0
.end method
