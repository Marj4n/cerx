.class Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->ShowDeleteDialog()V
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

    .line 243
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 246
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    .line 249
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 250
    new-instance v0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2$1;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2$1;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 256
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 257
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 258
    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object v4, v4, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "KEY_FilePath"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BaseFragment"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 266
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 268
    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object v4, v4, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "KEY_ThumbnailFilePath"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 269
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 271
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 275
    :cond_1
    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object v4, v4, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 277
    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object v4, v4, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_ayFilePath:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    if-ne v2, p1, :cond_4

    .line 281
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    invoke-virtual {p2}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->isCN()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "File deleted successfully."

    goto :goto_1

    :cond_3
    const-string p2, "\u5220\u9664\u6587\u4ef6\u6210\u529f!"

    :goto_1
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 284
    :cond_4
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    invoke-virtual {p2}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->isCN()Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "Delete part files successfully."

    goto :goto_2

    :cond_5
    const-string p2, "\u5220\u9664\u9009\u62e9\u7684\u6587\u4ef6\u6210\u529f!"

    :goto_2
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 286
    :goto_3
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iput-boolean v0, p1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_bSelect:Z

    .line 287
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_HashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 288
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;

    iget-object p1, p1, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
