.class Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$1;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;)V
    .locals 0

    .line 1216
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 1219
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;

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

    .line 1220
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1221
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1500(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/NotifyDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1227
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$100(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)Ljava/lang/String;

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

    .line 1228
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 1229
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1231
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 1232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1234
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$6200(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1238
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$1900(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;)V

    .line 1239
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17$1;->this$1:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity$17;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;

    const-string v0, "request video list failed."

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;->access$6300(Lcom/jieli/stream/dv/running2/ui/activity/PlaybackActivity;Ljava/lang/String;)V

    .line 1241
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    return-void
.end method
