.class Lcom/jieli/lib/dv/control/player/PlaybackStream$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/lib/dv/control/player/PlaybackStream;->onTimeUpdate(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;


# direct methods
.method constructor <init>(Lcom/jieli/lib/dv/control/player/PlaybackStream;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$000(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$000(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$100(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jieli/lib/dv/control/player/OnDownloadListener;->onTime(J)V

    .line 345
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$200(Lcom/jieli/lib/dv/control/player/PlaybackStream;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$300(Lcom/jieli/lib/dv/control/player/PlaybackStream;)F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$400(F)F

    move-result v0

    .line 346
    sget-object v1, Lcom/jieli/lib/dv/control/player/PlaybackStream;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==duration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v3}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$300(Lcom/jieli/lib/dv/control/player/PlaybackStream;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", progress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v3}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$200(Lcom/jieli/lib/dv/control/player/PlaybackStream;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jieli/lib/dv/control/utils/Dlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$200(Lcom/jieli/lib/dv/control/player/PlaybackStream;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$200(Lcom/jieli/lib/dv/control/player/PlaybackStream;)I

    move-result v1

    iget-object v2, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v2}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$300(Lcom/jieli/lib/dv/control/player/PlaybackStream;)F

    move-result v2

    float-to-int v2, v2

    if-ne v1, v2, :cond_1

    .line 348
    iget-object v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$000(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/player/OnDownloadListener;->onProgress(F)V

    const/4 v0, 0x3

    .line 349
    iget-object v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$500(Lcom/jieli/lib/dv/control/player/PlaybackStream;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 350
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v0}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$000(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jieli/lib/dv/control/player/OnDownloadListener;->onStop()V

    .line 351
    iget-object v0, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$202(Lcom/jieli/lib/dv/control/player/PlaybackStream;I)I

    goto :goto_0

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$200(Lcom/jieli/lib/dv/control/player/PlaybackStream;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v2}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$300(Lcom/jieli/lib/dv/control/player/PlaybackStream;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 354
    iget-object v1, p0, Lcom/jieli/lib/dv/control/player/PlaybackStream$5;->this$0:Lcom/jieli/lib/dv/control/player/PlaybackStream;

    invoke-static {v1}, Lcom/jieli/lib/dv/control/player/PlaybackStream;->access$000(Lcom/jieli/lib/dv/control/player/PlaybackStream;)Lcom/jieli/lib/dv/control/player/OnDownloadListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jieli/lib/dv/control/player/OnDownloadListener;->onProgress(F)V

    :cond_2
    :goto_0
    return-void
.end method
