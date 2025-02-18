.class Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/jieli/lib/dv/control/player/OnRealTimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V
    .locals 0

    .line 2327
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudio(II[BJJ)V
    .locals 0

    .line 2352
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$7000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-boolean p2, p2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRecordPrepared:Z

    if-eqz p2, :cond_0

    .line 2353
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$7000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->write(I[B)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Write audio failed"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 2383
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1800(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 3

    .line 2359
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged:state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 2376
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-virtual {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->stopLocalRecording()V

    goto :goto_1

    .line 2361
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$700(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2362
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2363
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$2000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2364
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$2000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public onVideo(II[BJJ)V
    .locals 0

    .line 2331
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$6900(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-object p2, p2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p5, "debug_settings"

    invoke-interface {p2, p5, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2332
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$1308(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)I

    .line 2335
    :cond_0
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$7000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-boolean p2, p2, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->isRecordPrepared:Z

    if-eqz p2, :cond_2

    .line 2336
    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p2}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$7000(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/data/VideoRecord;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/jieli/stream/dv/running2/data/VideoRecord;->write(I[B)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$200(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Write video failed"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    :cond_1
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iget-boolean p1, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->save:Z

    if-eqz p1, :cond_2

    .line 2338
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iput-boolean p4, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->save:Z

    .line 2339
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    iput-object p3, p1, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->firstData:[B

    .line 2344
    :cond_2
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/data/VideoCapture;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$500(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2345
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment$30;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;->access$400(Lcom/jieli/stream/dv/running2/ui/fragment/VideoFragment;)Lcom/jieli/stream/dv/running2/data/VideoCapture;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jieli/stream/dv/running2/data/VideoCapture;->capture([B)V

    :cond_3
    return-void
.end method
