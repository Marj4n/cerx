.class public Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;
.source "AppStorageManageActivity.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$OnSelectResultListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private browseFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

.field private cacheSizeItem:Lcom/jieli/stream/dv/running2/bean/SettingItem;

.field private cleanCacheDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

.field private mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

.field private mChart:Lcom/github/mikephil/charting/charts/PieChart;

.field private settingListView:Landroid/widget/ListView;

.field private storagePathItem:Lcom/jieli/stream/dv/running2/bean/SettingItem;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;-><init>()V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->tag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->cleanCacheDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->clearCache()V

    return-void
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getCache()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;)Lcom/jieli/stream/dv/running2/bean/SettingItem;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->cacheSizeItem:Lcom/jieli/stream/dv/running2/bean/SettingItem;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;)Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    return-object p0
.end method

.method private clearCache()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->queryThumbDirPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 199
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-static {v2}, Lcom/jieli/stream/dv/running2/util/AppUtils;->deleteFile(Ljava/io/File;)V

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->getInstance()Lcom/jieli/stream/dv/running2/util/ThumbLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/util/ThumbLoader;->clearCache()V

    :cond_2
    return-void
.end method

.method private dismissClearCacheDialog()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->cleanCacheDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->cleanCacheDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->cleanCacheDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    :cond_1
    return-void
.end method

.method private getCache()Ljava/lang/String;
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->splicingFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->queryThumbDirPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 178
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 179
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    :try_start_0
    invoke-static {v4}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 184
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    long-to-double v0, v1

    .line 190
    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getFormatSize(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initChart()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v2, v3, v2, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setExtraOffsets(FFFF)V

    .line 82
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const v2, 0x3f733333    # 0.95f

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setDragDecelerationFrictionCoef(F)V

    .line 83
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationAngle(F)V

    .line 85
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    sget-object v1, Lcom/github/mikephil/charting/animation/Easing$EasingOption;->EaseInOutQuad:Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    const/16 v2, 0x578

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/charts/PieChart;->animateY(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V

    .line 87
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V

    return-void
.end method

.method private initListView()V
    .locals 8

    .line 146
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$array;->storage_operation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 149
    new-instance v5, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    invoke-direct {v5}, Lcom/jieli/stream/dv/running2/bean/SettingItem;-><init>()V

    .line 150
    invoke-virtual {v5, v4}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setName(Ljava/lang/String;)V

    .line 152
    sget v6, Lcom/jieli/stream/dv/running2/R$string;->storage_size:I

    invoke-virtual {p0, v6}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-wide/high16 v6, 0x41a9000000000000L    # 2.097152E8

    .line 153
    invoke-static {v6, v7}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getFormatSize(D)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    .line 154
    invoke-virtual {v5, v6}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setType(I)V

    goto :goto_1

    .line 155
    :cond_0
    sget v6, Lcom/jieli/stream/dv/running2/R$string;->storage_path:I

    invoke-virtual {p0, v6}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v6}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    iput-object v5, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->storagePathItem:Lcom/jieli/stream/dv/running2/bean/SettingItem;

    goto :goto_1

    .line 158
    :cond_1
    sget v6, Lcom/jieli/stream/dv/running2/R$string;->clean_cache:I

    invoke-virtual {p0, v6}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getCache()Ljava/lang/String;

    move-result-object v4

    .line 160
    iput-object v5, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->cacheSizeItem:Lcom/jieli/stream/dv/running2/bean/SettingItem;

    goto :goto_1

    :cond_2
    const-string v4, ""

    .line 162
    :goto_1
    invoke-virtual {v5, v4}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setValue(Ljava/lang/Object;)V

    .line 163
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    :cond_3
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    invoke-direct {v0, p0, v1}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    .line 166
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->settingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setData(FF)V
    .locals 3

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    new-instance v1, Lcom/github/mikephil/charting/data/PieEntry;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->remaining_storage:I

    invoke-virtual {p0, v2}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    .line 93
    new-instance p1, Lcom/github/mikephil/charting/data/PieEntry;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->used_storage:I

    invoke-virtual {p0, v2}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p2, v2}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    .line 94
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance p1, Lcom/github/mikephil/charting/data/PieDataSet;

    const-string p2, ""

    invoke-direct {p1, v0, p2}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 97
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/PieDataSet;->setSelectionShift(F)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jieli/stream/dv/running2/R$color;->bg_pie_chart_rest:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jieli/stream/dv/running2/R$color;->bg_pie_chart_used:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors(Ljava/util/List;)V

    .line 102
    new-instance v0, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v0, p1}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    .line 103
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$1;

    invoke-direct {p1, p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$1;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;)V

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/PieData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IValueFormatter;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 110
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/PieData;->setValueTextSize(F)V

    .line 111
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/jieli/stream/dv/running2/R$color;->text_white:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/PieData;->setValueTextColor(I)V

    .line 112
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setEntryLabelTextSize(F)V

    .line 113
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 114
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 115
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    return-void
.end method

