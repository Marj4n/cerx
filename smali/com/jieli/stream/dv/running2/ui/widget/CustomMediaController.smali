.class public Lcom/jieli/stream/dv/running2/ui/widget/CustomMediaController;
.super Landroid/widget/MediaController;
.source "CustomMediaController.java"

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
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/CustomMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/CustomMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/CustomMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .line 60
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    .line 61
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/CustomMediaController;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/CustomMediaController;->mShowOnceArray:Ljava/util/ArrayList;

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

    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/CustomMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setSupportActionBar(Landroid/app/ActionBar;)V
    .locals 1

    .line 36
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/CustomMediaController;->mActionBar:Landroid/app/ActionBar;

    .line 37
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/CustomMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/widget/MediaController;->show()V

    .line 54
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/CustomMediaController;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    :cond_0
    return-void
.end method

.method public showOnce(Landroid/view/View;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/CustomMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/widget/CustomMediaController;->show()V

    return-void
.end method
