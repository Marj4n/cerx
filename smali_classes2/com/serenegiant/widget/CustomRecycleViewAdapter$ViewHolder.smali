.class public Lcom/serenegiant/widget/CustomRecycleViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CustomRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/CustomRecycleViewAdapter;
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
.field public mItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 222
    iput-object p1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$ViewHolder;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public hasDivider(Z)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$ViewHolder;->mView:Landroid/view/View;

    instance-of v1, v0, Lcom/serenegiant/widget/Dividable;

    if-eqz v1, :cond_0

    .line 237
    check-cast v0, Lcom/serenegiant/widget/Dividable;

    invoke-interface {v0, p1}, Lcom/serenegiant/widget/Dividable;->hasDivider(Z)V

    goto :goto_0

    .line 239
    :cond_0
    sget v1, Lcom/serenegiant/common/R$id;->has_divider:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public hasDivider()Z
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$ViewHolder;->mView:Landroid/view/View;

    instance-of v1, v0, Lcom/serenegiant/widget/Dividable;

    if-eqz v1, :cond_0

    .line 245
    check-cast v0, Lcom/serenegiant/widget/Dividable;

    invoke-interface {v0}, Lcom/serenegiant/widget/Dividable;->hasDivider()Z

    move-result v0

    return v0

    .line 247
    :cond_0
    sget v1, Lcom/serenegiant/common/R$id;->has_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEnable(Z)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$ViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/serenegiant/widget/CustomRecycleViewAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
