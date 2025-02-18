.class public Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;
.super Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;
.source "VideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$FileComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoListFragment"


# instance fields
.field private m_GridView:Landroid/widget/GridView;

.field private strSaveDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->m_GridView:Landroid/widget/GridView;

    return-void
.end method

.method private getFile()V
    .locals 14

    .line 68
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/GoPlus_Drone/Video/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->strSaveDirectory:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 75
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 76
    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$FileComparator;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$FileComparator;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 79
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 80
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ".mp4"

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "KEY_FileIndex"

    const-string v5, "KEY_FileName"

    const-string v6, "KEY_FileType"

    const-string v7, "KEY_FilePath"

    const-string v8, "jpg"

    const-string v9, "thumbnails/"

    const-string v10, "KEY_ThumbnailFilePath"

    const/4 v11, 0x1

    if-eqz v3, :cond_1

    .line 82
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->m_ayFilePath:Ljava/util/ArrayList;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 85
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "mp4"

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const-string v3, ".avi"

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->m_ayFilePath:Ljava/util/ArrayList;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 97
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "avi"

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    if-eqz v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private getThumbnail()V
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2;

    invoke-direct {v1, p0}, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;
    .locals 3

    .line 36
    new-instance v0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;

    invoke-direct {v0}, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;-><init>()V

    .line 37
    invoke-virtual {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->setTitle(Ljava/lang/String;)V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "name"

    .line 40
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 113
    sget p3, Lcom/generalplus/GoPlusDrone/R$layout;->activity_filelist:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 114
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->mContext:Landroid/content/Context;

    .line 115
    sget p2, Lcom/generalplus/GoPlusDrone/R$id;->gridView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->m_GridView:Landroid/widget/GridView;

    .line 116
    new-instance p3, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$1;

    invoke-direct {p3, p0}, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$1;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 146
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->getFile()V

    .line 147
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->getThumbnail()V

    .line 152
    new-instance p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->listImageItem:Ljava/util/ArrayList;

    sget v5, Lcom/generalplus/GoPlusDrone/R$layout;->downloaded_filelist:I

    const-string p3, "KEY_ThumbnailFilePath"

    const-string v1, "KEY_FileName"

    const-string v2, "KEY_FileIndex"

    filled-new-array {p3, v1, v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 p3, 0x2

    new-array v7, p3, [I

    sget p3, Lcom/generalplus/GoPlusDrone/R$id;->imageView1:I

    aput p3, v7, v0

    sget p3, Lcom/generalplus/GoPlusDrone/R$id;->textView1:I

    const/4 v0, 0x1

    aput p3, v7, v0

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;Landroid/content/Context;Ljava/util/ArrayList;I[Ljava/lang/String;[I)V

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    .line 156
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->m_GridView:Landroid/widget/GridView;

    iget-object p3, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    invoke-virtual {p2}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->notifyDataSetChanged()V

    return-object p1
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->getFile()V

    :cond_0
    return-void
.end method
