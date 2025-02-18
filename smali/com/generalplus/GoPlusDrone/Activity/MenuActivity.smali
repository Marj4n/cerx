.class public Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;
.super Landroid/app/Activity;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$MyAdapter;
    }
.end annotation


# static fields
.field private static final ID_CAM:I = 0x66

.field private static final ID_FILE:I = 0x67

.field private static final ID_HELP:I = 0x65


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private dialog:Landroid/app/AlertDialog;

.field private downX:I

.field images1:[I

.field images2:[I

.field private layout:Landroid/widget/LinearLayout;

.field private mScreenHigth:I

.field private mScreenWidth:I

.field n:I

.field private selectedTag:I

.field private upX:I

.field private wifiInfo:Landroid/net/wifi/WifiInfo;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->n:I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 408
    sget v3, Lcom/generalplus/GoPlusDrone/R$drawable;->main_menu_help_1:I

    aput v3, v2, v0

    sget v3, Lcom/generalplus/GoPlusDrone/R$drawable;->main_menu_preview_1:I

    const/4 v4, 0x1

    aput v3, v2, v4

    sget v3, Lcom/generalplus/GoPlusDrone/R$drawable;->main_menu_file_1:I

    const/4 v5, 0x2

    aput v3, v2, v5

    sget v3, Lcom/generalplus/GoPlusDrone/R$drawable;->main_menu_setting_1:I

    const/4 v6, 0x3

    aput v3, v2, v6

    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->images1:[I

    new-array v1, v1, [I

    .line 410
    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->main_menu_help_2:I

    aput v2, v1, v0

    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->main_menu_preview_2:I

    aput v2, v1, v4

    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->main_menu_file_2:I

    aput v2, v1, v5

    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->main_menu_setting_2:I

    aput v2, v1, v6

    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->images2:[I

    .line 444
    iput v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->selectedTag:I

    return-void
.end method

.method static synthetic access$000(Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;)Landroid/app/AlertDialog;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    return p0
.end method

.method private initView()V
    .locals 5

    .line 76
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0xa

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 78
    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->main_menu_help_1:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v2, 0x65

    .line 79
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 80
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v3, v2, 0x2

    div-int/lit8 v3, v3, 0xa

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0xa

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 84
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 85
    sget v3, Lcom/generalplus/GoPlusDrone/R$drawable;->main_menu_preview_1:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v3, 0x66

    .line 86
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setId(I)V

    .line 87
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v4, v3, 0x2

    div-int/lit8 v4, v4, 0xa

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0xa

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    iget v3, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0xa

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 91
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 92
    sget v4, Lcom/generalplus/GoPlusDrone/R$drawable;->main_menu_file_1:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v4, 0x67

    .line 93
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    .line 94
    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$1;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$2;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$2;-><init>(Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$3;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$3;-><init>(Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setBitmap()V
    .locals 8

    .line 221
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 222
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 223
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 224
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 226
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 227
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 230
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 231
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    int-to-float v1, v1

    div-float/2addr v4, v1

    float-to-double v6, v4

    .line 233
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    int-to-float v4, v5

    int-to-float v0, v0

    div-float/2addr v4, v0

    float-to-double v4, v4

    .line 234
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    if-gt v1, v3, :cond_0

    if-le v0, v3, :cond_2

    :cond_0
    if-le v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 239
    :goto_0
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    const/4 v0, 0x0

    .line 242
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 243
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 244
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 245
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 247
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/generalplus/GoPlusDrone/R$drawable;->main_menu_bg:I

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 249
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->layout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private shouldAskPermission()Z
    .locals 2

    .line 398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected getFileView()Landroid/view/View;
    .locals 9

    .line 266
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x7

    iget v2, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenHigth:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 267
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 268
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 269
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    sget v0, Lcom/generalplus/GoPlusDrone/R$drawable;->file_style:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/4 v0, 0x1

    .line 271
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 273
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x7

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenHigth:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0xf

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 274
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 275
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 277
    sget v3, Lcom/generalplus/GoPlusDrone/R$string;->language5:I

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, -0xfdfdfe

    .line 278
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v5, v5, 0x4

    div-int/lit16 v5, v5, 0xc8

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 280
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x7

    iget v6, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenHigth:I

    mul-int/lit8 v6, v6, 0x1

    div-int/lit16 v6, v6, 0x96

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 283
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 284
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    sget v4, Lcom/generalplus/GoPlusDrone/R$drawable;->lin1:I

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 286
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x7

    iget v6, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenHigth:I

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0xf

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 289
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 290
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 292
    sget v4, Lcom/generalplus/GoPlusDrone/R$string;->language6:I

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    .line 293
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit16 v4, v4, 0xc8

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 295
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x7

    iget v7, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenHigth:I

    mul-int/lit8 v7, v7, 0x1

    div-int/lit16 v7, v7, 0x96

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 298
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 299
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    sget v4, Lcom/generalplus/GoPlusDrone/R$drawable;->lin1:I

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 301
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x7

    iget v7, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenHigth:I

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0xf

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 304
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 305
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 307
    sget v4, Lcom/generalplus/GoPlusDrone/R$string;->language7:I

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 308
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit16 v4, v4, 0xc8

    int-to-float v4, v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 310
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 312
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x7

    iget v8, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenHigth:I

    mul-int/lit8 v8, v8, 0x1

    div-int/lit16 v8, v8, 0x96

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 313
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 314
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    sget v4, Lcom/generalplus/GoPlusDrone/R$drawable;->lin1:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 316
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x7

    iget v7, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenHigth:I

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0xf

    invoke-direct {v0, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 319
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 320
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 322
    sget v0, Lcom/generalplus/GoPlusDrone/R$string;->language8:I

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 323
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit16 v0, v0, 0xc8

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 325
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$4;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$4;-><init>(Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$5;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$5;-><init>(Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    new-instance v0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$6;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity$6;-><init>(Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2
.end method

.method public isHaveFile(Ljava/lang/String;)V
    .locals 2

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/hvcam"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HVCAM"

    .line 366
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 371
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/generalplus/GoPlusDrone/R$string;->language16:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget p1, Lcom/generalplus/GoPlusDrone/R$layout;->menu:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->setContentView(I)V

    .line 56
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->linlay:I

    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->layout:Landroid/widget/LinearLayout;

    .line 57
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenWidth:I

    .line 58
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->mScreenHigth:I

    .line 59
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->setBitmap()V

    .line 60
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->initView()V

    .line 63
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->shouldAskPermission()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 64
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xc8

    .line 71
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 260
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0xc8

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 386
    aget p3, p3, p2

    if-nez p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-nez p2, :cond_2

    .line 388
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->shouldAskPermission()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 389
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 391
    invoke-static {p0, p2, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 254
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Activity/MenuActivity;->setBitmap()V

    :cond_0
    return-void
.end method
