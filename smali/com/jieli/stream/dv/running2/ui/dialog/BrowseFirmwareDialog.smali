.class public Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;
.source "BrowseFirmwareDialog.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/IConstant;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;
    }
.end annotation


# instance fields
.field private currentPath:Ljava/lang/String;

.field private currentPathTv:Landroid/widget/TextView;

.field private deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private fileInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jieli/stream/dv/running2/bean/SDFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mSelectedFile:Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

.field private movingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private onSelectResultListener:Lcom/jieli/stream/dv/running2/interfaces/OnSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jieli/stream/dv/running2/interfaces/OnSelectedListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->mSelectedFile:Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->onKeyBack()V

    return-void
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;)Lcom/jieli/stream/dv/running2/bean/SDFileInfo;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->mSelectedFile:Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    return-object p0
.end method

.method private onKeyBack()V
    .locals 3

    .line 178
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->ROOT_PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->currentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->dismiss()V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->currentPath:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->currentPath:Ljava/lang/String;

    .line 182
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->viewFiles(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private viewFiles(Ljava/lang/String;)V
    .locals 2

    .line 140
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getFirmwareFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->fileInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 144
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->fileInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->currentPath:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->currentPathTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 88
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 89
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 90
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 92
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->fileInfoList:Ljava/util/List;

    if-nez p1, :cond_1

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->fileInfoList:Ljava/util/List;

    .line 95
    :cond_1
    sget-object p1, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->ROOT_PATH:Ljava/lang/String;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->currentPath:Ljava/lang/String;

    .line 96
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;

    if-nez p1, :cond_2

    .line 97
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->fileInfoList:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->currentPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->viewFiles(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 161
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->dialog_return_path:I

    if-ne p1, v0, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->onKeyBack()V

    goto :goto_0

    .line 163
    :cond_1
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->dialog_file_cancel_btn:I

    if-ne p1, v0, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->dismiss()V

    goto :goto_0

    .line 165
    :cond_2
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->dialog_file_confirm_btn:I

    if-ne p1, v0, :cond_4

    .line 166
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->mSelectedFile:Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    if-eqz p1, :cond_3

    .line 167
    iget-object p1, p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Name:Ljava/lang/String;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->dismiss()V

    .line 169
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->onSelectResultListener:Lcom/jieli/stream/dv/running2/interfaces/OnSelectedListener;

    if-eqz p1, :cond_4

    .line 170
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->mSelectedFile:Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Path:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/jieli/stream/dv/running2/interfaces/OnSelectedListener;->onSelected(Ljava/lang/Object;)V

    goto :goto_0

    .line 172
    :cond_3
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->selected_file_empty_tip:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const v0, 0x103000d

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->setStyle(II)V

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->setCancelable(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 67
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->dialog_browse_firmware:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dialog_file_path:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->currentPathTv:Landroid/widget/TextView;

    .line 69
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dialog_return_path:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 70
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->dialog_file_list:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    iput-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->mListView:Landroid/widget/ListView;

    .line 71
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->dialog_file_cancel_btn:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 72
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->dialog_file_confirm_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 74
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->movingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->movingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 124
    :cond_0
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->movingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_3

    .line 127
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 130
    :cond_2
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 132
    :cond_3
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->mSelectedFile:Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    .line 133
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onDetach()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 188
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;->getCount()I

    move-result p1

    if-ge p3, p1, :cond_2

    .line 189
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;

    invoke-virtual {p1, p3}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    if-eqz p1, :cond_1

    .line 191
    new-instance p2, Ljava/io/File;

    iget-object p3, p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Path:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 193
    iget-object p3, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->tag:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "File name="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->mSelectedFile:Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    .line 195
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$FileListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 197
    :cond_0
    iget-object p2, p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Path:Ljava/lang/String;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->currentPath:Ljava/lang/String;

    .line 198
    iget-object p1, p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Path:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->viewFiles(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->tag:Ljava/lang/String;

    const-string p2, "file is null"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onResume()V

    .line 107
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog$1;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public setOnSelectedListener(Lcom/jieli/stream/dv/running2/interfaces/OnSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jieli/stream/dv/running2/interfaces/OnSelectedListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFirmwareDialog;->onSelectResultListener:Lcom/jieli/stream/dv/running2/interfaces/OnSelectedListener;

    return-void
.end method
