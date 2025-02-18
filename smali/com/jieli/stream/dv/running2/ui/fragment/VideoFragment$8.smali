.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$8;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$OnClickItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 3

    const-string v0, "\\*"

    .line 530
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->selectedWidth:I

    .line 532
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->selectedHeight:I

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$8;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->haveto_switch:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastLong(Ljava/lang/String;)V

    return-void
.end method
