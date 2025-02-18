.class Lcom/jieli/stream/dv/running2/util/VideoManager$1;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/connect/response/SendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/util/VideoManager;->tryToDownload(JJLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/util/VideoManager;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$1;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Integer;)V
    .locals 3

    .line 188
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 189
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$002(Z)Z

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$1;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$200(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/lib/dv/control/player/MovWrapper;

    move-result-object p1

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$1;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {v1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$100(Lcom/jieli/stream/dv/running2/util/VideoManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/jieli/lib/dv/control/player/MovWrapper;->create(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 192
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$1;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$300(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$1;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$300(Lcom/jieli/stream/dv/running2/util/VideoManager;)Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;

    move-result-object p1

    const/16 v1, 0xe3

    const-string v2, "create output path failed."

    invoke-interface {p1, v1, v2}, Lcom/jieli/stream/dv/running2/interfaces/OnDownloadListener;->onError(ILjava/lang/String;)V

    .line 195
    :cond_1
    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$002(Z)Z

    .line 196
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$1;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$402(Lcom/jieli/stream/dv/running2/util/VideoManager;I)I

    .line 197
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/util/VideoManager$1;->this$0:Lcom/jieli/stream/dv/running2/util/VideoManager;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/jieli/stream/dv/running2/util/VideoManager;->access$502(Lcom/jieli/stream/dv/running2/util/VideoManager;J)J

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 185
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jieli/stream/dv/running2/util/VideoManager$1;->onResponse(Ljava/lang/Integer;)V

    return-void
.end method
