.class public Lcom/gizthon/camera/model/GalleryViewModel;
.super Ljava/lang/Object;
.source "GalleryViewModel.java"

# interfaces
.implements Landroidx/databinding/Observable;


# instance fields
.field private editVisible:I

.field private transient propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 12
    iput v0, p0, Lcom/gizthon/camera/model/GalleryViewModel;->editVisible:I

    .line 13
    new-instance v0, Landroidx/databinding/PropertyChangeRegistry;

    invoke-direct {v0}, Landroidx/databinding/PropertyChangeRegistry;-><init>()V

    iput-object v0, p0, Lcom/gizthon/camera/model/GalleryViewModel;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    return-void
.end method

.method private declared-synchronized notifyChange(I)V
    .locals 1

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/gizthon/camera/model/GalleryViewModel;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Landroidx/databinding/PropertyChangeRegistry;

    invoke-direct {v0}, Landroidx/databinding/PropertyChangeRegistry;-><init>()V

    iput-object v0, p0, Lcom/gizthon/camera/model/GalleryViewModel;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/gizthon/camera/model/GalleryViewModel;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    invoke-virtual {v0, p0, p1}, Landroidx/databinding/PropertyChangeRegistry;->notifyChange(Landroidx/databinding/Observable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    .locals 1

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/gizthon/camera/model/GalleryViewModel;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroidx/databinding/PropertyChangeRegistry;

    invoke-direct {v0}, Landroidx/databinding/PropertyChangeRegistry;-><init>()V

    iput-object v0, p0, Lcom/gizthon/camera/model/GalleryViewModel;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/gizthon/camera/model/GalleryViewModel;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    invoke-virtual {v0, p1}, Landroidx/databinding/PropertyChangeRegistry;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getEditVisible()I
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 22
    iget v0, p0, Lcom/gizthon/camera/model/GalleryViewModel;->editVisible:I

    return v0
.end method

.method public declared-synchronized removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    .locals 1

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/gizthon/camera/model/GalleryViewModel;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/gizthon/camera/model/GalleryViewModel;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    invoke-virtual {v0, p1}, Landroidx/databinding/PropertyChangeRegistry;->remove(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEditVisible(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/gizthon/camera/model/GalleryViewModel;->editVisible:I

    const/4 p1, 0x2

    .line 17
    invoke-direct {p0, p1}, Lcom/gizthon/camera/model/GalleryViewModel;->notifyChange(I)V

    return-void
.end method
