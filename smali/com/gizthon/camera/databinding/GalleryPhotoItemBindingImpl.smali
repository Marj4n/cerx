.class public Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;
.super Lcom/gizthon/camera/databinding/GalleryPhotoItemBinding;
.source "GalleryPhotoItemBindingImpl.java"

# interfaces
.implements Lcom/gizthon/camera/generated/callback/OnLongClickListener$Listener;
.implements Lcom/gizthon/camera/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback4:Landroid/view/View$OnClickListener;

.field private final mCallback5:Landroid/view/View$OnLongClickListener;

.field private final mCallback6:Landroid/view/View$OnClickListener;

.field private final mCallback7:Landroid/view/View$OnLongClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView1:Landroid/widget/ImageView;

.field private final mboundView2:Landroid/widget/ImageView;

.field private final mboundView3:Landroid/widget/CheckBox;

.field private mboundView3androidCheckedAttrChanged:Landroidx/databinding/InverseBindingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 67
    sget-object v0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/gizthon/camera/databinding/GalleryPhotoItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 39
    new-instance p1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl$1;

    invoke-direct {p1, p0}, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl$1;-><init>(Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;)V

    iput-object p1, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mboundView3androidCheckedAttrChanged:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v1, -0x1

    .line 347
    iput-wide v1, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 72
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 74
    aget-object p1, p3, v0

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mboundView1:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 76
    aget-object v2, p3, p1

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mboundView2:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x3

    .line 78
    aget-object p3, p3, v2

    check-cast p3, Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mboundView3:Landroid/widget/CheckBox;

    .line 79
    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 82
    new-instance p2, Lcom/gizthon/camera/generated/callback/OnLongClickListener;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lcom/gizthon/camera/generated/callback/OnLongClickListener;-><init>(Lcom/gizthon/camera/generated/callback/OnLongClickListener$Listener;I)V

    iput-object p2, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mCallback7:Landroid/view/View$OnLongClickListener;

    .line 83
    new-instance p2, Lcom/gizthon/camera/generated/callback/OnLongClickListener;

    invoke-direct {p2, p0, p1}, Lcom/gizthon/camera/generated/callback/OnLongClickListener;-><init>(Lcom/gizthon/camera/generated/callback/OnLongClickListener$Listener;I)V

    iput-object p2, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mCallback5:Landroid/view/View$OnLongClickListener;

    .line 84
    new-instance p1, Lcom/gizthon/camera/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v2}, Lcom/gizthon/camera/generated/callback/OnClickListener;-><init>(Lcom/gizthon/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mCallback6:Landroid/view/View$OnClickListener;

    .line 85
    new-instance p1, Lcom/gizthon/camera/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/gizthon/camera/generated/callback/OnClickListener;-><init>(Lcom/gizthon/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mCallback4:Landroid/view/View$OnClickListener;

    .line 86
    invoke-virtual {p0}, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->invalidateAll()V

    return-void
.end method

.method static synthetic access$000(Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;)Landroid/widget/CheckBox;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mboundView3:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private onChangeViewModel(Lcom/gizthon/camera/model/PhotoBean;I)Z
    .locals 4

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    .line 152
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    .line 156
    monitor-enter p0

    .line 157
    :try_start_1
    iget-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    .line 158
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    .line 162
    monitor-enter p0

    .line 163
    :try_start_2
    iget-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    .line 164
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    .line 168
    monitor-enter p0

    .line 169
    :try_start_3
    iget-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    .line 170
    monitor-exit p0

    return p1

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mEventHandler:Lcom/gizthon/camera/adapter/PhotoAdapter;

    .line 309
    iget-object v2, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mViewModel:Lcom/gizthon/camera/model/PhotoBean;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_4

    .line 319
    invoke-virtual {p1, p2, v2}, Lcom/gizthon/camera/adapter/PhotoAdapter;->onClickPicture(Landroid/view/View;Lcom/gizthon/camera/model/PhotoBean;)V

    goto :goto_0

    .line 326
    :cond_2
    iget-object p1, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mEventHandler:Lcom/gizthon/camera/adapter/PhotoAdapter;

    .line 330
    iget-object v2, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mViewModel:Lcom/gizthon/camera/model/PhotoBean;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 340
    invoke-virtual {p1, p2, v2}, Lcom/gizthon/camera/adapter/PhotoAdapter;->onClickPicture(Landroid/view/View;Lcom/gizthon/camera/model/PhotoBean;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final _internalCallbackOnLongClick(ILandroid/view/View;)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return v2

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mEventHandler:Lcom/gizthon/camera/adapter/PhotoAdapter;

    .line 258
    iget-object v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mViewModel:Lcom/gizthon/camera/model/PhotoBean;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 268
    invoke-virtual {p1, p2, v0}, Lcom/gizthon/camera/adapter/PhotoAdapter;->onLongClickPicture(Landroid/view/View;Lcom/gizthon/camera/model/PhotoBean;)Z

    move-result v2

    :cond_2
    return v2

    .line 277
    :cond_3
    iget-object p1, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mEventHandler:Lcom/gizthon/camera/adapter/PhotoAdapter;

    .line 281
    iget-object v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mViewModel:Lcom/gizthon/camera/model/PhotoBean;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 291
    invoke-virtual {p1, p2, v0}, Lcom/gizthon/camera/adapter/PhotoAdapter;->onLongClickPicture(Landroid/view/View;Lcom/gizthon/camera/model/PhotoBean;)Z

    move-result v2

    :cond_5
    return v2
.end method

.method protected executeBindings()V
    .locals 19

    move-object/from16 v1, p0

    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    iget-wide v2, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 181
    iput-wide v4, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    .line 182
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v0, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mEventHandler:Lcom/gizthon/camera/adapter/PhotoAdapter;

    .line 187
    iget-object v0, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mViewModel:Lcom/gizthon/camera/model/PhotoBean;

    const-wide/16 v6, 0x3d

    and-long/2addr v6, v2

    const-wide/16 v8, 0x29

    const-wide/16 v10, 0x31

    const-wide/16 v12, 0x25

    const/4 v14, 0x0

    cmp-long v15, v6, v4

    if-eqz v15, :cond_3

    and-long v6, v2, v12

    cmp-long v15, v6, v4

    if-eqz v15, :cond_0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/gizthon/camera/model/PhotoBean;->getVideoVisible()I

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    and-long v15, v2, v10

    cmp-long v7, v15, v4

    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Lcom/gizthon/camera/model/PhotoBean;->getSelectedCoverVisible()I

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    and-long v15, v2, v8

    cmp-long v17, v15, v4

    if-eqz v17, :cond_2

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {v0}, Lcom/gizthon/camera/model/PhotoBean;->isSelected()Z

    move-result v14

    move/from16 v18, v14

    move v14, v6

    move/from16 v6, v18

    goto :goto_2

    :cond_2
    move v14, v6

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    const-wide/16 v15, 0x20

    and-long/2addr v15, v2

    cmp-long v17, v15, v4

    if-eqz v17, :cond_4

    .line 218
    iget-object v15, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mboundView1:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mCallback4:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v10, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mboundView1:Landroid/widget/ImageView;

    iget-object v11, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mCallback5:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 220
    iget-object v10, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mboundView2:Landroid/widget/ImageView;

    iget-object v11, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mCallback6:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v10, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mboundView2:Landroid/widget/ImageView;

    iget-object v11, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mCallback7:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 222
    iget-object v10, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mboundView3:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    check-cast v11, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v15, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mboundView3androidCheckedAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v10, v11, v15}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setListeners(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V

    :cond_4
    const-wide/16 v10, 0x21

    and-long/2addr v10, v2

    cmp-long v15, v10, v4

    if-eqz v15, :cond_5

    .line 227
    iget-object v10, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mboundView1:Landroid/widget/ImageView;

    invoke-static {v10, v0}, Lcom/gizthon/camera/adapter/BindAdapter;->localSrc(Landroid/widget/ImageView;Lcom/gizthon/camera/model/PhotoBean;)V

    :cond_5
    and-long v10, v2, v12

    cmp-long v0, v10, v4

    if-eqz v0, :cond_6

    .line 232
    iget-object v0, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mboundView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    and-long/2addr v8, v2

    cmp-long v0, v8, v4

    if-eqz v0, :cond_7

    .line 237
    iget-object v0, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mboundView3:Landroid/widget/CheckBox;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    :cond_7
    const-wide/16 v8, 0x31

    and-long/2addr v2, v8

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    .line 242
    iget-object v0, v1, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mboundView3:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    .line 182
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 101
    monitor-exit p0

    return v0

    .line 103
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 91
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 92
    :try_start_0
    iput-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {p0}, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 93
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 144
    :cond_0
    check-cast p2, Lcom/gizthon/camera/model/PhotoBean;

    invoke-direct {p0, p2, p3}, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->onChangeViewModel(Lcom/gizthon/camera/model/PhotoBean;I)Z

    move-result p1

    return p1
.end method

.method public setEventHandler(Lcom/gizthon/camera/adapter/PhotoAdapter;)V
    .locals 4

    .line 123
    iput-object p1, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mEventHandler:Lcom/gizthon/camera/adapter/PhotoAdapter;

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    .line 127
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->notifyPropertyChanged(I)V

    .line 128
    invoke-super {p0}, Lcom/gizthon/camera/databinding/GalleryPhotoItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 126
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 111
    check-cast p2, Lcom/gizthon/camera/adapter/PhotoAdapter;

    invoke-virtual {p0, p2}, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->setEventHandler(Lcom/gizthon/camera/adapter/PhotoAdapter;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ne v0, p1, :cond_1

    .line 114
    check-cast p2, Lcom/gizthon/camera/model/PhotoBean;

    invoke-virtual {p0, p2}, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->setViewModel(Lcom/gizthon/camera/model/PhotoBean;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setViewModel(Lcom/gizthon/camera/model/PhotoBean;)V
    .locals 4

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, v0, p1}, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 132
    iput-object p1, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mViewModel:Lcom/gizthon/camera/model/PhotoBean;

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iget-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->mDirtyFlags:J

    .line 135
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xa

    .line 136
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/databinding/GalleryPhotoItemBindingImpl;->notifyPropertyChanged(I)V

    .line 137
    invoke-super {p0}, Lcom/gizthon/camera/databinding/GalleryPhotoItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 135
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
