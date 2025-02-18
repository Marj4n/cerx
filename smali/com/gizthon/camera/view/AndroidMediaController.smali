.class public Lcom/gizthon/camera/view/AndroidMediaController;
.super Lcom/gizthon/camera/view/PlayerMediaController;
.source "AndroidMediaController.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/widget/media/IMediaController;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mShowOnceArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/gizthon/camera/view/PlayerMediaController;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gizthon/camera/view/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/view/AndroidMediaController;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/gizthon/camera/view/PlayerMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/gizthon/camera/view/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/view/AndroidMediaController;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/gizthon/camera/view/PlayerMediaController;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/gizthon/camera/view/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p0, p1}, Lcom/gizthon/camera/view/AndroidMediaController;->initView(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .line 57
    invoke-super {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->hide()V

    .line 58
    iget-object v0, p0, Lcom/gizthon/camera/view/AndroidMediaController;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/gizthon/camera/view/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    .line 61
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/gizthon/camera/view/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected initView(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setAnchorView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/gizthon/camera/view/PlayerMediaController;->setAnchorView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setLiveRoomCount(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSupportActionBar(Landroid/app/ActionBar;)V
    .locals 1

    .line 40
    iput-object p1, p0, Lcom/gizthon/camera/view/AndroidMediaController;->mActionBar:Landroid/app/ActionBar;

    .line 41
    invoke-virtual {p0}, Lcom/gizthon/camera/view/AndroidMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/gizthon/camera/view/PlayerMediaController;->show()V

    .line 51
    iget-object v0, p0, Lcom/gizthon/camera/view/AndroidMediaController;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    :cond_0
    return-void
.end method

.method public showOnce(Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/gizthon/camera/view/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {p0}, Lcom/gizthon/camera/view/AndroidMediaController;->show()V

    return-void
.end method
