.class Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->getThumbnail()V
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

    .line 163
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;

    iget-object v1, v1, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;

    iget-object v1, v1, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "KEY_ThumbnailFilePath"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;

    iget-object v2, v2, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "KEY_FilePath"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naExtractFrame(Ljava/lang/String;Ljava/lang/String;J)I

    move-result v1

    const-string v2, "VideoListFragment"

    const-string v3, "not exists"

    .line 173
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;

    invoke-virtual {v1}, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2$1;

    invoke-direct {v2, p0}, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2$1;-><init>(Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
