.class Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4$1;
.super Ljava/lang/Object;
.source "RecordQualityFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 205
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$100(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Send failed"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4$1;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;->access$802(Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment;Z)Z

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 201
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/fragment/settings/RecordQualityFragment$4$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
