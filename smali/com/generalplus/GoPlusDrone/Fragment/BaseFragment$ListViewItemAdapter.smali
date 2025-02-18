.class public Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;
.super Landroid/widget/SimpleAdapter;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListViewItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private click:[Z

.field private componentTagAry:[Ljava/lang/String;

.field private componentXMLIDAry:[I

.field private context:Landroid/content/Context;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field private itemLayout:I

.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;


# direct methods
.method public constructor <init>(Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;Landroid/content/Context;Ljava/util/ArrayList;I[Ljava/lang/String;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 306
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const/4 p1, 0x0

    .line 296
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->context:Landroid/content/Context;

    .line 297
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->data:Ljava/util/ArrayList;

    .line 299
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->componentTagAry:[Ljava/lang/String;

    .line 300
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->componentXMLIDAry:[I

    .line 301
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->click:[Z

    .line 308
    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->context:Landroid/content/Context;

    .line 309
    iput p4, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->itemLayout:I

    .line 310
    iput-object p5, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->componentTagAry:[Ljava/lang/String;

    .line 311
    iput-object p6, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->componentXMLIDAry:[I

    .line 312
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->click:[Z

    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 1

    .line 327
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 328
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p3, :cond_1

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v0, v0

    int-to-float p3, p3

    div-float/2addr v0, p3

    .line 332
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 333
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-ge p3, p1, :cond_2

    move p1, p3

    :cond_2
    :goto_1
    return p1
.end method


# virtual methods
.method public getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "\\"

    .line 320
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    :cond_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 344
    new-instance p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;

    invoke-direct {p2, p0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;)V

    .line 345
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 346
    sget v2, Lcom/generalplus/GoPlusDrone/R$layout;->downloaded_filelist:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 347
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->imageView1:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;->myImage:Landroid/widget/ImageView;

    .line 348
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->textView1:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;->txtFileName:Landroid/widget/TextView;

    .line 349
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->checkBox:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 350
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->ivVideo:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;->m_iVideo:Landroid/widget/ImageView;

    .line 351
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;

    move-object v8, p3

    move-object p3, p2

    move-object p2, v8

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object v1, v1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "KEY_ThumbnailFilePath"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 359
    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object v2, v2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "KEY_FileType"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 361
    iget-object v2, p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;->txtFileName:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpg"

    const-string v7, ".mp4"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 363
    :cond_2
    iget-object v2, p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;->txtFileName:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :goto_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 373
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 374
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 375
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/16 v5, 0x80

    const/16 v6, 0x64

    .line 377
    invoke-direct {p0, v1, v5, v6}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 378
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 380
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 381
    iget-object v2, p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;->myImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 383
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_3

    .line 390
    :cond_3
    iget-object v1, p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;->myImage:Landroid/widget/ImageView;

    sget v2, Lcom/generalplus/GoPlusDrone/R$drawable;->broken:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 393
    :goto_3
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-boolean v1, v1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_bEdit:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_4

    .line 394
    iget-object v1, p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_4

    .line 397
    :cond_4
    iget-object v1, p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 399
    :goto_4
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object v1, v1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 400
    iget-object v1, p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 403
    :cond_5
    iget-object v1, p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 406
    :goto_5
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object v1, v1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_6

    .line 407
    iget-object p1, p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;->m_iVideo:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 410
    :cond_6
    iget-object p1, p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;->m_iVideo:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    return-object p3
.end method
