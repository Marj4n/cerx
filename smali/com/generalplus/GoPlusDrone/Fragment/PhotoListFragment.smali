.class public Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;
.super Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;
.source "PhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment$FileComparator;
    }
.end annotation


# instance fields
.field private m_GridView:Landroid/widget/GridView;

.field private strSaveDirectory:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->m_GridView:Landroid/widget/GridView;

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->title:Ljava/lang/String;

    return-void
.end method

.method private getFile()V
    .locals 7

    .line 73
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/GoPlus_Drone/Photo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->strSaveDirectory:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 80
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 81
    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment$FileComparator;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment$FileComparator;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 84
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 85
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ".jpg"

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->m_ayFilePath:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KEY_ThumbnailFilePath"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->strSaveDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KEY_FilePath"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "KEY_FileType"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "KEY_FileName"

    .line 92
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "KEY_FileIndex"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;
    .locals 3

    .line 35
    new-instance v0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;

    invoke-direct {v0}, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;-><init>()V

    .line 36
    invoke-virtual {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->setTitle(Ljava/lang/String;)V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "name"

    .line 39
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 105
    sget p3, Lcom/generalplus/GoPlusDrone/R$layout;->activity_filelist:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 106
    invoke-virtual {p0}, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->mContext:Landroid/content/Context;

    .line 107
    sget p2, Lcom/generalplus/GoPlusDrone/R$id;->gridView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->m_GridView:Landroid/widget/GridView;

    .line 108
    new-instance p3, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment$1;

    invoke-direct {p3, p0}, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment$1;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->getFile()V

    .line 137
    new-instance p2, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->listImageItem:Ljava/util/ArrayList;

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

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    .line 141
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->m_GridView:Landroid/widget/GridView;

    iget-object p3, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    invoke-virtual {p2}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->notifyDataSetChanged()V

    return-object p1
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->getFile()V

    :cond_0
    return-void
.end method
