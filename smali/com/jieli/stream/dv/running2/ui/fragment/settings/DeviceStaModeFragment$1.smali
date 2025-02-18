.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$1;
.super Ljava/lang/Object;
.source "DeviceStaModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 87
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->switch_sta_btn:I

    if-ne p1, v0, :cond_0

    .line 88
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;)V

    goto :goto_0

    .line 89
    :cond_0
    sget v0, Lcom/jieli/stream/dv/running2/R$id;->show_or_hide_pwd:I

    if-ne p1, v0, :cond_1

    .line 90
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->access$102(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;Z)Z

    .line 91
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceStaModeFragment;)V

    :cond_1
    :goto_0
    return-void
.end method
