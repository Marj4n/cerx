.class Lcom/gizthon/camera/adapter/ResolutionListAdapter$1;
.super Ljava/lang/Object;
.source "ResolutionListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gizthon/camera/adapter/ResolutionListAdapter;->onBindViewHolder(Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gizthon/camera/adapter/ResolutionListAdapter;

.field final synthetic val$holder:Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/gizthon/camera/adapter/ResolutionListAdapter;Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;I)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter$1;->this$0:Lcom/gizthon/camera/adapter/ResolutionListAdapter;

    iput-object p2, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter$1;->val$holder:Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;

    iput p3, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter$1;->this$0:Lcom/gizthon/camera/adapter/ResolutionListAdapter;

    iget-object v0, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter$1;->val$holder:Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;

    invoke-virtual {v0}, Lcom/gizthon/camera/adapter/ResolutionListAdapter$RecyclerHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->selected(I)V

    .line 55
    iget-object p1, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter$1;->this$0:Lcom/gizthon/camera/adapter/ResolutionListAdapter;

    invoke-static {p1}, Lcom/gizthon/camera/adapter/ResolutionListAdapter;->access$100(Lcom/gizthon/camera/adapter/ResolutionListAdapter;)Lcom/gizthon/camera/adapter/ResolutionListAdapter$OnClickItem;

    move-result-object p1

    iget v0, p0, Lcom/gizthon/camera/adapter/ResolutionListAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/gizthon/camera/adapter/ResolutionListAdapter$OnClickItem;->onClick(I)V

    return-void
.end method
