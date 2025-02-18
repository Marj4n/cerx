.class public Lcom/gizthon/camera/adapter/BindAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BindAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gizthon/camera/adapter/BindAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field public itemRowBinding:Landroidx/databinding/ViewDataBinding;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;)V
    .locals 1

    .line 61
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 62
    iput-object p1, p0, Lcom/gizthon/camera/adapter/BindAdapter$ViewHolder;->itemRowBinding:Landroidx/databinding/ViewDataBinding;

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/gizthon/camera/adapter/BindAdapter$ViewHolder;->itemRowBinding:Landroidx/databinding/ViewDataBinding;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 70
    iget-object p2, p0, Lcom/gizthon/camera/adapter/BindAdapter$ViewHolder;->itemRowBinding:Landroidx/databinding/ViewDataBinding;

    const/16 v0, 0xa

    invoke-virtual {p2, v0, p1}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/gizthon/camera/adapter/BindAdapter$ViewHolder;->itemRowBinding:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method
