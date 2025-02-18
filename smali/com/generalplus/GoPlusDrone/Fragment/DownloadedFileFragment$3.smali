.class Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3;
.super Ljava/lang/Object;
.source "DownloadedFileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->ShowDeleteDialog()V
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

    .line 255
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 258
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$000(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    .line 261
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$000(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 262
    new-instance v0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3$1;

    invoke-direct {v0, p0}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3$1;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 268
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 269
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 270
    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {v4}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$100(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "KEY_FilePath"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DownloadedFileFragment"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 278
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 280
    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {v4}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$100(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "KEY_ThumbnailFilePath"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 281
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 287
    :cond_1
    iget-object v4, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {v4}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$100(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    if-ne v2, p1, :cond_3

    .line 291
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$400(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u6a94\u6848\u522a\u9664\u6210\u529f."

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 294
    :cond_3
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$400(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u6a94\u6848\u90e8\u5206\u522a\u9664\u6210\u529f."

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 296
    :goto_1
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {p1, v0}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$502(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;Z)Z

    .line 297
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$000(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 298
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$3;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;->access$600(Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment;)Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/generalplus/GoPlusDrone/Fragment/DownloadedFileFragment$ListViewItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
