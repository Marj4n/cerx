.class public Lcom/gizthon/camera/adapter/PhotoAdapter;
.super Lcom/gizthon/camera/adapter/BindAdapter;
.source "PhotoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gizthon/camera/adapter/PhotoAdapter$OnChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gizthon/camera/adapter/BindAdapter<",
        "Lcom/gizthon/camera/model/PhotoBean;",
        ">;"
    }
.end annotation


# instance fields
.field private isSelectedStatus:Z

.field private onChangeListener:Lcom/gizthon/camera/adapter/PhotoAdapter$OnChangeListener;


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gizthon/camera/model/PhotoBean;",
            ">;I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/gizthon/camera/adapter/BindAdapter;-><init>(Ljava/util/List;I)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/gizthon/camera/adapter/PhotoAdapter;->isSelectedStatus:Z

    return-void
.end method


# virtual methods
.method public changeSelectedStatus()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gizthon/camera/model/PhotoBean;

    .line 72
    invoke-virtual {v2}, Lcom/gizthon/camera/model/PhotoBean;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {v2, v0}, Lcom/gizthon/camera/model/PhotoBean;->setSelected(Z)V

    :cond_0
    const/16 v3, 0x8

    .line 75
    invoke-virtual {v2, v3}, Lcom/gizthon/camera/model/PhotoBean;->setSelectedCoverVisible(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/gizthon/camera/adapter/PhotoAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifySelectedStatus()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 54
    :goto_0
    iget-object v3, p0, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 55
    iget-object v3, p0, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gizthon/camera/model/PhotoBean;

    .line 56
    invoke-virtual {v3}, Lcom/gizthon/camera/model/PhotoBean;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 61
    :goto_1
    iget-object v3, p0, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 62
    iget-object v3, p0, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gizthon/camera/model/PhotoBean;

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    .line 63
    :goto_2
    invoke-virtual {v3, v4}, Lcom/gizthon/camera/model/PhotoBean;->setSelectedCoverVisible(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    :cond_3
    iput-boolean v2, p0, Lcom/gizthon/camera/adapter/PhotoAdapter;->isSelectedStatus:Z

    .line 66
    iget-object v0, p0, Lcom/gizthon/camera/adapter/PhotoAdapter;->onChangeListener:Lcom/gizthon/camera/adapter/PhotoAdapter$OnChangeListener;

    invoke-interface {v0, v2}, Lcom/gizthon/camera/adapter/PhotoAdapter$OnChangeListener;->onCheck(Z)V

    return-void
.end method

.method public onClickPicture(Landroid/view/View;Lcom/gizthon/camera/model/PhotoBean;)V
    .locals 5

    .line 21
    iget-boolean v0, p0, Lcom/gizthon/camera/adapter/PhotoAdapter;->isSelectedStatus:Z

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p2}, Lcom/gizthon/camera/model/PhotoBean;->isSelected()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/gizthon/camera/model/PhotoBean;->setSelected(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/gizthon/camera/adapter/PhotoAdapter;->notifySelectedStatus()V

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 29
    :goto_0
    iget-object v3, p0, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 30
    iget-object v3, p0, Lcom/gizthon/camera/adapter/PhotoAdapter;->dataModelList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gizthon/camera/model/PhotoBean;

    .line 31
    invoke-virtual {v3}, Lcom/gizthon/camera/model/PhotoBean;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p2}, Lcom/gizthon/camera/model/PhotoBean;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/gizthon/camera/model/PhotoBean;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p2}, Lcom/gizthon/camera/model/PhotoBean;->getVideoVisible()I

    move-result v1

    if-nez v1, :cond_3

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lcom/gizthon/camera/model/PhotoBean;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gizthon/camera/activity/PreviewVideoActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 41
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v2}, Lcom/gizthon/camera/activity/PreviewPhotoActivity;->start(Landroid/content/Context;Ljava/util/ArrayList;I)V

    return-void
.end method

.method public onLongClickPicture(Landroid/view/View;Lcom/gizthon/camera/model/PhotoBean;)Z
    .locals 1

    .line 46
    invoke-virtual {p2}, Lcom/gizthon/camera/model/PhotoBean;->isSelected()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/gizthon/camera/model/PhotoBean;->setSelected(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/gizthon/camera/adapter/PhotoAdapter;->notifySelectedStatus()V

    return v0
.end method

.method public setOnChangeListener(Lcom/gizthon/camera/adapter/PhotoAdapter$OnChangeListener;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/gizthon/camera/adapter/PhotoAdapter;->onChangeListener:Lcom/gizthon/camera/adapter/PhotoAdapter$OnChangeListener;

    return-void
.end method
