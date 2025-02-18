.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$1;
.super Ljava/lang/Object;
.source "DeviceAdvancedSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$array;->after_parking_recorder_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    check-cast p1, Landroid/widget/TextView;

    new-instance v2, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$1$1;

    invoke-direct {v2, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$1$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$1;)V

    invoke-static {v1, p1, v0, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;Landroid/widget/TextView;[Ljava/lang/String;Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$OnselectedListener;)V

    .line 112
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_up:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
