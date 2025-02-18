.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1$1;
.super Ljava/lang/Object;
.source "DevicePhotoQualityFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;->onCheckedChanged(Landroid/widget/RadioGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 2

    .line 67
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 68
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->setting_failed:I

    invoke-virtual {p1, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment;)Landroid/widget/RadioGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;

    iget v1, v1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1;->val$currentQualityIndex:I

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DevicePhotoQualityFragment$1$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
