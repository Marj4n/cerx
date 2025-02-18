.class public final Lcom/serenegiant/usb/DeviceFilter;
.super Ljava/lang/Object;
.source "DeviceFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceFilter"


# instance fields
.field public final isExclude:Z

.field public final mClass:I

.field public final mManufacturerName:Ljava/lang/String;

.field public final mProductId:I

.field public final mProductName:Ljava/lang/String;

.field public final mProtocol:I

.field public final mSerialNumber:Ljava/lang/String;

.field public final mSubclass:I

.field public final mVendorId:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 66
    invoke-direct/range {v0 .. v9}, Lcom/serenegiant/usb/DeviceFilter;-><init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/serenegiant/usb/DeviceFilter;->mVendorId:I

    .line 72
    iput p2, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductId:I

    .line 73
    iput p3, p0, Lcom/serenegiant/usb/DeviceFilter;->mClass:I

    .line 74
    iput p4, p0, Lcom/serenegiant/usb/DeviceFilter;->mSubclass:I

    .line 75
    iput p5, p0, Lcom/serenegiant/usb/DeviceFilter;->mProtocol:I

    .line 76
    iput-object p6, p0, Lcom/serenegiant/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 77
    iput-object p7, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    .line 78
    iput-object p8, p0, Lcom/serenegiant/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 79
    iput-boolean p9, p0, Lcom/serenegiant/usb/DeviceFilter;->isExclude:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/serenegiant/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Z)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mVendorId:I

    .line 90
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductId:I

    .line 91
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mClass:I

    .line 92
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v0

    iput v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mSubclass:I

    .line 93
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result p1

    iput p1, p0, Lcom/serenegiant/usb/DeviceFilter;->mProtocol:I

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/serenegiant/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/serenegiant/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 97
    iput-boolean p2, p0, Lcom/serenegiant/usb/DeviceFilter;->isExclude:Z

    return-void
.end method

