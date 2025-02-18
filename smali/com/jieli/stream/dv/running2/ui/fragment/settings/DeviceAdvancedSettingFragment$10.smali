.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$10;
.super Ljava/lang/Object;
.source "DeviceAdvancedSettingFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->showPopupWindow(Landroid/widget/TextView;[Ljava/lang/String;Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$OnselectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;Landroid/widget/TextView;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$10;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    .line 333
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/jieli/stream/dv/running2/R$mipmap;->ic_down:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 335
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceAdvancedSettingFragment$10;->val$view:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
