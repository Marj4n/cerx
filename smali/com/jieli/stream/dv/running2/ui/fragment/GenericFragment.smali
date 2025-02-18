.class public Lcom/jieli/stream/dv/running2/ui/fragment/GenericFragment;
.super Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;
.source "GenericFragment.java"


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/jieli/stream/dv/running2/ui/fragment/GenericFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 30
    sget p3, Lcom/jieli/stream/dv/running2/R$layout;->fragment_generic:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 31
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->generic_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/GenericFragment;->textView:Landroid/widget/TextView;

    return-object p1
.end method

.method public onDetach()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onDetach()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/jieli/stream/dv/running2/ui/base/BaseFragment;->onResume()V

    return-void
.end method
