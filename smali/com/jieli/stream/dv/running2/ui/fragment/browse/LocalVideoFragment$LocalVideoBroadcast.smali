.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "LocalVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalVideoBroadcast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;


# direct methods
.method private constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$1;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    .line 99
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    move-result-object p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->currentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    if-eqz p1, :cond_18

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 102
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/task/MediaTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/task/MediaTask;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->setUIHandler(Landroid/os/Handler;)V

    .line 105
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x370022ef

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

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

    if-eq p1, v3, :cond_4

    goto/16 :goto_8

    .line 234
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)V

    goto/16 :goto_8

    :cond_5
    const-string p1, "browse_operation"

    .line 107
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 108
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    iget-object p2, p2, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->TAG:Ljava/lang/String;

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
    goto/16 :goto_8

    .line 223
    :pswitch_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 224
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 226
    :cond_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/task/MediaTask;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 227
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/task/MediaTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/task/MediaTask;->tryToStopTask()V

    .line 229
    :cond_7
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)I

    move-result p2

    invoke-static {p1, p2, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;IZ)V

    goto/16 :goto_8

    .line 155
    :pswitch_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 156
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_18

    const/16 p2, 0x1026

    const-string v0, "android.intent.extra.STREAM"

    const-string v1, "video/*"

    if-ne p1, v3, :cond_8

    .line 159
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 160
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 163
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->tab_share:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_8

    .line 165
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    .line 167
    invoke-virtual {v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 169
    :cond_9
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 171
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->tab_share:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_8

    .line 201
    :pswitch_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1002(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;Z)Z

    .line 202
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 203
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 204
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p2, :cond_a

    .line 206
    invoke-virtual {p2, v4}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    goto :goto_3

    .line 210
    :cond_b
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 211
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p2, :cond_c

    .line 213
    invoke-virtual {p2, v4}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    goto :goto_4

    .line 217
    :cond_d
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;I)V

    .line 218
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 219
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    goto/16 :goto_8

    .line 178
    :pswitch_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1002(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;Z)Z

    .line 179
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 180
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 181
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p2, :cond_e

    .line 183
    invoke-virtual {p2, v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    .line 184
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 188
    :cond_f
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 189
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jieli/stream/dv/running2/bean/FileInfo;

    if-eqz p2, :cond_10

    .line 191
    invoke-virtual {p2, v3}, Lcom/jieli/stream/dv/running2/bean/FileInfo;->setSelected(Z)V

    goto :goto_6

    .line 195
    :cond_11
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;I)V

    .line 196
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 197
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    goto/16 :goto_8

    .line 144
    :pswitch_5
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_13

    .line 145
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1102(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;Z)Z

    .line 146
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 147
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->showWaitingDialog()V

    .line 149
    :cond_12
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1, p2, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$000(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;IZ)V

    goto/16 :goto_8

    .line 151
    :cond_13
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    sget p2, Lcom/jieli/stream/dv/running2/R$string;->selected_file_empty_tip:I

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 125
    :pswitch_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1002(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;Z)Z

    .line 126
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1102(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;Z)Z

    .line 127
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 128
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;IZ)V

    .line 129
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 130
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->setEditMode(Z)V

    .line 131
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)I

    move-result p1

    if-ne p1, p2, :cond_14

    .line 132
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->clear()V

    .line 133
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;I)V

    goto :goto_7

    .line 135
    :cond_14
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    .line 138
    :cond_15
    :goto_7
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 139
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->dismissWaitingDialog()V

    .line 141
    :cond_16
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$1302(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;I)I

    goto :goto_8

    .line 111
    :pswitch_7
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 112
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_17

    .line 113
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1, v3, v3}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;IZ)V

    .line 114
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 115
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->setEditMode(Z)V

    .line 116
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;)Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    goto :goto_8

    .line 119
    :cond_17
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    sget p2, Lcom/jieli/stream/dv/running2/R$string;->no_data_tip:I

    invoke-virtual {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment$LocalVideoBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;

    invoke-static {p1, v3, v4}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/browse/LocalVideoFragment;IZ)V

    :cond_18
    :goto_8
    return-void

    nop

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
