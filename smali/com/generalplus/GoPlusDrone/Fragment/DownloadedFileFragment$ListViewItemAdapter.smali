.class public Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;
.super Landroid/widget/SimpleAdapter;
.source "DownloadedFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListViewItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter$ViewHolder;
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

.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;


# direct methods
.method public constructor <init>(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;Landroid/content/Context;Ljava/util/ArrayList;I[Ljava/lang/String;[I)V
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

    .line 315
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 316
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const/4 p1, 0x0

    .line 306
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->context:Landroid/content/Context;

    .line 307
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->data:Ljava/util/ArrayList;

    .line 309
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->componentTagAry:[Ljava/lang/String;

    .line 310
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->componentXMLIDAry:[I

    .line 311
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->click:[Z

    .line 318
    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->context:Landroid/content/Context;

    .line 319
    iput p4, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->itemLayout:I

    .line 320
    iput-object p5, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->componentTagAry:[Ljava/lang/String;

    .line 321
    iput-object p6, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->componentXMLIDAry:[I

    .line 322
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->click:[Z

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 330
    new-instance p2, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter$ViewHolder;

    invoke-direct {p2, p0}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter$ViewHolder;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;)V

    .line 331
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 332
    sget v2, Lcom/generalplus/GoPlusDrone/R$layout;->downloaded_filelist:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 333
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->imageView1:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter$ViewHolder;->myImage:Landroid/widget/ImageView;

    .line 334
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->checkBox:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 335
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->ivVideo:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter$ViewHolder;->m_iVideo:Landroid/widget/ImageView;

    .line 336
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter$ViewHolder;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    .line 342
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$100(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "KEY_ThumbnailFilePath"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 345
    iget-object v2, p2, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter$ViewHolder;->myImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$000(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 349
    iget-object v1, p2, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 352
    :cond_2
    iget-object v1, p2, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 355
    :goto_1
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$100(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v1, "KEY_FileType"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    .line 356
    iget-object p1, p2, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter$ViewHolder;->m_iVideo:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 359
    :cond_3
    iget-object p1, p2, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter$ViewHolder;->m_iVideo:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-object p3
.end method
