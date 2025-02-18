.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$2;
.super Ljava/lang/Object;
.source "RecordQualityFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 99
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rear index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 101
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$602(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;Z)Z

    .line 102
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {p2, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$702(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;I)I

    .line 103
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$2;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)V

    :cond_0
    return-void
.end method
