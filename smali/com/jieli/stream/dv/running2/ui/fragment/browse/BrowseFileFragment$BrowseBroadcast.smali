.class Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "BrowseFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowseBroadcast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;


# direct methods
.method private constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$1;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-virtual {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, -0x1

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x40d64427

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_2

    const v2, 0x5453421c

    if-eq v1, v2, :cond_1

    const v2, 0x6579cccf

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.jieli.dv.running2_language_change"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v1, "com.jieli.dv.running2_select_files"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "com.jieli.dv.running2_select_state_change"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_1

    .line 112
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)V

    goto :goto_1

    :cond_5
    const-string p1, "state_type"

    .line 96
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "select_state"

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_6

    goto :goto_1

    .line 106
    :cond_6
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$502(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;Z)Z

    .line 107
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-static {p1, v5}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;Z)V

    goto :goto_1

    .line 99
    :cond_7
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$202(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;Z)Z

    .line 100
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$300(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;Z)V

    .line 101
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 102
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    goto :goto_1

    :cond_8
    const-string p1, "select_files_num"

    .line 92
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 93
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment$BrowseBroadcast;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;

    sget v1, Lcom/jieli/stream/dv/running2/R$string;->selected_num:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/browse/BrowseFileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_1
    return-void
.end method
