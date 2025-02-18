.class Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$9;
.super Ljava/lang/Object;
.source "FlashActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 370
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->access$400(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 371
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    const-string v0, "has_agreed_with_agreement"

    invoke-static {p1, v0, p2}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    .line 373
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->access$400(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/jieli/stream/dv/running2/R$drawable;->bg_orange_gradient:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->access$400(Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity$9;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;

    invoke-virtual {p2}, Lcom/jieli/stream/dv/running2/ui/activity/FlashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/jieli/stream/dv/running2/R$drawable;->bg_gray_gradient:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
