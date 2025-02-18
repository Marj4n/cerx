.class Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment$1;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 111
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;

    iget-boolean p1, p1, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->m_bEdit:Z

    if-eqz p1, :cond_1

    .line 112
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->checkBox:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 113
    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    .line 115
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "position"

    .line 123
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;

    iget-object p2, p2, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->m_ayFilePath:Ljava/util/ArrayList;

    const-string p3, "FilePath"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 125
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;

    invoke-virtual {p2}, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/generalplus/GoPlusDrone/Activity/FullImageActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;

    invoke-virtual {p2, p1}, Lcom/generalplus/GoPlusDrone/Fragment/PhotoListFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
