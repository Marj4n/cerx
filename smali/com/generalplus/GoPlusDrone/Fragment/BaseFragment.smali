.class public Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;
    }
.end annotation


# static fields
.field public static final DATA_NAME:Ljava/lang/String; = "name"

.field protected static final KEY_FileIndex:Ljava/lang/String; = "KEY_FileIndex"

.field protected static final KEY_FileName:Ljava/lang/String; = "KEY_FileName"

.field protected static final KEY_FilePath:Ljava/lang/String; = "KEY_FilePath"

.field protected static final KEY_FileType:Ljava/lang/String; = "KEY_FileType"

.field protected static final KEY_ThumbnailFilePath:Ljava/lang/String; = "KEY_ThumbnailFilePath"

.field private static final TAG:Ljava/lang/String; = "BaseFragment"


# instance fields
.field private dividerColor:I

.field private iconResId:I

.field private indicatorColor:I

.field protected listImageItem:Ljava/util/ArrayList;
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

.field protected mContext:Landroid/content/Context;

.field protected m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

.field protected m_HashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected m_ayFilePath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m_bEdit:Z

.field protected m_bSelect:Z

.field private strDevicePICLocation:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, ""

    .line 57
    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->title:Ljava/lang/String;

    const v2, -0xffff01

    .line 58
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->indicatorColor:I

    const v2, -0x777778

    .line 59
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->dividerColor:I

    const/4 v2, 0x0

    .line 60
    iput v2, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->iconResId:I

    .line 87
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_HashMap:Ljava/util/HashMap;

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->listImageItem:Ljava/util/ArrayList;

    .line 89
    iput-boolean v2, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_bSelect:Z

    .line 90
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    .line 91
    iput-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->strDevicePICLocation:Ljava/lang/String;

    .line 92
    iput-boolean v2, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_bEdit:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_ayFilePath:Ljava/util/ArrayList;

    return-void
.end method

.method private ShowCopyDialog()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->isCN()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Please select file."

    goto :goto_0

    :cond_0
    const-string v1, "\u8bf7\u9009\u62e9\u6587\u4ef6."

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 199
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->isCN()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Are you sure to copy the selected file to Album?"

    goto :goto_1

    :cond_2
    const-string v1, "\u662f\u5426\u590d\u5236\u9009\u62e9\u7684\u6587\u4ef6\u5230\u76f8\u518c?"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 201
    new-instance v1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$1;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$1;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;)V

    const-string v2, "Yes"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    const-string v2, "NO"

    .line 224
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private ShowDeleteDialog()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->isCN()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Please select file."

    goto :goto_0

    :cond_0
    const-string v1, "\u8bf7\u9009\u62e9\u6587\u4ef6."

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 241
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->isCN()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Are you sure to delete the selected file?"

    goto :goto_1

    :cond_2
    const-string v1, "\u786e\u5b9a\u5220\u9664\u9009\u62e9\u7684\u6587\u4ef6?"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 243
    new-instance v1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;)V

    const-string v2, "Yes"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    const-string v2, "No"

    .line 291
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->strDevicePICLocation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "BaseFragment"

    const/4 v1, 0x0

    .line 161
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 165
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 166
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 170
    :goto_0
    invoke-virtual {v3, p2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 171
    invoke-virtual {p1, p2, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 176
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 177
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 180
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p2, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 180
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->dividerColor:I

    return v0
.end method

.method public getIconResId()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->iconResId:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->indicatorColor:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCN()Z
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 229
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 109
    invoke-virtual {p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->setHasOptionsMenu(Z)V

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/DCIM/Camera/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->strDevicePICLocation:Ljava/lang/String;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_bEdit:Z

    if-eqz v0, :cond_0

    .line 97
    sget v0, Lcom/generalplus/GoPlusDrone/R$menu;->menu_downloaded:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 100
    :cond_0
    sget v0, Lcom/generalplus/GoPlusDrone/R$menu;->menu_edit:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 103
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 117
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->action_edit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 118
    iput-boolean v2, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_bEdit:Z

    .line 119
    sput-boolean v2, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->m_bEdit:Z

    .line 120
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    const-wide/16 v0, 0x1f4

    .line 122
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->notifyDataSetChanged()V

    const-wide/16 v0, 0x3e8

    .line 128
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 132
    :cond_0
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->action_done:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 133
    iput-boolean v3, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_bSelect:Z

    .line 134
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 135
    iput-boolean v3, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_bEdit:Z

    .line 136
    sput-boolean v3, Lcom/generalplus/GoPlusDrone/Activity/GalleryActivity;->m_bEdit:Z

    .line 137
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 138
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 139
    :cond_1
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->action_Select:I

    if-ne v0, v1, :cond_3

    .line 140
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 141
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_bSelect:Z

    if-nez v0, :cond_2

    .line 142
    :goto_1
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->notifyDataSetChanged()V

    .line 148
    iget-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_bSelect:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_bSelect:Z

    goto :goto_2

    .line 149
    :cond_3
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->action_delete:I

    if-ne v0, v1, :cond_4

    .line 150
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->ShowDeleteDialog()V

    goto :goto_2

    .line 151
    :cond_4
    sget v1, Lcom/generalplus/GoPlusDrone/R$id;->action_copy:I

    if-ne v0, v1, :cond_5

    .line 152
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->ShowCopyDialog()V

    .line 154
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->dividerColor:I

    return-void
.end method

.method public setIconResId(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->iconResId:I

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->indicatorColor:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->title:Ljava/lang/String;

    return-void
.end method
