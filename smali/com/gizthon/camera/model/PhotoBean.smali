.class public Lcom/gizthon/camera/model/PhotoBean;
.super Ljava/lang/Object;
.source "PhotoBean.java"

# interfaces
.implements Landroidx/databinding/Observable;


# instance fields
.field private aviPngName:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private index:I

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private transient propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

.field private selected:Z

.field private selectedCoverVisible:I

.field private videoVisible:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 17
    iput v0, p0, Lcom/gizthon/camera/model/PhotoBean;->selectedCoverVisible:I

    .line 23
    iput v0, p0, Lcom/gizthon/camera/model/PhotoBean;->videoVisible:I

    .line 24
    new-instance v0, Landroidx/databinding/PropertyChangeRegistry;

    invoke-direct {v0}, Landroidx/databinding/PropertyChangeRegistry;-><init>()V

    iput-object v0, p0, Lcom/gizthon/camera/model/PhotoBean;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    return-void
.end method

.method private declared-synchronized notifyChange(I)V
    .locals 1

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/gizthon/camera/model/PhotoBean;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Landroidx/databinding/PropertyChangeRegistry;

    invoke-direct {v0}, Landroidx/databinding/PropertyChangeRegistry;-><init>()V

    iput-object v0, p0, Lcom/gizthon/camera/model/PhotoBean;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/gizthon/camera/model/PhotoBean;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    invoke-virtual {v0, p0, p1}, Landroidx/databinding/PropertyChangeRegistry;->notifyChange(Landroidx/databinding/Observable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
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

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/gizthon/camera/model/PhotoBean;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Landroidx/databinding/PropertyChangeRegistry;

    invoke-direct {v0}, Landroidx/databinding/PropertyChangeRegistry;-><init>()V

    iput-object v0, p0, Lcom/gizthon/camera/model/PhotoBean;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/gizthon/camera/model/PhotoBean;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    invoke-virtual {v0, p1}, Landroidx/databinding/PropertyChangeRegistry;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAviPngName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/gizthon/camera/model/PhotoBean;->aviPngName:Ljava/lang/String;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/gizthon/camera/model/PhotoBean;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIndex()I
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 96
    iget v0, p0, Lcom/gizthon/camera/model/PhotoBean;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/gizthon/camera/model/PhotoBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/gizthon/camera/model/PhotoBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedCoverVisible()I
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 66
    iget v0, p0, Lcom/gizthon/camera/model/PhotoBean;->selectedCoverVisible:I

    return v0
.end method

.method public getVideoVisible()I
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 61
    iget v0, p0, Lcom/gizthon/camera/model/PhotoBean;->videoVisible:I

    return v0
.end method

.method public isSelected()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 71
    iget-boolean v0, p0, Lcom/gizthon/camera/model/PhotoBean;->selected:Z

    return v0
.end method

.method public declared-synchronized removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    .locals 1

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/gizthon/camera/model/PhotoBean;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/gizthon/camera/model/PhotoBean;->propertyChangeRegistry:Landroidx/databinding/PropertyChangeRegistry;

    invoke-virtual {v0, p1}, Landroidx/databinding/PropertyChangeRegistry;->remove(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAviPngName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/gizthon/camera/model/PhotoBean;->aviPngName:Ljava/lang/String;

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/gizthon/camera/model/PhotoBean;->bitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 29
    invoke-direct {p0, p1}, Lcom/gizthon/camera/model/PhotoBean;->notifyChange(I)V

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/gizthon/camera/model/PhotoBean;->index:I

    const/4 p1, 0x4

    .line 101
    invoke-direct {p0, p1}, Lcom/gizthon/camera/model/PhotoBean;->notifyChange(I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/gizthon/camera/model/PhotoBean;->name:Ljava/lang/String;

    const/4 p1, 0x5

    .line 91
    invoke-direct {p0, p1}, Lcom/gizthon/camera/model/PhotoBean;->notifyChange(I)V

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/gizthon/camera/model/PhotoBean;->path:Ljava/lang/String;

    const/4 p1, 0x6

    .line 81
    invoke-direct {p0, p1}, Lcom/gizthon/camera/model/PhotoBean;->notifyChange(I)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/gizthon/camera/model/PhotoBean;->selected:Z

    const/4 p1, 0x7

    .line 47
    invoke-direct {p0, p1}, Lcom/gizthon/camera/model/PhotoBean;->notifyChange(I)V

    return-void
.end method

.method public setSelectedCoverVisible(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/gizthon/camera/model/PhotoBean;->selectedCoverVisible:I

    const/16 p1, 0x8

    .line 52
    invoke-direct {p0, p1}, Lcom/gizthon/camera/model/PhotoBean;->notifyChange(I)V

    return-void
.end method

.method public setVideoVisible(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/gizthon/camera/model/PhotoBean;->videoVisible:I

    const/16 p1, 0x9

    .line 57
    invoke-direct {p0, p1}, Lcom/gizthon/camera/model/PhotoBean;->notifyChange(I)V

    return-void
.end method
