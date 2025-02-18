.class public final Lcom/serenegiant/utils/BuildCheck;
.super Ljava/lang/Object;
.source "BuildCheck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final check(I)Z
    .locals 1

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAndroid1_5()Z
    .locals 1

    const/4 v0, 0x3

    .line 67
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid1_6()Z
    .locals 1

    const/4 v0, 0x4

    .line 83
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid2_0()Z
    .locals 1

    const/4 v0, 0x5

    .line 99
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid2_2()Z
    .locals 1

    const/16 v0, 0x8

    .line 131
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid2_3()Z
    .locals 1

    const/16 v0, 0x9

    .line 147
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid2_3_3()Z
    .locals 1

    const/16 v0, 0xa

    .line 163
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid3()Z
    .locals 1

    const/16 v0, 0xb

    .line 179
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid3_1()Z
    .locals 1

    const/16 v0, 0xc

    .line 195
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid3_2()Z
    .locals 1

    const/16 v0, 0xd

    .line 211
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid4()Z
    .locals 1

    const/16 v0, 0xe

    .line 227
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid4_0_3()Z
    .locals 1

    const/16 v0, 0xf

    .line 243
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid4_1()Z
    .locals 1

    const/16 v0, 0x10

    .line 259
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid4_2()Z
    .locals 1

    const/16 v0, 0x11

    .line 275
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid4_3()Z
    .locals 1

    const/16 v0, 0x12

    .line 291
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid4_4()Z
    .locals 1

    const/16 v0, 0x13

    .line 307
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid5()Z
    .locals 1

    const/16 v0, 0x15

    .line 339
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid6()Z
    .locals 1

    const/16 v0, 0x17

    .line 371
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid7()Z
    .locals 1

    const/16 v0, 0x18

    .line 394
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid8()Z
    .locals 1

    const/16 v0, 0x1a

    .line 434
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isAndroid9()Z
    .locals 1

    const/16 v0, 0x1c

    .line 474
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isBase()Z
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isBase11()Z
    .locals 1

    const/4 v0, 0x2

    .line 51
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isCupcake()Z
    .locals 1

    const/4 v0, 0x3

    .line 59
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isCurrentDevelopment()Z
    .locals 2

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDonut()Z
    .locals 1

    const/4 v0, 0x4

    .line 75
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isEclair()Z
    .locals 1

    const/4 v0, 0x5

    .line 91
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isEclair01()Z
    .locals 1

    const/4 v0, 0x6

    .line 107
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isEclairMR1()Z
    .locals 1

    const/4 v0, 0x7

    .line 115
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isFroyo()Z
    .locals 1

    const/16 v0, 0x8

    .line 123
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isGingerBread()Z
    .locals 1

    const/16 v0, 0x9

    .line 139
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isGingerBreadMR1()Z
    .locals 1

    const/16 v0, 0xa

    .line 155
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isHoneyComb()Z
    .locals 1

    const/16 v0, 0xb

    .line 171
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isHoneyCombMR1()Z
    .locals 1

    const/16 v0, 0xc

    .line 187
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isHoneyCombMR2()Z
    .locals 1

    const/16 v0, 0xd

    .line 203
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isIcecreamSandwich()Z
    .locals 1

    const/16 v0, 0xe

    .line 219
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isIcecreamSandwichMR1()Z
    .locals 1

    const/16 v0, 0xf

    .line 235
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isJellyBean()Z
    .locals 1

    const/16 v0, 0x10

    .line 251
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isJellyBeanMR2()Z
    .locals 1

    const/16 v0, 0x12

    .line 283
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isJellyBeanMr1()Z
    .locals 1

    const/16 v0, 0x11

    .line 267
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isKitKat()Z
    .locals 1

    const/16 v0, 0x13

    .line 299
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isKitKatWatch()Z
    .locals 2

    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isL()Z
    .locals 2

    .line 323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLollipop()Z
    .locals 2

    .line 331
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLollipopMR1()Z
    .locals 2

    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isM()Z
    .locals 1

    const/16 v0, 0x17

    .line 355
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isMarshmallow()Z
    .locals 1

    const/16 v0, 0x17

    .line 363
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isN()Z
    .locals 1

    const/16 v0, 0x18

    .line 379
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isNMR1()Z
    .locals 1

    const/16 v0, 0x19

    .line 402
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isNougat()Z
    .locals 1

    const/16 v0, 0x18

    .line 387
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isNougatMR1()Z
    .locals 1

    const/16 v0, 0x19

    .line 410
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isO()Z
    .locals 1

    const/16 v0, 0x1a

    .line 418
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isOMR1()Z
    .locals 1

    const/16 v0, 0x1b

    .line 442
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isOreo()Z
    .locals 1

    const/16 v0, 0x1a

    .line 426
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isOreoMR1()Z
    .locals 1

    const/16 v0, 0x1b

    .line 450
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isP()Z
    .locals 1

    const/16 v0, 0x1c

    .line 458
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method

.method public static isPie()Z
    .locals 1

    const/16 v0, 0x1c

    .line 466
    invoke-static {v0}, Lcom/serenegiant/utils/BuildCheck;->check(I)Z

    move-result v0

    return v0
.end method
