.class Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BrowseFileDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private fileInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/SDFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/SDFileInfo;",
            ">;)V"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 385
    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;->fileInfoList:Ljava/util/List;

    .line 386
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;->fileInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;->fileInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;->fileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;->fileInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 412
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/jieli/stream/dv/running2/R$layout;->item_file_path:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 413
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter$ViewHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$1;)V

    .line 414
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->file_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 415
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->file_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 416
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter$ViewHolder;

    .line 420
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    if-eqz p1, :cond_2

    .line 422
    iget-object v0, p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-boolean p1, p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->IsDirectory:Z

    if-eqz p1, :cond_1

    .line 424
    iget-object p1, p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget p3, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_folder:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 426
    :cond_1
    iget-object p1, p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget p3, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_file_icon:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_1
    return-object p2
.end method
