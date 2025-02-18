.class Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$1;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;

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

    .line 119
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;

    iget-boolean p1, p1, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->m_bEdit:Z

    if-eqz p1, :cond_1

    .line 120
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->checkBox:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 121
    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    .line 123
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 136
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;

    invoke-virtual {p2}, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p4, Lcom/generalplus/GoPlusDrone/Activity/FileViewController;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 138
    iget-object p4, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;

    iget-object p4, p4, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->m_ayFilePath:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string p4, "FileURL"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    const-string p4, "FileFlag"

    .line 139
    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 141
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;

    invoke-virtual {p2, p1}, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
