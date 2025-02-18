.class Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$2;
.super Ljava/lang/Object;
.source "DownloadedFileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->ShowCopyDialog()V
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

    .line 219
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 223
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$000(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 224
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$100(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "KEY_FilePath"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    .line 225
    invoke-static {v6}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$200(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {v6}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$100(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v6, "KEY_FileName"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {v3, v4, v1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$300(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 232
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$400(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u6a94\u6848\u5168\u90e8\u8907\u88fd\u6210\u529f."

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 235
    :cond_2
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$400(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u6a94\u6848\u90e8\u5206\u8907\u88fd\u6210\u529f."

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 237
    :goto_1
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {p1, v2}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$502(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;Z)Z

    .line 238
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$000(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 239
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$600(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
