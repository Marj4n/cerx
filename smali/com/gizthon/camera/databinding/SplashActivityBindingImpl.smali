.class public Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;
.super Lcom/gizthon/camera/databinding/SplashActivityBinding;
.source "SplashActivityBindingImpl.java"

# interfaces
.implements Lcom/gizthon/camera/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback1:Landroid/view/View$OnClickListener;

.field private final mCallback2:Landroid/view/View$OnClickListener;

.field private final mCallback3:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09009f

    const/4 v2, 0x4

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 34
    sget-object v0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x4

    .line 37
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/serenegiant/usb/widget/UVCCameraTextureView;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const/4 v9, 0x2

    aget-object v1, p3, v9

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    const/4 v10, 0x3

    aget-object v1, p3, v10

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/gizthon/camera/databinding/SplashActivityBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/serenegiant/usb/widget/UVCCameraTextureView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v1, -0x1

    .line 177
    iput-wide v1, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 43
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    .line 44
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->tvCamera:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->tvConnect:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->tvHelp:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 50
    new-instance p1, Lcom/gizthon/camera/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v10}, Lcom/gizthon/camera/generated/callback/OnClickListener;-><init>(Lcom/gizthon/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mCallback3:Landroid/view/View$OnClickListener;

    .line 51
    new-instance p1, Lcom/gizthon/camera/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/gizthon/camera/generated/callback/OnClickListener;-><init>(Lcom/gizthon/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    .line 52
    new-instance p1, Lcom/gizthon/camera/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v9}, Lcom/gizthon/camera/generated/callback/OnClickListener;-><init>(Lcom/gizthon/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    .line 53
    invoke-virtual {p0}, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mEventHandler:Lcom/gizthon/camera/SplashActivity;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_6

    .line 136
    invoke-virtual {p1}, Lcom/gizthon/camera/SplashActivity;->onClickHelp()V

    goto :goto_0

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mEventHandler:Lcom/gizthon/camera/SplashActivity;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_6

    .line 170
    invoke-virtual {p1}, Lcom/gizthon/camera/SplashActivity;->onClickUsb()V

    goto :goto_0

    .line 143
    :cond_4
    iget-object p1, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mEventHandler:Lcom/gizthon/camera/SplashActivity;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_6

    .line 153
    invoke-virtual {p1}, Lcom/gizthon/camera/SplashActivity;->onClickGallery()V

    :cond_6
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 6

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-wide v0, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 107
    iput-wide v2, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v4, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mEventHandler:Lcom/gizthon/camera/SplashActivity;

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 114
    iget-object v0, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->tvCamera:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->tvConnect:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->tvHelp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mCallback3:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 108
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-wide v0, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 68
    monitor-exit p0

    return v0

    .line 70
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

    .line 58
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 59
    :try_start_0
    iput-wide v0, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mDirtyFlags:J

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p0}, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 60
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setEventHandler(Lcom/gizthon/camera/SplashActivity;)V
    .locals 4

    .line 87
    iput-object p1, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mEventHandler:Lcom/gizthon/camera/SplashActivity;

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-wide v0, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->mDirtyFlags:J

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    .line 91
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->notifyPropertyChanged(I)V

    .line 92
    invoke-super {p0}, Lcom/gizthon/camera/databinding/SplashActivityBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 90
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

    .line 78
    check-cast p2, Lcom/gizthon/camera/SplashActivity;

    invoke-virtual {p0, p2}, Lcom/gizthon/camera/databinding/SplashActivityBindingImpl;->setEventHandler(Lcom/gizthon/camera/SplashActivity;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
