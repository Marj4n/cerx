.class public Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;
.super Lcom/gizthon/camera/databinding/GalleryActivityBinding;
.source "GalleryActivityBindingImpl.java"

# interfaces
.implements Lcom/gizthon/camera/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback10:Landroid/view/View$OnClickListener;

.field private final mCallback11:Landroid/view/View$OnClickListener;

.field private final mCallback8:Landroid/view/View$OnClickListener;

.field private final mCallback9:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView2:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090318

    const/4 v2, 0x5

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090260

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 39
    sget-object v0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x1

    .line 42
    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v2, p3, v1

    move-object v7, v2

    check-cast v7, Landroid/widget/CheckBox;

    const/4 v2, 0x6

    aget-object v2, p3, v2

    move-object v8, v2

    check-cast v8, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x5

    aget-object v2, p3, v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/tabs/TabLayout;

    const/4 v11, 0x4

    aget-object v2, p3, v11

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/gizthon/camera/databinding/GalleryActivityBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/CheckBox;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;)V

    const-wide/16 v2, -0x1

    .line 252
    iput-wide v2, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mDirtyFlags:J

    .line 49
    iget-object p1, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->back:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object p1, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->done:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 51
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    .line 52
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 53
    aget-object p3, p3, p1

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mboundView2:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object p3, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->tvComplete:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0, p2}, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 58
    new-instance p2, Lcom/gizthon/camera/generated/callback/OnClickListener;

    invoke-direct {p2, p0, v1}, Lcom/gizthon/camera/generated/callback/OnClickListener;-><init>(Lcom/gizthon/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object p2, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mCallback10:Landroid/view/View$OnClickListener;

    .line 59
    new-instance p2, Lcom/gizthon/camera/generated/callback/OnClickListener;

    invoke-direct {p2, p0, v11}, Lcom/gizthon/camera/generated/callback/OnClickListener;-><init>(Lcom/gizthon/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object p2, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mCallback11:Landroid/view/View$OnClickListener;

    .line 60
    new-instance p2, Lcom/gizthon/camera/generated/callback/OnClickListener;

    invoke-direct {p2, p0, p1}, Lcom/gizthon/camera/generated/callback/OnClickListener;-><init>(Lcom/gizthon/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object p2, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mCallback9:Landroid/view/View$OnClickListener;

    .line 61
    new-instance p1, Lcom/gizthon/camera/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/gizthon/camera/generated/callback/OnClickListener;-><init>(Lcom/gizthon/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mCallback8:Landroid/view/View$OnClickListener;

    .line 62
    invoke-virtual {p0}, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeViewModel(Lcom/gizthon/camera/model/GalleryViewModel;I)Z
    .locals 4

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mDirtyFlags:J

    .line 128
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 132
    monitor-enter p0

    .line 133
    :try_start_1
    iget-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mDirtyFlags:J

    .line 134
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mEventHandler:Lcom/gizthon/camera/activity/GalleryListActivity;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_8

    .line 211
    invoke-virtual {p1}, Lcom/gizthon/camera/activity/GalleryListActivity;->onClickComplete()V

    goto :goto_0

    .line 184
    :cond_2
    iget-object p1, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mEventHandler:Lcom/gizthon/camera/activity/GalleryListActivity;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_8

    .line 194
    invoke-virtual {p1}, Lcom/gizthon/camera/activity/GalleryListActivity;->onClickDone()V

    goto :goto_0

    .line 218
    :cond_4
    iget-object p1, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mEventHandler:Lcom/gizthon/camera/activity/GalleryListActivity;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_8

    .line 228
    invoke-virtual {p1}, Lcom/gizthon/camera/activity/GalleryListActivity;->onClickDelete()V

    goto :goto_0

    .line 235
    :cond_6
    iget-object p1, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mEventHandler:Lcom/gizthon/camera/activity/GalleryListActivity;

    if-eqz p1, :cond_7

    const/4 p2, 0x1

    :cond_7
    if-eqz p2, :cond_8

    .line 245
    invoke-virtual {p1}, Lcom/gizthon/camera/activity/GalleryListActivity;->onClickBack()V

    :cond_8
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 9

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 145
    iput-wide v2, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mDirtyFlags:J

    .line 146
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 148
    iget-object v5, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mEventHandler:Lcom/gizthon/camera/activity/GalleryListActivity;

    .line 149
    iget-object v5, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mViewModel:Lcom/gizthon/camera/model/GalleryViewModel;

    const-wide/16 v6, 0xd

    and-long/2addr v6, v0

    cmp-long v8, v6, v2

    if-eqz v8, :cond_0

    if-eqz v5, :cond_0

    .line 157
    invoke-virtual {v5}, Lcom/gizthon/camera/model/GalleryViewModel;->getEditVisible()I

    move-result v4

    :cond_0
    const-wide/16 v5, 0x8

    and-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 164
    iget-object v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->back:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mCallback8:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->done:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mCallback10:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mboundView2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mCallback9:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->tvComplete:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mCallback11:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v8, :cond_2

    .line 172
    iget-object v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->done:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mboundView2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->tvComplete:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 146
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 77
    monitor-exit p0

    return v0

    .line 79
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

    .line 67
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 68
    :try_start_0
    iput-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mDirtyFlags:J

    .line 69
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {p0}, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 69
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

    .line 120
    :cond_0
    check-cast p2, Lcom/gizthon/camera/model/GalleryViewModel;

    invoke-direct {p0, p2, p3}, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->onChangeViewModel(Lcom/gizthon/camera/model/GalleryViewModel;I)Z

    move-result p1

    return p1
.end method

.method public setEventHandler(Lcom/gizthon/camera/activity/GalleryListActivity;)V
    .locals 4

    .line 99
    iput-object p1, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mEventHandler:Lcom/gizthon/camera/activity/GalleryListActivity;

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mDirtyFlags:J

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    .line 103
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 104
    invoke-super {p0}, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 102
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

    .line 87
    check-cast p2, Lcom/gizthon/camera/activity/GalleryListActivity;

    invoke-virtual {p0, p2}, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->setEventHandler(Lcom/gizthon/camera/activity/GalleryListActivity;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ne v0, p1, :cond_1

    .line 90
    check-cast p2, Lcom/gizthon/camera/model/GalleryViewModel;

    invoke-virtual {p0, p2}, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->setViewModel(Lcom/gizthon/camera/model/GalleryViewModel;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setViewModel(Lcom/gizthon/camera/model/GalleryViewModel;)V
    .locals 4

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 108
    iput-object p1, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mViewModel:Lcom/gizthon/camera/model/GalleryViewModel;

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->mDirtyFlags:J

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xa

    .line 112
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/databinding/GalleryActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 113
    invoke-super {p0}, Lcom/gizthon/camera/databinding/GalleryActivityBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 111
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
