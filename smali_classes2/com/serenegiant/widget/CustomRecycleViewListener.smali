.class public interface abstract Lcom/serenegiant/widget/CustomRecycleViewListener;
.super Ljava/lang/Object;
.source "CustomRecycleViewListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroid/view/View;",
            "ITT;)V"
        }
    .end annotation
.end method

.method public abstract onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;ILjava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroid/view/View;",
            "ITT;)Z"
        }
    .end annotation
.end method
