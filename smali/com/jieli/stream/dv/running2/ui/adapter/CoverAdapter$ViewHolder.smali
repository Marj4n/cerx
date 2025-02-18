.class Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CoverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private img:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 150
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 151
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->cover_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/adapter/CoverAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    return-object p0
.end method