.method private static final getAttributeBoolean(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .line 184
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "TRUE"

    .line 185
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "FALSE"

    .line 187
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p4, 0x0

    goto :goto_0

    .line 189
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, p3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_6

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    goto :goto_0

    :cond_2
    const/16 p0, 0xa

    if-eqz p1, :cond_4

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x2

    if-le p2, v1, :cond_4

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x30

    if-ne p2, v2, :cond_4

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x78

    if-eq p2, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x58

    if-ne p2, v2, :cond_4

    :cond_3
    const/16 p0, 0x10

    .line 201
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 203
    :cond_4
    invoke-static {p1, p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_5

    const/4 p3, 0x1

    :cond_5
    move p4, p3

    :catch_0
    :cond_6
    :goto_0
    return p4
.end method

.method private static final getAttributeInteger(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .line 143
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 145
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, p3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    goto :goto_0

    :cond_0
    const/16 p0, 0xa

    if-eqz p1, :cond_2

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x2

    if-le p2, v0, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x30

    if-ne p2, v1, :cond_2

    .line 153
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x78

    if-eq p2, v1, :cond_1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 p3, 0x58

    if-ne p2, p3, :cond_2

    :cond_1
    const/16 p0, 0x10

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 158
    :cond_2
    invoke-static {p1, p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move p4, p0

    :catch_0
    :cond_3
    :goto_0
    return p4
.end method

.method private static final getAttributeString(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 228
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p4

    .line 231
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 232
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_1

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p4, p0

    goto :goto_0

    :cond_1
    move-object p4, p1

    :catch_0
    :goto_0
    return-object p4
.end method

.method public static getDeviceFilters(Landroid/content/Context;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/serenegiant/usb/DeviceFilter;",
            ">;"
        }
    .end annotation

    const-string v0, "DeviceFilter"

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 115
    invoke-static {p0, p1}, Lcom/serenegiant/usb/DeviceFilter;->readEntryOne(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/serenegiant/usb/DeviceFilter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 117
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "IOException"

    .line 125
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "XmlPullParserException"

    .line 123
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private matches(III)Z
    .locals 2

    .line 343
    iget v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mClass:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    iget p1, p0, Lcom/serenegiant/usb/DeviceFilter;->mSubclass:I

    if-eq p1, v1, :cond_1

    if-ne p2, p1, :cond_2

    :cond_1
    iget p1, p0, Lcom/serenegiant/usb/DeviceFilter;->mProtocol:I

    if-eq p1, v1, :cond_3

    if-ne p3, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static readEntryOne(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/serenegiant/usb/DeviceFilter;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 261
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v13, v5

    move-object v14, v13

    move-object v15, v14

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v16, 0x0

    :goto_0
    const/4 v7, 0x1

    if-eq v2, v7, :cond_8

    .line 263
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 264
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v3, "usb-device"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const-string v2, "vendor-id"

    .line 267
    invoke-static {v0, v1, v5, v2, v4}, Lcom/serenegiant/usb/DeviceFilter;->getAttributeInteger(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "vendorId"

    .line 269
    invoke-static {v0, v1, v5, v2, v4}, Lcom/serenegiant/usb/DeviceFilter;->getAttributeInteger(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "venderId"

    .line 271
    invoke-static {v0, v1, v5, v2, v4}, Lcom/serenegiant/usb/DeviceFilter;->getAttributeInteger(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    :cond_0
    move v8, v2

    const-string v2, "product-id"

    .line 273
    invoke-static {v0, v1, v5, v2, v4}, Lcom/serenegiant/usb/DeviceFilter;->getAttributeInteger(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    const-string v2, "productId"

    .line 275
    invoke-static {v0, v1, v5, v2, v4}, Lcom/serenegiant/usb/DeviceFilter;->getAttributeInteger(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    :cond_1
    move v9, v2

    const-string v2, "class"

    .line 276
    invoke-static {v0, v1, v5, v2, v4}, Lcom/serenegiant/usb/DeviceFilter;->getAttributeInteger(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    const-string v2, "subclass"

    .line 277
    invoke-static {v0, v1, v5, v2, v4}, Lcom/serenegiant/usb/DeviceFilter;->getAttributeInteger(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    const-string v2, "protocol"

    .line 278
    invoke-static {v0, v1, v5, v2, v4}, Lcom/serenegiant/usb/DeviceFilter;->getAttributeInteger(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    const-string v2, "manufacturer-name"

    .line 279
    invoke-static {v0, v1, v5, v2, v5}, Lcom/serenegiant/usb/DeviceFilter;->getAttributeString(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "manufacture"

    .line 281
    invoke-static {v0, v1, v5, v2, v5}, Lcom/serenegiant/usb/DeviceFilter;->getAttributeString(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v13, v2

    const-string v2, "product-name"

    .line 282
    invoke-static {v0, v1, v5, v2, v5}, Lcom/serenegiant/usb/DeviceFilter;->getAttributeString(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "product"

    .line 284
    invoke-static {v0, v1, v5, v2, v5}, Lcom/serenegiant/usb/DeviceFilter;->getAttributeString(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v14, v2

    const-string v2, "serial-number"

    .line 285
    invoke-static {v0, v1, v5, v2, v5}, Lcom/serenegiant/usb/DeviceFilter;->getAttributeString(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "serial"

    .line 287
    invoke-static {v0, v1, v5, v2, v5}, Lcom/serenegiant/usb/DeviceFilter;->getAttributeString(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v15, v2

    const-string v2, "exclude"

    const/4 v3, 0x0

    .line 288
    invoke-static {v0, v1, v5, v2, v3}, Lcom/serenegiant/usb/DeviceFilter;->getAttributeBoolean(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v16

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    const/4 v7, 0x3

    if-ne v2, v7, :cond_7

    if-eqz v6, :cond_7

    .line 291
    new-instance v0, Lcom/serenegiant/usb/DeviceFilter;

    move-object v7, v0

    invoke-direct/range {v7 .. v16}, Lcom/serenegiant/usb/DeviceFilter;-><init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_6
    const/4 v3, 0x0

    .line 297
    :cond_7
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto/16 :goto_0

    :cond_8
    return-object v5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .line 446
    iget v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mVendorId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    iget v3, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductId:I

    if-eq v3, v1, :cond_10

    iget v4, p0, Lcom/serenegiant/usb/DeviceFilter;->mClass:I

    if-eq v4, v1, :cond_10

    iget v5, p0, Lcom/serenegiant/usb/DeviceFilter;->mSubclass:I

    if-eq v5, v1, :cond_10

    iget v6, p0, Lcom/serenegiant/usb/DeviceFilter;->mProtocol:I

    if-ne v6, v1, :cond_0

    goto/16 :goto_1

    .line 450
    :cond_0
    instance-of v1, p1, Lcom/serenegiant/usb/DeviceFilter;

    const/4 v7, 0x1

    if-eqz v1, :cond_e

    .line 451
    check-cast p1, Lcom/serenegiant/usb/DeviceFilter;

    .line 453
    iget v1, p1, Lcom/serenegiant/usb/DeviceFilter;->mVendorId:I

    if-ne v1, v0, :cond_d

    iget v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mProductId:I

    if-ne v0, v3, :cond_d

    iget v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mClass:I

    if-ne v0, v4, :cond_d

    iget v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mSubclass:I

    if-ne v0, v5, :cond_d

    iget v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mProtocol:I

    if-eq v0, v6, :cond_1

    goto :goto_0

    .line 459
    :cond_1
    iget-object v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_7

    :cond_2
    iget-object v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v0, :cond_7

    :cond_3
    iget-object v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_7

    :cond_4
    iget-object v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v0, :cond_7

    :cond_5
    iget-object v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_8

    :cond_7
    return v2

    .line 467
    :cond_8
    iget-object v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 468
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    iget-object v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 470
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 472
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    return v2

    .line 475
    :cond_c
    iget-boolean p1, p1, Lcom/serenegiant/usb/DeviceFilter;->isExclude:Z

    iget-boolean v0, p0, Lcom/serenegiant/usb/DeviceFilter;->isExclude:Z

    if-eq p1, v0, :cond_d

    const/4 v2, 0x1

    :cond_d
    :goto_0
    return v2

    .line 477
    :cond_e
    instance-of v0, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_10

    .line 478
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 479
    iget-boolean v0, p0, Lcom/serenegiant/usb/DeviceFilter;->isExclude:Z

    if-nez v0, :cond_10

    .line 480
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iget v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mVendorId:I

    if-ne v0, v1, :cond_10

    .line 481
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    iget v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductId:I

    if-ne v0, v1, :cond_10

    .line 482
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    iget v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mClass:I

    if-ne v0, v1, :cond_10

    .line 483
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v0

    iget v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mSubclass:I

    if-ne v0, v1, :cond_10

    .line 484
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result p1

    iget v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mProtocol:I

    if-eq p1, v0, :cond_f

    goto :goto_1

    :cond_f
    return v7

    :cond_10
    :goto_1
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 511
    iget v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mVendorId:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductId:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mClass:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lcom/serenegiant/usb/DeviceFilter;->mSubclass:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/serenegiant/usb/DeviceFilter;->mProtocol:I

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public isExclude(Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    .line 399
    iget-boolean v0, p0, Lcom/serenegiant/usb/DeviceFilter;->isExclude:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/serenegiant/usb/DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public matches(Landroid/hardware/usb/UsbDevice;)Z
    .locals 7

    .line 354
    iget v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mVendorId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iget v3, p0, Lcom/serenegiant/usb/DeviceFilter;->mVendorId:I

    if-eq v0, v3, :cond_0

    return v2

    .line 357
    :cond_0
    iget v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductId:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    iget v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductId:I

    if-eq v0, v1, :cond_1

    return v2

    .line 377
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Lcom/serenegiant/usb/DeviceFilter;->matches(III)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 382
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 384
    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    .line 385
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v6

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v4

    invoke-direct {p0, v5, v6, v4}, Lcom/serenegiant/usb/DeviceFilter;->matches(III)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public matches(Lcom/serenegiant/usb/DeviceFilter;)Z
    .locals 4

    .line 408
    iget-boolean v0, p0, Lcom/serenegiant/usb/DeviceFilter;->isExclude:Z

    iget-boolean v1, p1, Lcom/serenegiant/usb/DeviceFilter;->isExclude:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 411
    :cond_0
    iget v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mVendorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v3, p1, Lcom/serenegiant/usb/DeviceFilter;->mVendorId:I

    if-eq v3, v0, :cond_1

    return v2

    .line 414
    :cond_1
    iget v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductId:I

    if-eq v0, v1, :cond_2

    iget v1, p1, Lcom/serenegiant/usb/DeviceFilter;->mProductId:I

    if-eq v1, v0, :cond_2

    return v2

    .line 417
    :cond_2
    iget-object v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v0, :cond_3

    return v2

    .line 420
    :cond_3
    iget-object v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v0, :cond_4

    return v2

    .line 423
    :cond_4
    iget-object v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v0, :cond_5

    return v2

    .line 426
    :cond_5
    iget-object v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v1, p1, Lcom/serenegiant/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    .line 430
    :cond_6
    iget-object v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v1, p1, Lcom/serenegiant/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 434
    :cond_7
    iget-object v0, p0, Lcom/serenegiant/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v1, p1, Lcom/serenegiant/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    .line 440
    :cond_8
    iget v0, p1, Lcom/serenegiant/usb/DeviceFilter;->mClass:I

    iget v1, p1, Lcom/serenegiant/usb/DeviceFilter;->mSubclass:I

    iget p1, p1, Lcom/serenegiant/usb/DeviceFilter;->mProtocol:I

    invoke-direct {p0, v0, v1, p1}, Lcom/serenegiant/usb/DeviceFilter;->matches(III)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceFilter[mVendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mSubclass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mSubclass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mManufacturerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mProductName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mSerialNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/serenegiant/usb/DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isExclude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/serenegiant/usb/DeviceFilter;->isExclude:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
