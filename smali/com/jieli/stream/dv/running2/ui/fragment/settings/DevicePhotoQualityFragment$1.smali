.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;
.super Ljava/lang/Object;
.source "DevicePhotoQualityFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;

.field final synthetic val$currentQualityIndex:I

.field final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;[Ljava/lang/String;I)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;->val$values:[Ljava/lang/String;

    iput p3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;->val$currentQualityIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 61
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->photo_qulity_value:I

    invoke-virtual {p2, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;->val$values:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    add-int/lit8 v1, p1, 0x1

    mul-int/lit16 v1, v1, 0xf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 62
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p2

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;)V

    invoke-virtual {p2, p1, v0}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToSetPhotoQuality(ILcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    return-void
.end method
