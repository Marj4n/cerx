.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;
.super Ljava/lang/Object;
.source "RecordQualityFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 8

    .line 164
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result p1

    invoke-static {p1}, Lcom/jieli/lib/dv/control/utils/Code;->getCodeDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "PULL_VIDEO_STATUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "PULL_VIDEO_PARAM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "VIDEO_PARAM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "VIDEO_CTRL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string v0, "status"

    const-string v2, "1"

    if-eqz v1, :cond_a

    const-string v7, "w"

    if-eq v1, v6, :cond_8

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_2

    goto/16 :goto_1

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {v0, v5}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$202(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;Z)Z

    .line 195
    :cond_5
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {v0, v5}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$602(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;Z)Z

    .line 196
    :cond_6
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    const-string v1, "h"

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLastRecoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {v3}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", set success: w "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", h "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 201
    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object p1

    new-instance v0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4$1;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4$1;-><init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;)V

    invoke-virtual {p1, v6, v0}, Lcom/jieli/lib/dv/control/DeviceClient;->tryToRecordVideo(ZLcom/jieli/lib/dv/control/connect/response/SendResponse;)V

    goto/16 :goto_1

    .line 213
    :cond_7
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Not modified "

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 182
    :cond_8
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PULL_VIDEO_STATUS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 186
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$1000(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)V

    goto :goto_1

    .line 188
    :cond_9
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$1100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)V

    goto :goto_1

    .line 171
    :cond_a
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    .line 174
    :cond_b
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getParams()Landroidx/collection/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 176
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$800(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$600(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 177
    :cond_c
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$900(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)V

    :cond_d
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x41c92831 -> :sswitch_3
        0x952af89 -> :sswitch_2
        0x146c748f -> :sswitch_1
        0x7f44f410 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 161
    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method
