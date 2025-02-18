.class public Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;
.source "BrowseFileDialog.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/util/IConstant;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;,
        Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;,
        Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$OnSelectResultListener;
    }
.end annotation


# static fields
.field private static final MOVE_DIR_MSG:I = 0xa0a0


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

.field private mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private movingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private movingDirThread:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;

.field private onSelectResultListener:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$OnSelectResultListener;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;-><init>()V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->tag:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$1;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$1;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->controlDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$OnSelectResultListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->onSelectResultListener:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$OnSelectResultListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->currentPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->currentPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->viewFiles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method private controlDeleteDirDialog(Ljava/lang/String;I)V
    .locals 10

    .line 306
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->delete_dir_tip:I

    invoke-virtual {p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 308
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez v2, :cond_1

    .line 309
    sget v2, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    invoke-virtual {p0, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v6, Lcom/jieli/stream/dv/running2/R$string;->dialog_cancel:I

    sget v7, Lcom/jieli/stream/dv/running2/R$string;->dialog_confirm:I

    new-instance v8, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$4;

    invoke-direct {v8, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$4;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)V

    new-instance v9, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$5;

    invoke-direct {v9, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$5;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)V

    move-object v5, v0

    invoke-static/range {v4 .. v9}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;IILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 335
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "key_dir_path"

    .line 336
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setBundle(Landroid/os/Bundle;)V

    .line 338
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->setContent(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    goto :goto_0

    .line 346
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 347
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    const/4 p1, 0x0

    .line 348
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    goto :goto_0

    .line 341
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 342
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "delete_dir_dialog"

    invoke-virtual {p1, p2, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private controlDialog(I)V
    .locals 2

    .line 285
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->movingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 287
    sget v0, Lcom/jieli/stream/dv/running2/R$string;->moving_dir_tip:I

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IZ)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->movingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    :cond_1
    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 297
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->movingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 298
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->movingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->movingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    goto :goto_0

    .line 292
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->movingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 293
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->movingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "moving_dialog"

    invoke-virtual {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private viewFiles(Ljava/lang/String;)V
    .locals 2

    .line 193
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getFiles(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->fileInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 197
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->fileInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 201
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->currentPath:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->currentPathTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 124
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 129
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 130
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 140
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 142
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->fileInfoList:Ljava/util/List;

    if-nez p1, :cond_1

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->fileInfoList:Ljava/util/List;

    .line 145
    :cond_1
    sget-object p1, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->ROOT_PATH:Ljava/lang/String;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->currentPath:Ljava/lang/String;

    .line 146
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;

    if-nez p1, :cond_2

    .line 147
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->fileInfoList:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->currentPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->viewFiles(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 212
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 214
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->create_dir_btn:I

    if-ne p1, v0, :cond_1

    .line 215
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;

    invoke-direct {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;-><init>()V

    .line 216
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$3;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$3;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)V

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->setOnContentListener(Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog$OnContentListener;)V

    .line 230
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "input_content_dialog"

    invoke-virtual {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/dialog/InputContentDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_1
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->dialog_return_path:I

    if-ne p1, v0, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->onKeyBack()V

    goto :goto_0

    .line 233
    :cond_2
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->dialog_file_cancel_btn:I

    if-ne p1, v0, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->dismiss()V

    goto :goto_0

    .line 235
    :cond_3
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->dialog_file_confirm_btn:I

    if-ne p1, v0, :cond_6

    .line 236
    sget-object p1, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->ROOT_PATH:Ljava/lang/String;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->currentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 237
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->select_dir_error:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->currentPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->checkIsEmptyFolder(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->ROOT_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getApplication()Lcom/jieli/stream/dv/running2/ui/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 241
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->movingDirThread:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;

    if-nez v0, :cond_6

    .line 242
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->currentPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->movingDirThread:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;

    .line 243
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$MovingDirThread;->start()V

    goto :goto_0

    .line 246
    :cond_5
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->select_dir_tip:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const v0, 0x103000d

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->setStyle(II)V

    const/4 p1, 0x0

    .line 97
    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->setCancelable(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 104
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->dialog_browse_file:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 105
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->dialog_file_path:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->currentPathTv:Landroid/widget/TextView;

    .line 106
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->create_dir_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 107
    sget p3, Lcom/jieli/stream/dv/running2/R$id;->dialog_return_path:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 108
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->dialog_file_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->mListView:Landroid/widget/ListView;

    .line 109
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->dialog_file_cancel_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 110
    sget v1, Lcom/jieli/stream/dv/running2/R$id;->dialog_file_confirm_btn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 112
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 114
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->movingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->movingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 175
    :cond_0
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->movingDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    .line 181
    :cond_2
    iput-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->deleteDirDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 183
    :cond_3
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onDetach()V

    .line 184
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 185
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
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

    .line 264
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;->getCount()I

    move-result p1

    if-ge p3, p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;

    invoke-virtual {p1, p3}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Path:Ljava/lang/String;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->currentPath:Ljava/lang/String;

    .line 268
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->viewFiles(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 275
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;->getCount()I

    move-result p1

    if-ge p3, p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->mAdapter:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;

    invoke-virtual {p1, p3}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;

    if-eqz p1, :cond_0

    .line 278
    iget-object p1, p1, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->Path:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->controlDeleteDirDialog(Ljava/lang/String;I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onKeyBack()V
    .locals 3

    .line 253
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->ROOT_PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->currentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->dismiss()V

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->currentPath:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->currentPath:Ljava/lang/String;

    .line 258
    invoke-direct {p0, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->viewFiles(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 157
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseDialogFragment;->onResume()V

    .line 158
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$2;

    invoke-direct {v1, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$2;-><init>(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public setOnSelectResultListener(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$OnSelectResultListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->onSelectResultListener:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$OnSelectResultListener;

    return-void
.end method
