.class Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$3;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->UpdateGridView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 412
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2500(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 413
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2600()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    new-instance v7, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$1200(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/content/Context;

    move-result-object v2

    .line 417
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2600()Ljava/util/ArrayList;

    move-result-object v3

    sget v4, Lcom/generalplus/GoPlusDrone/R$layout;->files_program_list:I

    const-string v1, "ThumbnailFilePath"

    const-string v5, "FileName"

    const-string v6, "FileIndex"

    filled-new-array {v1, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x2

    new-array v6, v1, [I

    const/4 v1, 0x0

    sget v8, Lcom/generalplus/GoPlusDrone/R$id;->imageView1:I

    aput v8, v6, v1

    const/4 v1, 0x1

    sget v8, Lcom/generalplus/GoPlusDrone/R$id;->textView1:I

    aput v8, v6, v1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 416
    invoke-static {v0, v7}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2502(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;

    .line 421
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2500(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$3;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$2500(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    return-void
.end method
