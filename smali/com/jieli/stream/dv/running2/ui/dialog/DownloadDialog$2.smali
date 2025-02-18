.class Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$2;
.super Ljava/lang/Object;
.source "DownloadDialog.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/receiver/listener/OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V
    .locals 3

    .line 139
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getErrorType()I

    move-result p1

    invoke-static {p1}, Lcom/jieli/lib/dv/control/utils/Code;->getCodeDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;->getTopic()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x3ce7e220

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "TIME_AXIS_PLAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    .line 146
    :cond_3
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$000(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)Lcom/jieli/lib/dv/control/player/PlaybackStream;

    move-result-object p1

    if-nez p1, :cond_4

    .line 147
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    new-instance v0, Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-direct {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;-><init>()V

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$002(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/PlaybackStream;

    .line 149
    :cond_4
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    iget-object p1, p1, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->tag:Ljava/lang/String;

    const-string v0, "create playback.................."

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$000(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)Lcom/jieli/lib/dv/control/player/PlaybackStream;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$100(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->setOnDownloadListener(Lcom/jieli/lib/dv/control/player/OnDownloadListener;)V

    .line 151
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$2;->this$0:Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;->access$000(Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog;)Lcom/jieli/lib/dv/control/player/PlaybackStream;

    move-result-object p1

    const/16 v0, 0x8af

    invoke-static {}, Lcom/jieli/stream/dv/running2/util/ClientManager;->getClient()Lcom/jieli/lib/dv/control/DeviceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jieli/lib/dv/control/DeviceClient;->getConnectedIP()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->create(ILjava/lang/String;I)Z

    :goto_1
    return-void
.end method

.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 136
    check-cast p1, Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/ui/dialog/DownloadDialog$2;->onNotify(Lcom/jieli/lib/dv/control/json/bean/NotifyInfo;)V

    return-void
.end method
