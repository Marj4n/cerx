.class public Lcom/serenegiant/mediastore/MediaStoreImageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "MediaStoreImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyImageLoader;,
        Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ImageLoaderDrawable;,
        Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyDataSetObserver;,
        Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ChangeObserver;,
        Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyAsyncQueryHandler;,
        Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mChangeObserver:Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ChangeObserver;

.field private final mCr:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDataValid:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayoutId:I

.field private final mQueryHandler:Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyAsyncQueryHandler;

.field protected mRowIDColumn:I

.field private mSelection:Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mShowTitle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .line 70
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 60
    sget-object v0, Lcom/serenegiant/mediastore/MediaStoreHelper;->SELECTIONS:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mSelection:Ljava/lang/String;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mSelectionArgs:[Ljava/lang/String;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    iput p2, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mLayoutId:I

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mCr:Landroid/content/ContentResolver;

    .line 75
    new-instance p1, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyAsyncQueryHandler;

    iget-object p2, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mCr:Landroid/content/ContentResolver;

    invoke-direct {p1, p2, p0}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/serenegiant/mediastore/MediaStoreImageAdapter;)V

    iput-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mQueryHandler:Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyAsyncQueryHandler;

    if-eqz p3, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->startQuery()V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/serenegiant/mediastore/MediaStoreImageAdapter;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mSelection:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/serenegiant/mediastore/MediaStoreImageAdapter;)[Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mSelectionArgs:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected changeCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 180
    invoke-virtual {p0, p1}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method protected createLoaderDrawable(Landroid/content/ContentResolver;Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;)Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;
    .locals 2

    .line 232
    new-instance v0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ImageLoaderDrawable;

    iget v1, p2, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->width:I

    iget p2, p2, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->height:I

    invoke-direct {v0, p1, v1, p2}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ImageLoaderDrawable;-><init>(Landroid/content/ContentResolver;II)V

    return-object v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 138
    instance-of p2, p3, Landroid/view/View;

    if-eqz p2, :cond_0

    .line 139
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 84
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getCursor(I)Landroid/database/Cursor;
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 189
    iget-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mCursor:Landroid/database/Cursor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    .line 146
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getItemPositionFromID(J)I
    .locals 7

    .line 152
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/serenegiant/mediastore/MediaStoreHelper;->QUERY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/serenegiant/mediastore/MediaStoreHelper;->PROJ_MEDIA:[Ljava/lang/String;

    iget-object v3, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 155
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 157
    :goto_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    move v1, v3

    goto :goto_1

    .line 162
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_3
    :goto_2
    return v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ViewHolder;

    if-nez p1, :cond_0

    .line 108
    new-instance p1, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ViewHolder;-><init>(Lcom/serenegiant/mediastore/MediaStoreImageAdapter$1;)V

    .line 110
    :cond_0
    sget v1, Lcom/serenegiant/common/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 111
    sget v3, Lcom/serenegiant/common/R$id;->thumbnail:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p1, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 112
    iget-object v4, p1, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ViewHolder;->info:Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    if-nez v4, :cond_1

    .line 113
    new-instance v4, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    invoke-direct {v4}, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;-><init>()V

    iput-object v4, p1, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ViewHolder;->info:Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    .line 115
    :cond_1
    iget-object v4, p1, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ViewHolder;->info:Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    invoke-virtual {p0, p2}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->loadFromCursor(Landroid/database/Cursor;)Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    .line 117
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 118
    instance-of v4, p2, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;

    if-nez v4, :cond_2

    .line 119
    iget-object p2, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mCr:Landroid/content/ContentResolver;

    iget-object v4, p1, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ViewHolder;->info:Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    invoke-virtual {p0, p2, v4}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->createLoaderDrawable(Landroid/content/ContentResolver;Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;)Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;

    move-result-object p2

    .line 120
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_2
    check-cast p2, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;

    iget-object v3, p1, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ViewHolder;->info:Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    iget v3, v3, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->mediaType:I

    iget-object v4, p1, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ViewHolder;->info:Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    iget-wide v4, v4, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->id:J

    invoke-virtual {p2, v3, v2, v4, v5}, Lcom/serenegiant/mediastore/MediaStoreHelper$LoaderDrawable;->startLoad(IIJ)V

    if-eqz v1, :cond_4

    .line 124
    iget-boolean p2, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mShowTitle:Z

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-boolean p2, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mShowTitle:Z

    if-eqz p2, :cond_4

    .line 126
    iget-object p1, p1, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ViewHolder;->info:Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;

    iget-object p1, p1, Lcom/serenegiant/mediastore/MediaStoreHelper$MediaInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    return-void
.end method

.method public startQuery()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mQueryHandler:Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyAsyncQueryHandler;

    invoke-virtual {v0}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter$MyAsyncQueryHandler;->requery()V

    return-void
.end method

.method protected swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz v0, :cond_2

    .line 201
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mChangeObserver:Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ChangeObserver;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 204
    :cond_2
    iput-object p1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_5

    .line 206
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mChangeObserver:Lcom/serenegiant/mediastore/MediaStoreImageAdapter$ChangeObserver;

    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 207
    :cond_3
    iget-object v1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_4
    const-string v1, "_id"

    .line 208
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mRowIDColumn:I

    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mDataValid:Z

    .line 211
    invoke-virtual {p0}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    .line 213
    iput p1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mRowIDColumn:I

    const/4 p1, 0x0

    .line 214
    iput-boolean p1, p0, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->mDataValid:Z

    .line 216
    invoke-virtual {p0}, Lcom/serenegiant/mediastore/MediaStoreImageAdapter;->notifyDataSetInvalidated()V

    :goto_0
    return-object v0
.end method
