.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceCameraModeFragment$1;
.super Ljava/lang/Object;
.source "DeviceCameraModeFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceCameraModeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceCameraModeFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceCameraModeFragment;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceCameraModeFragment$1;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/DeviceCameraModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 33
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->full_screen_mode_rbtn:I

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    sget p1, Lcom/jieli/stream/dv/running2/R$id;->width_screen_mode_rbtn:I

    :goto_0
    return-void
.end method