.method private showClearCacheDialog()V
    .locals 7

    .line 236
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->cleanCacheDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    if-nez v0, :cond_0

    .line 237
    sget v1, Lcom/jieli/stream/dv/running2/R$string;->dialog_tips:I

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->clean_cache_content:I

    sget v3, Lcom/jieli/stream/dv/running2/R$string;->dialog_cancel:I

    sget v4, Lcom/jieli/stream/dv/running2/R$string;->dialog_confirm:I

    new-instance v5, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$2;

    invoke-direct {v5, p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$2;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;)V

    new-instance v6, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$3;

    invoke-direct {v6, p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity$3;-><init>(Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;)V

    invoke-static/range {v1 .. v6}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->newInstance(IIIILcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnNegativeClickListener;Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog$OnPositiveClickListener;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->cleanCacheDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->cleanCacheDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->cleanCacheDialog:Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "clean_cache"

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 60
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget p1, Lcom/jieli/stream/dv/running2/R$layout;->activity_app_storage_manage:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->setContentView(I)V

    .line 62
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->app_pie_chart:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/charts/PieChart;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 63
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->app_storage_tv:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getExternalMemorySize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->app_storage_view:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->settingListView:Landroid/widget/ListView;

    .line 66
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->initListView()V

    .line 69
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->initChart()V

    .line 70
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getAvailableExternalMemorySize()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getExternalMemorySize()J

    move-result-wide v0

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/AppUtils;->getAvailableExternalMemorySize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->setData(FF)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 75
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseActivity;->onDestroy()V

    .line 76
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->dismissClearCacheDialog()V

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

    .line 214
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    if-eqz p1, :cond_2

    .line 215
    invoke-virtual {p1, p3}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/SettingItem;

    if-eqz p1, :cond_2

    .line 217
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->getName()Ljava/lang/String;

    move-result-object p1

    .line 218
    sget p2, Lcom/jieli/stream/dv/running2/R$string;->storage_size:I

    invoke-virtual {p0, p2}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    sget p2, Lcom/jieli/stream/dv/running2/R$string;->storage_path:I

    invoke-virtual {p0, p2}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 221
    new-instance p1, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-direct {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->browseFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    .line 222
    invoke-virtual {p1, p0}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->setOnSelectResultListener(Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog$OnSelectResultListener;)V

    .line 223
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->browseFileDialog:Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;

    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string p3, "browse_file_dialog"

    invoke-virtual {p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/dialog/BrowseFileDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_1
    sget p2, Lcom/jieli/stream/dv/running2/R$string;->clean_cache:I

    invoke-virtual {p0, p2}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 225
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->showClearCacheDialog()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 3

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    sget-object v0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 126
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ============= newPathName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "================"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_root_path_name"

    invoke-static {v0, v1, p1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v0, p1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->setAppName(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->storagePathItem:Lcom/jieli/stream/dv/running2/bean/SettingItem;

    if-eqz p1, :cond_1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/MainApplication;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/bean/SettingItem;->setValue(Ljava/lang/Object;)V

    .line 135
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->mAdapter:Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/SettingAdapter;->notifyDataSetChanged()V

    .line 137
    :cond_1
    sget p1, Lcom/jieli/stream/dv/running2/R$string;->modify_storage_url_success:I

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public returnBtnClick(Landroid/view/View;)V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/activity/me/AppStorageManageActivity;->onBackPressed()V

    return-void
.end method
