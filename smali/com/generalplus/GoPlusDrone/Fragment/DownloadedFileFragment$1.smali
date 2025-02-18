.class Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$1;
.super Ljava/lang/Object;
.source "DownloadedFileFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

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

    .line 132
    sget p1, Lcom/generalplus/GoPlusDrone/R$id;->checkBox:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 133
    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    .line 135
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$000(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$000(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
