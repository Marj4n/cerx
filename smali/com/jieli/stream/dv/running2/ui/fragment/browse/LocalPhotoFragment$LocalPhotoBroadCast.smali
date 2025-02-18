.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;
.super Landroid/content/BroadcastReceiver;
.source "LocalPhotoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalPhotoBroadCast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;


# direct methods
.method private constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$1;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    .line 102
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    move-result-object p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->currentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    if-eqz p1, :cond_18

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 105
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/task/MediaTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/task/MediaTask;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->setUIHandler(Landroid/os/Handler;)V

    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x370022ef

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x6579cccf

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.jieli.dv.running2_language_change"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "com.jieli.dv.running2_browse_file_operation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    goto/16 :goto_7

    .line 243
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)V

    goto/16 :goto_7

    :cond_5
    const-string p1, "browse_operation"

    .line 110
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 111
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    iget-object p2, p2, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive op : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xa4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 232
    :pswitch_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 233
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 235
    :cond_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/task/MediaTask;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 236
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/task/MediaTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->tryToStopTask()V

    .line 238
    :cond_7
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)I

    move-result p2

    invoke-static {p1, p2, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;IZ)V

    goto/16 :goto_7

    .line 160
    :pswitch_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 161
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    if-ne p1, v4, :cond_8

    .line 164
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 165
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    iget-object p2, p2, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "share==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance p2, Lcom/xyzlf/share/library/bean/ShareEntity;

    const-string v0, ""

    invoke-direct {p2, v0, v0}, Lcom/xyzlf/share/library/bean/ShareEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xyzlf/share/library/bean/ShareEntity;->setImgUrl(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2, v4}, Lcom/xyzlf/share/library/bean/ShareEntity;->setShareBigImg(Z)V

    .line 169
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v0, 0x4e90

    invoke-static {p1, p2, v0}, Lcom/xyzlf/share/library/util/ShareUtil;->showShareDialog(Landroid/app/Activity;Lcom/xyzlf/share/library/bean/ShareEntity;I)V

    goto/16 :goto_7

    .line 171
    :cond_8
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    sget p2, Lcom/jieli/stream/dv/running2/R$string;->only_support_one_sharing:I

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 182
    :cond_9
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    sget p2, Lcom/jieli/stream/dv/running2/R$string;->selected_file_empty_tip:I

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 210
    :pswitch_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1002(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;Z)Z

    .line 211
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 212
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 213
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p2, :cond_a

    .line 215
    invoke-virtual {p2, v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    goto :goto_2

    .line 219
    :cond_b
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 220
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p2, :cond_c

    .line 222
    invoke-virtual {p2, v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    goto :goto_3

    .line 226
    :cond_d
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;I)V

    .line 227
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 228
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    goto/16 :goto_7

    .line 187
    :pswitch_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1002(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;Z)Z

    .line 188
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 189
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 190
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p2, :cond_e

    .line 192
    invoke-virtual {p2, v4}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    .line 193
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 197
    :cond_f
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 198
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p2, :cond_10

    .line 200
    invoke-virtual {p2, v4}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    goto :goto_5

    .line 204
    :cond_11
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;I)V

    .line 205
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 206
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    goto/16 :goto_7

    .line 149
    :pswitch_5
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_13

    .line 150
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1102(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;Z)Z

    .line 151
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 152
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->showWaitingDialog()V

    .line 154
    :cond_12
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1, p2, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;IZ)V

    goto/16 :goto_7

    .line 156
    :cond_13
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    sget p2, Lcom/jieli/stream/dv/running2/R$string;->selected_file_empty_tip:I

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 128
    :pswitch_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1002(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;Z)Z

    .line 129
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1102(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;Z)Z

    .line 130
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 131
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;IZ)V

    .line 132
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 133
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->setEditMode(Z)V

    .line 134
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)I

    move-result p1

    if-ne p1, p2, :cond_14

    .line 135
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->clear()V

    .line 136
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;I)V

    goto :goto_6

    .line 138
    :cond_14
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    .line 141
    :cond_15
    :goto_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 142
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->dismissWaitingDialog()V

    .line 144
    :cond_16
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$1302(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;I)I

    goto :goto_7

    .line 114
    :pswitch_7
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 115
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_17

    .line 116
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1, v4, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;IZ)V

    .line 117
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 118
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->setEditMode(Z)V

    .line 119
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    goto :goto_7

    .line 122
    :cond_17
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    sget p2, Lcom/jieli/stream/dv/running2/R$string;->no_data_tip:I

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment$LocalPhotoBroadCast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;

    invoke-static {p1, v4, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalPhotoFragment;IZ)V

    :cond_18
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
