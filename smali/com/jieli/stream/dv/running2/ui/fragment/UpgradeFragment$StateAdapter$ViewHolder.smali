.class Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "UpgradeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private ivState:Landroid/widget/ImageView;

.field private progressBar:Landroid/widget/ProgressBar;

.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;

.field private tvStep:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;Landroid/view/View;)V
    .locals 1

    .line 382
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->item_upgrade_state:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->ivState:Landroid/widget/ImageView;

    .line 384
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->item_upgrade_step:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->tvStep:Landroid/widget/TextView;

    .line 385
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->item_upgrade_pb:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x64

    .line 386
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 388
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->tvStep:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->ivState:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;)Landroid/widget/ProgressBar;
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/UpgradeFragment$StateAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method
