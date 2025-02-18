.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$2;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;)V
    .locals 0

    .line 1091
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 1094
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1100
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 1102
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1104
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 1105
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1108
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$4300(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 1112
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17$2;->this$1:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$17;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1600(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    .line 1114
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    return-void
.end method
