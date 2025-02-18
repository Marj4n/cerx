.class Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BrowseFirmwareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter$ViewHolder;
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

.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;Landroid/content/Context;Ljava/util/List;)V
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

    .line 210
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 211
    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;->fileInfoList:Ljava/util/List;

    .line 212
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;->fileInfoList:Ljava/util/List;

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

    .line 223
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;->fileInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;->fileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;->fileInfoList:Ljava/util/List;

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
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 238
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/jieli/stream/dv/running2/R$layout;->item_file_path:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 239
    new-instance p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter$ViewHolder;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$1;)V

    .line 240
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->file_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 241
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->file_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 242
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->file_selected:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter$ViewHolder;->flag:Landroid/widget/ImageView;

    .line 243
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter$ViewHolder;

    .line 247
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    if-eqz p1, :cond_3

    .line 249
    iget-object v1, p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-boolean v1, p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->IsDirectory:Z

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget v2, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_folder:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 253
    :cond_1
    iget-object v1, p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget v2, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_file_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    :goto_1
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->access$200(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;)Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 256
    iget-object p1, p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter$ViewHolder;->flag:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 258
    :cond_2
    iget-object p1, p3, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter$ViewHolder;->flag:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_2
    return-object p2
.end method
