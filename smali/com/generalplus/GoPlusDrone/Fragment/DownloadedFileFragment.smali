.class public Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;
.super Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;
.source "DownloadedFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadedFileFragment"


# instance fields
.field private listImageItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;

.field private m_GridView:Landroid/widget/GridView;

.field private m_HashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_bSelect:Z

.field private strDevicePICLocation:Ljava/lang/String;

.field private strSaveDirectory:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_GridView:Landroid/widget/GridView;

    .line 50
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;

    const-string v1, ""

    .line 51
    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->strSaveDirectory:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->strDevicePICLocation:Ljava/lang/String;

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->listImageItem:Ljava/util/ArrayList;

    .line 54
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->mContext:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->title:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_bSelect:Z

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_HashMap:Ljava/util/HashMap;

    return-void
.end method

.method private ShowCopyDialog()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "\u8acb\u9078\u64c7\u6a94\u6848."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 217
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u78ba\u5b9a\u8981\u8907\u88fd\u6a94\u6848\u5230\u624b\u6a5f\u76f8\u7c3f?"

    .line 218
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 219
    new-instance v1, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$2;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$2;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)V

    const-string v2, "\u78ba\u5b9a"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    const-string v2, "\u53d6\u6d88"

    .line 242
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private ShowDeleteDialog()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "Please select file."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 252
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Delete File"

    .line 253
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Do you sure to delete file?"

    .line 254
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 255
    new-instance v1, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)V

    const-string v2, "Yes"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    const-string v2, "No"

    .line 301
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 302
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/HashMap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_HashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->listImageItem:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->strDevicePICLocation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$502(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_bSelect:Z

    return p1
.end method

.method static synthetic access$600(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;

    return-object p0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "DownloadedFileFragment"

    const/4 v1, 0x0

    .line 179
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 183
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 184
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 188
    :goto_0
    invoke-virtual {v3, p2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 189
    invoke-virtual {p1, p2, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 194
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 195
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 198
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p2, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 198
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    move-exception p1

    .line 202
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;
    .locals 3

    .line 59
    new-instance v0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-direct {v0}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;-><init>()V

    .line 60
    invoke-virtual {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->setTitle(Ljava/lang/String;)V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "name"

    .line 63
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 150
    sget v0, Lcom/generalplus/GoPlusDrone/R$menu;->menu_downloaded:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 151
    invoke-super {p0, p1, p2}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    move-object/from16 v7, p0

    .line 76
    sget v0, Lcom/generalplus/GoPlusDrone/R$layout;->fragment_downloadedfile:I

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->mContext:Landroid/content/Context;

    .line 78
    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->gridView:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_GridView:Landroid/widget/GridView;

    .line 80
    iget-object v0, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/GoPlus_Drone/Photo/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->strSaveDirectory:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/DCIM/Camera/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->strDevicePICLocation:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/io/File;

    iget-object v2, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "KEY_FileType"

    const-string v3, "KEY_FilePath"

    const-string v4, "KEY_FileIndex"

    const-string v5, "KEY_FileName"

    const-string v6, "KEY_ThumbnailFilePath"

    if-eqz v0, :cond_1

    const/4 v9, 0x0

    .line 87
    :goto_0
    array-length v10, v0

    if-ge v9, v10, :cond_1

    .line 88
    aget-object v10, v0, v9

    const-string v11, ".jpg"

    .line 89
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 90
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 91
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v11, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v10, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/GoPlus_Drone/Video/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->strSaveDirectory:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/io/File;

    iget-object v9, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    if-eqz v0, :cond_3

    const/4 v10, 0x0

    .line 107
    :goto_1
    array-length v11, v0

    if-ge v10, v11, :cond_3

    .line 108
    aget-object v11, v0, v10

    const-string v12, ".mp4"

    .line 109
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 110
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 111
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "thumbnails/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "mp4"

    const-string v15, "jpg"

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {v12, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v11, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 122
    :cond_3
    new-instance v10, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;

    iget-object v2, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->mContext:Landroid/content/Context;

    iget-object v3, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->listImageItem:Ljava/util/ArrayList;

    sget v11, Lcom/generalplus/GoPlusDrone/R$layout;->downloaded_filelist:I

    filled-new-array {v6, v5, v4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    new-array v6, v0, [I

    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->imageView1:I

    aput v0, v6, v1

    sget v0, Lcom/generalplus/GoPlusDrone/R$id;->textView1:I

    aput v0, v6, v9

    move-object v0, v10

    move-object/from16 v1, p0

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;Landroid/content/Context;Ljava/util/ArrayList;I[Ljava/lang/String;[I)V

    iput-object v10, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;

    .line 127
    iget-object v0, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_GridView:Landroid/widget/GridView;

    invoke-virtual {v0, v10}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v0, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_GridView:Landroid/widget/GridView;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$1;

    invoke-direct {v1, v7}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$1;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    iget-object v0, v7, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->notifyDataSetChanged()V

    return-object v8
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 157
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->action_Select:I

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 159
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_bSelect:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->notifyDataSetChanged()V

    .line 166
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_bSelect:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->m_bSelect:Z

    goto :goto_1

    .line 167
    :cond_1
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->action_delete:I

    if-ne v0, v1, :cond_2

    .line 168
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->ShowDeleteDialog()V

    goto :goto_1

    .line 169
    :cond_2
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->action_copy:I

    if-ne v0, v1, :cond_3

    .line 170
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->ShowCopyDialog()V

    .line 172
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
