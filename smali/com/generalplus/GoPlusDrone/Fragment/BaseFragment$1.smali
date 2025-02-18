.class Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->ShowCopyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 205
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_HashMap:Ljava/util/HashMap;

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

    .line 206
    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object v4, v3, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "KEY_FilePath"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    .line 207
    invoke-static {v6}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->access$000(Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object v6, v6, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->listImageItem:Ljava/util/ArrayList;

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

    .line 206
    invoke-static {v3, v4, v1}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->access$100(Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    .line 214
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    invoke-virtual {p2}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->isCN()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "Copy to Album Successfully."

    goto :goto_1

    :cond_2
    const-string p2, "\u590d\u5236\u5230\u76f8\u673a\u6210\u529f!"

    :goto_1
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 217
    :cond_3
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    invoke-virtual {p2}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->isCN()Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "Copy part files Successfully."

    goto :goto_2

    :cond_4
    const-string p2, "\u590d\u5236\u9009\u62e9\u7684\u6587\u4ef6\u6210\u529f!"

    :goto_2
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 219
    :goto_3
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iput-boolean v2, p1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_bSelect:Z

    .line 220
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 221
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$1;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
