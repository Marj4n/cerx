.class Lcom/jieli/stream/dv/running2/data/VideoRecord$3;
.super Ljava/lang/Object;
.source "VideoRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/data/VideoRecord;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/data/VideoRecord;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$3;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 332
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$3;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->access$000(Lcom/jieli/stream/dv/running2/data/VideoRecord;)Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$3;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->access$000(Lcom/jieli/stream/dv/running2/data/VideoRecord;)Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;->onStop()V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$3;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->access$002(Lcom/jieli/stream/dv/running2/data/VideoRecord;Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;)Lcom/jieli/stream/dv/running2/data/OnRecordStateListener;

    .line 338
    :try_start_0
    invoke-static {}, Lcom/jieli/lib/dv/control/utils/ClientContext;->get()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/data/VideoRecord$3;->this$0:Lcom/jieli/stream/dv/running2/data/VideoRecord;

    invoke-static {v4}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->access$100(Lcom/jieli/stream/dv/running2/data/VideoRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
