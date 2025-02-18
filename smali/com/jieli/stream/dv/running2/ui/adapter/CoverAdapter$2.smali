.class Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$2;
.super Ljava/lang/Object;
.source "CoverAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->onBindViewHolder(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

.field final synthetic val$holder:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$2;->this$0:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$2;->val$holder:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$2;->val$holder:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$2;->this$0:Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;->access$100(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;)Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$OnItemClickListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method
